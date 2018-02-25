package com.gaiaonline.battle.newactors
{
   import com.gaiaonline.battle.Globals;
   import com.gaiaonline.battle.gateway.BattleEvent;
   import com.gaiaonline.battle.gateway.BattleGateway;
   import com.gaiaonline.battle.gateway.BattleMessage;
   import com.gaiaonline.battle.ui.UiAcceptDecline;
   import com.gaiaonline.battle.utils.BattleUtils;
   import com.gaiaonline.flexModulesAPIs.globalevent.GlobalEvent;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class TeamManager
   {
      
      public static const TEAM_MAX:Number = 6;
       
      
      private var _gateway:BattleGateway = null;
      
      private var teamInvite:Object;
      
      private var _myTeam:Object;
      
      private var _teamInvitePrompts:Object;
      
      private var _isTeamLeader:Boolean = true;
      
      private var _teamList:Array;
      
      public function TeamManager(gateway:BattleGateway)
      {
         _myTeam = new Object();
         _teamList = new Array();
         teamInvite = new Object();
         _teamInvitePrompts = new Object();
         super();
         _gateway = gateway;
         init();
      }
      
      private function teamMateGone(actorId:String) : void
      {
         var temp:Array = null;
         var index:int = 0;
         if(actorId == ActorManager.getInstance().myActor.actorId)
         {
            temp = this._teamList.concat();
            this.updateTeam(null);
         }
         else if(this._myTeam[actorId] != null)
         {
            temp = [actorId];
            delete this._myTeam[actorId];
            index = this._teamList.indexOf(actorId);
            if(index >= 0)
            {
               this._teamList.splice(index,1);
            }
         }
         if(temp != null)
         {
            this.removeActors(temp);
         }
         temp = null;
         if(this._myTeam[ActorManager.getInstance().myActor.actorId] == null || this.teamCount() <= 1)
         {
            this.updateTeam(null);
         }
      }
      
      private function removeActors(actors:Array) : void
      {
         var id:String = null;
         var actor:BaseActor = null;
         for(var i:int = 0; i < actors.length; i++)
         {
            id = actors[i];
            actor = ActorManager.actorIdToActor(id);
            actor.setCrewState(BaseActor.CREW_STATE_LOOKING);
            if(id != ActorManager.getInstance().myActor.actorId && ActorManager.getInstance().myActor != null && ActorManager.getInstance().myActor.roomId != ActorManager.getInstance().myActor.roomId)
            {
               ActorManager.getInstance().myActor.dispatchEvent(new Event(BaseActor.TEAMMATE_GONE));
            }
         }
      }
      
      private function onTeamInviteServerResponse(evt:BattleEvent) : void
      {
         var response:Object = null;
         if(evt && evt.battleMessage && evt.battleMessage.responseObj)
         {
            response = evt.battleMessage.responseObj[0];
            GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.INVITE_TO_TEAM,{
               "actorId":response.id,
               "actorName":response.name,
               "roomName":response.roomName
            }));
         }
      }
      
      public function updateTeam(team:Object = null) : void
      {
         var n:* = null;
         var wasTeamLeader:Boolean = this._isTeamLeader;
         var teamCount:int = this._teamList.length;
         BattleUtils.cleanObject(this._myTeam);
         this._teamList.length = 0;
         if(team == null || team[ActorManager.getInstance().myActor.actorId] == null)
         {
            this._myTeam[ActorManager.getInstance().myActor.actorId] = true;
            this._isTeamLeader = true;
            this._teamList.push(ActorManager.getInstance().myActor.actorId);
         }
         else
         {
            this._teamList.push(ActorManager.getInstance().myActor.actorId);
            for(n in team)
            {
               if(team[n] > 0)
               {
                  this._myTeam[n] = true;
               }
               else
               {
                  this._myTeam[n] = false;
               }
               if(n != ActorManager.getInstance().myActor.actorId)
               {
                  this._teamList.push(n);
               }
            }
            if(this._teamList.length > TeamManager.TEAM_MAX)
            {
               this._teamList.splice(TeamManager.TEAM_MAX - 1,this._teamList.length - TeamManager.TEAM_MAX);
            }
            this._isTeamLeader = this._myTeam[ActorManager.getInstance().myActor.actorId];
         }
         var teammateAdded:Boolean = teamCount == 1 && this._teamList.length > 1;
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.TEAM_UPDATED,{
            "teammateAdded":teammateAdded,
            "wasTeamLeader":wasTeamLeader,
            "isTeamLeader":this.isTeamLeader
         }));
      }
      
      private function onTeamMemberGone(evt:BattleEvent) : void
      {
         var actorId:String = evt.battleMessage.responseObj.id;
         this.teamMateGone(actorId);
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.LEFT_TEAM,{"actorId":actorId}));
      }
      
      private function init() : void
      {
         this._gateway.addEventListener(BattleEvent.TEAM_UPDATE,onTeamUpdate,false,10,true);
         this._gateway.addEventListener(BattleEvent.TEAM_INVITE,onTeamInvite,false,0,true);
         this._gateway.addEventListener(BattleEvent.TEAM_INVITE_REJECTED,onTeamInviteRejected,false,0,true);
         this._gateway.addEventListener(BattleEvent.TEAM_INVITE_SERVER_RESPONSE,onTeamInviteServerResponse,false,0,true);
         this._gateway.addEventListener(BattleEvent.TEAM_MEMBER_GONE,onTeamMemberGone,false,10,true);
      }
      
      private function onInviteDeclineClick(evt:Event) : void
      {
         var ad:UiAcceptDecline = UiAcceptDecline(evt.target);
         ad.removeEventListener("BtnAcceptClick",onInviteAcceptClick);
         ad.removeEventListener("BtnDeclineClick",onInviteDeclineClick);
         this.removeAcceptDecline(ad);
         var param:Array = new Array();
         param.push(evt.target.param.id);
         param.push(0);
         var msg:BattleMessage = new BattleMessage("153",param);
         this._gateway.sendMsg(msg);
      }
      
      public function get teamList() : Array
      {
         return _teamList;
      }
      
      private function onTeamUpdate(evt:BattleEvent) : void
      {
         var actorId:* = null;
         var msg:BattleMessage = null;
         var obj:Object = new Object();
         for(actorId in evt.battleMessage.responseObj)
         {
            if(actorId != "bmt" && actorId != "cmd" && actorId != "cid")
            {
               obj[actorId] = evt.battleMessage.responseObj[actorId];
               this.cleanupTeamInvites(actorId);
               if(ActorManager.actorIdToActor(actorId) == null)
               {
                  msg = new BattleMessage("getRoomActorInfo",{"actorID":actorId});
                  this._gateway.sendMsg(msg);
               }
            }
         }
         this.updateTeam(obj);
      }
      
      public function get isTeamLeader() : Boolean
      {
         return _isTeamLeader;
      }
      
      private function onTeamInviteRejected(evt:BattleEvent) : void
      {
         onTeamMemberGone(evt);
         var actorId:String = evt.battleMessage.responseObj.id;
         this.cleanupTeamInvites(actorId);
      }
      
      private function onTeamInvite(evt:BattleEvent) : void
      {
         var rp:MovieClip = null;
         var id:String = null;
         var ad:UiAcceptDecline = null;
         var txt:* = evt.battleMessage.responseObj.nm;
         if(ActorManager.getInstance().myActor.isGuestUser())
         {
            txt = txt + " tried to add you to his/her crew but you are not yet registered.\n\nCreating an account will let you add friends and take advantage of many neat Gaia features!";
            rp = Globals.uiManager.showRegistrationPrompt("Team Invite",txt,"invite",Globals.uiManager.MEDIUM);
         }
         else
         {
            txt = txt + " has invited you to join his crew";
            if(evt.battleMessage.responseObj.wn != null && evt.battleMessage.responseObj.wn)
            {
               txt = txt + "\n<font color=\'#FFCC33\'>By accepting this invite, you will be transported back to the entrance of this area.</font>";
            }
            id = evt.battleMessage.responseObj.id;
            ad = Globals.uiManager.showAcceptDecline(txt,id);
            this._teamInvitePrompts[id] = ad;
            ad.addEventListener("BtnAcceptClick",onInviteAcceptClick);
            ad.addEventListener("BtnDeclineClick",onInviteDeclineClick);
         }
      }
      
      public function get myTeam() : Object
      {
         return _myTeam;
      }
      
      private function cleanupTeamInvites(actorId:String) : void
      {
         if(this.teamInvite[actorId] != null)
         {
            Timer(this.teamInvite[actorId]).stop();
            this.teamInvite[actorId] = null;
            delete this.teamInvite[actorId];
         }
         this.removeAcceptDecline(this._teamInvitePrompts[actorId]);
      }
      
      private function removeAcceptDecline(ad:UiAcceptDecline) : void
      {
         if(ad)
         {
            delete this._teamInvitePrompts[ad.param.id];
            Globals.uiManager.removeAcceptDecline(ad);
         }
      }
      
      public function isOnMyTeam(id:String) : Boolean
      {
         return this._teamList.indexOf(id) > -1;
      }
      
      public function isOnATeam() : Boolean
      {
         return this._isTeamLeader && this.teamCount() <= 1;
      }
      
      private function onInviteAcceptClick(evt:Event) : void
      {
         var ad:UiAcceptDecline = UiAcceptDecline(evt.target);
         ad.removeEventListener("BtnAcceptClick",onInviteAcceptClick);
         ad.removeEventListener("BtnDeclineClick",onInviteDeclineClick);
         this.removeAcceptDecline(ad);
         var param:Array = new Array();
         param.push(evt.target.param.id);
         param.push(1);
         var msg:BattleMessage = new BattleMessage("153",param);
         this._gateway.sendMsg(msg);
      }
      
      public function teamCount() : int
      {
         var s:* = null;
         var c:int = 0;
         for(s in this._myTeam)
         {
            c = c + 1;
         }
         return c;
      }
      
      public function inviteUser(actorId:String, userName:String, callback:Function) : void
      {
         var msg:BattleMessage = null;
         var actor:BaseActor = null;
         if(ActorManager.getInstance().myActor.isGuestUser())
         {
            GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.INVALID_GUEST_OPERATION,{}));
            return;
         }
         if(this._teamList.length < TeamManager.TEAM_MAX)
         {
            msg = new BattleMessage("invite",{"id":actorId});
            if(null != callback)
            {
               msg.addEventListener(BattleEvent.CALL_BACK,callback);
            }
            this._gateway.sendMsg(msg);
            if(this.teamInvite[actorId] == null)
            {
               this.teamInvite[actorId] = new Timer(30000,1);
               actor = ActorManager.actorIdToActor(actorId);
               Timer(this.teamInvite[actorId]).start();
               Timer(this.teamInvite[actorId]).addEventListener(TimerEvent.TIMER,function(evt:TimerEvent):void
               {
                  GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.LEFT_TEAM,{"actorId":actorId}));
                  Timer(evt.target).stop();
                  teamInvite[actorId] = null;
                  delete teamInvite[actorId];
                  Timer(evt.target).removeEventListener(TimerEvent.TIMER,arguments.callee);
               });
            }
         }
      }
   }
}

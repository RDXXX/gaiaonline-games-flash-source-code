package com.gaiaonline.battle.map
{
   import com.gaiaonline.battle.emotes.TalkIcon;
   import com.gaiaonline.battle.newactors.ActorDisplay;
   import com.gaiaonline.battle.newactors.ActorManager;
   import com.gaiaonline.battle.newactors.ActorMoveEvent;
   import com.gaiaonline.battle.newactors.BaseActor;
   import com.gaiaonline.battle.utils.BattleUtils;
   import com.gaiaonline.display.wordbubble.BubbleEvent;
   import com.gaiaonline.flexModulesAPIs.globalevent.GlobalEvent;
   import com.gaiaonline.platform.map.ITalkIconManager;
   import com.gaiaonline.utils.DisplayObjectStopper;
   import com.gaiaonline.utils.DisplayObjectStopperModes;
   import com.gaiaonline.utils.DisplayObjectUtils;
   import com.gaiaonline.utils.FrameTimer;
   import com.gaiaonline.utils.VisManagerSingleParent;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class TalkIconManager implements ITalkIconManager
   {
       
      
      private var _talkIconLayer:Sprite = null;
      
      private var _talkIcons:Dictionary;
      
      private var talkIconStopper:DisplayObjectStopper;
      
      private var visManager:VisManagerSingleParent = null;
      
      private var _invalidActors:Dictionary;
      
      private var _frameTimer:FrameTimer;
      
      public function TalkIconManager()
      {
         _talkIcons = new Dictionary(true);
         _invalidActors = new Dictionary(true);
         _frameTimer = new FrameTimer(onFrame);
         talkIconStopper = new DisplayObjectStopper(DisplayObjectStopperModes.SHOW_NO_ANIM,true);
         super();
         _talkIconLayer = new Sprite();
         _talkIconLayer.addEventListener(Event.ADDED,onAdded,false,0,true);
         this.talkIconStopper.addGarbageStopper(this._talkIconLayer);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.MAP_SET_DIALOG_BUTTON_VISIBLE,setDialogBtnVisible);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.MAP_REMOVE_DIALOG,removeDialogEvent);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.MAP_ADD_DIALOG_BUTTON,addDialogBtn);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.MAP_LOAD_ZONE,onLoadZone);
         _frameTimer.startPerFrame();
      }
      
      public function removeDialog(dispObj:DisplayObject) : void
      {
         var talkIcon:TalkIcon = null;
         var actor:BaseActor = dispObj as BaseActor;
         if(actor)
         {
            talkIcon = _talkIcons[actor];
            if(talkIcon)
            {
               talkIcon.removeEventListener(MouseEvent.CLICK,onClick);
               if(talkIcon.parent == _talkIconLayer)
               {
                  _talkIconLayer.removeChild(talkIcon);
               }
               delete _talkIcons[actor];
               talkIcon.dispose();
            }
         }
      }
      
      private function onActorMove(e:ActorMoveEvent) : void
      {
         _invalidActors[e.actor] = true;
      }
      
      private function removeDialogEvent(event:GlobalEvent) : void
      {
         var actorId:String = event.data.actor_id;
         removeDialog(ActorManager.actorIdToActor(actorId));
      }
      
      private function addDialogBtn(event:GlobalEvent) : void
      {
         var talkIcon:TalkIcon = null;
         var actor:BaseActor = event.data.actor;
         var priority:int = event.data.priority;
         if(_talkIcons[actor])
         {
            (_talkIcons[actor] as TalkIcon).state = priority;
         }
         else
         {
            talkIcon = new TalkIcon(_talkIconLayer,priority);
            talkIcon.addEventListener(MouseEvent.CLICK,onClick,false,0,true);
            actor.addEventListener(Event.REMOVED_FROM_STAGE,onActorGone,false,0,true);
            actor.addEventListener(ActorMoveEvent.MOVE,onActorMove,false,0,true);
            _talkIcons[actor] = talkIcon;
            talkIcon.addEventListener(BubbleEvent.BTN_CLICK,onClick,false,0,true);
            this._talkIconLayer.addChild(talkIcon);
            _invalidActors[actor] = true;
         }
      }
      
      private function clear() : void
      {
         var talkIconObj:Object = null;
         var talkIcon:TalkIcon = null;
         for each(talkIconObj in _talkIcons)
         {
            talkIcon = talkIconObj as TalkIcon;
            talkIcon.dispose();
         }
         BattleUtils.cleanDictionary(_talkIcons);
      }
      
      private function onActorGone(event:Event) : void
      {
         var actor:BaseActor = event.target as BaseActor;
         actor.removeEventListener(event.type,arguments.callee);
         removeDialog(actor);
      }
      
      public function getTalkIconLayer() : DisplayObject
      {
         return _talkIconLayer;
      }
      
      private function setDialogBtnVisible(event:GlobalEvent) : void
      {
         this.visManager.setVisible(this._talkIconLayer,event.data.visible);
      }
      
      private function onAdded(event:Event) : void
      {
         visManager = new VisManagerSingleParent(_talkIconLayer.parent);
         (event.currentTarget as IEventDispatcher).removeEventListener(event.type,arguments.callee);
      }
      
      private function setOrientation(talkIcon:TalkIcon, actor:BaseActor) : void
      {
         var actorBound:Sprite = actor.getActorBound();
         var bound:Rectangle = actorBound.getBounds(_talkIconLayer);
         talkIcon.x = bound.left + bound.width / 2;
         talkIcon.y = bound.top;
         var actorDisplay:ActorDisplay = actor.getActorDisplay();
         var d:Number = actorDisplay.scaleX / Math.abs(actorDisplay.scaleX);
         talkIcon.setDirVar(d);
      }
      
      public function contains(dispObj:DisplayObject) : Boolean
      {
         return _talkIconLayer.contains(dispObj);
      }
      
      private function onClick(event:Event) : void
      {
         var talkIcon:TalkIcon = event.currentTarget as TalkIcon;
         var e:BubbleEvent = new BubbleEvent(BubbleEvent.BTN_CLICK,getActorFromTalkIcon(talkIcon),null);
         GlobalEvent.eventDispatcher.dispatchEvent(e);
      }
      
      private function onFrame() : void
      {
         var actorObj:* = null;
         var actor:BaseActor = null;
         var actorDisplay:ActorDisplay = null;
         var actorBound:Sprite = null;
         var talkIcon:TalkIcon = null;
         for(actorObj in _invalidActors)
         {
            actor = actorObj as BaseActor;
            actorDisplay = actor.getActorDisplay();
            actorBound = actor.getActorBound();
            if(!(!actorDisplay || !actorBound))
            {
               talkIcon = _talkIcons[actor];
               if(talkIcon)
               {
                  setOrientation(talkIcon,actor);
               }
            }
         }
         BattleUtils.cleanDictionary(_invalidActors);
      }
      
      private function onLoadZone(event:GlobalEvent) : void
      {
         DisplayObjectUtils.ClearAllChildrens(_talkIconLayer);
         clear();
      }
      
      private function getActorFromTalkIcon(talkIcon:TalkIcon) : BaseActor
      {
         var actor:BaseActor = null;
         var actorObj:* = null;
         for(actorObj in _talkIcons)
         {
            actor = actorObj as BaseActor;
            if(_talkIcons[actor] == talkIcon)
            {
               return actor;
            }
         }
         return null;
      }
   }
}

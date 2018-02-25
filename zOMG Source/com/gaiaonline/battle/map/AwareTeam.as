package com.gaiaonline.battle.map
{
   import com.gaiaonline.battle.ConColors;
   import com.gaiaonline.battle.newactors.ActorManager;
   import com.gaiaonline.battle.newactors.ActorMoveEvent;
   import com.gaiaonline.battle.newactors.BaseActor;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   
   public class AwareTeam extends AwareObject
   {
       
      
      private var _conColor:Number = NaN;
      
      private var _actor:BaseActor = null;
      
      public function AwareTeam()
      {
         super();
      }
      
      override public function reset() : void
      {
         this.setVisible(false);
         _conColor = NaN;
         _myParent = null;
         super.reset();
         this.dispose();
         _actor = null;
      }
      
      private function onTeamMateMove(evt:ActorMoveEvent) : void
      {
         var roomPt:Point = null;
         var scale:Number = NaN;
         var radius:Number = NaN;
         var ct:ColorTransform = null;
         var playerRoom:MapRoom = this._mapRoomManager.getCurrentMapRoom();
         if(playerRoom != null)
         {
            if(_myParent == null)
            {
               _myParent = this.parent;
            }
            roomPt = playerRoom.getRoomOffset();
            _serverLoc = _actor.position;
            scale = calculateScale();
            radius = 3.5;
            this.rotation = 0;
            if(scale > 0)
            {
               this.scaleX = this.scaleY = scale / 2;
               ct = this.transform.colorTransform;
               ct.color = this._conColor;
               ct.alphaMultiplier = MAX_ALPHA;
               this.transform.colorTransform = ct;
               this.setVisible(true);
            }
            else
            {
               this.setVisible(false);
            }
            this.x = roomPt.x + (_drawX || _actor.position.x * playerRoom.scale / 100);
            this.y = roomPt.y + (_drawY || _actor.position.y * playerRoom.scale / 100);
         }
      }
      
      public function initialize(args:Array) : void
      {
         var mapRoomManager:IMapRoomManager = args[0];
         var dir:String = args[1];
         var actor:BaseActor = args[2];
         super.init(mapRoomManager,dir,actor.roomId);
         _actor = actor;
         _scaleRoomDistance = 1;
         _actor.addEventListener(ActorMoveEvent.MOVE,onTeamMateMove,false,0,true);
         _conColor = ConColors.getInstance().getConColorForDiff(_actor.getSuppressedCL() - ActorManager.getInstance().myActor.getSuppressedCL());
      }
      
      public function dispose() : void
      {
         _actor.removeEventListener(ActorMoveEvent.MOVE,onTeamMateMove,false);
      }
   }
}

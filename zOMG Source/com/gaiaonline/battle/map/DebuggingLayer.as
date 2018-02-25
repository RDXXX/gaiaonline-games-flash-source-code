package com.gaiaonline.battle.map
{
   import com.gaiaonline.battle.ApplicationInterfaces.IUIFramework;
   import com.gaiaonline.battle.gateway.BattleEvent;
   import com.gaiaonline.battle.gateway.BattleGateway;
   import com.gaiaonline.battle.newactors.ActorManager;
   import com.gaiaonline.battle.newactors.ActorMoveEvent;
   import com.gaiaonline.flexModulesAPIs.globalevent.GlobalEvent;
   import com.gaiaonline.utils.FrameTimer;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   
   public class DebuggingLayer extends Sprite
   {
       
      
      private var targets:Dictionary;
      
      private var _gateway:BattleGateway = null;
      
      private var _uiFramework:IUIFramework = null;
      
      private var id:int;
      
      private var _frameTimer:FrameTimer;
      
      private var kLifeTimeMsec:int = 2500;
      
      private var room:MapRoom;
      
      public function DebuggingLayer(gateway:BattleGateway, uiFramework:IUIFramework)
      {
         _frameTimer = new FrameTimer(runOnce);
         super();
         this._gateway = gateway;
         this._uiFramework = uiFramework;
         graphics.clear();
         this._gateway.addEventListener(BattleEvent.DEBUG_DRAW_TARGET,onDebugDrawTarget,false,0,true);
         GlobalEvent.eventDispatcher.addEventListener(GlobalEvent.PLAYER_CREATED,onPlayerInfo,false,0,true);
         targets = new Dictionary();
         id = 0;
         this._frameTimer.start(250,1);
      }
      
      private function onPlayerInfo(evt:GlobalEvent) : void
      {
         ActorManager.getInstance().myActor.addEventListener(ActorMoveEvent.MOVE,onPlayerMove,false,0,true);
      }
      
      public function processExistingTargets() : void
      {
         var tid:* = null;
         var target:Object = null;
         var id:int = 0;
         var tdiff:int = 0;
         var scale:Number = NaN;
         var now:int = new Date().getTime();
         var kept:Dictionary = new Dictionary();
         for(tid in targets)
         {
            target = targets[tid];
            if(target.dieTime > now)
            {
               id = target.id;
               kept[id] = target;
               tdiff = target.dieTime - now;
               scale = tdiff / kLifeTimeMsec;
               target.sprite.alpha = scale;
            }
            else
            {
               removeChild(target.sprite);
               delete target.sprite;
            }
         }
         targets = kept;
      }
      
      private function onDebugDrawTarget(evt:BattleEvent) : void
      {
         var obj:Object = evt.battleMessage.responseObj[0];
         addTarget(obj.px,obj.py,obj.roomName,obj.colorRRGGBB);
      }
      
      private function runOnce() : void
      {
         processExistingTargets();
      }
      
      private function onPlayerMove(evt:ActorMoveEvent) : void
      {
         var currentRoom:MapRoom = this._uiFramework.map.getCurrentMapRoom();
         if(currentRoom != room)
         {
            room = currentRoom;
            clearTargets();
         }
      }
      
      public function addTarget(x:int, y:int, roomID:String, color:int) : void
      {
         var offset:Point = null;
         var radius:int = 0;
         var target:Object = null;
         var room:MapRoom = this._uiFramework.map.getRoomById(roomID);
         if(room != null)
         {
            x = x * (room.scale / 100);
            y = y * (room.scale / 100);
            offset = room.getRoomOffset();
            x = x + offset.x;
            y = y + offset.y;
            radius = 10;
            target = new Object();
            target.sprite = new Sprite();
            target.sprite.graphics.clear();
            target.sprite.graphics.lineStyle(2,color);
            target.sprite.graphics.drawCircle(x,y,radius);
            target.sprite.graphics.moveTo(x - radius,y - radius);
            target.sprite.graphics.lineTo(x + radius,y + radius);
            target.sprite.graphics.moveTo(x - radius,y + radius);
            target.sprite.graphics.lineTo(x + radius,y - radius);
            target.id = id;
            target.dieTime = new Date().getTime() + kLifeTimeMsec;
            targets[id] = target;
            id++;
            this.addChild(target.sprite);
         }
      }
      
      private function clearTargets() : void
      {
         var tid:* = null;
         var target:Object = null;
         for(tid in targets)
         {
            target = targets[tid];
            removeChild(target.sprite);
            delete target.sprite;
         }
         targets = new Dictionary();
      }
   }
}

package com.gaiaonline.battle.map
{
   import com.gaiaonline.flexModulesAPIs.globalevent.GlobalEvent;
   import com.gaiaonline.utils.DisplayObjectUtils;
   import com.gaiaonline.utils.FrameTimer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class MapMover extends EventDispatcher
   {
      
      public static const MAP_SLIDE_DONE:String = "mapMover_map_slide_done";
       
      
      private var mapTx:Number = 0;
      
      private var mapTy:Number = 0;
      
      private var _mapSliding:Boolean = false;
      
      private var environment:Environment = null;
      
      private var _map:Map = null;
      
      private var _time:int = 0;
      
      private var _slideSpeed:Number = 250;
      
      private var _frameTimer:FrameTimer = null;
      
      private var _slideDist:Number = 500;
      
      private var mapX:Number = 0;
      
      private var mapY:Number = 0;
      
      public function MapMover(map:Map)
      {
         super();
         _map = map;
         _frameTimer = new FrameTimer(onEnterFrame);
         _frameTimer.startPerFrame();
         environment = new Environment(map);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.ENVIRONMENT_OFFSET_CHANGED,onEnvironmentOffsetChanged);
      }
      
      private function updatePos() : void
      {
         var nx:Number = Math.round(this.mapX * _map.scaleX);
         var ny:Number = Math.round(this.mapY * _map.scaleY);
         _map.x = nx + environment.offset.x;
         _map.y = ny + environment.offset.y;
      }
      
      private function onEnvironmentOffsetChanged(e:GlobalEvent) : void
      {
         updatePos();
      }
      
      public function slideToRoom(room:MapRoom) : void
      {
         this._mapSliding = true;
         this.mapTx = -(room.layoutPos.x * 780);
         this.mapTy = -(room.layoutPos.y * 505);
         var dx:Number = this.mapTx - this.mapX;
         var dy:Number = this.mapTy - this.mapY;
         this._slideDist = Math.sqrt(dx * dx + dy * dy);
         this.updatePos();
      }
      
      public function moveToRoom(room:MapRoom) : void
      {
         var p:Point = new Point(room.layoutPos.x * 780,room.layoutPos.y * 505);
         this.mapX = -p.x;
         this.mapY = -p.y;
         this.mapTx = -p.x;
         this.mapTy = -p.y;
         updatePos();
      }
      
      public function get mapSliding() : Boolean
      {
         return _mapSliding;
      }
      
      private function onEnterFrame() : void
      {
         var currTimer:int = 0;
         var dt:int = 0;
         var dx:Number = NaN;
         var dy:Number = NaN;
         var angle:Number = NaN;
         var vx:Number = NaN;
         var vy:Number = NaN;
         currTimer = getTimer();
         dt = currTimer - this._time;
         this._time = currTimer;
         dx = this.mapTx - this.mapX;
         dy = this.mapTy - this.mapY;
         var dist:Number = Math.sqrt(dx * dx + dy * dy);
         var speed:Number = this._slideDist * (dt / this._slideSpeed);
         if(dist >= speed)
         {
            angle = Math.atan2(dy,dx);
            vx = speed * Math.cos(angle);
            vy = speed * Math.sin(angle);
            this.mapX = this.mapX + vx;
            this.mapY = this.mapY + vy;
            this.updatePos();
         }
         else if(this._mapSliding)
         {
            this.mapX = this.mapTx;
            this.mapY = this.mapTy;
            this.updatePos();
            this._mapSliding = false;
            dispatchEvent(new Event(MAP_SLIDE_DONE));
         }
      }
   }
}

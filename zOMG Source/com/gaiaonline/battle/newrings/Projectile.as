package com.gaiaonline.battle.newrings
{
   import com.gaiaonline.battle.ApplicationInterfaces.IUIFramework;
   import com.gaiaonline.battle.map.MapRoom;
   import com.gaiaonline.battle.newactors.BaseActor;
   import com.gaiaonline.flexModulesAPIs.globalevent.GlobalEvent;
   import com.gaiaonline.utils.SpritePositionBubbler;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class Projectile extends SpritePositionBubbler implements IProjectile
   {
       
      
      private var mcRage:MovieClip;
      
      private var time:Number = 0;
      
      private var _uiFramework:IUIFramework = null;
      
      private var mcProjectile:MovieClip;
      
      private var targetActor:Object;
      
      private var position:Point;
      
      private var ringId:String;
      
      private var totalTime:Number = 0;
      
      private var rageLevel:Number = 0;
      
      private var lastFrame:int = 0;
      
      public function Projectile(uiFramework:IUIFramework, ringId:String, rageLevel:Number, targetActor:Object, positionX:Number, positionY:Number, speed:Number = -1)
      {
         var classP:Class = null;
         position = new Point(0,0);
         super();
         this._uiFramework = uiFramework;
         this.ringId = ringId;
         this.rageLevel = rageLevel;
         this.targetActor = targetActor;
         this.position.x = positionX;
         this.position.y = positionY;
         var r:Ring = RingLoadManager.getRing(this.ringId);
         var dx:Number = this.position.x;
         var dy:Number = this.position.y;
         if(this.targetActor is BaseActor)
         {
            dx = this.targetActor.position.x - this.position.x;
            dy = this.targetActor.position.y - this.position.y;
         }
         else if(this.targetActor is Point)
         {
            dx = this.targetActor.x - this.position.x;
            dy = this.targetActor.y - this.position.y;
         }
         var dist:Number = Math.sqrt(dx * dx + dy * dy);
         if(speed > 0)
         {
            this.time = dist / speed;
         }
         else
         {
            this.time = dist / r.projectileSpeed;
         }
         this.totalTime = this.time;
         if(r.mcAnimRef.getChildByName("projectile") != null)
         {
            classP = Sprite(r.mcAnimRef.getChildByName("projectile"))["constructor"];
            this.mcProjectile = new classP();
            Sprite(this.mcProjectile["r0"]).visible = false;
            Sprite(this.mcProjectile["r1"]).visible = false;
            Sprite(this.mcProjectile["r2"]).visible = false;
            Sprite(this.mcProjectile["r3"]).visible = false;
            this.mcRage = this.mcProjectile["r" + this.rageLevel];
            this.mcRage.visible = true;
         }
         this.lastFrame = getTimer();
         this.addChild(this.mcProjectile);
         this.addEventListener(Event.ENTER_FRAME,onEnterFrame);
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.MAP_ADD_PROJECTILE,{"projectile":this}));
      }
      
      public function setDir(angle:Number) : void
      {
         angle = angle - 90;
         if(angle < 0)
         {
            angle = 360 + angle;
         }
         else if(angle > 360)
         {
            angle = angle - Math.floor(angle / 360) * 360;
         }
         if(angle > 180)
         {
            this.mcRage.scaleX = -1;
         }
         else
         {
            this.mcRage.scaleX = 1;
         }
         angle = Math.abs(180 - Math.abs(angle - 180));
         this.mcRage.gotoAndStop(Math.round(angle));
      }
      
      public function updateMcPosition() : void
      {
         var mapOffset:Point = null;
         var scale:Number = 0.75;
         var mapOffsetX:Number = 0;
         var mapOffsetY:Number = 0;
         var m:MapRoom = this._uiFramework.map.getCurrentMapRoom();
         if(m != null)
         {
            scale = m.scale / 100;
            mapOffset = m.getRoomOffset();
            mapOffsetX = m.getRoomOffset().x;
            mapOffsetY = m.getRoomOffset().y;
         }
         this.scaleX = this.scaleY = scale;
         this.x = Math.round(this.position.x * scale) + mapOffsetX;
         this.y = Math.round(this.position.y * scale) + mapOffsetY;
      }
      
      public function setPos(x:Number, y:Number) : void
      {
         this.position.x = x;
         this.position.y = y;
         this.updateMcPosition();
      }
      
      public function dispose() : void
      {
         this.removeEventListener(Event.ENTER_FRAME,onEnterFrame);
         if(this.mcProjectile != null)
         {
            while(this.mcProjectile.numChildren > 0)
            {
               this.mcProjectile.removeChildAt(0);
            }
            this.removeChild(this.mcProjectile);
         }
         this.mcProjectile = null;
      }
      
      public function onEnterFrame(evt:Event) : void
      {
         var dx:Number = NaN;
         var dy:Number = NaN;
         var dist:Number = NaN;
         var moveSpeed:Number = NaN;
         var spd:Number = NaN;
         var angle:Number = NaN;
         var vx:Number = NaN;
         var vy:Number = NaN;
         var t:Number = getTimer();
         var dt:Number = t - this.lastFrame;
         this.lastFrame = t;
         this.time = this.time - dt / 1000;
         if(this.time > 0)
         {
            dx = this.position.x;
            dy = this.position.y;
            if(this.targetActor is BaseActor)
            {
               dx = this.targetActor.position.x - this.position.x;
               dy = this.targetActor.position.y - this.position.y;
            }
            else if(this.targetActor is Point)
            {
               dx = this.targetActor.x - this.position.x;
               dy = this.targetActor.y - this.position.y;
            }
            dist = Math.sqrt(dx * dx + dy * dy);
            moveSpeed = dist / this.time;
            spd = moveSpeed * (dt / 1000);
            angle = Math.atan2(dy,dx);
            vx = Math.cos(angle) * spd;
            vy = Math.sin(angle) * spd;
            this.position.x = this.position.x + vx;
            this.position.y = this.position.y + vy;
            this.setDir(angle * 180 / Math.PI);
            this.mcProjectile.onMove(1 - this.time / this.totalTime);
            this.updateMcPosition();
         }
         else
         {
            this.removeEventListener(Event.ENTER_FRAME,onEnterFrame);
            GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.MAP_REMOVE_PROJECTILE,{"projectile":this}));
         }
      }
   }
}

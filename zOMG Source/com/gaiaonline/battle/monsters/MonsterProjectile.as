package com.gaiaonline.battle.monsters
{
   import com.gaiaonline.battle.ApplicationInterfaces.IUIFramework;
   import com.gaiaonline.battle.map.MapRoom;
   import com.gaiaonline.battle.map.TintTypes;
   import com.gaiaonline.battle.newactors.BaseActor;
   import com.gaiaonline.battle.newrings.IProjectile;
   import com.gaiaonline.flexModulesAPIs.globalevent.GlobalEvent;
   import com.gaiaonline.platform.actors.ITintable;
   import com.gaiaonline.utils.DisplayObjectUtils;
   import com.gaiaonline.utils.SpritePositionBubbler;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class MonsterProjectile extends SpritePositionBubbler implements ITintable, IProjectile
   {
      
      private static var s_tintColorTransform:ColorTransform = new ColorTransform();
      
      private static var s_mapOffset:Point = new Point(NaN,NaN);
       
      
      private var _uiFramework:IUIFramework = null;
      
      private var time:Number = 0;
      
      private var param:Object;
      
      private var mc:MovieClip;
      
      private var position:Point;
      
      private var targetActor:Object;
      
      private var totalTime:Number = 0;
      
      private var lastFrame:int = 0;
      
      public function MonsterProjectile(uiFramework:IUIFramework, mc:MovieClip, targetActor:Object, position:Point, speed:Number = -1, param:Object = null)
      {
         position = new Point(0,0);
         super();
         this._uiFramework = uiFramework;
         this.targetActor = targetActor;
         this.position = position;
         this.mc = mc;
         this.param = param;
         if(this.targetActor == null || this.position == null)
         {
            trace("Missing data target: " + this.targetActor + " , position: " + this.position,4);
            return;
         }
         var dx:Number = 0;
         var dy:Number = 0;
         if(this.targetActor is BaseActor)
         {
            dx = this.targetActor.position.x - this.position.x;
            dy = this.targetActor.position.y - this.position.y;
         }
         else if(this.targetActor is Point)
         {
            dx = this.targetActor.x;
            dy = this.targetActor.y;
         }
         var dist:Number = Math.sqrt(dx * dx + dy * dy);
         if(speed <= 0)
         {
            var speed:Number = 1;
         }
         this.time = dist / speed;
         this.totalTime = this.time;
         this.lastFrame = getTimer();
         if(this.mc != null && this.mc.init != null)
         {
            try
            {
               this.mc.init(this.param);
            }
            catch(e:Error)
            {
               trace("Projectile init error: " + e.message,4);
            }
            this.addChild(this.mc);
         }
         this.addEventListener(Event.ENTER_FRAME,onEnterFrame);
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.MAP_ADD_PROJECTILE,{"projectile":this}));
      }
      
      public function updateMcPosition() : void
      {
         var mOffset:Point = null;
         var scale:Number = 0.75;
         s_mapOffset.x = 0;
         s_mapOffset.y = 0;
         var m:MapRoom = this._uiFramework.map.getCurrentMapRoom();
         if(m != null)
         {
            scale = m.scale / 100;
            mOffset = m.getRoomOffset();
            s_mapOffset.x = mOffset.x;
            s_mapOffset.y = mOffset.y;
         }
         this.scaleX = this.scaleY = scale;
         this.x = Math.round(this.position.x * scale) + s_mapOffset.x;
         this.y = Math.round(this.position.y * scale) + s_mapOffset.y;
      }
      
      public function dispose() : void
      {
         this.removeEventListener(Event.ENTER_FRAME,onEnterFrame);
         if(this.mc != null && this.mc.dispose != null)
         {
            try
            {
               if(this.mc.hasOwnProperty("dispose"))
               {
                  this.mc.dispose();
               }
            }
            catch(e:Error)
            {
               trace("Projectile dispose error: " + e.message,4);
            }
         }
         DisplayObjectUtils.ClearAllChildrens(this);
         this.targetActor = null;
         this.mc = null;
      }
      
      public function getTintType() : TintTypes
      {
         return TintTypes.ALL;
      }
      
      private function onEnterFrame(evt:Event) : void
      {
         var dx:Number = NaN;
         var dy:Number = NaN;
         var dist:Number = NaN;
         var moveSpeed:Number = NaN;
         var spd:Number = NaN;
         var angle:Number = NaN;
         var vx:Number = NaN;
         var vy:Number = NaN;
         var dir:Number = NaN;
         var t:Number = getTimer();
         var dt:Number = t - this.lastFrame;
         this.lastFrame = t;
         this.time = this.time - dt / 1000;
         if(this.time > 0)
         {
            dx = 0;
            dy = 0;
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
            dir = angle * (180 / Math.PI);
            if(this.mc != null && this.mc.onMove != null)
            {
               try
               {
                  this.mc.onMove(1 - this.time / this.totalTime,dir);
               }
               catch(e:Error)
               {
                  trace("Projectile onMove error: " + e.message,4);
               }
            }
            this.updateMcPosition();
         }
         else
         {
            this.removeEventListener(Event.ENTER_FRAME,onEnterFrame);
            GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.MAP_REMOVE_PROJECTILE,{"projectile":this}));
         }
      }
      
      public function setTint(r:int, g:int, b:int) : void
      {
         if(this.mc != null && this.mc.useTint == true)
         {
            s_tintColorTransform.redMultiplier = r / 256;
            s_tintColorTransform.blueMultiplier = b / 256;
            s_tintColorTransform.greenMultiplier = g / 256;
            s_tintColorTransform.alphaMultiplier = 1;
            this.transform.colorTransform = s_tintColorTransform;
         }
      }
   }
}

package com.gaiaonline.battle.Loot
{
   import com.gaiaonline.battle.map.TintTypes;
   import com.gaiaonline.flexModulesAPIs.globalevent.GlobalEvent;
   import com.gaiaonline.objectPool.LoaderFactory;
   import com.gaiaonline.platform.actors.ITintable;
   import com.gaiaonline.utils.DisplayObjectStopper;
   import com.gaiaonline.utils.DisplayObjectStopperModes;
   import com.gaiaonline.utils.SpritePositionBubbler;
   import com.gaiaonline.utils.factories.ILoaderContextFactory;
   import flash.display.DisplayObject;
   import flash.display.Loader;
   import flash.display.LoaderInfo;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.geom.Point;
   import flash.net.URLRequest;
   
   public class LootParticle extends SpritePositionBubbler implements ITintable
   {
       
      
      private var vx:Number;
      
      private var vy:Number;
      
      private var _garbageStopper:DisplayObjectStopper;
      
      private var speed:Number;
      
      private var scale:Number;
      
      private var mcItem:Sprite;
      
      private var target:DisplayObject;
      
      private var angle:Number;
      
      public var id:String;
      
      private var assetLoader:Loader;
      
      private var zSpeed:Number;
      
      public var value:int = 0;
      
      private var _loaderContextFactory:ILoaderContextFactory;
      
      private var phase:int;
      
      public function LootParticle()
      {
         _garbageStopper = new DisplayObjectStopper(DisplayObjectStopperModes.SHOW_NO_ANIM,true);
         super();
         reset();
         _garbageStopper.addGarbageStopper(this);
      }
      
      private function checkInLoader() : void
      {
         if(null != assetLoader)
         {
            removeEventListenersFromAssetLoader();
            LoaderFactory.getInstance().checkIn(assetLoader);
            assetLoader = null;
         }
      }
      
      public function getTintType() : TintTypes
      {
         return TintTypes.NONE;
      }
      
      public function setTint(r:int, g:int, b:int) : void
      {
      }
      
      public function reset() : void
      {
         checkInLoader();
         if(this.mcItem && this.mcItem.parent == this)
         {
            this.removeChild(this.mcItem);
         }
         this.mcItem = null;
         this._loaderContextFactory = null;
         this.removeEventListener(Event.ENTER_FRAME,onEnterFrame);
         this.target = null;
         this.phase = 0;
         this.zSpeed = -30;
         this.angle = 0;
         this.speed = 4;
         this.vx = 0;
         this.vy = 0;
         this.scale = 100;
         this.value = 0;
      }
      
      private function onEnterFrame(evt:Event) : void
      {
         var dx:Number = NaN;
         var dy:Number = NaN;
         var dist:Number = NaN;
         var a:Number = NaN;
         if(this.phase == 0)
         {
            this.mcItem.y = this.mcItem.y + this.zSpeed;
            if(this.mcItem.y >= 0)
            {
               if(this.zSpeed > 6 * this.scale)
               {
                  this.zSpeed = -this.zSpeed + 7 * this.scale;
               }
               else
               {
                  this.mcItem.x = 0;
                  this.phase = 1;
               }
            }
            this.zSpeed = this.zSpeed + 5 * this.scale;
            this.x = this.x + this.vx;
            this.y = this.y + this.vy;
         }
         else if(this.phase == 1)
         {
            dx = this.target.x - this.x;
            dy = this.target.y - this.y;
            dist = Math.sqrt(dx * dx + dy * dy);
            if(dist <= this.speed)
            {
               this.x = this.target.x;
               this.y = this.target.y;
               GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.LOOT_PARTICLE_ANIM_DONE,{"particle":this}));
            }
            else
            {
               a = Math.atan2(dy,dx);
               this.vx = this.speed * Math.cos(a);
               this.vy = this.speed * Math.sin(a);
               this.x = this.x + this.vx;
               this.y = this.y + this.vy;
               this.speed = this.speed + 3 * this.scale;
            }
         }
      }
      
      private function onLoaded(evt:Event) : void
      {
         mcItem.addChild(assetLoader.content);
         checkInLoader();
      }
      
      public function destruct() : void
      {
         this.reset();
      }
      
      private function removeEventListenersFromAssetLoader() : void
      {
         assetLoader.contentLoaderInfo.removeEventListener(Event.COMPLETE,onLoaded);
         assetLoader.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,onIoError);
      }
      
      private function onIoError(evt:IOErrorEvent) : void
      {
         trace("missing Loot image" + LoaderInfo(evt.target).loaderURL);
         checkInLoader();
      }
      
      private function load(url:String) : void
      {
         if(url != null)
         {
            assetLoader = LoaderFactory.getInstance().checkOut();
            assetLoader.contentLoaderInfo.addEventListener(Event.COMPLETE,onLoaded);
            assetLoader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,onIoError);
            assetLoader.load(new URLRequest(url),this._loaderContextFactory.getLoaderContext());
         }
      }
      
      public function dropLoot(loaderContextFactory:ILoaderContextFactory, url:String, lootPoint:Point, target:DisplayObject, angle:int = 0, scale:Number = 0.75, value:int = 1, id:String = null) : void
      {
         this.value = value;
         this.id = id;
         this._loaderContextFactory = loaderContextFactory;
         this.mcItem = new Sprite();
         this.addChild(this.mcItem);
         this.target = target;
         this.scale = scale;
         this.scaleX = this.scaleY = this.scale * 1.3333333;
         this.zSpeed = this.zSpeed * this.scale;
         this.speed = this.speed * this.scale;
         this.angle = (angle + 90) * (Math.PI / 180);
         this.vx = this.speed * Math.cos(this.angle);
         this.vy = this.speed * Math.sin(this.angle);
         this.x = lootPoint.x;
         this.y = lootPoint.y;
         load(url);
         this.addEventListener(Event.ENTER_FRAME,onEnterFrame);
      }
   }
}

package com.gaiaworld.avatar.view.parts
{
   import fl.transitions.Tween;
   import fl.transitions.TweenEvent;
   import fl.transitions.easing.None;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.filters.BlurFilter;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.net.URLRequest;
   
   public class Arm extends Sprite
   {
       
      
      public var armMask:MovieClip;
      
      private var bmd:BitmapData;
      
      private var loader:Loader;
      
      private var bitmap:Bitmap;
      
      private var myTween:Tween;
      
      private var blur:BlurFilter;
      
      public function Arm()
      {
         this.loader = new Loader();
         this.blur = new BlurFilter(8,2,1);
         super();
         this.loader.contentLoaderInfo.addEventListener(Event.COMPLETE,this.loaded);
         this.alpha = 0;
      }
      
      private function loaded(param1:Event) : void
      {
         this.bitmap = Bitmap(this.loader.content);
         this.setBitmapData(this.bitmap.bitmapData);
      }
      
      public function setStrip(param1:String) : *
      {
         this.loader.load(new URLRequest(param1));
      }
      
      public function setBitmapData(param1:BitmapData) : *
      {
         this.bmd = param1;
         var _loc2_:BitmapData = new BitmapData(120,150,true);
         _loc2_.copyPixels(param1,new Rectangle(65,68,28,40),new Point(0,0));
         var _loc3_:Bitmap = new Bitmap(_loc2_);
         _loc3_.x = -12;
         _loc3_.y = 0;
         _loc3_.filters = [this.blur];
         this.armMask.x = _loc3_.x + 12;
         this.armMask.y = _loc3_.y;
         this.addChild(_loc3_);
         this.setChildIndex(this.armMask,this.numChildren - 1);
         _loc3_.mask = this.armMask;
      }
      
      public function shake() : *
      {
         this.alpha = 0.8;
         this.myTween = new Tween(this,"rotation",None.easeNone,0,90,2,false);
         this.myTween.addEventListener(TweenEvent.MOTION_FINISH,this.returnShake);
      }
      
      private function returnShake(param1:TweenEvent) : *
      {
         this.myTween.removeEventListener(TweenEvent.MOTION_FINISH,this.returnShake);
         this.myTween.yoyo();
         this.myTween.addEventListener(TweenEvent.MOTION_FINISH,this.hideMe);
      }
      
      private function hideMe(param1:TweenEvent) : void
      {
         this.myTween.removeEventListener(TweenEvent.MOTION_FINISH,this.hideMe);
         this.alpha = 0;
      }
   }
}

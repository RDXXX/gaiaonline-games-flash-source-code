package com.gaiaworld.avatar.effects
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.TimerEvent;
   import flash.filters.ColorMatrixFilter;
   import flash.utils.Timer;
   
   public class Static extends Sprite
   {
       
      
      private var bmp:Bitmap;
      
      private var imgData:BitmapData;
      
      var myTimer:Timer;
      
      public function Static()
      {
         this.myTimer = new Timer(50);
         super();
      }
      
      public function setData(param1:BitmapData) : *
      {
         this.imgData = param1;
         this.fillBitmapDataWithRandomPixels(param1);
         this.bmp = new Bitmap(param1);
         this.blackAndWhite(this.bmp,true);
         addChild(this.bmp);
         this.myTimer.addEventListener(TimerEvent.TIMER,this.onMyTimer_TIMER);
         this.myTimer.start();
      }
      
      private function onMyTimer_TIMER(param1:TimerEvent) : void
      {
         this.fillBitmapDataWithRandomPixels(this.imgData);
      }
      
      private function blackAndWhite(param1:DisplayObject, param2:Boolean) : void
      {
         var _loc3_:Number = 1 / 3;
         var _loc4_:Number = 1 / 3;
         var _loc5_:Number = 1 / 3;
         var _loc6_:ColorMatrixFilter = new ColorMatrixFilter([_loc3_,_loc4_,_loc5_,0,0,_loc3_,_loc4_,_loc5_,0,0,_loc3_,_loc4_,_loc5_,0,0,0,0,0,1,0]);
         if(param2)
         {
            param1.filters = [_loc6_];
         }
         else
         {
            param1.filters = [];
         }
      }
      
      function fillBitmapDataWithRandomPixels(param1:BitmapData) : void
      {
         var _loc2_:uint = 0;
         var _loc4_:int = 0;
         param1.lock();
         var _loc3_:int = 0;
         while(_loc3_ < param1.height)
         {
            _loc4_ = 0;
            while(_loc4_ < param1.width)
            {
               _loc2_ = Math.random() * 16777215;
               param1.setPixel(_loc4_,_loc3_,_loc2_);
               _loc4_++;
            }
            _loc3_++;
         }
         this.imgData.unlock();
      }
   }
}

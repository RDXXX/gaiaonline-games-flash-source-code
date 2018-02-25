package com.gaiaworld.avatar.util
{
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class BitmapUtil extends EventDispatcher
   {
       
      
      public function BitmapUtil()
      {
         super();
      }
      
      public function setBitmapData(param1:BitmapData, param2:Number = 0) : BitmapData
      {
         var _loc3_:BitmapData = new BitmapData(120,150,true);
         _loc3_.copyPixels(param1,new Rectangle(120 * param2,0,120,150),new Point(0,0));
         return _loc3_;
      }
   }
}

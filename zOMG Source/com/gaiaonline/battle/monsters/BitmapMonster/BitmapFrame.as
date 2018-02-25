package com.gaiaonline.battle.monsters.BitmapMonster
{
   import flash.display.BitmapData;
   
   public class BitmapFrame
   {
       
      
      public var scale:Number = 0;
      
      public var xOffset:Number = 0;
      
      public var yOffest:Number = 0;
      
      public var bitmapData:BitmapData;
      
      public var label:String;
      
      public var index:int = 0;
      
      public var nextFrame:int = 0;
      
      public function BitmapFrame(index:int = 0, bm:BitmapData = null, xOffset:int = 0, yOffset:int = 0, scale:Number = 1, nextFrame:int = 0, label:String = null)
      {
         super();
         this.index = index;
         this.bitmapData = bm;
         this.xOffset = xOffset;
         this.yOffest = yOffset;
         this.nextFrame = nextFrame;
         this.label = label;
         this.scale = scale;
      }
      
      public function dispose() : void
      {
         if(this.bitmapData != null)
         {
            this.bitmapData.dispose();
            this.bitmapData = null;
         }
      }
   }
}

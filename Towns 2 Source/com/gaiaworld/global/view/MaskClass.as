package com.gaiaworld.global.view
{
   import flash.display.Shape;
   
   public class MaskClass extends Shape
   {
       
      
      public function MaskClass(param1:Number, param2:Number)
      {
         super();
         this.graphics.beginFill(0,1);
         this.graphics.drawRect(0,0,param1,param2);
         this.graphics.endFill();
      }
   }
}

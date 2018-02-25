package com.gaiaworld.global.view.ui
{
   import fl.transitions.Tween;
   import fl.transitions.easing.Bounce;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class Compass extends Sprite
   {
       
      
      public var arrow:MovieClip;
      
      public var compassAnimation:MovieClip;
      
      private var dir:Number;
      
      private var myTween:Tween;
      
      public function Compass()
      {
         super();
      }
      
      public function setDir(param1:Number) : *
      {
         this.dir = param1;
         if(param1 != -1)
         {
            this.visible = true;
            this.myTween = new Tween(this.arrow,"rotation",Bounce.easeOut,this.arrow.rotation,45 * (param1 - 1),2,true);
         }
         else
         {
            this.visible = false;
         }
      }
      
      public function setAngle(param1:Number) : *
      {
         this.arrow.rotation = param1 + 90;
      }
   }
}

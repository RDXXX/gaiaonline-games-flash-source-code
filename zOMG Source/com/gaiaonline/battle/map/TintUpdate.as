package com.gaiaonline.battle.map
{
   import fl.motion.Color;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.geom.ColorTransform;
   import flash.utils.Timer;
   
   public class TintUpdate extends EventDispatcher
   {
       
      
      private var rate:int;
      
      private var interval:int;
      
      private var targetColor:ColorTransform;
      
      private var timer:Timer;
      
      private var perRate:Number = 0;
      
      private var mc:DisplayObject;
      
      private var originalColor:ColorTransform;
      
      public var name:String = "";
      
      private var per:Number = 0;
      
      public function TintUpdate(mc:DisplayObject, rate:int, interval:int)
      {
         super();
         this.mc = mc;
         this.rate = rate;
         this.interval = interval;
         this.timer = new Timer(this.interval);
         this.timer.addEventListener(TimerEvent.TIMER,onTimer,false,0,true);
      }
      
      public function setTint(r:int, g:int, b:int, per:Number) : void
      {
         var a:int = per / 100 * 255;
         this.targetColor = new ColorTransform(0,0,0,0,r,g,b,a);
         this.per = 100;
         this.mc.transform.colorTransform = this.targetColor;
         this.dispatchEvent(new Event("TINT_UPDATE"));
      }
      
      private function onTimer(evt:TimerEvent) : void
      {
         this.update();
      }
      
      private function update() : void
      {
         this.per = this.per + this.perRate;
         if(this.per >= 100)
         {
            this.mc.transform.colorTransform = this.targetColor;
            this.timer.stop();
         }
         else
         {
            this.mc.transform.colorTransform = Color.interpolateTransform(this.originalColor,this.targetColor,this.per / 100);
         }
         this.dispatchEvent(new Event("TINT_UPDATE"));
      }
      
      public function updateTint(r:int, g:int, b:int, per:int = 100) : void
      {
         var c:ColorTransform = null;
         var na:int = 0;
         var nr:int = 0;
         var ng:int = 0;
         var nb:int = 0;
         var ca:int = 0;
         var cr:int = 0;
         var cg:int = 0;
         var cb:int = 0;
         var dif:int = 0;
         var t:Number = NaN;
         var a:int = per / 100 * 255;
         if(this.targetColor != null && this.targetColor.redOffset == r && this.targetColor.greenOffset == g && this.targetColor.blueOffset == b && this.targetColor.alphaOffset == a)
         {
            return;
         }
         this.targetColor = new ColorTransform(0,0,0,0,r,g,b,a);
         this.originalColor = this.mc.transform.colorTransform;
         if(this.targetColor.color != this.originalColor.color || this.targetColor.alphaOffset != this.originalColor.alphaOffset)
         {
            c = Color.interpolateTransform(this.originalColor,this.targetColor,per / 100);
            na = per / 100 * 255;
            nr = c.redOffset;
            ng = c.greenOffset;
            nb = c.blueOffset;
            ca = this.originalColor.alphaOffset;
            cr = this.originalColor.redOffset;
            cg = this.originalColor.greenOffset;
            cb = this.originalColor.blueOffset;
            dif = Math.max(Math.abs(ca - na),Math.abs(cr - nr),Math.abs(cg - ng),Math.abs(cb - nb));
            if(dif > 0)
            {
               t = dif * this.rate / 255;
               this.perRate = 100 / (t / this.interval);
               this.per = 0;
               this.timer.stop();
               this.timer.start();
               this.update();
            }
            else
            {
               this.mc.transform.colorTransform = this.targetColor;
               this.dispatchEvent(new Event("TINT_UPDATE"));
            }
         }
      }
   }
}

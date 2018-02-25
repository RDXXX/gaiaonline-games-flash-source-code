package com.gaiaworld.global.view.ui.gslider
{
   import com.gaiaworld.global.TheStage;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class GSlider extends Sprite
   {
      
      public static const SLIDER_UPDATE:String = "sliderUpdate";
       
      
      public var btnKnob:MovieClip;
      
      private var rect:Rectangle;
      
      public var per:Number = 0;
      
      public var pos:Number = 0;
      
      public function GSlider()
      {
         this.rect = new Rectangle(0,0,120,0);
         super();
         Sprite(this.btnKnob).addEventListener(MouseEvent.MOUSE_DOWN,this.startbtnKnobDrag);
         Sprite(this.btnKnob).addEventListener(MouseEvent.MOUSE_UP,this.stopbtnKnobDrag);
         TheStage.getInstance().addEventListener(MouseEvent.MOUSE_UP,this.stopbtnKnobDrag);
      }
      
      public function setVal(param1:Number) : void
      {
         this.btnKnob.x = param1;
         this.pos = param1;
      }
      
      public function setPer(param1:Number) : void
      {
         this.per = param1;
         this.btnKnob.x = param1 / 100 * 120;
      }
      
      private function stopbtnKnobDrag(param1:MouseEvent) : void
      {
         Sprite(this.btnKnob).removeEventListener(MouseEvent.MOUSE_MOVE,this.btnKnobDragging);
         Sprite(this.btnKnob).stopDrag();
      }
      
      private function startbtnKnobDrag(param1:MouseEvent) : void
      {
         Sprite(this.btnKnob).addEventListener(MouseEvent.MOUSE_MOVE,this.btnKnobDragging);
         Sprite(this.btnKnob).startDrag(false,this.rect);
      }
      
      private function btnKnobDragging(param1:MouseEvent) : void
      {
         this.pos = this.btnKnob.x;
         this.per = 120 / this.btnKnob.x * 100;
         this.dispatchEvent(new Event(SLIDER_UPDATE,true));
      }
   }
}

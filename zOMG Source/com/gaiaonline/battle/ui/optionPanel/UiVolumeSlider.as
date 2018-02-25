package com.gaiaonline.battle.ui.optionPanel
{
   import com.gaiaonline.battle.ui.events.UiEvents;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   
   public class UiVolumeSlider extends MovieClip
   {
      
      private static const FUDGE:int = 10;
       
      
      private var procStep:Number;
      
      public var dragLine:MovieClip;
      
      private var volumeLevel:Number = NaN;
      
      public var proc:TextField;
      
      private var sYBound:Number;
      
      public var redLine:MovieClip;
      
      public var mainHeader:TextField;
      
      private var initObject:Object;
      
      private var sXBound:Number;
      
      public var sliderBtn:MovieClip;
      
      public function UiVolumeSlider()
      {
         super();
      }
      
      private function onStopDrag(evt:MouseEvent) : void
      {
         this.stage.removeEventListener(MouseEvent.MOUSE_MOVE,onDrag);
         this.stage.removeEventListener(MouseEvent.MOUSE_UP,onStopDrag);
         this.sliderBtn.stopDrag();
         fireVolumeEvent();
      }
      
      public function init(initObj:Object) : void
      {
         this.initObject = initObj;
         this.mainHeader.text = this.initObject.title + " VOLUME:";
         this.sliderBtn.buttonMode = true;
         this.sXBound = this.dragLine.x + FUDGE;
         this.sYBound = this.dragLine.y + 1;
         this.procStep = (this.dragLine.width - this.sliderBtn.width) / 100;
         this.sliderBtn.addEventListener(MouseEvent.MOUSE_DOWN,startBtnDrag,false,0,true);
         this.resetToDefault();
      }
      
      private function fireVolumeEvent() : void
      {
         var event:UiEvents = new UiEvents(this.initObject.event,null);
         event.value = this.volumeLevel;
         this.dispatchEvent(event);
      }
      
      public function setVolume(volumeLevel:Number) : void
      {
         if(volumeLevel != this.volumeLevel)
         {
            this.volumeLevel = volumeLevel;
            this.sliderBtn.x = FUDGE + this.dragLine.x + this.procStep * this.volumeLevel;
            this.redLine.width = this.sliderBtn.x - this.dragLine.x;
            this.proc.text = this.volumeLevel + "%";
         }
      }
      
      private function measureVolume() : void
      {
         var newVolume:Number = Math.floor((this.sliderBtn.x - this.dragLine.x - FUDGE) / this.procStep);
         if(newVolume != this.volumeLevel)
         {
            setVolume(newVolume);
            fireVolumeEvent();
         }
      }
      
      private function startBtnDrag(evt:MouseEvent) : void
      {
         this.stage.addEventListener(MouseEvent.MOUSE_MOVE,onDrag,false,0,true);
         this.stage.addEventListener(MouseEvent.MOUSE_UP,onStopDrag,false,0,true);
         var dragLimit:Rectangle = new Rectangle(this.sXBound,this.sYBound,this.dragLine.width - this.sliderBtn.width + 2,0);
         this.sliderBtn.startDrag(true,dragLimit);
         measureVolume();
      }
      
      public function resetToDefault() : void
      {
         this.setVolume(this.initObject._defVol);
      }
      
      public function onDrag(_unused_:Event) : void
      {
         measureVolume();
      }
   }
}

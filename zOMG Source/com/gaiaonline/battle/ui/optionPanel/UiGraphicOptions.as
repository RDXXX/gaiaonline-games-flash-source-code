package com.gaiaonline.battle.ui.optionPanel
{
   import com.gaiaonline.battle.userServerSettings.IGraphicOptionsSettings;
   import com.gaiaonline.flexModulesAPIs.globalevent.GlobalEvent;
   import flash.display.MovieClip;
   import flash.display.Stage;
   import flash.display.StageQuality;
   import flash.events.MouseEvent;
   
   public class UiGraphicOptions extends MovieClip implements IGraphicOptionsSettings
   {
       
      
      private var _stageQuality:String = "high";
      
      public var chkRingAll:MovieClip;
      
      private var _ringAnimationDisplay:String = "all";
      
      public var chkLow:MovieClip;
      
      public var chkSilhouetting:MovieClip;
      
      public var chkHigh:MovieClip;
      
      private var _silhouettingEnabled:Boolean = true;
      
      public var chkRingMe:MovieClip;
      
      public var chkRingCrew:MovieClip;
      
      public var chkMedium:MovieClip;
      
      private var _stage:Stage = null;
      
      public function UiGraphicOptions()
      {
         super();
         this.chkHigh.addEventListener(MouseEvent.CLICK,onGraphicQualityClick);
         this.chkHigh.quality = "high";
         this.chkMedium.addEventListener(MouseEvent.CLICK,onGraphicQualityClick);
         this.chkMedium.quality = "medium";
         this.chkLow.addEventListener(MouseEvent.CLICK,onGraphicQualityClick);
         this.chkLow.quality = "low";
         this.chkSilhouetting.addEventListener(MouseEvent.CLICK,onSilhouettingClick);
         this.chkRingAll.addEventListener(MouseEvent.CLICK,onRingAnimationDisplayClick);
         this.chkRingAll.level = "all";
         this.chkRingCrew.addEventListener(MouseEvent.CLICK,onRingAnimationDisplayClick);
         this.chkRingCrew.level = "crew";
         this.chkRingMe.addEventListener(MouseEvent.CLICK,onRingAnimationDisplayClick);
         this.chkRingMe.level = "me";
         this.setDefault();
         GlobalEvent.eventDispatcher.addEventListener(GlobalEvent.USER_SETTINGS_LOADED,onUserSettingLoaded);
      }
      
      public function getSilhouettingEnabled() : Boolean
      {
         return this._silhouettingEnabled;
      }
      
      private function setDefault() : void
      {
         setStageQuality("high");
         setSilhouetting(true);
         setRingAnimationDisplay("all");
      }
      
      private function onUserSettingLoaded(evt:GlobalEvent) : void
      {
         var data:IGraphicOptionsSettings = evt.data as IGraphicOptionsSettings;
         if(data)
         {
            setStageQuality(data.getStageQuality());
            setSilhouetting(data.getSilhouettingEnabled());
            setRingAnimationDisplay(data.getRingAnimationDisplay());
         }
      }
      
      private function onSilhouettingClick(evt:MouseEvent) : void
      {
         setSilhouetting(!this._silhouettingEnabled);
         var event:GlobalEvent = new GlobalEvent(GlobalEvent.GRAPHIC_OPTIONS_CHANGED,this);
         GlobalEvent.eventDispatcher.dispatchEvent(event);
      }
      
      private function setCheck(chk:MovieClip, value:Boolean) : void
      {
         if(value)
         {
            chk.gotoAndStop("onState");
         }
         else
         {
            chk.gotoAndStop("offState");
         }
      }
      
      private function setSilhouetting(enabled:Boolean) : void
      {
         this._silhouettingEnabled = enabled;
         this.setCheck(this.chkSilhouetting,this._silhouettingEnabled);
      }
      
      public function getStageQuality() : String
      {
         return this._stageQuality;
      }
      
      private function onRingAnimationDisplayClick(evt:MouseEvent) : void
      {
         var event:GlobalEvent = null;
         var chk:MovieClip = evt.target as MovieClip;
         if(String(chk.level).toLowerCase() != this._ringAnimationDisplay)
         {
            this.setRingAnimationDisplay(String(chk.level).toLowerCase());
            event = new GlobalEvent(GlobalEvent.GRAPHIC_OPTIONS_CHANGED,this);
            GlobalEvent.eventDispatcher.dispatchEvent(event);
         }
      }
      
      public function getRingAnimationDisplay() : String
      {
         return this._ringAnimationDisplay;
      }
      
      private function setStageQuality(quality:String) : void
      {
         this._stageQuality = quality.toLowerCase();
         setCheck(this.chkHigh,quality == "high");
         setCheck(this.chkMedium,quality == "medium");
         setCheck(this.chkLow,quality == "low");
         if(this._stage != null)
         {
            switch(this._stageQuality)
            {
               case "low":
                  this._stage.quality = StageQuality.LOW;
                  break;
               case "medium":
                  this._stage.quality = StageQuality.MEDIUM;
                  break;
               case "high":
                  this._stage.quality = StageQuality.HIGH;
            }
         }
      }
      
      private function setRingAnimationDisplay(level:String) : void
      {
         this._ringAnimationDisplay = level;
         setCheck(this.chkRingAll,level == "all");
         setCheck(this.chkRingCrew,level == "crew");
         setCheck(this.chkRingMe,level == "me");
      }
      
      public function resetDefault() : void
      {
         setDefault();
         var event:GlobalEvent = new GlobalEvent(GlobalEvent.GRAPHIC_OPTIONS_CHANGED,this);
         GlobalEvent.eventDispatcher.dispatchEvent(event);
      }
      
      private function onGraphicQualityClick(evt:MouseEvent) : void
      {
         var event:GlobalEvent = null;
         var chk:MovieClip = evt.target as MovieClip;
         if(String(chk.quality).toLowerCase() != this._stageQuality)
         {
            this.setStageQuality(String(chk.quality).toLowerCase());
            event = new GlobalEvent(GlobalEvent.GRAPHIC_OPTIONS_CHANGED,this);
            GlobalEvent.eventDispatcher.dispatchEvent(event);
         }
      }
      
      public function setStage(stage:Stage) : void
      {
         this._stage = stage;
         this.setStageQuality(this._stageQuality);
      }
   }
}

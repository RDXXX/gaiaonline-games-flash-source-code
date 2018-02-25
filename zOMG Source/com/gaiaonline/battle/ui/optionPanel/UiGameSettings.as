package com.gaiaonline.battle.ui.optionPanel
{
   import com.gaiaonline.battle.userServerSettings.IGameSettings;
   import com.gaiaonline.flexModulesAPIs.globalevent.GlobalEvent;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class UiGameSettings extends MovieClip implements IGameSettings
   {
       
      
      public var chkRingAutoSelect:MovieClip;
      
      public var chkAutoMoveInRange:MovieClip;
      
      private var _autoMoveInRange:Boolean = true;
      
      private var _ringAutoSelect:Boolean = true;
      
      public function UiGameSettings()
      {
         super();
         setCheck(this.chkRingAutoSelect,true);
         setCheck(this.chkAutoMoveInRange,true);
         GlobalEvent.eventDispatcher.addEventListener(GlobalEvent.USER_SETTINGS_LOADED,onUserSettingLoaded);
         this.chkRingAutoSelect.addEventListener(MouseEvent.CLICK,onRingAutoSelectClick);
         this.chkAutoMoveInRange.addEventListener(MouseEvent.CLICK,onAutoMoveInRangeClick);
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
      
      public function getAutoMoveInRange() : Boolean
      {
         return this._autoMoveInRange;
      }
      
      private function onUserSettingLoaded(evt:GlobalEvent) : void
      {
         var data:IGameSettings = evt.data as IGameSettings;
         if(data)
         {
            this._ringAutoSelect = data.getRingAutoSelect();
            setCheck(this.chkRingAutoSelect,this._ringAutoSelect);
            this._autoMoveInRange = data.getAutoMoveInRange();
            setCheck(this.chkAutoMoveInRange,this._autoMoveInRange);
         }
      }
      
      private function onRingAutoSelectClick(evt:MouseEvent) : void
      {
         this._ringAutoSelect = !this._ringAutoSelect;
         setCheck(this.chkRingAutoSelect,this._ringAutoSelect);
         var event:GlobalEvent = new GlobalEvent(GlobalEvent.GRAPHIC_OPTIONS_CHANGED,this);
         GlobalEvent.eventDispatcher.dispatchEvent(event);
      }
      
      private function onAutoMoveInRangeClick(evt:MouseEvent) : void
      {
         this._autoMoveInRange = !this._autoMoveInRange;
         setCheck(this.chkAutoMoveInRange,this._autoMoveInRange);
         var event:GlobalEvent = new GlobalEvent(GlobalEvent.GRAPHIC_OPTIONS_CHANGED,this);
         GlobalEvent.eventDispatcher.dispatchEvent(event);
      }
      
      public function getRingAutoSelect() : Boolean
      {
         return this._ringAutoSelect;
      }
      
      private function setDefault() : void
      {
         this._ringAutoSelect = true;
         this._autoMoveInRange = true;
         this.setCheck(this.chkRingAutoSelect,this._ringAutoSelect);
         this.setCheck(this.chkAutoMoveInRange,this._autoMoveInRange);
      }
      
      public function resetDefault() : void
      {
         setDefault();
         var event:GlobalEvent = new GlobalEvent(GlobalEvent.GRAPHIC_OPTIONS_CHANGED,this);
         GlobalEvent.eventDispatcher.dispatchEvent(event);
      }
   }
}

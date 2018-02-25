package com.gaiaonline.battle.userServerSettings
{
   import com.gaiaonline.battle.gateway.BattleEvent;
   import com.gaiaonline.battle.gateway.BattleGateway;
   import com.gaiaonline.battle.gateway.BattleMessage;
   import com.gaiaonline.flexModulesAPIs.globalevent.GlobalEvent;
   import flash.events.EventDispatcher;
   
   public class UserServerSettings extends EventDispatcher implements IGraphicOptionsSettings, IGameSettings
   {
       
      
      private var _stageQuality:String = "high";
      
      private var _gateway:BattleGateway;
      
      private var _ringAnimationDisplay:String = "all";
      
      private var _autoMoveInRange:Boolean = true;
      
      private var _silhouettingEnabled:Boolean = true;
      
      private var _ringAutoSelect:Boolean = true;
      
      public function UserServerSettings(gateway:BattleGateway)
      {
         super();
         this._gateway = gateway;
         GlobalEvent.eventDispatcher.addEventListener(GlobalEvent.GRAPHIC_OPTIONS_CHANGED,onGraphicOptionsChanged,false,0,true);
      }
      
      private function onStageQualityLoaded(evt:BattleEvent) : void
      {
         var quality:String = null;
         var ringAnimationDisplay:String = null;
         var silhouettingEnabled:Boolean = false;
         var ringAutoSelect:Boolean = false;
         var autoMoveInRange:Boolean = false;
         var responseObj:Object = evt.battleMessage.responseObj[0].values;
         if(responseObj)
         {
            quality = responseObj["stageQuality"] as String;
            if(quality && quality.toLowerCase() != this._stageQuality)
            {
               this._stageQuality = quality.toLowerCase();
            }
            if(responseObj["silhouettingEnabled"] != null)
            {
               silhouettingEnabled = responseObj["silhouettingEnabled"] as Boolean;
               this._silhouettingEnabled = silhouettingEnabled;
            }
            ringAnimationDisplay = responseObj["ringAnimationDisplay"] as String;
            if(ringAnimationDisplay && ringAnimationDisplay.toLowerCase() != this._ringAnimationDisplay)
            {
               this._ringAnimationDisplay = ringAnimationDisplay.toLowerCase();
            }
            if(responseObj["ringAutoSelect"] != null)
            {
               ringAutoSelect = responseObj["ringAutoSelect"] as Boolean;
               this._ringAutoSelect = ringAutoSelect;
            }
            if(responseObj["autoMoveInRange"] != null)
            {
               autoMoveInRange = responseObj["autoMoveInRange"] as Boolean;
               this._autoMoveInRange = autoMoveInRange;
            }
         }
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.USER_SETTINGS_LOADED,this));
      }
      
      public function getRingAutoSelect() : Boolean
      {
         return this._ringAutoSelect;
      }
      
      public function getStageQuality() : String
      {
         return this._stageQuality.toLowerCase();
      }
      
      public function loadGraphicOptions() : void
      {
         var msg:BattleMessage = new BattleMessage("getNkvp",{"keys":["stageQuality","silhouettingEnabled","ringAnimationDisplay","ringAutoSelect","autoMoveInRange"]});
         msg.addEventListener(BattleEvent.CALL_BACK,onStageQualityLoaded);
         this._gateway.sendMsg(msg);
      }
      
      private function onGraphicOptionsChanged(evt:GlobalEvent) : void
      {
         var data:IGraphicOptionsSettings = evt.data as IGraphicOptionsSettings;
         if(data != null)
         {
            this._stageQuality = data.getStageQuality();
            this._silhouettingEnabled = data.getSilhouettingEnabled();
            this._ringAnimationDisplay = data.getRingAnimationDisplay();
         }
         var data2:IGameSettings = evt.data as IGameSettings;
         if(data2 != null)
         {
            this._ringAutoSelect = IGameSettings(data2).getRingAutoSelect();
            this._autoMoveInRange = IGameSettings(data2).getAutoMoveInRange();
         }
         var graphicOptionsMap:Object = {
            "stageQuality":this._stageQuality,
            "silhouettingEnabled":this._silhouettingEnabled,
            "ringAnimationDisplay":this._ringAnimationDisplay,
            "ringAutoSelect":this._ringAutoSelect,
            "autoMoveInRange":this._autoMoveInRange
         };
         var msg:BattleMessage = new BattleMessage("putNkvp",graphicOptionsMap);
         this._gateway.sendMsg(msg);
      }
      
      public function getAutoMoveInRange() : Boolean
      {
         return this._autoMoveInRange;
      }
      
      public function getRingAnimationDisplay() : String
      {
         return this._ringAnimationDisplay;
      }
      
      public function getSilhouettingEnabled() : Boolean
      {
         return this._silhouettingEnabled;
      }
   }
}

package com.gaiaonline.battle.ui
{
   import com.gaiaonline.battle.gateway.BattleGateway;
   import com.gaiaonline.battle.ui.UiWorldListClasses.INewsHolder;
   import com.gaiaonline.battle.ui.UiWorldListClasses.IOptionsHolder;
   import com.gaiaonline.battle.ui.UiWorldListClasses.ITickerHolder;
   import com.gaiaonline.battle.ui.UiWorldListClasses.ITrailerButton;
   import com.gaiaonline.battle.ui.UiWorldListClasses.IWorldListFooter;
   import com.gaiaonline.flexModulesAPIs.globalevent.GlobalEvent;
   import com.gaiaonline.platform.serverSelect.WorldListManager;
   import com.gaiaonline.platform.serverSelect.WorldListManagerEvent;
   import com.gaiaonline.platform.ui.IWorldList;
   import com.gaiaonline.usersettings.UserSettings;
   import flash.display.DisplayObjectContainer;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class WorldListManagerZomg extends EventDispatcher
   {
       
      
      private var _partnerId:String = null;
      
      private var timer:Timer = null;
      
      private var _gateway:BattleGateway = null;
      
      private var _friendsList:Array;
      
      private var _worldListManager:WorldListManager = null;
      
      private var _panel:IWorldList = null;
      
      private var _baseUrl:String = null;
      
      private const RETRY_TIME:uint = 45000;
      
      private var _userSettings:UserSettings = null;
      
      public function WorldListManagerZomg(gateway:BattleGateway, baseUrl:String, serverPanelHolder:DisplayObjectContainer, userSettings:UserSettings, partnerId:String, debugForceIP:Boolean = false)
      {
         _friendsList = new Array();
         super();
         _gateway = gateway;
         _partnerId = partnerId;
         _baseUrl = baseUrl;
         _userSettings = userSettings;
         var serverId:String = _userSettings.getSimpleSetting("ServerId") as String;
         _worldListManager = new WorldListManager(_gateway,_gateway,_baseUrl,"ui/uiworldlist.swf",serverPanelHolder,serverId,debugForceIP);
         toggleListeners(true);
         GlobalEvent.eventDispatcher.addEventListener(GlobalEvent.SHOW_WORLD_LIST_FOOTER,onShowWorldListFooter,false,0,true);
         this.timer = new Timer(RETRY_TIME);
         this.timer.addEventListener(TimerEvent.TIMER,onTimer,false,0,true);
         this.timer.start();
      }
      
      private function initNews(panel:INewsHolder) : void
      {
         panel.showNews(_gateway,_baseUrl,_partnerId);
      }
      
      public function showPanel() : void
      {
         _worldListManager.showPanel();
      }
      
      private function initListFooter(panel:IWorldListFooter) : void
      {
         if(null != panel)
         {
            panel.registerForWorldListFooterEvents(onWorldListFooter);
            panel.showWorldListFooter();
         }
      }
      
      private function toggleListeners(add:Boolean = true) : void
      {
         var listenerFxn:Function = null;
         if(add)
         {
            listenerFxn = _worldListManager.addEventListener;
         }
         else
         {
            listenerFxn = _worldListManager.removeEventListener;
         }
         listenerFxn(WorldListManagerEvent.UI_LOADED,onUILoaded);
         listenerFxn(WorldListManagerEvent.SERVER_CHOSEN,onServerChosen);
         listenerFxn(WorldListManagerEvent.SERVER_LIST_ERROR,onServerListError);
         listenerFxn(WorldListManagerEvent.SERVER_LIST_LOAD_ERROR,onServerListLoadError);
      }
      
      private function onShowIntro() : void
      {
         _worldListManager.hidePanel();
         timer.stop();
         GlobalEvent.eventDispatcher.addEventListener(GlobalEvent.VIDEO_DONE,onVideoDone,false,0,true);
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.SHOW_INTRO,{}));
      }
      
      private function initTrailer(panel:ITrailerButton) : void
      {
         panel.registerForTrailerEvents(onShowIntro);
         panel.showTrailerButton();
      }
      
      private function onOptionChange(value:Boolean) : void
      {
         _userSettings.setSimpleSetting("useRasterize",value);
         _userSettings.save();
      }
      
      private function onVideoDone(event:GlobalEvent) : void
      {
         var temp:IEventDispatcher = null;
         IEventDispatcher(event.target).removeEventListener(event.type,arguments.callee);
         _worldListManager.showPanel();
         timer.start();
         _worldListManager.refreshServers();
      }
      
      private function get servers() : Array
      {
         return _worldListManager.servers;
      }
      
      private function onUILoaded(event:WorldListManagerEvent) : void
      {
         _panel = _worldListManager.serverListPanel;
         initTrailer(_panel as ITrailerButton);
         initTicker(_panel as ITickerHolder);
         initNews(_panel as INewsHolder);
         initOptions(_panel as IOptionsHolder);
         redispatchEvent(event);
      }
      
      private function onServerChosen(event:WorldListManagerEvent) : void
      {
         this._userSettings.setSimpleSetting("ServerId",event.data.id);
         redispatchEvent(event);
      }
      
      private function onServerListLoadError(event:WorldListManagerEvent) : void
      {
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.GENERIC_ERR_MSG,{
            "header":"Server List Error",
            "message":event.data,
            "reset":false
         }));
      }
      
      public function get ready() : Boolean
      {
         return _worldListManager.ready;
      }
      
      private function onTimer(evt:TimerEvent) : void
      {
         _worldListManager.getServerList();
         _gateway.getFriendsList();
      }
      
      private function onServerListError(event:WorldListManagerEvent) : void
      {
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.GENERIC_ERR_MSG,{
            "header":"Server List Error",
            "message":"Invalid Server List",
            "reset":false
         }));
      }
      
      private function onWorldListFooter() : void
      {
      }
      
      private function initOptions(panel:IOptionsHolder) : void
      {
         var rasterize:Boolean = _userSettings.getSimpleSetting("useRasterize") as Boolean;
         panel.registerForOptionsEvents(onOptionChange);
         panel.showOptions(rasterize);
      }
      
      private function redispatchEvent(event:WorldListManagerEvent) : void
      {
         dispatchEvent(new WorldListManagerEvent(event.type,event.data));
      }
      
      public function set forceAutoconnectIP(ip:String) : void
      {
         _worldListManager.forceAutoconnectIP = ip;
      }
      
      public function destroyWorldList() : void
      {
         timer.stop();
         timer.removeEventListener(TimerEvent.TIMER,onTimer,false);
         toggleListeners(false);
         var trailerButtonHandler:ITrailerButton = _worldListManager.serverListPanel as ITrailerButton;
         if(trailerButtonHandler)
         {
            trailerButtonHandler.unregisterForTrailerEvents(onShowIntro);
         }
         var listFooter:IWorldListFooter = _worldListManager.serverListPanel as IWorldListFooter;
         if(listFooter)
         {
            listFooter.unregisterForWorldListFooterEvents(onWorldListFooter);
         }
         var optionPanel:IOptionsHolder = _worldListManager.serverListPanel as IOptionsHolder;
         if(optionPanel)
         {
            optionPanel.unregisterForOptionsEvents(onOptionChange);
         }
         _worldListManager.destroyWorldList();
      }
      
      private function initTicker(panel:ITickerHolder) : void
      {
         panel.showTicker(_gateway);
      }
      
      private function onShowWorldListFooter(event:GlobalEvent) : void
      {
         initListFooter(_panel as IWorldListFooter);
      }
   }
}

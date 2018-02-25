package com.gaiaonline.battle.moduleManagers
{
   import com.gaiaonline.battle.ui.ChatController;
   import com.gaiaonline.battle.ui.ChatUi.ChatMiniMessage;
   import com.gaiaonline.battle.ui.IAsyncCreationHandler;
   import com.gaiaonline.battle.ui.IFlexUiManager;
   import com.gaiaonline.battle.ui.IModuleManager;
   import com.gaiaonline.battle.ui.actionbarmodule.ActionBarModuleController;
   import com.gaiaonline.containers.GameWindowManager;
   import com.gaiaonline.containers.GameWindowSettings;
   import com.gaiaonline.containers.IGameWindowFactory;
   import com.gaiaonline.flexModulesAPIs.actionbar.IActionBarModule;
   import com.gaiaonline.flexModulesAPIs.chat.IChat;
   import com.gaiaonline.flexModulesAPIs.gatewayInterfaces.IBattleGateway;
   import com.gaiaonline.flexModulesAPIs.globalevent.GlobalEvent;
   import com.gaiaonline.utils.DisplayObjectUtils;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public class ActionBarModuleManager implements IAsyncCreationHandler, IModuleManager
   {
       
      
      private var _path:String;
      
      private var _gateway:IBattleGateway;
      
      private var _actionBarModuleController:ActionBarModuleController;
      
      private var _window:DisplayObjectContainer;
      
      private var _winUtils:WindowUtils = null;
      
      private var _pending:Boolean = false;
      
      private var _title:String;
      
      private var _windowManager:GameWindowManager;
      
      private var _flexUIManager:IFlexUiManager;
      
      private var _params:XML;
      
      private var _chatController:ChatController;
      
      private var _instance:DisplayObject;
      
      private var _windowFactory:IGameWindowFactory;
      
      public function ActionBarModuleManager()
      {
         super();
      }
      
      public function onCreation(instance:Object, modulePath:String) : void
      {
         var chanel:XML = null;
         var useUserSetting:* = false;
         var winType:String = null;
         var winX:Number = NaN;
         var winY:Number = NaN;
         var winWidth:Number = NaN;
         var winHeight:Number = NaN;
         var winMinWidth:Number = NaN;
         var winMinHeight:Number = NaN;
         var winMaxWidth:Number = NaN;
         var winMaxHeight:Number = NaN;
         this._chatController = ChatController.getInstance();
         for each(chanel in this._params.chanels.chanel)
         {
            this._chatController.addChanel(chanel.@displayName,chanel.@id);
         }
         this._actionBarModuleController = new ActionBarModuleController(this._gateway);
         useUserSetting = true;
         winType = "Regular";
         winX = 0;
         winY = 555;
         winWidth = 218;
         winHeight = 200;
         winMinWidth = 150;
         winMinHeight = 75;
         winMaxWidth = 100000;
         winMaxHeight = 100000;
         if(String(this._params.windowSetting.@useUserSetting).length > 0)
         {
            useUserSetting = this._params.windowSetting.@useUserSetting == "true";
         }
         if(String(this._params.windowSetting.@windowType).length > 0)
         {
            winType = this._params.windowSetting.@windowType;
         }
         if(String(this._params.windowSetting.@x).length > 0)
         {
            winX = this._params.windowSetting.@x;
         }
         if(String(this._params.windowSetting.@y).length > 0)
         {
            winY = this._params.windowSetting.@y;
         }
         if(String(this._params.windowSetting.@width).length > 0)
         {
            winWidth = this._params.windowSetting.@width;
         }
         if(String(this._params.windowSetting.@height).length > 0)
         {
            winHeight = this._params.windowSetting.@height;
         }
         if(String(this._params.windowSetting.@minWidth).length > 0)
         {
            winMinWidth = this._params.windowSetting.@minWidth;
         }
         if(String(this._params.windowSetting.@minHeight).length > 0)
         {
            winMinHeight = this._params.windowSetting.@minHeight;
         }
         if(String(this._params.windowSetting.@maxWidth).length > 0)
         {
            winMaxWidth = this._params.windowSetting.@maxWidth;
         }
         if(String(this._params.windowSetting.@maxHeight).length > 0)
         {
            winMaxHeight = this._params.windowSetting.@maxHeight;
         }
         this._instance = DisplayObject(instance);
         this._window = this._windowFactory.createWindow(_title,false,"SideView");
         this._window.addChild(this._instance);
         if(useUserSetting)
         {
            this._windowManager.add(_window,new GameWindowSettings(_title).setPos(winX,winY).setSize(winWidth,winHeight).setMinSize(winMinWidth,winMinHeight).setMaxSize(winMaxWidth,winMaxHeight));
         }
         else
         {
            this._windowManager.add(_window);
         }
         _window.width = 600;
         _window.height = 26;
         _window.x = 0;
         _window.y = 800;
         this._actionBarModuleController.addView(this._instance as IActionBarModule);
         this._chatController.addView(this._instance as IChat);
         _winUtils.openWindow(this._window);
         this.showChatPanel();
         this._pending = false;
      }
      
      private function onChatMiniMessageEnd(e:GlobalEvent) : void
      {
         var m:ChatMiniMessage = e.data.message as ChatMiniMessage;
         _winUtils.closeWindow(m.parent);
      }
      
      public function init(path:String, title:String, gateway:IBattleGateway, flexWinLayer:DisplayObjectContainer, flexUIManager:IFlexUiManager, windowManager:GameWindowManager, windowFactory:IGameWindowFactory, params:XML = null) : void
      {
         this._gateway = gateway;
         _winUtils = new WindowUtils(flexWinLayer);
         _path = path;
         _title = title;
         _flexUIManager = flexUIManager;
         _windowManager = windowManager;
         _windowFactory = windowFactory;
         this._params = params;
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.CHAT_MINI_MESSAGE_CREATED,onChatMiniMessageCreated);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.CHAT_MINI_MESSAGE_END,onChatMiniMessageEnd);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.CHAT_PANE_OPEN,onShowChatPanel);
         getModule();
      }
      
      private function showChatPanel(leadingText:String = null, setFocus:Boolean = true) : void
      {
         this._chatController.isOpen = true;
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.CHAT_PANE_CHANGED,{"opened":true}));
         this._chatController.inputText = leadingText;
         if(setFocus)
         {
            this._chatController.setFocus();
         }
      }
      
      private function getModule() : void
      {
         if(!_pending)
         {
            this._flexUIManager.getModule(_path,this);
            _pending = true;
         }
      }
      
      private function onChatMiniMessageCreated(e:GlobalEvent) : void
      {
         var mm:ChatMiniMessage = null;
         var miniMessageParent:DisplayObjectContainer = null;
         var miniMessages:Array = e.data.messages;
         var messageY:Number = this._window.y - 3;
         for(var r:int = miniMessages.length; r > 0; r--)
         {
            mm = miniMessages[r - 1];
            if(!mm.parent)
            {
               miniMessageParent = this._windowFactory.createLegacyShim();
               miniMessageParent.addChild(mm);
               _winUtils.openWindow(miniMessageParent);
            }
            messageY = messageY - mm.height;
            messageY = messageY + 4;
            mm.parent.y = messageY;
            mm.parent.x = this._window.x;
         }
      }
      
      private function onShowChatPanel(e:GlobalEvent) : void
      {
         var leadingText:String = !!e.data.hasOwnProperty("leadingText")?e.data.leadingText:null;
         var setFocus:Boolean = !!e.data.hasOwnProperty("setFocus")?Boolean(e.data.setFocus):true;
         showChatPanel(leadingText,setFocus);
      }
   }
}

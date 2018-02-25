package com.gaiaonline.battle.moduleManagers
{
   import com.gaiaonline.battle.ui.AlertTypes;
   import com.gaiaonline.battle.ui.ChatController;
   import com.gaiaonline.battle.ui.ChatUi.ChatMiniMessage;
   import com.gaiaonline.battle.ui.IAsyncCreationHandler;
   import com.gaiaonline.battle.ui.IFlexUiManager;
   import com.gaiaonline.battle.ui.IModuleManager;
   import com.gaiaonline.containers.GameWindowEvent;
   import com.gaiaonline.containers.GameWindowManager;
   import com.gaiaonline.containers.GameWindowSettings;
   import com.gaiaonline.containers.IGameWindowFactory;
   import com.gaiaonline.flexModulesAPIs.chat.IChat;
   import com.gaiaonline.flexModulesAPIs.gatewayInterfaces.IBattleGateway;
   import com.gaiaonline.flexModulesAPIs.globalevent.GlobalEvent;
   import com.gaiaonline.utils.DisplayObjectUtils;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public final class ChatModuleManager implements IModuleManager, IAsyncCreationHandler
   {
       
      
      private var _path:String = null;
      
      private var _window:DisplayObjectContainer = null;
      
      private var _controller:ChatController = null;
      
      private var _winUtils:WindowUtils = null;
      
      private var _pending:Boolean = false;
      
      private var _title:String = null;
      
      private var _windowManager:GameWindowManager = null;
      
      private var _forcedChatPaneClose:Boolean = false;
      
      private var _flexUIManager:IFlexUiManager = null;
      
      private var _params:XML;
      
      private var _instance:DisplayObject = null;
      
      private var _windowFactory:IGameWindowFactory;
      
      public function ChatModuleManager()
      {
         super();
      }
      
      private function onChatMiniMessageEnd(e:GlobalEvent) : void
      {
         var m:ChatMiniMessage = e.data.message as ChatMiniMessage;
         _winUtils.closeWindow(m.parent);
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
         this._instance = DisplayObject(instance);
         this._controller = ChatController.getInstance();
         for each(chanel in this._params.chanels.chanel)
         {
            this._controller.addChanel(chanel.@displayName,chanel.@id);
         }
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
         _window = this._windowFactory.createWindow(_title,true,winType);
         this.showChatPanel();
         _window.addChild(this._instance);
         if(useUserSetting)
         {
            this._windowManager.add(_window,new GameWindowSettings(_title).setPos(winX,winY).setSize(winWidth,winHeight).setMinSize(winMinWidth,winMinHeight).setMaxSize(winMaxWidth,winMaxHeight));
         }
         else
         {
            this._windowManager.add(_window);
            _window.width = winWidth;
            _window.height = winHeight;
            _window.x = winX;
            _window.y = winY;
         }
         this._window.addEventListener(GameWindowEvent.CLOSE,onChatWindowClose,false,0,true);
         this._controller.addView(this._instance as IChat);
         _pending = false;
      }
      
      public function init(path:String, title:String, gateway:IBattleGateway, flexWinLayer:DisplayObjectContainer, flexUIManager:IFlexUiManager, windowManager:GameWindowManager, windowFactory:IGameWindowFactory, params:XML = null) : void
      {
         _winUtils = new WindowUtils(flexWinLayer);
         _path = path;
         _title = title;
         _flexUIManager = flexUIManager;
         _windowManager = windowManager;
         _windowFactory = windowFactory;
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.CHAT_MINI_MESSAGE_CREATED,onChatMiniMessageCreated);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.CHAT_MINI_MESSAGE_END,onChatMiniMessageEnd);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.CHAT_PANE_TOGGLE,onToggleChatPanel);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.CHAT_PANE_CLOSE,onHideChatPanel);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.CHAT_PANE_OPEN,onShowChatPanel);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.WIDGET_SHOW,onWidgetShow);
         this._params = params;
         getModule();
      }
      
      private function onChatWindowClose(e:GameWindowEvent) : void
      {
         postChatWindowClose();
      }
      
      private function onHideChatPanel(e:GlobalEvent) : void
      {
         hideChatPanel();
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
      
      private function setAllChatVisible(visible:Boolean) : void
      {
         if(!visible)
         {
            hideChatPanel();
         }
         else
         {
            showChatPanel();
         }
         this._controller.setIsVisible(visible);
      }
      
      private function onTextBasedUICommand(e:GlobalEvent) : void
      {
         var params:String = e.data.paramString;
         var parameters:Array = params.split(":");
         var firstParam:String = parameters[0];
         if(firstParam.toLowerCase() == "chat")
         {
            setAllChatVisible(true);
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
      
      private function onWidgetShow(evt:GlobalEvent) : void
      {
         var show:Boolean = false;
         var enable:Boolean = false;
         if(evt.data.widgetName == "chatPane")
         {
            show = evt.data.widgetShow;
            enable = evt.data.widgetEnable != undefined?Boolean(evt.data.widgetEnable):false;
            this._forcedChatPaneClose = !!enable?false:!show;
            setAllChatVisible(show);
         }
      }
      
      private function hideChatPanel() : void
      {
         if(this._controller && this._window && _winUtils.isWindowOpen(this._window.parent))
         {
            _winUtils.closeWindow(this._window);
            postChatWindowClose();
         }
      }
      
      private function showChatPanel(leadingText:String = null, setFocus:Boolean = true) : void
      {
         if(this._instance)
         {
            if(!this._forcedChatPaneClose && this._window && !_winUtils.isWindowOpen(this._window.parent))
            {
               this._controller.isOpen = true;
               _winUtils.openWindow(this._window);
               GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.CHAT_PANE_CHANGED,{"opened":true}));
               GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.ALERT,{"type":AlertTypes.GENERIC_OPEN}));
               if(leadingText)
               {
                  this._controller.inputText = leadingText;
               }
            }
            if(setFocus)
            {
               this._controller.setFocus();
            }
         }
      }
      
      private function onShowChatPanel(e:GlobalEvent) : void
      {
         var leadingText:String = !!e.data.hasOwnProperty("leadingText")?e.data.leadingText:null;
         var setFocus:Boolean = !!e.data.hasOwnProperty("setFocus")?Boolean(e.data.setFocus):true;
         showChatPanel(leadingText,setFocus);
      }
      
      private function onToggleChatPanel(e:GlobalEvent) : void
      {
         if(_winUtils.isWindowOpen(this._window.parent))
         {
            hideChatPanel();
         }
         else
         {
            showChatPanel();
         }
      }
      
      private function postChatWindowClose() : void
      {
         this._controller.isOpen = false;
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.CHAT_PANE_CHANGED,{"opened":false}));
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.ALERT,{"type":AlertTypes.GENERIC_CLOSE}));
      }
   }
}

package com.gaiaonline.platform.serverSelect
{
   import com.gaiaonline.platform.login.ILoginConnector;
   import com.gaiaonline.platform.login.ILoginManager;
   import com.gaiaonline.platform.ui.IWorldList;
   import com.gaiaonline.platform.ui.IWorldListHolder;
   import com.gaiaonline.utils.DisplayObjectUtils;
   import com.gaiaonline.utils.factories.LoaderContextFactory;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Loader;
   import flash.display.LoaderInfo;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLRequest;
   
   public class WorldListManager extends EventDispatcher implements ILoginManager, IServerSelectConnectorHandler, IServerSelectUIHandler
   {
       
      
      private var _loginConnector:ILoginConnector = null;
      
      private var _serverConnector:IServerSelectConnector = null;
      
      private var _serverPanelHolder:DisplayObjectContainer = null;
      
      private var _swfLocation:String = null;
      
      private var _firstServerRequest:Boolean = false;
      
      private var isNoob:Boolean = false;
      
      private var _ready:Boolean = false;
      
      private var _baseUrl:String = null;
      
      private var _forceAutoconnectIP:String = null;
      
      private var noobServer:Object;
      
      private var autoconnectServerId:Number = NaN;
      
      private var _serverListPanel:IWorldList;
      
      private var _servers:Array;
      
      private var _selectedServerId:String = null;
      
      private var _worldListHolder:Loader = null;
      
      public function WorldListManager(loginConnector:ILoginConnector, serverConnector:IServerSelectConnector, baseUrl:String, swfLocation:String, serverPanelHolder:DisplayObjectContainer, preferredServerId:String = null, debugForceIP:Boolean = false)
      {
         _servers = new Array();
         super();
         this._serverConnector = serverConnector;
         this._baseUrl = baseUrl;
         this._swfLocation = swfLocation;
         _serverPanelHolder = serverPanelHolder;
         _loginConnector = loginConnector;
         _selectedServerId = preferredServerId;
         _serverConnector.registerForServerSelectEvents(this);
         _worldListHolder = new Loader();
         toggleLoaderListeners(true);
         _worldListHolder.load(new URLRequest(_baseUrl + swfLocation),LoaderContextFactory.getInstance().getLoaderContext());
         if(_loginConnector.isAuthenticated() && !debugForceIP)
         {
            getServerList();
         }
         else
         {
            _loginConnector.registerForLoginEvents(this);
         }
      }
      
      public function showPanel() : void
      {
         var panel:DisplayObject = _serverListPanel as DisplayObject;
         if(_serverListPanel && !_serverPanelHolder.contains(panel))
         {
            _serverPanelHolder.addChild(panel);
         }
      }
      
      public function get serverListPanel() : IWorldList
      {
         return _serverListPanel;
      }
      
      public function onLoginFail(errorMessage:String) : void
      {
      }
      
      public function get servers() : Array
      {
         return _servers;
      }
      
      private function onWorldListLoaded(event:Event) : void
      {
         toggleLoaderListeners(false);
         _worldListHolder = null;
         _serverListPanel = ((event.target as LoaderInfo).content as IWorldListHolder).getWorldList();
         _serverListPanel.registerForServerSelect(this);
         if(_servers && _servers.length)
         {
            updateServerPanelUi();
         }
         tryToBeReady();
      }
      
      public function get ready() : Boolean
      {
         return _ready;
      }
      
      private function tryToBeReady() : void
      {
         if(!_ready)
         {
            if(_serverListPanel && _firstServerRequest)
            {
               _ready = true;
               dispatchEvent(new WorldListManagerEvent(WorldListManagerEvent.UI_LOADED));
            }
         }
      }
      
      private function updateServerPanelUi() : void
      {
         if(_serverListPanel)
         {
            this._serverListPanel.refreshServers(this._servers);
            if(this._serverListPanel.selectedItem == null && _selectedServerId != null)
            {
               this._serverListPanel.selectServerId(String(_selectedServerId));
            }
            else if(this._serverListPanel.selectedItem == null)
            {
               this._serverListPanel.selectBestServer();
            }
         }
      }
      
      public function onLoginNeeded() : void
      {
      }
      
      public function refreshServers() : void
      {
         if(_serverListPanel)
         {
            this._serverListPanel.refreshServers(this._servers);
         }
      }
      
      public function set forceAutoconnectIP(ip:String) : void
      {
         this._forceAutoconnectIP = ip;
      }
      
      public function onServerListReceived(data:Object) : void
      {
         var obj:Object = null;
         var id:String = null;
         var name:String = null;
         var occupancy:String = null;
         var occupancy_max:String = null;
         var ip:String = null;
         var port:String = null;
         var server:Object = null;
         this._servers.length = 0;
         for each(obj in data)
         {
            if(obj != null && !(obj is Boolean) && obj.bmt != null && obj.bmt == "flags")
            {
               if(obj.autoconnect)
               {
                  this.autoconnectServerId = parseInt(String(obj.autoconnect));
               }
               if(obj.n00b != null)
               {
                  this.isNoob = 0 == parseInt(String(obj.n00b));
               }
            }
            else if(obj != null && !(obj is Boolean))
            {
               id = obj.id || "";
               name = obj.name || "";
               occupancy = obj.occupancy || "";
               occupancy_max = obj.occupancy_max || "";
               ip = obj.ip || "";
               port = obj.port || "";
               this._servers.push({
                  "id":id,
                  "serverName":obj.name,
                  "population":occupancy,
                  "maxPop":occupancy_max,
                  "friend":0,
                  "guild":0,
                  "ip":ip,
                  "port":port
               });
            }
            else
            {
               dispatchEvent(new WorldListManagerEvent(WorldListManagerEvent.SERVER_LIST_ERROR));
            }
         }
         this.noobServer = null;
         if(!isNaN(autoconnectServerId))
         {
            server = null;
            if(this._forceAutoconnectIP)
            {
               server = {
                  "id":"0",
                  "serverName":this._forceAutoconnectIP,
                  "ip":this._forceAutoconnectIP,
                  "port":"8080"
               };
            }
            else
            {
               for each(server in this._servers)
               {
                  if(server.id == autoconnectServerId)
                  {
                     break;
                  }
               }
            }
            this.noobServer = server;
            this.onServerSelected(this.noobServer.serverName,this.noobServer.id,this.noobServer.ip,this.noobServer.port);
         }
         else if(!this.isNoob)
         {
            if(this.noobServer == null)
            {
               _firstServerRequest = true;
               tryToBeReady();
               updateServerPanelUi();
            }
         }
      }
      
      public function onServerSelected(serverName:String, id:String, ip:String, port:uint) : void
      {
         _selectedServerId = id;
         dispatchEvent(new WorldListManagerEvent(WorldListManagerEvent.SERVER_CHOSEN,{
            "name":serverName,
            "id":id,
            "ip":ip,
            "port":port
         }));
      }
      
      private function onWorldListError(event:Event) : void
      {
         dispatchEvent(new WorldListManagerEvent(WorldListManagerEvent.SERVER_LIST_LOAD_ERROR,event.type + " when loading " + _baseUrl + _swfLocation));
      }
      
      public function onLoginSuccess() : void
      {
         _loginConnector.unregisterForLoginEvents(this);
         getServerList();
      }
      
      public function hidePanel() : void
      {
         var panel:DisplayObject = _serverListPanel as DisplayObject;
         if(panel && panel.parent == _serverPanelHolder)
         {
            _serverPanelHolder.removeChild(panel);
         }
      }
      
      public function getServerNameFromId(id:String) : String
      {
         var name:String = "---";
         for(var i:int = 0; i < this._servers.length; i++)
         {
            if(this._servers[i].id == id)
            {
               name = this._servers[i].serverName;
               break;
            }
         }
         return name;
      }
      
      public function destroyWorldList() : void
      {
         hidePanel();
         _serverConnector.unregisterForServerSelectEvents(this);
         if(_serverListPanel)
         {
            _serverListPanel.unregisterForServerSelect(this);
            DisplayObjectUtils.ClearAllChildrens(_serverListPanel as DisplayObjectContainer);
            _serverListPanel = null;
         }
      }
      
      public function getServerList() : void
      {
         _serverConnector.getServerList();
      }
      
      private function toggleLoaderListeners(add:Boolean = true) : void
      {
         var listenerFxn:Function = null;
         var loadInfo:LoaderInfo = _worldListHolder.contentLoaderInfo;
         if(add)
         {
            listenerFxn = loadInfo.addEventListener;
         }
         else
         {
            listenerFxn = loadInfo.removeEventListener;
         }
         listenerFxn(Event.COMPLETE,onWorldListLoaded);
         listenerFxn(IOErrorEvent.IO_ERROR,onWorldListError);
         listenerFxn(SecurityErrorEvent.SECURITY_ERROR,onWorldListError);
      }
   }
}

package mx.managers
{
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.external.ExternalInterface;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import mx.core.ApplicationGlobals;
   import mx.core.mx_internal;
   import mx.events.BrowserChangeEvent;
   
   use namespace mx_internal;
   
   public class BrowserManagerImpl extends EventDispatcher implements IBrowserManager
   {
      
      mx_internal static const VERSION:String = "3.6.0.21751";
      
      private static var instance:IBrowserManager;
       
      
      private var _title:String;
      
      private var _isFirefoxMac:Boolean;
      
      private var browserMode:Boolean = true;
      
      private var _fragment:String;
      
      private var _base:String;
      
      private var _browserUserAgent:String;
      
      private var _url:String;
      
      private var _defaultFragment:String = "";
      
      private var _browserPlatform:String;
      
      public function BrowserManagerImpl()
      {
         var sandboxRoot:Object = null;
         var parent:Object = null;
         super();
         var systemManager:Object = SystemManagerGlobals.topLevelSystemManagers;
         if(systemManager)
         {
            systemManager = systemManager[0];
         }
         if(systemManager)
         {
            sandboxRoot = systemManager.getSandboxRoot();
            if(!sandboxRoot.dispatchEvent(new Event("mx.managers::BrowserManager",false,true)))
            {
               browserMode = false;
               return;
            }
            try
            {
               parent = sandboxRoot.parent;
               while(parent)
               {
                  if(sandboxRoot.parent is Stage)
                  {
                     break;
                  }
                  parent = parent.parent;
               }
            }
            catch(e:Error)
            {
               browserMode = false;
               return;
            }
            sandboxRoot.addEventListener("mx.managers::BrowserManager",sandboxBrowserManagerHandler,false,0,true);
         }
         try
         {
            ExternalInterface.addCallback("browserURLChange",browserURLChangeBrowser);
            ExternalInterface.addCallback("debugTrace",debugTrace);
         }
         catch(e:Error)
         {
            browserMode = false;
         }
      }
      
      public static function getInstance() : IBrowserManager
      {
         if(!instance)
         {
            instance = new BrowserManagerImpl();
         }
         return instance;
      }
      
      public function initForHistoryManager() : void
      {
         setup("","");
      }
      
      private function setup(defaultFragment:String, defaultTitle:String) : void
      {
         if(!browserMode)
         {
            return;
         }
         _defaultFragment = defaultFragment;
         _url = ExternalInterface.call("BrowserHistory.getURL");
         if(!_url)
         {
            browserMode = false;
            return;
         }
         _browserUserAgent = ExternalInterface.call("BrowserHistory.getUserAgent");
         _browserPlatform = ExternalInterface.call("BrowserHistory.getPlatform");
         _isFirefoxMac = _browserUserAgent && _browserPlatform && _browserUserAgent.indexOf("Firefox") > -1 && _browserPlatform.indexOf("Mac") > -1;
         var pos:int = _url.indexOf("#");
         if(pos == -1 || pos == _url.length - 1)
         {
            _base = _url;
            _fragment = "";
            _title = defaultTitle;
            ExternalInterface.call("BrowserHistory.setDefaultURL",defaultFragment);
            setTitle(defaultTitle);
         }
         else
         {
            _base = _url.substring(0,pos);
            _fragment = _url.substring(pos + 1);
            _title = ExternalInterface.call("BrowserHistory.getTitle");
            ExternalInterface.call("BrowserHistory.setDefaultURL",_fragment);
            if(_fragment != _defaultFragment)
            {
               browserURLChange(_fragment,true);
            }
         }
      }
      
      private function browserURLChange(fragment:String, force:Boolean = false) : void
      {
         var lastURL:String = null;
         if(fragment != null && decodeURI(_fragment) != decodeURI(fragment) || force)
         {
            _fragment = fragment;
            lastURL = url;
            _url = _base + "#" + fragment;
            dispatchEvent(new BrowserChangeEvent(BrowserChangeEvent.BROWSER_URL_CHANGE,false,false,url,lastURL));
            dispatchEvent(new BrowserChangeEvent(BrowserChangeEvent.URL_CHANGE,false,false,url,lastURL));
         }
      }
      
      [Bindable("urlChange")]
      public function get base() : String
      {
         return _base;
      }
      
      public function setFragment(value:String) : void
      {
         var urlReq:URLRequest = null;
         if(!browserMode)
         {
            return;
         }
         var lastURL:String = _url;
         var lastFragment:String = _fragment;
         _url = base + "#" + value;
         _fragment = value;
         if(dispatchEvent(new BrowserChangeEvent(BrowserChangeEvent.APPLICATION_URL_CHANGE,false,true,_url,lastURL)))
         {
            if(!_isFirefoxMac)
            {
               ExternalInterface.call("BrowserHistory.setBrowserURL",value,ExternalInterface.objectID);
            }
            else
            {
               urlReq = new URLRequest("javascript:BrowserHistory.setBrowserURL(\'" + value + "\',\'" + ExternalInterface.objectID + "\');");
               navigateToURL(urlReq,"_self");
            }
            dispatchEvent(new BrowserChangeEvent(BrowserChangeEvent.URL_CHANGE,false,false,_url,lastURL));
         }
         else
         {
            _fragment = lastFragment;
            _url = lastURL;
         }
      }
      
      private function debugTrace(s:String) : void
      {
         trace(s);
      }
      
      [Bindable("urlChange")]
      public function get fragment() : String
      {
         if(_fragment && _fragment.length)
         {
            return _fragment;
         }
         return _defaultFragment;
      }
      
      [Bindable("urlChange")]
      public function get title() : String
      {
         return _title;
      }
      
      public function setTitle(value:String) : void
      {
         if(!browserMode)
         {
            return;
         }
         ExternalInterface.call("BrowserHistory.setTitle",value);
         _title = ExternalInterface.call("BrowserHistory.getTitle");
      }
      
      public function init(defaultFragment:String = "", defaultTitle:String = "") : void
      {
         ApplicationGlobals.application.historyManagementEnabled = false;
         setup(defaultFragment,defaultTitle);
      }
      
      private function sandboxBrowserManagerHandler(event:Event) : void
      {
         event.preventDefault();
      }
      
      private function browserURLChangeBrowser(fragment:String) : void
      {
         browserURLChange(fragment,false);
      }
      
      [Bindable("urlChange")]
      public function get url() : String
      {
         return _url;
      }
   }
}

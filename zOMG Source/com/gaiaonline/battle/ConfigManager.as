package com.gaiaonline.battle
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   
   public class ConfigManager extends EventDispatcher
   {
      
      private static var _instance:ConfigManager;
       
      
      private var _moduleXMLList:XMLList = null;
      
      private var _loadScreen:String;
      
      private var _loadBackground:String = null;
      
      private var _xml:XML;
      
      private var _mainWindowMaximize:Boolean = false;
      
      private var _loaded:Boolean = false;
      
      private var _mainWindowUrl:String;
      
      private var _registrationParent:String;
      
      private var _loginPath:String;
      
      private var _genericWindowUrl:String;
      
      private var _regOmnitureTag:String;
      
      private var _spaceName:String = null;
      
      private var _loadScreenTimer:Number = NaN;
      
      public function ConfigManager(s:SingletonEnforcer#81)
      {
         super();
      }
      
      public static function getInstance() : ConfigManager
      {
         if(ConfigManager._instance == null)
         {
            ConfigManager._instance = new ConfigManager(new SingletonEnforcer#81());
         }
         return ConfigManager._instance;
      }
      
      public function get loadScreenTimer() : Number
      {
         return this._loadScreenTimer;
      }
      
      public function get registrationParent() : String
      {
         return this._registrationParent;
      }
      
      public function get loaded() : Boolean
      {
         return this._loaded;
      }
      
      public function get moduleXMLList() : XMLList
      {
         return this._moduleXMLList;
      }
      
      public function get genericWindowUrl() : String
      {
         return this._genericWindowUrl;
      }
      
      public function get regOmnitureTag() : String
      {
         return this._regOmnitureTag;
      }
      
      private function onXmlLoaded(evt:Event) : void
      {
         this._xml = new XML(evt.target.data);
         this._loginPath = this._xml.Login.@path;
         this._registrationParent = this._xml.Registration.@type;
         this._regOmnitureTag = this._xml.Registration.omnitureTag;
         this._loadScreen = this._xml.LoadScreen.@file;
         this._loadBackground = this._xml.LoadScreen.background;
         this._loadScreenTimer = parseInt(this._xml.LoadScreen.timer);
         _moduleXMLList = this._xml.Modules.Module;
         this._mainWindowUrl = this._xml.MainWindow.@file;
         this._mainWindowMaximize = this._xml.MainWindow.@maximize == "true";
         this._genericWindowUrl = this._xml.GenericWindow.@file;
         this._loaded = true;
         this.dispatchEvent(new Event(Event.COMPLETE));
      }
      
      public function set spaceName(sn:String) : void
      {
         _spaceName = sn;
      }
      
      public function loadConfigFile(url:String) : void
      {
         this._loaded = false;
         var l:URLLoader = new URLLoader();
         l.dataFormat = URLLoaderDataFormat.TEXT;
         l.addEventListener(Event.COMPLETE,onXmlLoaded);
         l.load(new URLRequest(url));
      }
      
      public function get mainWindowUrl() : String
      {
         return this._mainWindowUrl;
      }
      
      public function get loginPath() : String
      {
         return this._loginPath;
      }
      
      public function get spaceName() : String
      {
         return _spaceName;
      }
      
      public function get loadScreen() : String
      {
         return this._loadScreen;
      }
      
      public function get loadBackground() : String
      {
         return this._loadBackground;
      }
      
      public function get mainWindowMaximize() : Boolean
      {
         return this._mainWindowMaximize;
      }
   }
}

class SingletonEnforcer#81
{
    
   
   function SingletonEnforcer#81()
   {
      super();
   }
}

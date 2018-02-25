package com.gaiaonline.battle.ui
{
   import com.gaiaonline.battle.ConfigManager;
   import com.gaiaonline.battle.StepLoader;
   import com.gaiaonline.utils.DisplayObjectUtils;
   import flash.display.Loader;
   import flash.display.LoaderInfo;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.ProgressEvent;
   import flash.net.URLRequest;
   import flash.system.LoaderContext;
   import flash.system.Security;
   import flash.system.SecurityDomain;
   
   public class RegistrationWidgetLoader extends EventDispatcher
   {
      
      public static const MODE_REGISTER_GUEST:String = "registration";
      
      public static const MODE_PICKER:String = "picker";
      
      private static var s_regPath:String = null;
       
      
      private var _mode:String = null;
      
      private var _partnerID:String;
      
      private var _gsi:String = null;
      
      private var _widget = null;
      
      private var _cacheBuster:String = null;
      
      private var _configManager:ConfigManager = null;
      
      private var _useCaptcha:Boolean = false;
      
      private var _baseURL:String;
      
      public function RegistrationWidgetLoader(mode:String, gsiSubdomain:String, baseURL:String, partnerID:String, useCaptcha:Boolean)
      {
         var lastTwoDirectories:RegExp = null;
         var matches:Array = null;
         super();
         _mode = mode;
         _gsi = gsiSubdomain;
         _baseURL = baseURL;
         _partnerID = partnerID;
         _useCaptcha = useCaptcha;
         _configManager = ConfigManager.getInstance();
         var loader:Loader = new Loader();
         DisplayObjectUtils.addWeakListener(loader.contentLoaderInfo,Event.INIT,onRegistrationLoaded);
         if(!s_regPath)
         {
            lastTwoDirectories = /(?:.*)(\/.*\/.*\/$)/;
            matches = _baseURL.match(lastTwoDirectories);
            s_regPath = matches && matches.length > 1?_baseURL.replace(matches[1],""):"../..";
         }
         var context:LoaderContext = new LoaderContext();
         if(Security.sandboxType == Security.REMOTE)
         {
            context.securityDomain = SecurityDomain.currentDomain;
         }
         _cacheBuster = String(Math.random()).substr(2);
         StepLoader.add(loader,new URLRequest(s_regPath + "/guest/guestRegistration.swf?gver=" + _cacheBuster),context);
      }
      
      public function get widget() : *
      {
         return _widget;
      }
      
      private function onLoadProgress(evt:ProgressEvent) : void
      {
         dispatchEvent(evt);
      }
      
      private function onRegistrationLoaded(e:Event) : void
      {
         _widget = LoaderInfo(e.target).content;
         var params:Object = {
            "mainServer":"www.gaiaonline.com",
            "gsiSubdomain":_gsi,
            "avPath":"http://a2.cdn.gaiaonline.com/gaia/members/",
            "relPath":s_regPath + "/guest/",
            "partnerID":_partnerID,
            "parentApp":ConfigManager.getInstance().registrationParent,
            "trackingTag":_configManager.spaceName,
            "omnitureTag":_configManager.regOmnitureTag,
            "ff":"false",
            "loginPrompt":"false",
            "type":_mode,
            "loginURL":"http://" + _gsi + ".gaiaonline.com/launch/zomg",
            "regURL":"http://" + _gsi + ".gaiaonline.com/register/flash/?v=c",
            "gver":_cacheBuster,
            "captcha":_useCaptcha.toString()
         };
         _widget.initialize(params);
         dispatchEvent(e);
      }
   }
}

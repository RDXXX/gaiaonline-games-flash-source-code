package com.gaiaonline.usersettings
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.net.SharedObject;
   
   public class Settings#54
   {
      
      public static const SETTING_CHANGED_EVENT:String = "com.gaiaonline.usersettings.Settings";
       
      
      private var so:SharedObject;
      
      private var isFullScreen:Boolean = false;
      
      private var settingFullScreen:Object;
      
      private var asFullScreenMode:Boolean = false;
      
      private var settingNormal:Object;
      
      private var id:String;
      
      private var objRef:ISettings;
      
      public function Settings#54(id:String, objRef:ISettings, so:SharedObject)
      {
         super();
         this.id = id;
         this.objRef = objRef;
         this.asFullScreenMode = asFullScreenMode;
         this.so = so;
         if(this.so.data[this.id] == null)
         {
            this.so.data[this.id] = new Object();
         }
         else
         {
            this.settingNormal = this.so.data[this.id].settingNormal;
            this.settingFullScreen = this.so.data[this.id].settingFullScreen;
            if(this.settingNormal != null)
            {
               this.objRef.setSettings(this.settingNormal);
            }
         }
         EventDispatcher(this.objRef).addEventListener(SETTING_CHANGED_EVENT,onSettingChanged,false,0,true);
      }
      
      public function save() : void
      {
         if(this.so.data[this.id] == null)
         {
            this.so.data[this.id] = new Object();
         }
         if(this.isFullScreen && this.asFullScreenMode)
         {
            this.settingFullScreen = this.objRef.getSettings();
            this.so.data[this.id].settingFullScreen = this.settingFullScreen;
         }
         else
         {
            this.settingNormal = this.objRef.getSettings();
            this.so.data[this.id].settingNormal = this.settingNormal;
         }
         this.so.flush();
      }
      
      public function setIsFullScreen(v:Boolean) : void
      {
         if(v != this.isFullScreen)
         {
            if(v && this.asFullScreenMode)
            {
               this.settingNormal = this.objRef.getSettings();
               if(this.settingFullScreen == null)
               {
                  this.settingFullScreen = this.objRef.getDefaultFull();
               }
               if(this.settingFullScreen != null)
               {
                  this.objRef.setSettings(this.settingFullScreen);
               }
            }
            else
            {
               this.settingFullScreen = this.objRef.getSettings();
               if(this.settingNormal == null)
               {
                  this.settingNormal = this.objRef.getDefaultNormal();
               }
               if(this.settingNormal != null)
               {
                  this.objRef.setSettings(this.settingNormal);
               }
            }
         }
         this.isFullScreen = v;
      }
      
      private function onSettingChanged(evt:Event) : void
      {
         this.save();
      }
   }
}

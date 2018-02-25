package com.gaiaonline.usersettings
{
   import flash.net.SharedObject;
   
   public class UserSettings
   {
       
      
      private var settings:Object;
      
      private var userId:String;
      
      private var file:String;
      
      private var version:String;
      
      private var so:SharedObject;
      
      public function UserSettings(file:String, userId:String, version:String)
      {
         settings = new Object();
         super();
         this.version = version;
         if(file)
         {
            file = file.split(" ").join("_");
         }
         if(userId)
         {
            userId = userId.split(" ").join("_");
         }
         this.so = SharedObject.getLocal(file + userId);
         if(this.so.data.version != this.version)
         {
            this.so.clear();
            this.so.data.version = this.version;
         }
      }
      
      public function getSimpleSetting(settingId:String) : Object
      {
         return this.so.data[settingId];
      }
      
      public function addSetting(id:String, objRef:ISettings) : void
      {
         this.settings[id] = new Settings#54(id,objRef,this.so);
      }
      
      public function setSimpleSetting(settingId:String, obj:Object) : void
      {
         this.so.data[settingId] = obj;
      }
      
      public function save() : void
      {
         var id:* = null;
         var s:Settings = null;
         for(id in this.settings)
         {
            s = Settings#54(this.settings[id]);
            s.save();
         }
      }
   }
}

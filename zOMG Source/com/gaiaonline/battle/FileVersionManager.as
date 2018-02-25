package com.gaiaonline.battle
{
   import com.gaiaonline.battle.ApplicationInterfaces.IFileVersionManager;
   
   public class FileVersionManager implements IFileVersionManager
   {
       
      
      private var _clientVersion:String = null;
      
      private var _serverVersion:String = null;
      
      public function FileVersionManager()
      {
         super();
      }
      
      public function setClientVersion(version:String) : void
      {
         this._clientVersion = version;
      }
      
      public function getClientVersion(fileName:String) : String
      {
         return this._clientVersion;
      }
      
      public function setServerVersion(version:String) : void
      {
         this._serverVersion = version;
      }
      
      public function getServerVersion() : String
      {
         return this._serverVersion;
      }
   }
}

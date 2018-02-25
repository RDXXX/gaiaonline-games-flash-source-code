package com.gaiaonline.battle.ApplicationImplementations
{
   import com.gaiaonline.battle.ApplicationInterfaces.ILinkManager;
   
   public class LinkManagerImpl implements ILinkManager
   {
       
      
      private var _baseUrl:String = null;
      
      private var _linksHash:Object;
      
      private var _spaceName:String = null;
      
      public function LinkManagerImpl()
      {
         _linksHash = new Object();
         super();
      }
      
      public function set spaceName(spaceName:String) : void
      {
         this._spaceName = spaceName;
      }
      
      public function get baseURL() : String
      {
         return this._baseUrl;
      }
      
      public function setLink(key:String, value:String) : void
      {
         this._linksHash[key] = value;
      }
      
      public function get spaceName() : String
      {
         return this._spaceName;
      }
      
      public function getLink(key:String) : String
      {
         var value:String = this._linksHash[key];
         if(!value)
         {
            value = null;
         }
         return value;
      }
      
      public function set baseURL(url:String) : void
      {
         this._baseUrl = url;
      }
   }
}

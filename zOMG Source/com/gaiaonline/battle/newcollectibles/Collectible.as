package com.gaiaonline.battle.newcollectibles
{
   import flash.display.Bitmap;
   import flash.events.EventDispatcher;
   
   public class Collectible extends EventDispatcher
   {
      
      public static var LOADED:String = "CollectibleLoaded";
      
      private static var _mapping:Object = null;
       
      
      private var _position:int = -1;
      
      private var _name:String = null;
      
      private var _bitmap:Bitmap = null;
      
      private var _iconUrl:String = null;
      
      private var _id:String = null;
      
      public function Collectible(id:String, name:String, fileName:String, imagesBaseUrl:String)
      {
         super();
         this._id = id;
         this._name = name;
         this._iconUrl = imagesBaseUrl + fileName;
      }
      
      public function get position() : int
      {
         return this._position;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set iconUrl(url:String) : void
      {
         this._iconUrl = url;
      }
      
      public function get bitmap() : Bitmap
      {
         return this._bitmap;
      }
      
      public function set position(i:int) : void
      {
         this._position = i;
      }
      
      public function get iconUrl() : String
      {
         return this._iconUrl;
      }
      
      public function get id() : String
      {
         return this._id;
      }
      
      public function set bitmap(b:Bitmap) : void
      {
         this._bitmap = b;
      }
   }
}

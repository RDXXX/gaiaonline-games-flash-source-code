package com.gaiaonline.battle.newghibuffs
{
   import flash.display.Bitmap;
   import flash.events.EventDispatcher;
   
   public class GhiBuff extends EventDispatcher
   {
      
      public static var LOADED:String = "CollectibleLoaded";
       
      
      private var _targets:Number = NaN;
      
      private var _description:String = null;
      
      private var _fileName:String = null;
      
      private var _id:String = null;
      
      private var _bitmap:Bitmap = null;
      
      private var _type:Number = NaN;
      
      private var _stats:Array;
      
      private var _name:String = null;
      
      private var _loader:GhiBuffLoader;
      
      private var _exhaustion:Number = NaN;
      
      public function GhiBuff(id:String, name:String, type:Number, exhaustion:Number, fileName:String, description:String, targets:Number, statsList:Object)
      {
         var si:int = 0;
         _stats = new Array();
         _loader = new GhiBuffLoader();
         super();
         this._id = id;
         this._name = name;
         this._type = type;
         this._exhaustion = exhaustion;
         this._fileName = fileName;
         this._description = description;
         this._targets = targets;
         if(statsList != null)
         {
            for(si = 0; si < statsList.length; si++)
            {
               _stats.push(statsList[si]);
            }
         }
         _loader.load(this);
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get id() : String
      {
         return this._id;
      }
      
      public function set bitmap(b:Bitmap) : void
      {
         this._bitmap = b;
      }
      
      public function get stats() : Array
      {
         return this._stats;
      }
      
      public function get bitmap() : Bitmap
      {
         return this._bitmap;
      }
      
      public function get iconUrl() : String
      {
         return this._fileName;
      }
      
      public function get description() : String
      {
         return this._description;
      }
      
      public function set stats(s:Array) : void
      {
         this._stats = s;
      }
   }
}

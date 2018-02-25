package com.gaiaworld.house.model
{
   import com.gaiamobile.global.constants.DebugConstants;
   import com.gaiaworld.house.constants.HouseConstants;
   import com.gaiaworld.towns.games.rally.constants.RallyConstants;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class DebugModel extends EventDispatcher
   {
      
      private static var instance:DebugModel;
       
      
      private var _dist:Number;
      
      private var _roomID:Number;
      
      private var _debugText:String;
      
      private var _debugFlag:Boolean;
      
      private var _locText:String;
      
      private var _colText:String;
      
      public function DebugModel()
      {
         super();
      }
      
      public static function getInstance() : DebugModel
      {
         if(instance == null)
         {
            instance = new DebugModel();
         }
         return instance;
      }
      
      public function get debugText() : String
      {
         return this._debugText;
      }
      
      public function set debugText(param1:String) : void
      {
         this._debugText = param1;
         this.dispatchEvent(new Event(HouseConstants.NEW_DEBUG_TEXT,true));
      }
      
      public function get debugFlag() : Boolean
      {
         return this._debugFlag;
      }
      
      public function set debugFlag(param1:Boolean) : void
      {
         this._debugFlag = param1;
         this.dispatchEvent(new Event(HouseConstants.TEXT_FLAG_UPDATED,true));
      }
      
      public function get locText() : String
      {
         return this._locText;
      }
      
      public function set locText(param1:String) : void
      {
         this._locText = param1;
         this.dispatchEvent(new Event(HouseConstants.NEW_LOC_TEXT,true));
      }
      
      public function get colText() : String
      {
         return this._colText;
      }
      
      public function set colText(param1:String) : void
      {
         this._colText = param1;
         this.dispatchEvent(new Event(HouseConstants.NEW_COL_TEXT,true));
      }
      
      public function get roomID() : Number
      {
         return this._roomID;
      }
      
      public function set roomID(param1:Number) : void
      {
         this._roomID = param1;
         this.dispatchEvent(new Event(HouseConstants.ROOM_ID_CHANGED,true));
      }
      
      public function get dist() : Number
      {
         return this._dist;
      }
      
      public function set dist(param1:Number) : void
      {
         this._dist = param1;
         this.dispatchEvent(new Event(RallyConstants.TOTAL_DIST_CHANGED,true));
      }
      
      public function upadtedInfo() : *
      {
         this.dispatchEvent(new Event(HouseConstants.UPDATE_INFO,true));
      }
      
      public function listAllObjects() : *
      {
         this.dispatchEvent(new Event(DebugConstants.LIST_ALL_OBJECTS,true));
      }
      
      public function listSurface() : void
      {
         this.dispatchEvent(new Event(DebugConstants.LIST_SURFACE,true));
      }
      
      public function listRooms() : void
      {
         this.dispatchEvent(new Event(DebugConstants.LIST_ROOMS,true));
      }
   }
}

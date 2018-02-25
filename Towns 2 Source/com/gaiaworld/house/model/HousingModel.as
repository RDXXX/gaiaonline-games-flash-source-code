package com.gaiaworld.house.model
{
   import com.gaiaworld.house.constants.HouseConstants;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class HousingModel extends EventDispatcher
   {
      
      private static var instance:HousingModel;
       
      
      public var house_id:Number;
      
      public var plotIndex:Number = -1;
      
      public var exitLocations:Array;
      
      private var _isInHouse:Boolean = false;
      
      public function HousingModel()
      {
         super();
      }
      
      public static function getInstance() : HousingModel
      {
         if(instance == null)
         {
            instance = new HousingModel();
         }
         return instance;
      }
      
      public function get isInHouse() : Boolean
      {
         return this._isInHouse;
      }
      
      public function set isInHouse(param1:Boolean) : void
      {
         this._isInHouse = param1;
         this.dispatchEvent(new Event(HouseConstants.IN_HOUSE_CHANGED,true));
      }
   }
}

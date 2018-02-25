package com.gaiaworld.global.model
{
   import com.gaiaworld.global.vo.EventVo;
   import flash.events.EventDispatcher;
   
   public class EventModel extends EventDispatcher
   {
      
      private static var instance:EventModel;
       
      
      private var eventArray:Array;
      
      public function EventModel()
      {
         this.eventArray = new Array();
         super();
      }
      
      public static function getInstance() : EventModel
      {
         if(instance == null)
         {
            instance = new EventModel();
         }
         return instance;
      }
      
      public function addEvtListener(param1:*, param2:String, param3:Function, param4:Boolean = false, param5:int = 0, param6:Boolean = true, param7:String = "") : *
      {
         var _loc8_:EventVo = new EventVo(param1,param2,param3,param7);
         if(!this.hasListener(_loc8_))
         {
            this.eventArray.push(_loc8_);
            param1.addEventListener(param2,param3,param4,param5,param6);
         }
      }
      
      public function removeEvtListener(param1:*, param2:String, param3:Function, param4:Boolean = false) : *
      {
         var _loc7_:EventVo = null;
         var _loc5_:Number = this.eventArray.length;
         var _loc6_:int = 0;
         while(_loc6_ < _loc5_)
         {
            _loc7_ = this.eventArray[_loc6_];
            if(_loc7_.dispatch == param1 && _loc7_.func == param3 && _loc7_.type == param2)
            {
               this.eventArray.splice(_loc6_,1);
               _loc7_.dispatch.removeEventListener(param2,param3,param4);
               _loc6_ = _loc5_;
            }
            _loc6_++;
         }
      }
      
      private function hasListener(param1:EventVo) : *
      {
         var _loc4_:EventVo = null;
         var _loc2_:Number = this.eventArray.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = this.eventArray[_loc3_];
            if(param1.type == _loc4_.type && param1.dispatch == _loc4_.dispatch && param1.func == _loc4_.func)
            {
               return true;
            }
            _loc3_++;
         }
         return false;
      }
      
      public function listAll() : *
      {
         var _loc3_:EventVo = null;
         var _loc1_:Number = this.eventArray.length;
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            _loc3_ = this.eventArray[_loc2_];
            _loc2_++;
         }
      }
   }
}

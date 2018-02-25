package com.gaiaworld.global.controller
{
   import com.gaiaworld.global.model.EventModel;
   
   public class EventController
   {
       
      
      private var eventModel:EventModel;
      
      public function EventController()
      {
         this.eventModel = EventModel.getInstance();
         super();
      }
      
      public function addEventListener(param1:*, param2:String, param3:Function, param4:Boolean = false, param5:int = 0, param6:Boolean = true, param7:String = "") : *
      {
         this.eventModel.addEvtListener(param1,param2,param3,param4,param5,param6,param7);
      }
      
      public function removeEventListener(param1:*, param2:String, param3:Function, param4:Boolean = false) : *
      {
         this.eventModel.removeEvtListener(param1,param2,param3,param4);
      }
      
      public function listAll() : *
      {
         this.eventModel.listAll();
      }
   }
}

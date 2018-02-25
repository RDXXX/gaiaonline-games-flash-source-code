package com.gaiaworld.global.services
{
   import com.gaiaonline.gsi.GSICompleteEvent;
   import com.gaiaonline.gsi.GSIGateway;
   import com.gaiaonline.serializers.JSONSerializer;
   import com.gaiaworld.global.constants.GlobalConstants;
   import com.gaiaworld.global.constants.GsiConstants;
   import com.gaiaworld.global.controller.GlobalController;
   import com.gaiaworld.global.model.GlobalModel;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class GaiaTimer
   {
       
      
      private var timer:Timer;
      
      private var gateway:GSIGateway;
      
      private var globalController:GlobalController;
      
      private var globalModel:GlobalModel;
      
      private var isNight:Boolean = false;
      
      private var lastTime:String = "";
      
      public function GaiaTimer()
      {
         this.timer = new Timer(10000);
         this.globalController = new GlobalController();
         this.globalModel = GlobalModel.getInstance();
         super();
         this.globalModel.addEventListener(GlobalConstants.SUBDOMAIN_SET,this.subdomainSet);
      }
      
      private function subdomainSet(param1:Event) : *
      {
         this.gateway = new GSIGateway(this.globalModel.gsiSubdomain);
         this.gateway.serializerClass = JSONSerializer;
         this.timer.addEventListener(TimerEvent.TIMER,this.timeToCheck);
         this.timer.start();
         this.checkTime();
      }
      
      private function timeToCheck(param1:TimerEvent) : *
      {
         this.checkTime();
         if(this.timer.delay < 60000)
         {
            this.timer.delay = 60000;
         }
      }
      
      private function checkTime() : *
      {
         this.gateway.addEventListener(GSICompleteEvent.COMPLETE,this.gotTheTime);
         this.gateway.queue(GsiConstants.GET_GAIA_TIME);
         this.gateway.send();
      }
      
      private function gotTheTime(param1:GSICompleteEvent) : void
      {
         this.gateway.removeEventListener(GSICompleteEvent.COMPLETE,this.gotTheTime);
         var _loc2_:Number = Number(param1.methods[0].data[0]);
         var _loc3_:Boolean = _loc2_ == 2?false:true;
         var _loc4_:String = param1.methods[0].data[1];
         var _loc5_:Array = _loc4_.split(":");
         if(_loc5_[0] == "12" && this.lastTime != "12")
         {
            return;
         }
         this.lastTime = _loc5_[0];
         this.globalController.setDayIcon(_loc2_);
         this.globalController.setDaylight(param1.methods[0].data[2]);
         this.globalController.setGaiaTime(param1.methods[0].data[1]);
         this.globalController.changeTimeOfDay(_loc3_);
      }
   }
}

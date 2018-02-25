package com.gaiaworld.global.services
{
   import com.gaiaonline.gsi.GSICompleteEvent;
   import com.gaiaonline.gsi.GSIGateway;
   import com.gaiaworld.global.model.GlobalModel;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class ServerTime extends EventDispatcher
   {
      
      public static const TIME_GOT:String = "timeGot";
       
      
      private var gsi:GSIGateway;
      
      private var globalModel:GlobalModel;
      
      public var time:Number;
      
      public var now:Date;
      
      public var mins:Number;
      
      public var secs:Number;
      
      public function ServerTime()
      {
         this.globalModel = GlobalModel.getInstance();
         super();
         this.gsi = new GSIGateway("www");
      }
      
      public function getTime() : void
      {
         this.gsi.addEventListener(GSICompleteEvent.COMPLETE,this.timeGot);
         this.gsi.invoke(12022);
      }
      
      private function timeGot(param1:GSICompleteEvent) : *
      {
         this.gsi.removeEventListener(GSICompleteEvent.COMPLETE,this.timeGot);
         this.time = Number(param1.methods[0].data) * 1000;
         this.now = new Date();
         this.now.setTime(this.time);
         this.secs = this.now.getSeconds();
         this.mins = this.now.getMinutes();
         this.dispatchEvent(new Event(TIME_GOT,true));
      }
   }
}

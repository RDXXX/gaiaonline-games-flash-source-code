package com.rawfishsoftware.sushi
{
   import com.gaiaworld.sushi.controller.ChatController;
   import com.gaiaworld.sushi.model.ChatModel;
   import flash.events.DataEvent;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.StatusEvent;
   import flash.events.TimerEvent;
   import flash.net.XMLSocket;
   import flash.utils.Timer;
   
   public class SushiSocket extends XMLSocket
   {
      
      public static const DEFAULT_TIMEOUT:uint = 30000;
       
      
      private var timeoutTimer:Timer;
      
      private var ref:Object;
      
      private var timer:Timer;
      
      private var lastTime:Number;
      
      public function SushiSocket(param1:String, param2:Number, param3:Object)
      {
         super();
         this.ref = param3;
         this.timer = new Timer(42);
         this.timer.addEventListener(TimerEvent.TIMER,this.onTimer);
         this.timeoutTimer = new Timer(DEFAULT_TIMEOUT,1);
         this.timeoutTimer.addEventListener(TimerEvent.TIMER,this.onTimeout);
         this.timeoutTimer.start();
         this.addEventListener(flash.events.Event.CONNECT,this.onConnect);
         this.addEventListener(DataEvent.DATA,this.onData);
         this.addEventListener(flash.events.Event.CLOSE,this.onClose);
         this.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.addEventListener("status",this.onStatus);
         connect(param1,param2);
      }
      
      protected function onTimeout(param1:TimerEvent) : void
      {
         this.dispatchEvent(new flash.events.Event("timeout"));
         if(this.connected)
         {
            this.close();
         }
         else
         {
            this.ref = null;
         }
      }
      
      private function onTimer(param1:TimerEvent) : void
      {
         var _loc2_:ChatModel = ChatModel.getInstance();
         var _loc3_:Object = this.ref;
         if(_loc3_.$sts != "")
         {
            if(_loc3_.logging)
            {
               _loc3_.logger.log(_loc3_.$sts,"FLASH");
            }
            this.send(_loc3_.$sts);
            _loc3_.$sts = "";
         }
         if(_loc3_.$fps)
         {
            _loc3_.$getFPS();
         }
      }
      
      public function clearTraffic() : *
      {
         this.ref.$sts = "";
      }
      
      private function onConnect(param1:flash.events.Event) : void
      {
         var _loc2_:String = null;
         this.timeoutTimer.reset();
         this.timeoutTimer.start();
         if(this.ref)
         {
            this.timer.start();
            _loc2_ = this.ref.$d;
            this.ref.connectionType = "SOCKET";
            this.ref.$connected = 1;
            this.ref.$sts = this.ref.$sts + ("S55" + _loc2_ + "FLASH" + _loc2_ + "1" + _loc2_ + this.ref.LIMIT + this.ref.$e + "2" + _loc2_ + this.ref.$clientSpeed + this.ref.$e);
            this.ref.$netTimer = new Date().getTime();
         }
         else
         {
            this.close();
         }
      }
      
      private function onData(param1:DataEvent) : void
      {
         this.timeoutTimer.reset();
         this.ref.$p.apply(this.ref,[param1.data]);
      }
      
      private function onClose(param1:flash.events.Event) : void
      {
         this.timer.stop();
         this.timeoutTimer.reset();
         if(this.ref)
         {
            this.ref.$connected = 0;
            this.ref.event.onDisconnect.$call();
            this.ref.$init();
            this.ref.session.sessionList = [];
         }
      }
      
      private function onError(param1:flash.events.Event) : void
      {
         this.timer.stop();
         this.timeoutTimer.reset();
         var _loc2_:ChatController = new ChatController();
         _loc2_.raiseError();
      }
      
      private function onStatus(param1:StatusEvent) : void
      {
      }
      
      override public function close() : void
      {
         super.close();
         this.onClose(null);
      }
   }
}

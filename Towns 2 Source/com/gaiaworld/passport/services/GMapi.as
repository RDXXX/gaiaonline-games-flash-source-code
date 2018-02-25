package com.gaiaworld.passport.services
{
   import com.adobe.crypto.MD5;
   import com.gaiaworld.global.model.GlobalModel;
   import com.gaiaworld.global.util.DebugTool;
   import com.gaiaworld.global.util.ServerTimer;
   import com.gaiaworld.passport.events.GMCompleteEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.URLRequestHeader;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class GMapi extends EventDispatcher
   {
       
      
      private var urlLoader:URLLoader;
      
      private var urlReq:URLRequest;
      
      private var urlVars:URLVariables;
      
      private var subDomain:String;
      
      private var url:String = "gaiaonline.com/gmapi/passport/";
      
      private var pls:String = "flash:e4a01ba2a3feac52421a98b6c154c183";
      
      private var globalModel:GlobalModel;
      
      public const PASSPORT_TTL:int = 3600;
      
      public const PASSPORT_HOST:String = "gaiaonline.com";
      
      public const PASSPORT_URI:String = "/gmapi/passport/";
      
      public function GMapi(param1:String = "www")
      {
         this.urlLoader = new URLLoader();
         this.urlReq = new URLRequest();
         this.urlVars = new URLVariables();
         this.globalModel = GlobalModel.getInstance();
         super();
         this.subDomain = "cfivecoate.d";
      }
      
      public function invoke(param1:String, param2:Object = null) : *
      {
         this.urlLoader.addEventListener(Event.COMPLETE,this.dataLoaded);
         this.urlLoader.addEventListener(IOErrorEvent.IO_ERROR,this.errorHandler);
         if(param2 == null)
         {
            param2 = new Object();
         }
         param2.passport_id = this.globalModel.passport_id;
         param2.passport_token = this.globalModel.passport_token;
         this.urlReq.method = URLRequestMethod.POST;
         var _loc3_:String = JSON.stringify(param2);
         this.urlReq.data = _loc3_;
         var _loc4_:Number = ServerTimer.getInstance().getTime();
         var _loc5_:String = this.PASSPORT_URI + param1;
         var _loc6_:String = [_loc5_,_loc3_,this.pls,(_loc4_ + this.PASSPORT_TTL).toString()].join("|");
         var _loc7_:String = MD5.hash(_loc6_) + "-" + (_loc4_ + this.PASSPORT_TTL).toString();
         var _loc8_:URLRequestHeader = new URLRequestHeader("X-Payload-Signature",_loc7_);
         this.urlReq.requestHeaders.push(_loc8_);
         if(this.subDomain == "" || this.subDomain == null)
         {
            this.subDomain = this.globalModel.gsiSubdomain;
         }
         if(this.subDomain == "" || this.subDomain == null)
         {
            this.subDomain = "www";
         }
         this.urlReq.url = "http://" + this.subDomain + "." + this.url + param1;
         this.urlLoader.load(this.urlReq);
      }
      
      private function dataLoaded(param1:Event) : void
      {
         DebugTool.pr(param1.target.data);
         this.urlLoader.removeEventListener(Event.COMPLETE,this.dataLoaded);
         var _loc2_:Object = JSON.parse(param1.target.data);
         this.dispatchEvent(new GMCompleteEvent(GMCompleteEvent.COMPLETED,_loc2_,true));
      }
      
      private function errorHandler(param1:IOErrorEvent) : void
      {
      }
   }
}

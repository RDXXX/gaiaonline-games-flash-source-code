package com.gaiaonline.gsi
{
   import com.gaiaonline.serializers.SushiSerializer;
   import com.gaiaworld.global.util.StringFunctions;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestHeader;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   import flash.utils.Dictionary;
   import mx.utils.Base64Encoder;
   
   public class GSIGateway extends EventDispatcher
   {
       
      
      public const GATEWAY_URL:String = "gaiaonline.com/chat/gsi/gateway.php";
      
      public const GATEWAY_NONENCODED_URL:String = "gaiaonline.com/chat/gsi/index.php";
      
      public var subdomain:String;
      
      public var serializerClass:Object;
      
      public var userName:String;
      
      public var password:String;
      
      private var aQueuedMethods:Array;
      
      private var _useNonEncodedURL:Boolean = false;
      
      private var _loaders:Dictionary = null;
      
      private const RETRIES:uint = 3;
      
      private const DELAY:uint = 1500;
      
      public function GSIGateway(param1:String = "www")
      {
         this.serializerClass = SushiSerializer;
         super();
         this.subdomain = param1;
         this.aQueuedMethods = new Array();
         this._loaders = new Dictionary(true);
      }
      
      public function set useNonEncodedURL(param1:Boolean) : void
      {
         this._useNonEncodedURL = param1;
      }
      
      public function get useNonEncodedURL() : Boolean
      {
         return this._useNonEncodedURL;
      }
      
      public function queue(param1:uint, ... rest) : void
      {
         var _loc3_:Array = new Array();
         _loc3_.push(param1);
         _loc3_.push(rest);
         this.aQueuedMethods.push(_loc3_);
      }
      
      public function invoke(param1:uint, ... rest) : void
      {
         var _loc3_:Array = new Array();
         _loc3_.push(param1);
         _loc3_.push(rest);
         this.aQueuedMethods.push(_loc3_);
         this.send();
      }
      
      public function invokeArray(param1:uint, param2:Array) : void
      {
         var _loc3_:Array = new Array();
         _loc3_.push(param1);
         _loc3_.push(param2);
         this.aQueuedMethods.push(_loc3_);
         this.send();
      }
      
      protected function createURL() : String
      {
         var _loc1_:String = !!this._useNonEncodedURL?this.GATEWAY_NONENCODED_URL:this.GATEWAY_URL;
         return "http://" + this.subdomain + "." + _loc1_;
      }
      
      private function createURLLoader() : URLLoader
      {
         var _loc1_:URLLoader = new URLLoader();
         _loc1_.addEventListener(Event.COMPLETE,this.onComplete);
         _loc1_.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
         _loc1_.dataFormat = URLLoaderDataFormat.TEXT;
         return _loc1_;
      }
      
      public function send() : void
      {
         var _loc5_:Base64Encoder = null;
         var _loc6_:String = null;
         var _loc7_:URLRequestHeader = null;
         this.dtrace(":send()" + this.aQueuedMethods);
         if(!this.aQueuedMethods.length)
         {
            return;
         }
         var _loc1_:String = this.createURL();
         var _loc2_:URLRequest = new URLRequest(_loc1_);
         _loc2_.method = URLRequestMethod.POST;
         var _loc3_:URLVariables = new URLVariables();
         _loc3_.m = this.serializerClass.serialize(this.aQueuedMethods);
         if(hasEventListener(GSIEvent.SERIALIZED))
         {
            dispatchEvent(new GSIEvent(GSIEvent.SERIALIZED,this.aQueuedMethods[0],_loc3_.m));
         }
         _loc3_.v = this.serializerClass.encodeName;
         _loc3_.X = new Date().getTime();
         _loc2_.data = _loc3_;
         if(this.userName != null && this.password != null)
         {
            _loc5_ = new Base64Encoder();
            _loc5_.encode(this.userName + ":" + this.password);
            _loc6_ = _loc5_.flush();
            _loc7_ = new URLRequestHeader("Authorization","Basic " + _loc6_);
            _loc2_.requestHeaders.push(_loc7_);
         }
         var _loc4_:URLLoader = this.createURLLoader();
         this._loaders[_loc4_] = new RequestRetry(_loc2_,_loc4_,this.RETRIES,this.DELAY);
         _loc4_.load(_loc2_);
         this.reset();
      }
      
      public function reset() : void
      {
         this.aQueuedMethods.length = 0;
      }
      
      private function clearLoader(param1:URLLoader) : void
      {
         param1.removeEventListener(Event.COMPLETE,this.onComplete);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
         delete this._loaders[param1];
      }
      
      private function onComplete(param1:Event) : void
      {
         var raw:String = null;
         var unserialized:Array = null;
         var pack:Array = null;
         var method:int = 0;
         var success:Boolean = false;
         var data:Object = null;
         var event:Event = param1;
         var loader:URLLoader = URLLoader(event.target);
         this.clearLoader(loader);
         raw = decodeURI(loader.data.toString());
         raw = StringFunctions.findReplace("+",raw,"%20");
         raw = unescape(raw);
         if(hasEventListener(GSIEvent.RAW_LOADED))
         {
            dispatchEvent(new GSIEvent(GSIEvent.RAW_LOADED,0,raw));
         }
         try
         {
            unserialized = this.serializerClass.unserialize(raw);
         }
         catch(e:Error)
         {
            dtrace("onComplete() unserialize Error:" + e.message + " : " + raw);
            this.dispatchEvent(new GSIEvent(GSIEvent.ERROR));
         }
         if(!unserialized || !unserialized.length)
         {
            this.dispatchEvent(new GSIEvent(GSIEvent.ERROR));
            return;
         }
         var aReturnMethods:Array = new Array();
         var totalMethods:uint = unserialized.length;
         var x:uint = 0;
         while(x < totalMethods)
         {
            pack = unserialized[x];
            method = pack[0];
            success = pack[1];
            data = pack[2];
            aReturnMethods.push({
               "id":method,
               "data":data,
               "success":success
            });
            if(success)
            {
               this.dispatchEvent(new GSIEvent(GSIEvent.LOADED,method,data));
            }
            else
            {
               this.dispatchEvent(new GSIEvent(GSIEvent.ERROR,method,data));
            }
            x++;
         }
         this.dispatchEvent(new GSICompleteEvent(GSICompleteEvent.COMPLETE,aReturnMethods));
      }
      
      private function onIOError(param1:IOErrorEvent) : void
      {
         var _loc2_:URLLoader = URLLoader(param1.target);
         if(!(this._loaders[_loc2_] as RequestRetry).doRetry())
         {
            this.clearLoader(_loc2_);
            dispatchEvent(param1);
         }
      }
      
      private function dtrace(param1:String) : void
      {
      }
   }
}

import flash.net.URLLoader;
import flash.net.URLRequest;
import flash.utils.setTimeout;

class RequestRetry
{
    
   
   private var _request:URLRequest = null;
   
   private var _retriesAllowed:uint = 1;
   
   private var _urlLoader:URLLoader = null;
   
   private var _delay:uint = 1;
   
   function RequestRetry(param1:URLRequest, param2:URLLoader, param3:uint, param4:uint = 2000)
   {
      super();
      this._request = param1;
      this._urlLoader = param2;
      this._retriesAllowed = param3;
      this._delay = param4;
   }
   
   public function doRetry() : Boolean
   {
      this._retriesAllowed--;
      if(this._retriesAllowed > 0)
      {
         setTimeout(this.handleRetry,this._delay);
         return true;
      }
      return false;
   }
   
   private function handleRetry() : void
   {
      this._urlLoader.load(this._request);
   }
}

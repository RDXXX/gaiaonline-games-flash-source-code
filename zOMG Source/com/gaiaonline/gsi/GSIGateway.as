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
       
      
      private var _loaders:Dictionary = null;
      
      public var subdomain:String;
      
      public var serializerClass:Object;
      
      private var _useNonEncodedURL:Boolean = false;
      
      private var aQueuedMethods:Array;
      
      public var password:String;
      
      private const DELAY:uint = 1500;
      
      private const RETRIES:uint = 3;
      
      public const GATEWAY_NONENCODED_URL:String = "gaiaonline.com/chat/gsi/index.php";
      
      public const GATEWAY_URL:String = "gaiaonline.com/chat/gsi/gateway.php";
      
      public var userName:String;
      
      public function GSIGateway(subdomain:String = "www")
      {
         serializerClass = SushiSerializer;
         super();
         this.subdomain = subdomain;
         this.aQueuedMethods = new Array();
         _loaders = new Dictionary(true);
      }
      
      private function clearLoader(urlLoader:URLLoader) : void
      {
         urlLoader.removeEventListener(Event.COMPLETE,onComplete);
         urlLoader.removeEventListener(IOErrorEvent.IO_ERROR,onIOError);
         delete _loaders[urlLoader];
      }
      
      private function onIOError(event:IOErrorEvent) : void
      {
         var loader:URLLoader = URLLoader(event.target);
         if(!(_loaders[loader] as RequestRetry).doRetry())
         {
            clearLoader(loader);
            dispatchEvent(event);
         }
      }
      
      private function onComplete(event:Event) : void
      {
         var raw:String = null;
         var unserialized:Array = null;
         var pack:Array = null;
         var method:int = 0;
         var success:Boolean = false;
         var data:Object = null;
         var loader:URLLoader = URLLoader(event.target);
         clearLoader(loader);
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
            dTrace("onComplete() unserialize Error:" + e.message + " : " + raw);
            this.dispatchEvent(new GSIEvent(GSIEvent.ERROR));
         }
         if(!unserialized || !unserialized.length)
         {
            this.dispatchEvent(new GSIEvent(GSIEvent.ERROR));
            return;
         }
         var aReturnMethods:Array = new Array();
         var totalMethods:uint = unserialized.length;
         for(var x:uint = 0; x < totalMethods; x++)
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
         }
         this.dispatchEvent(new GSICompleteEvent(GSICompleteEvent.COMPLETE,aReturnMethods));
      }
      
      public function set useNonEncodedURL(b:Boolean) : void
      {
         _useNonEncodedURL = b;
      }
      
      public function send() : void
      {
         var b64:Base64Encoder = null;
         var credentials:String = null;
         var authHeader:URLRequestHeader = null;
         dTrace(":send()" + aQueuedMethods);
         if(!this.aQueuedMethods.length)
         {
            return;
         }
         var fullURL:String = createURL();
         var request:URLRequest = new URLRequest(fullURL);
         request.method = URLRequestMethod.POST;
         var variables:URLVariables = new URLVariables();
         variables.m = this.serializerClass.serialize(this.aQueuedMethods);
         if(hasEventListener(GSIEvent.SERIALIZED))
         {
            dispatchEvent(new GSIEvent(GSIEvent.SERIALIZED,aQueuedMethods[0],variables.m));
         }
         variables.v = this.serializerClass.encodeName;
         variables.X = new Date().getTime();
         request.data = variables;
         if(this.userName != null && this.password != null)
         {
            b64 = new Base64Encoder();
            b64.encode(this.userName + ":" + this.password);
            credentials = b64.flush();
            authHeader = new URLRequestHeader("Authorization","Basic " + credentials);
            request.requestHeaders.push(authHeader);
         }
         var loader:URLLoader = createURLLoader();
         _loaders[loader] = new RequestRetry(request,loader,RETRIES,DELAY);
         loader.load(request);
         this.reset();
      }
      
      public function invokeArray(method:uint, arguments:Array) : void
      {
         var aData:Array = new Array();
         aData.push(method);
         aData.push(arguments);
         this.aQueuedMethods.push(aData);
         this.send();
      }
      
      public function queue(method:uint, ... arguments) : void
      {
         var aData:Array = new Array();
         aData.push(method);
         aData.push(arguments);
         this.aQueuedMethods.push(aData);
      }
      
      public function reset() : void
      {
         this.aQueuedMethods.length = 0;
      }
      
      private function dTrace(s:String) : void
      {
      }
      
      protected function createURL() : String
      {
         var urlPath:String = !!_useNonEncodedURL?GATEWAY_NONENCODED_URL:GATEWAY_URL;
         return "http://" + this.subdomain + "." + urlPath;
      }
      
      public function get useNonEncodedURL() : Boolean
      {
         return _useNonEncodedURL;
      }
      
      public function invoke(method:uint, ... arguments) : void
      {
         var aData:Array = new Array();
         aData.push(method);
         aData.push(arguments);
         this.aQueuedMethods.push(aData);
         this.send();
      }
      
      private function createURLLoader() : URLLoader
      {
         var loader:URLLoader = new URLLoader();
         loader.addEventListener(Event.COMPLETE,this.onComplete);
         loader.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
         loader.dataFormat = URLLoaderDataFormat.TEXT;
         return loader;
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
   
   function RequestRetry(request:URLRequest, urlLoader:URLLoader, retriesAllowed:uint, delay:uint = 2000)
   {
      super();
      _request = request;
      _urlLoader = urlLoader;
      _retriesAllowed = retriesAllowed;
      _delay = delay;
   }
   
   public function doRetry() : Boolean
   {
      _retriesAllowed--;
      if(_retriesAllowed > 0)
      {
         setTimeout(handleRetry,_delay);
         return true;
      }
      return false;
   }
   
   private function handleRetry() : void
   {
      _urlLoader.load(_request);
   }
}

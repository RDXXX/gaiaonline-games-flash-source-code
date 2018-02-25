class GSItools.GSIGateway
{
   var timeout = false;
   static var SIMPLE = "simple";
   static var WDDX = "wddx";
   static var AMF = "amf";
   static var PHPOBJECT = "phpobject";
   static var SUSHI = "sushi";
   static var XML_RPC = "xml_rpc";
   static var PATH = "/chat/gsi/gateway.php";
   static var TEST_SERVER = null;
   static var TS = false;
   function GSIGateway(url, serialization)
   {
      if(GSItools.GSIGateway.SERIALIZERS == undefined)
      {
         GSItools.GSIGateway.SERIALIZERS = {simple:null,wddx:null,amf:null,phpobject:GSItools.serializers.PHPSerializer,sushi:GSItools.serializers.SushiSerializer,xml_rpc:null};
      }
      this.setServer(url);
      this.setEncoding(serialization);
      this.methodCalls = new Array();
      this.callbacks = new Array();
   }
   function invoke(method, args, callback, scope, tOut)
   {
      if(tOut == undefined)
      {
         tOut = this.timeout;
      }
      this.queue(method,args,callback,scope);
      this.send(tOut);
   }
   function queue(method, args, cb, scope)
   {
      var _loc4_ = undefined;
      var _loc2_ = undefined;
      if(cb instanceof GSItools.CallbackGroup)
      {
         _loc2_ = cb.getIndex();
         _loc4_ = cb;
         this.methodCalls[_loc2_].push([method,args]);
         this.callbacks[_loc2_][2] = this.callbacks[_loc2_][2] + 1;
      }
      else
      {
         if(typeof cb != "function")
         {
            cb = function()
            {
               trace("-- empty callback --");
            };
         }
         _loc2_ = this.callbacks.length;
         _loc4_ = new GSItools.CallbackGroup(_loc2_);
         this.methodCalls.push([[method,args]]);
         this.callbacks.push([cb,scope,1]);
      }
      return _loc4_;
   }
   function send(tOut)
   {
      if(this.methodCalls.length < 1)
      {
         return undefined;
      }
      var _loc7_ = undefined;
      var _loc3_ = undefined;
      var _loc2_ = undefined;
      var _loc4_ = new Array();
      var _loc6_ = undefined;
      var _loc5_ = undefined;
      _loc7_ = !!GSItools.GSIGateway.TS?"http://" + GSItools.GSIGateway.TEST_SERVER + GSItools.GSIGateway.PATH:"http://" + this.server + GSItools.GSIGateway.PATH;
      _loc3_ = 0;
      while(_loc3_ < this.methodCalls.length)
      {
         _loc2_ = 0;
         while(_loc2_ < this.methodCalls[_loc3_].length)
         {
            _loc4_.push(this.methodCalls[_loc3_][_loc2_]);
            _loc2_ = _loc2_ + 1;
         }
         _loc3_ = _loc3_ + 1;
      }
      _loc6_ = this.encodingLogic.serialize(_loc4_);
      if(tOut == undefined)
      {
         tOut = this.timeout;
      }
      _loc5_ = new GSItools.GSIRequest(_loc7_,this.encodingName,this.encodingLogic,_loc6_,this.callbacks);
      _loc5_.setTimeout(tOut);
      _loc5_.send();
      this.methodCalls = new Array();
      this.callbacks = new Array();
   }
   function getServer()
   {
      return this.server;
   }
   function getEncoding()
   {
      return this.encodingName;
   }
   function setTimeout(turnOn)
   {
      this.timeout = turnOn;
   }
   function setServer(url)
   {
      this.server = url != undefined?url:"www.gaiaonline.com";
   }
   function setEncoding(encode)
   {
      this.encodingName = encode != undefined?encode:GSItools.GSIGateway.PHPOBJECT;
      this.encodingLogic = GSItools.GSIGateway.SERIALIZERS[this.encodingName];
   }
   static function getTestServer()
   {
      return GSItools.GSIGateway.TEST_SERVER;
   }
   static function setTestServer(url)
   {
      if(url == null || url == undefined || url == "")
      {
         GSItools.GSIGateway.TS = false;
         GSItools.GSIGateway.TEST_SERVER = null;
      }
      else
      {
         GSItools.GSIGateway.TS = true;
         GSItools.GSIGateway.TEST_SERVER = url;
      }
   }
   static function setDebugging(turnOn)
   {
      GSItools.GSIRequest.setDebugging(turnOn);
   }
}

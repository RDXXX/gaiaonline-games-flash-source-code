class GSItools.GSIRequest
{
   var timeout = false;
   static var TOTAL_TRYS = 10;
   static var TIMEOUT_INTERVAL = 10000;
   static var DB = false;
   function GSIRequest(url, eName, eLogic, message, cb, oldTries)
   {
      this.gateway = url;
      this.encodingName = eName;
      this.encodingLogic = eLogic;
      this.callbacks = cb;
      this.sender = new LoadVars();
      this.sender.m = message;
      this.sender.v = this.encodingName;
      this.sender.X = null;
      this.reciever = new LoadVars();
      this.reciever.owner = this;
      this.reciever.onLoad = function(s)
      {
         this.owner.onRecieverLoad(s);
      };
      this.trys = oldTries != undefined?oldTries:0;
      this.dead = false;
   }
   function destroy()
   {
      this.reciever.owner = null;
   }
   function send(cacheBuster)
   {
      if(GSItools.GSIRequest.DB)
      {
         trace("\n--- DATA " + (this.trys != 0?"RESENDING ":"SENDING --") + "--------- (" + (this.trys + 1) + ") --- <" + this.encodingName + ">");
         trace(this.sender.m + "\n");
      }
      if(this.timeout)
      {
         this.timeoutProc = setInterval(this,"onTimeout",GSItools.GSIRequest.TIMEOUT_INTERVAL);
      }
      this.sender.X = cacheBuster != undefined?cacheBuster:new Date().getTime();
      this.sender.sendAndLoad(this.gateway,this.reciever,"POST");
      this.trys = this.trys + 1;
   }
   function onTimeout()
   {
      var _loc2_ = undefined;
      clearInterval(this.timeoutProc);
      this.dead = true;
      if(GSItools.GSIRequest.DB)
      {
         trace("\n--- DATA TIMEOUT ------------ <" + this.sender.X + ">");
      }
      if(this.trys < GSItools.GSIRequest.TOTAL_TRYS)
      {
         _loc2_ = new GSItools.GSIRequest(this.gateway,this.encodingName,this.encodingLogic,this.sender.m,this.callbacks,this.trys);
         _loc2_.setTimeout(true);
         _loc2_.send(this.sender.X);
      }
      else
      {
         this.onNoServer();
      }
   }
   function onRecieverLoad(success)
   {
      if(this.dead)
      {
         if(GSItools.GSIRequest.DB)
         {
            trace("\n--- CLEANUP ------------ <" + this.sender.X + ">");
         }
         this.destroy();
      }
      else if(success)
      {
         this.onSuccess();
         this.destroy();
      }
      else if(this.trys < GSItools.GSIRequest.TOTAL_TRYS)
      {
         this.send();
      }
      else
      {
         this.onNoServer();
         this.destroy();
      }
   }
   function onSuccess()
   {
      var _loc11_ = undefined;
      var _loc12_ = undefined;
      var _loc3_ = undefined;
      var _loc5_ = undefined;
      var _loc4_ = undefined;
      var _loc2_ = undefined;
      var _loc10_ = undefined;
      var _loc6_ = undefined;
      var _loc8_ = undefined;
      var _loc7_ = undefined;
      _loc11_ = unescape(this.reciever.toString());
      _loc12_ = _loc11_.lastIndexOf("=&onLoad=");
      _loc11_ = _loc11_.substr(0,_loc12_);
      _loc3_ = this.encodingLogic.unserialize(_loc11_);
      if(GSItools.GSIRequest.DB)
      {
         trace("\n--- DATA RECIEVED ------------ <" + this.encodingName + ">");
         trace(_loc11_ + "\n");
      }
      _loc2_ = 0;
      _loc5_ = 0;
      while(_loc5_ < this.callbacks.length)
      {
         _loc10_ = this.callbacks[_loc5_][0];
         _loc6_ = this.callbacks[_loc5_][1];
         _loc8_ = this.callbacks[_loc5_][2];
         if(_loc8_ == 1)
         {
            _loc10_.call(_loc6_,_loc3_[_loc2_][1],_loc3_[_loc2_][2],_loc6_);
            _loc2_ = _loc2_ + 1;
         }
         else
         {
            _loc7_ = new Array();
            _loc4_ = 0;
            while(_loc4_ < _loc8_)
            {
               _loc7_.push({success:_loc3_[_loc2_][1],data:_loc3_[_loc2_][2]});
               _loc2_ = _loc2_ + 1;
               _loc4_ = _loc4_ + 1;
            }
            _loc10_.call(_loc6_,true,_loc7_,_loc6_);
         }
         _loc5_ = _loc5_ + 1;
      }
   }
   function onNoServer()
   {
      var _loc3_ = undefined;
      if(GSItools.GSIRequest.DB)
      {
         trace("\n--- DATA NOT RETURNED ------------ <" + this.encodingName + ">");
         trace("Cannot connect to " + this.gateway + " after " + this.trys + " attempts.\n");
      }
      var _loc2_ = 0;
      while(_loc2_ < this.callbacks.length)
      {
         _loc3_ = this.callbacks[_loc2_][1];
         this.callbacks[_loc2_][0].call(_loc3_,false,[-1000,"Cannot connect to server."],_loc3_);
         _loc2_ = _loc2_ + 1;
      }
   }
   function setTimeout(turnOn)
   {
      this.timeout = turnOn;
   }
   static function setDebugging(turnOn)
   {
      GSItools.GSIRequest.DB = turnOn;
   }
}

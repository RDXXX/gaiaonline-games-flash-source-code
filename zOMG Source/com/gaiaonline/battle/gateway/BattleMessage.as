package com.gaiaonline.battle.gateway
{
   import com.gaiaonline.battle.utils.BattleUtils;
   import com.gaiaonline.flexModulesAPIs.gatewayInterfaces.IBattleMessage;
   import flash.events.EventDispatcher;
   import flash.utils.getTimer;
   
   public class BattleMessage extends EventDispatcher implements IBattleMessage
   {
      
      private static const s_EmptyArray:Array = [];
       
      
      private var _lag:int = 0;
      
      private var _tag:Object;
      
      private var _sentTime:int = 0;
      
      private var myErrorMsg:String = "";
      
      private var myResult:Object;
      
      private var parameters:Object;
      
      private var myErrorId:int = 0;
      
      private var _cmd:String = "";
      
      public function BattleMessage(command:String, requestObj:*)
      {
         super();
         if(requestObj == null)
         {
            requestObj = s_EmptyArray;
         }
         this._cmd = command;
         this.parameters = requestObj;
      }
      
      public function setResult(resultObj:Object) : void
      {
         this._lag = getTimer() - this._sentTime;
         this.myResult = resultObj;
         var evt:BattleEvent = new BattleEvent(BattleEvent.CALL_BACK,this);
         this.dispatchEvent(evt);
      }
      
      public function set tag(v:Object) : void
      {
         this._tag = v;
      }
      
      public function get sentTime() : int
      {
         return this._sentTime;
      }
      
      public function setError(id:int, msg:String) : void
      {
         this.myErrorId = id;
         this.myErrorMsg = msg;
      }
      
      public function set sentTime(v:int) : void
      {
         this._sentTime = v;
      }
      
      public function get responseObj() : Object
      {
         return this.myResult;
      }
      
      public function get requestObjUnsafeForModifying() : Object
      {
         return this.parameters;
      }
      
      public function get tag() : Object
      {
         return this._tag;
      }
      
      public function get error() : Object
      {
         var er:Object = {
            "id":this.myErrorId,
            "msg":this.myErrorMsg
         };
         return er;
      }
      
      public function get lag() : int
      {
         return this._lag;
      }
      
      public function get requestObjSafeForModifying() : Object
      {
         return BattleUtils.copy(this.parameters);
      }
      
      public function set lag(v:int) : void
      {
         this._lag = v;
      }
      
      public function set cmd(v:String) : void
      {
         this._cmd = v;
      }
      
      public function get commandName() : String
      {
         return this._cmd;
      }
      
      public function debugTrace() : void
      {
         var paramsStr:* = null;
         var name:* = null;
         if(this._cmd != null)
         {
            for(name in parameters)
            {
               paramsStr = paramsStr + (name + "=" + parameters[name]);
               paramsStr = paramsStr + " ";
            }
            trace("cmd=" + _cmd + " params:" + paramsStr);
         }
      }
      
      public function get cmd() : String
      {
         return this._cmd;
      }
   }
}

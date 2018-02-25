package com.gaiaonline.gateway.events
{
   import com.gaiaonline.gateway.GaiaIdentity;
   
   public class GaiaLoginEvent extends GaiaGatewayEvent
   {
      
      public static const LOGIN_FAIL:String = GaiaGatewayEvent.LOGIN_FAIL;
      
      public static const LOGIN_SUCCESS:String = GaiaGatewayEvent.LOGIN_SUCCESS;
       
      
      private var _errorMsg:String = "";
      
      private var _error:int = 0;
      
      private var _identity:GaiaIdentity;
      
      public function GaiaLoginEvent(type:String = "loginSuccess", id:GaiaIdentity = null, error:int = 0)
      {
         super(type);
         this._identity = id;
         this._error = error;
      }
      
      public function get errorMsg() : String
      {
         return this._errorMsg;
      }
      
      public function setError(errId:int = 0, errMsg:String = "") : void
      {
         this._error = errId;
         this._errorMsg = errMsg;
      }
      
      public function get identity() : GaiaIdentity
      {
         return this._identity;
      }
      
      public function get error() : int
      {
         return this._error;
      }
   }
}

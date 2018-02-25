package com.gaiaonline.gateway
{
   public class GaiaFunctionResponse
   {
       
      
      protected var _error:int = 0;
      
      protected var _name:String = "";
      
      protected var _result = null;
      
      protected var _cid:uint = 0;
      
      public function GaiaFunctionResponse(cid:uint, name:String = null, result:* = null, error:int = 0)
      {
         super();
         setInfo(cid,name,result,error);
      }
      
      public function get error() : int
      {
         return this._error;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function setInfo(cid:uint, name:String = null, result:* = null, error:int = 0) : void
      {
         this._cid = cid;
         this._name = name;
         this._result = result;
         this._error = error;
      }
      
      public function get result() : *
      {
         return this._result;
      }
      
      public function get cid() : uint
      {
         return this._cid;
      }
   }
}

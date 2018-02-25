package com.gaiaonline.gateway
{
   public class GaiaFunction
   {
      
      private static var CID:uint = 0;
       
      
      protected var _name:String = "";
      
      protected var _args = null;
      
      protected var _cid:uint = 0;
      
      public function GaiaFunction(name:String = null, ... arguments)
      {
         super();
         setInfo(name,arguments);
      }
      
      public function fromObject(obj:Object) : void
      {
         if(!obj)
         {
            return;
         }
         if(obj.name != undefined)
         {
            this._name = obj.name;
         }
         if(obj.arg != undefined)
         {
            this._args = obj.args;
         }
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function setInfo(name:String = null, ... arguments) : void
      {
         this._cid = ++CID;
         this._name = name;
         if(arguments)
         {
            this._args = arguments.length > 1?arguments:arguments[0];
         }
      }
      
      public function toObject() : Object
      {
         var o:Object = new Object();
         o.type = GaiaGatewayProtocol.TYPE_FUNCTION;
         o.cid = this._cid;
         o.name = this._name;
         if(this._args != undefined && this._args != null)
         {
            o.args = this._args;
         }
         return o;
      }
      
      public function get args() : *
      {
         return this._args;
      }
      
      public function get cid() : uint
      {
         return this._cid;
      }
   }
}

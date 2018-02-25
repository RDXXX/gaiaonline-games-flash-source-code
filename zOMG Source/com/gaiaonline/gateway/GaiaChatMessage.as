package com.gaiaonline.gateway
{
   public class GaiaChatMessage implements IGaiaObject
   {
       
      
      public var global:uint = 0;
      
      public var message:String = "";
      
      public var color:uint = 0;
      
      private var _sender:GaiaIdentity = null;
      
      public var recipients:Array = null;
      
      public function GaiaChatMessage(o:Object = null, sender:GaiaIdentity = null)
      {
         super();
         if(o)
         {
            this.fromObject(o);
         }
         this._sender = sender;
      }
      
      public static function create(o:Object) : GaiaChatMessage
      {
         return new GaiaChatMessage(o);
      }
      
      public static function create2(msg:String, color:uint = 0, global:uint = 0) : GaiaChatMessage
      {
         return new GaiaChatMessage({
            "message":msg,
            "color":color,
            "global":global
         });
      }
      
      public function toObject() : Object
      {
         var o:Object = new Object();
         o.message = this.message;
         o.color = this.color;
         if(this.global)
         {
            o.global = this.global;
         }
         if(this.recipients)
         {
            o.recipients = this.recipients;
         }
         return o;
      }
      
      public function fromObject(o:Object) : void
      {
         this.message = o.message;
         this.color = o.color;
         this.global = !!o.global?uint(o.global):uint(0);
         this.recipients = !!o.recipients?o.recipients:null;
      }
      
      public function get sender() : GaiaIdentity
      {
         return this._sender;
      }
   }
}

package com.hurlant.crypto.tls
{
   import flash.events.Event;
   import flash.utils.ByteArray;
   
   public class TLSEvent extends Event
   {
      
      public static const PROMPT_ACCEPT_CERT:String = "promptAcceptCert";
      
      public static const READY:String = "ready";
      
      public static const DATA:String = "data";
       
      
      public var data:ByteArray;
      
      public function TLSEvent(type:String, data:ByteArray = null)
      {
         this.data = data;
         super(type,false,false);
      }
   }
}

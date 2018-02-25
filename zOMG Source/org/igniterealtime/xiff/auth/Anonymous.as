package org.igniterealtime.xiff.auth
{
   import org.igniterealtime.xiff.core.XMPPConnection;
   
   public class Anonymous extends SASLAuth
   {
      
      public static const MECHANISM:String = "ANONYMOUS";
      
      public static const NS:String = "urn:ietf:params:xml:ns:xmpp-sasl";
       
      
      public function Anonymous(connection:XMPPConnection)
      {
         super();
         req.setNamespace(Anonymous.NS);
         req.@mechanism = Anonymous.MECHANISM;
         stage = 0;
      }
      
      override public function handleResponse(stage:int, response:XML) : Object
      {
         var success:* = response.localName() == "success";
         return {
            "authComplete":true,
            "authSuccess":success,
            "authStage":stage++
         };
      }
   }
}

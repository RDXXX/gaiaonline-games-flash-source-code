package org.igniterealtime.xiff.auth
{
   import com.hurlant.util.Base64;
   import org.igniterealtime.xiff.core.XMPPConnection;
   
   public class External extends SASLAuth
   {
      
      public static const MECHANISM:String = "EXTERNAL";
      
      public static const NS:String = "urn:ietf:params:xml:ns:xmpp-sasl";
       
      
      public function External(connection:XMPPConnection)
      {
         super();
         var authContent:String = connection.jid.node;
         authContent = Base64.encode(authContent);
         req.setNamespace(External.NS);
         req.@mechanism = External.MECHANISM;
         req.setChildren(authContent);
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

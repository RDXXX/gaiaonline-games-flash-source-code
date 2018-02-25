package org.igniterealtime.xiff.auth
{
   import com.hurlant.util.Base64;
   import org.igniterealtime.xiff.core.UnescapedJID;
   import org.igniterealtime.xiff.core.XMPPConnection;
   
   public class Plain extends SASLAuth
   {
      
      public static const MECHANISM:String = "PLAIN";
      
      public static const NS:String = "urn:ietf:params:xml:ns:xmpp-sasl";
       
      
      public function Plain(connection:XMPPConnection)
      {
         super();
         var jid:UnescapedJID = connection.jid;
         var authContent:* = jid.bareJID;
         authContent = authContent + "\x00";
         authContent = authContent + jid.node;
         authContent = authContent + "\x00";
         authContent = authContent + connection.password;
         authContent = Base64.encode(authContent);
         req.setNamespace(Plain.NS);
         req.@mechanism = Plain.MECHANISM;
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

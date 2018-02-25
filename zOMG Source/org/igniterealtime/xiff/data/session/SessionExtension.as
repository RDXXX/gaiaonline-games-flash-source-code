package org.igniterealtime.xiff.data.session
{
   import flash.xml.XMLNode;
   import org.igniterealtime.xiff.data.Extension;
   import org.igniterealtime.xiff.data.ExtensionClassRegistry;
   import org.igniterealtime.xiff.data.IExtension;
   import org.igniterealtime.xiff.data.ISerializable;
   
   public class SessionExtension extends Extension implements IExtension, ISerializable
   {
      
      public static const NS:String = "urn:ietf:params:xml:ns:xmpp-session";
      
      public static const ELEMENT_NAME:String = "session";
       
      
      private var jid:String;
      
      public function SessionExtension(parent:XMLNode = null)
      {
         super(parent);
      }
      
      public static function enable() : void
      {
         ExtensionClassRegistry.register(SessionExtension);
      }
      
      public function serialize(parent:XMLNode) : Boolean
      {
         var child:XMLNode = null;
         if(!exists(getNode().parentNode))
         {
            child = getNode().cloneNode(true);
            parent.appendChild(child);
         }
         return true;
      }
      
      public function getElementName() : String
      {
         return SessionExtension.ELEMENT_NAME;
      }
      
      public function getNS() : String
      {
         return SessionExtension.NS;
      }
      
      public function deserialize(node:XMLNode) : Boolean
      {
         setNode(node);
         return true;
      }
      
      public function getJID() : String
      {
         return jid;
      }
   }
}

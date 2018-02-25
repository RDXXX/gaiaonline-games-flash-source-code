package org.igniterealtime.xiff.data.ping
{
   import flash.xml.XMLNode;
   import org.igniterealtime.xiff.data.ExtensionClassRegistry;
   import org.igniterealtime.xiff.data.IExtension;
   import org.igniterealtime.xiff.data.ISerializable;
   
   public class PingExtension implements IExtension, ISerializable
   {
      
      public static const NS:String = "urn:xmpp:ping";
      
      public static const ELEMENT_NAME:String = "ping";
       
      
      public function PingExtension()
      {
         super();
      }
      
      public static function enable() : Boolean
      {
         return ExtensionClassRegistry.register(PingExtension);
      }
      
      public function getNS() : String
      {
         return PingExtension.NS;
      }
      
      public function serialize(parentNode:XMLNode) : Boolean
      {
         var xmlNode:XMLNode = new XMLNode(1,PingExtension.ELEMENT_NAME);
         xmlNode.attributes.xmlns = PingExtension.NS;
         parentNode.appendChild(xmlNode);
         return true;
      }
      
      public function getElementName() : String
      {
         return PingExtension.ELEMENT_NAME;
      }
      
      public function deserialize(node:XMLNode) : Boolean
      {
         return true;
      }
   }
}

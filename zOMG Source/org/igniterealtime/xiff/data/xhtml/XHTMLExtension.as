package org.igniterealtime.xiff.data.xhtml
{
   import flash.xml.XMLDocument;
   import flash.xml.XMLNode;
   import org.igniterealtime.xiff.data.Extension;
   import org.igniterealtime.xiff.data.ExtensionClassRegistry;
   import org.igniterealtime.xiff.data.IExtension;
   import org.igniterealtime.xiff.data.ISerializable;
   
   public class XHTMLExtension extends Extension implements IExtension, ISerializable
   {
      
      public static const NS:String = "http://jabber.org/protocol/xhtml-im";
      
      private static var staticDepends:Class = ExtensionClassRegistry;
      
      public static const ELEMENT_NAME:String = "html";
       
      
      public function XHTMLExtension(parent:XMLNode = null)
      {
         super(parent);
      }
      
      public static function enable() : void
      {
         ExtensionClassRegistry.register(XHTMLExtension);
      }
      
      public function serialize(parent:XMLNode) : Boolean
      {
         return true;
      }
      
      public function getElementName() : String
      {
         return XHTMLExtension.ELEMENT_NAME;
      }
      
      public function set body(value:String) : void
      {
         var child:XMLNode = null;
         for each(child in getNode().childNodes)
         {
            child.removeNode();
         }
         getNode().appendChild(new XMLDocument(value));
      }
      
      public function deserialize(node:XMLNode) : Boolean
      {
         getNode().appendChild(node.cloneNode(true));
         return true;
      }
      
      public function get body() : String
      {
         var child:XMLNode = null;
         var html:Array = [];
         for each(child in getNode().childNodes)
         {
            html.unshift(child.toString());
         }
         return html.join();
      }
      
      public function getNS() : String
      {
         return XHTMLExtension.NS;
      }
   }
}

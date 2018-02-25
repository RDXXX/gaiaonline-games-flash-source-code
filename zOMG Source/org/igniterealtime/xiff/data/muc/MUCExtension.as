package org.igniterealtime.xiff.data.muc
{
   import flash.xml.XMLNode;
   import org.igniterealtime.xiff.data.Extension;
   import org.igniterealtime.xiff.data.IExtension;
   import org.igniterealtime.xiff.data.ISerializable;
   
   public class MUCExtension extends Extension implements IExtension, ISerializable
   {
      
      public static const NS:String = "http://jabber.org/protocol/muc";
      
      public static const ELEMENT_NAME:String = "x";
       
      
      private var myPasswordNode:XMLNode;
      
      private var myHistoryNode:XMLNode;
      
      public function MUCExtension(parent:XMLNode = null)
      {
         super(parent);
      }
      
      public function get since() : String
      {
         return myHistoryNode.attributes.since;
      }
      
      public function get seconds() : Number
      {
         return Number(myHistoryNode.attributes.seconds);
      }
      
      public function deserialize(node:XMLNode) : Boolean
      {
         var child:XMLNode = null;
         setNode(node);
         for each(child in node.childNodes)
         {
            switch(child.nodeName)
            {
               case "history":
                  myHistoryNode = child;
                  continue;
               case "password":
                  myPasswordNode = child;
                  continue;
               default:
                  continue;
            }
         }
         return true;
      }
      
      public function get history() : Boolean
      {
         return exists(myHistoryNode);
      }
      
      public function addChildNode(childNode:XMLNode) : void
      {
         getNode().appendChild(childNode);
      }
      
      public function serialize(parent:XMLNode) : Boolean
      {
         var ext:IExtension = null;
         if(exists(getNode().parentNode))
         {
            return false;
         }
         var node:XMLNode = getNode().cloneNode(true);
         for each(ext in getAllExtensions())
         {
            if(ext is ISerializable)
            {
               ISerializable(ext).serialize(node);
            }
         }
         parent.appendChild(node);
         return true;
      }
      
      public function get password() : String
      {
         if(myPasswordNode && myPasswordNode.firstChild)
         {
            return myPasswordNode.firstChild.nodeValue;
         }
         return null;
      }
      
      public function set history(value:Boolean) : void
      {
         if(value)
         {
            myHistoryNode = ensureNode(myHistoryNode,"history");
         }
         else
         {
            myHistoryNode.removeNode();
            myHistoryNode = null;
         }
      }
      
      public function getElementName() : String
      {
         return MUCExtension.ELEMENT_NAME;
      }
      
      public function set maxchars(value:int) : void
      {
         myHistoryNode = ensureNode(myHistoryNode,"history");
         myHistoryNode.attributes.maxchars = value.toString();
      }
      
      public function set maxstanzas(value:int) : void
      {
         myHistoryNode = ensureNode(myHistoryNode,"history");
         myHistoryNode.attributes.maxstanzas = value.toString();
      }
      
      public function set password(value:String) : void
      {
         myPasswordNode = replaceTextNode(getNode(),myPasswordNode,"password",value);
      }
      
      public function get maxchars() : int
      {
         return parseInt(myHistoryNode.attributes.maxchars);
      }
      
      public function get maxstanzas() : int
      {
         return parseInt(myHistoryNode.attributes.maxstanzas);
      }
      
      public function set since(value:String) : void
      {
         myHistoryNode = ensureNode(myHistoryNode,"history");
         myHistoryNode.attributes.since = value;
      }
      
      public function getNS() : String
      {
         return MUCExtension.NS;
      }
      
      public function set seconds(value:Number) : void
      {
         myHistoryNode = ensureNode(myHistoryNode,"history");
         myHistoryNode.attributes.seconds = value.toString();
      }
   }
}

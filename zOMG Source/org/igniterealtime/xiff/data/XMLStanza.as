package org.igniterealtime.xiff.data
{
   import flash.xml.XMLDocument;
   import flash.xml.XMLNode;
   
   public class XMLStanza extends ExtensionContainer implements INodeProxy, IExtendable
   {
      
      public static var XMLData:XML = new XML();
      
      public static var XMLFactory:XMLDocument = new XMLDocument();
       
      
      private var myXML:XMLNode;
      
      public function XMLStanza()
      {
         super();
         myXML = XMLStanza.XMLFactory.createElement("");
      }
      
      public static function exists(value:*) : Boolean
      {
         if(value != null && value !== undefined)
         {
            return true;
         }
         return false;
      }
      
      public function addTextNode(parent:XMLNode, elementName:String, value:String) : XMLNode
      {
         var newNode:XMLNode = XMLStanza.XMLFactory.createElement(elementName);
         newNode.appendChild(XMLFactory.createTextNode(value));
         parent.appendChild(newNode);
         return newNode;
      }
      
      public function setNode(node:XMLNode) : Boolean
      {
         var oldParent:XMLNode = myXML.parentNode;
         myXML.removeNode();
         myXML = node;
         if(exists(myXML) && oldParent != null)
         {
            oldParent.appendChild(myXML);
         }
         return true;
      }
      
      public function ensureNode(node:XMLNode, elementName:String) : XMLNode
      {
         if(!exists(node))
         {
            node = XMLStanza.XMLFactory.createElement(elementName);
            getNode().appendChild(node);
         }
         return node;
      }
      
      public function getNode() : XMLNode
      {
         return myXML;
      }
      
      public function replaceTextNode(parent:XMLNode, original:XMLNode, elementName:String, value:String) : XMLNode
      {
         var newNode:XMLNode = null;
         if(original != null)
         {
            original.removeNode();
         }
         if(exists(value))
         {
            newNode = XMLStanza.XMLFactory.createElement(elementName);
            if(value.length > 0)
            {
               newNode.appendChild(XMLStanza.XMLFactory.createTextNode(value));
            }
            parent.appendChild(newNode);
         }
         return newNode;
      }
   }
}

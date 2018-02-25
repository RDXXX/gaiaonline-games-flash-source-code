package org.igniterealtime.xiff.data
{
   import flash.xml.XMLNode;
   import org.igniterealtime.xiff.core.EscapedJID;
   import org.igniterealtime.xiff.data.id.IIDGenerator;
   import org.igniterealtime.xiff.data.id.IncrementalGenerator;
   
   public dynamic class XMPPStanza extends XMLStanza implements ISerializable, IExtendable
   {
      
      public static const CLIENT_VERSION:String = "1.0";
      
      public static const CLIENT_NAMESPACE:String = "jabber:client";
      
      public static const NAMESPACE_STREAM:String = "http://etherx.jabber.org/streams";
      
      public static const NAMESPACE_FLASH:String = "http://www.jabber.com/streams/flash";
      
      public static const XML_LANG:String = "en";
      
      private static var staticDependencies:Array = [IncrementalGenerator,ExtensionContainer];
      
      private static var isStaticConstructed = XMPPStanzaStaticConstructor();
       
      
      private var myErrorNode:XMLNode;
      
      private var myErrorConditionNode:XMLNode;
      
      public function XMPPStanza(recipient:EscapedJID, sender:EscapedJID, theType:String, theID:String, nName:String)
      {
         super();
         getNode().nodeName = nName;
         to = recipient;
         from = sender;
         type = theType;
         id = theID;
      }
      
      private static function XMPPStanzaStaticConstructor() : void
      {
      }
      
      public static function generateID(prefix:String) : String
      {
         var id:String = IncrementalGenerator.getInstance().getID(prefix);
         return id;
      }
      
      public static function setIDGenerator(generator:IIDGenerator) : void
      {
      }
      
      public function get type() : String
      {
         return getNode().attributes.type;
      }
      
      public function set errorType(value:String) : void
      {
         myErrorNode = ensureNode(myErrorNode,"error");
         delete myErrorNode.attributes.type;
         if(exists(value))
         {
            myErrorNode.attributes.type = value;
         }
      }
      
      public function set from(value:EscapedJID) : void
      {
         delete getNode().attributes.from;
         if(exists(value))
         {
            getNode().attributes.from = value.toString();
         }
      }
      
      public function get errorCode() : int
      {
         return parseInt(myErrorNode.attributes.code);
      }
      
      public function get id() : String
      {
         return getNode().attributes.id;
      }
      
      public function get errorMessage() : String
      {
         if(exists(errorCondition))
         {
            return errorCondition.toString();
         }
         if(myErrorNode && myErrorNode.firstChild)
         {
            return myErrorNode.firstChild.nodeValue;
         }
         return null;
      }
      
      public function serialize(parentNode:XMLNode) : Boolean
      {
         var ext:ISerializable = null;
         var node:XMLNode = getNode();
         var exts:Array = getAllExtensions();
         for each(ext in exts)
         {
            ext.serialize(node);
         }
         if(!exists(node.parentNode))
         {
            node = node.cloneNode(true);
            parentNode.appendChild(node);
         }
         return true;
      }
      
      public function get errorType() : String
      {
         return myErrorNode.attributes.type;
      }
      
      public function set errorCondition(value:String) : void
      {
         myErrorNode = ensureNode(myErrorNode,"error");
         var attributes:Object = myErrorNode.attributes;
         var msg:String = errorMessage;
         if(exists(value))
         {
            myErrorNode = replaceTextNode(getNode(),myErrorNode,"error","");
            myErrorConditionNode = addTextNode(myErrorNode,value,msg);
         }
         else
         {
            myErrorNode = replaceTextNode(getNode(),myErrorNode,"error",msg);
         }
         myErrorNode.attributes = attributes;
      }
      
      public function get from() : EscapedJID
      {
         var jid:String = getNode().attributes.from;
         return !!jid?new EscapedJID(jid):null;
      }
      
      public function set errorCode(value:int) : void
      {
         myErrorNode = ensureNode(myErrorNode,"error");
         delete myErrorNode.attributes.code;
         if(exists(value))
         {
            myErrorNode.attributes.code = value;
         }
      }
      
      public function get errorCondition() : String
      {
         if(exists(myErrorConditionNode))
         {
            return myErrorConditionNode.nodeName;
         }
         return null;
      }
      
      public function set type(value:String) : void
      {
         delete getNode().attributes.type;
         if(exists(value))
         {
            getNode().attributes.type = value;
         }
      }
      
      public function set id(value:String) : void
      {
         delete getNode().attributes.id;
         if(exists(value))
         {
            getNode().attributes.id = value;
         }
      }
      
      public function get to() : EscapedJID
      {
         return new EscapedJID(getNode().attributes.to);
      }
      
      public function set to(value:EscapedJID) : void
      {
         delete getNode().attributes.to;
         if(exists(value))
         {
            getNode().attributes.to = value.toString();
         }
      }
      
      public function set errorMessage(value:String) : void
      {
         var attributes:Object = null;
         myErrorNode = ensureNode(myErrorNode,"error");
         value = !!exists(value)?value:"";
         if(exists(errorCondition))
         {
            myErrorConditionNode = replaceTextNode(myErrorNode,myErrorConditionNode,errorCondition,value);
         }
         else
         {
            attributes = myErrorNode.attributes;
            myErrorNode = replaceTextNode(getNode(),myErrorNode,"error",value);
            myErrorNode.attributes = attributes;
         }
      }
      
      public function deserialize(xmlNode:XMLNode) : Boolean
      {
         var i:* = null;
         var nName:String = null;
         var nNamespace:String = null;
         var extClass:Class = null;
         var ext:IExtension = null;
         setNode(xmlNode);
         var children:Array = xmlNode.childNodes;
         for(i in children)
         {
            nName = children[i].nodeName;
            nNamespace = children[i].attributes.xmlns;
            nNamespace = !!exists(nNamespace)?nNamespace:CLIENT_NAMESPACE;
            if(nName == "error")
            {
               myErrorNode = children[i];
               if(exists(myErrorNode.firstChild.nodeName))
               {
                  myErrorConditionNode = myErrorNode.firstChild;
               }
            }
            else
            {
               extClass = ExtensionClassRegistry.lookup(nNamespace);
               if(extClass != null)
               {
                  ext = new extClass();
                  ISerializable(ext).deserialize(children[i]);
                  addExtension(ext);
               }
            }
         }
         return true;
      }
   }
}

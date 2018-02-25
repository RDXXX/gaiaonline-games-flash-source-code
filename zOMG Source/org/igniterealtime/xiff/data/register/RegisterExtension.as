package org.igniterealtime.xiff.data.register
{
   import flash.xml.XMLNode;
   import org.igniterealtime.xiff.data.Extension;
   import org.igniterealtime.xiff.data.ExtensionClassRegistry;
   import org.igniterealtime.xiff.data.IExtension;
   import org.igniterealtime.xiff.data.ISerializable;
   
   public class RegisterExtension extends Extension implements IExtension, ISerializable
   {
      
      public static const NS:String = "jabber:iq:register";
      
      private static var staticDepends:Class = ExtensionClassRegistry;
      
      public static const ELEMENT_NAME:String = "query";
       
      
      private var _instructionsNode:XMLNode;
      
      private var _keyNode:XMLNode;
      
      private var _removeNode:XMLNode;
      
      private var _fields:Object;
      
      public function RegisterExtension(parent:XMLNode = null)
      {
         _fields = {};
         super(parent);
      }
      
      public static function enable() : void
      {
         ExtensionClassRegistry.register(RegisterExtension);
      }
      
      public function getElementName() : String
      {
         return RegisterExtension.ELEMENT_NAME;
      }
      
      public function set first(value:String) : void
      {
         setField("first",value);
      }
      
      public function get state() : String
      {
         return getField("state");
      }
      
      public function get last() : String
      {
         return getField("last");
      }
      
      public function getNS() : String
      {
         return RegisterExtension.NS;
      }
      
      public function get email() : String
      {
         return getField("email");
      }
      
      public function get zip() : String
      {
         return getField("zip");
      }
      
      public function get instructions() : String
      {
         if(_instructionsNode && _instructionsNode.firstChild)
         {
            return _instructionsNode.firstChild.nodeValue;
         }
         return null;
      }
      
      public function set state(value:String) : void
      {
         setField("state",value);
      }
      
      public function get password() : String
      {
         return getField("password");
      }
      
      public function set username(value:String) : void
      {
         setField("username",value);
      }
      
      public function get text() : String
      {
         return getField("text");
      }
      
      public function get date() : String
      {
         return getField("date");
      }
      
      public function set password(value:String) : void
      {
         setField("password",value);
      }
      
      public function get first() : String
      {
         return getField("first");
      }
      
      public function setField(name:String, value:String) : void
      {
         _fields[name] = replaceTextNode(getNode(),_fields[name],name,value);
      }
      
      public function set last(value:String) : void
      {
         setField("last",value);
      }
      
      public function get unregister() : Boolean
      {
         return exists(_removeNode);
      }
      
      public function set key(value:String) : void
      {
         _keyNode = replaceTextNode(getNode(),_keyNode,"key",value);
      }
      
      public function set email(value:String) : void
      {
         setField("email",value);
      }
      
      public function getField(name:String) : String
      {
         var node:XMLNode = _fields[name];
         if(node && node.firstChild)
         {
            return node.firstChild.nodeValue;
         }
         return null;
      }
      
      public function set nick(value:String) : void
      {
         setField("nick",value);
      }
      
      public function set zip(value:String) : void
      {
         setField("zip",value);
      }
      
      public function set instructions(value:String) : void
      {
         _instructionsNode = replaceTextNode(getNode(),_instructionsNode,"instructions",value);
      }
      
      public function get username() : String
      {
         return getField("username");
      }
      
      public function set text(value:String) : void
      {
         setField("text",value);
      }
      
      public function set phone(value:String) : void
      {
         setField("phone",value);
      }
      
      public function set city(value:String) : void
      {
         setField("city",value);
      }
      
      public function set url(value:String) : void
      {
         setField("url",value);
      }
      
      public function get key() : String
      {
         if(_keyNode && _keyNode.firstChild)
         {
            return _keyNode.firstChild.nodeValue;
         }
         return null;
      }
      
      public function serialize(parentNode:XMLNode) : Boolean
      {
         if(!exists(getNode().parentNode))
         {
            parentNode.appendChild(getNode().cloneNode(true));
         }
         return true;
      }
      
      public function getRequiredFieldNames() : Array
      {
         var i:* = null;
         var fields:Array = [];
         for(i in _fields)
         {
            fields.push(i);
         }
         return fields;
      }
      
      public function set address(value:String) : void
      {
         setField("address",value);
      }
      
      public function get nick() : String
      {
         return getField("nick");
      }
      
      public function get city() : String
      {
         return getField("city");
      }
      
      public function get misc() : String
      {
         return getField("misc");
      }
      
      public function get phone() : String
      {
         return getField("phone");
      }
      
      public function get url() : String
      {
         return getField("url");
      }
      
      public function set misc(value:String) : void
      {
         setField("misc",value);
      }
      
      public function get address() : String
      {
         return getField("address");
      }
      
      public function set unregister(value:Boolean) : void
      {
         _removeNode = replaceTextNode(getNode(),_removeNode,"remove","");
      }
      
      public function set date(value:String) : void
      {
         setField("date",value);
      }
      
      public function deserialize(node:XMLNode) : Boolean
      {
         var i:* = null;
         setNode(node);
         var children:Array = getNode().childNodes;
         for(i in children)
         {
            switch(children[i].nodeName)
            {
               case "key":
                  _keyNode = children[i];
                  continue;
               case "instructions":
                  _instructionsNode = children[i];
                  continue;
               case "remove":
                  _removeNode = children[i];
                  continue;
               default:
                  _fields[children[i].nodeName] = children[i];
                  continue;
            }
         }
         return true;
      }
   }
}

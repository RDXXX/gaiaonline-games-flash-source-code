package org.igniterealtime.xiff.data.auth
{
   import flash.xml.XMLNode;
   import org.igniterealtime.xiff.data.Extension;
   import org.igniterealtime.xiff.data.ExtensionClassRegistry;
   import org.igniterealtime.xiff.data.IExtension;
   import org.igniterealtime.xiff.data.ISerializable;
   import org.igniterealtime.xiff.data.XMLStanza;
   import org.igniterealtime.xiff.util.SHA1;
   
   public class AuthExtension extends Extension implements IExtension, ISerializable
   {
      
      public static const NS:String = "jabber:iq:auth";
      
      public static const ELEMENT_NAME:String = "query";
       
      
      private var myUsernameNode:XMLNode;
      
      private var myPasswordNode:XMLNode;
      
      private var myDigestNode:XMLNode;
      
      private var myResourceNode:XMLNode;
      
      public function AuthExtension(parent:XMLNode = null)
      {
         super(parent);
      }
      
      public static function enable() : void
      {
         ExtensionClassRegistry.register(AuthExtension);
      }
      
      public static function computeDigest(sessionID:String, password:String) : String
      {
         return SHA1.calcSHA1(sessionID + password).toLowerCase();
      }
      
      public function deserialize(node:XMLNode) : Boolean
      {
         var i:* = null;
         setNode(node);
         var children:Array = node.childNodes;
         for(i in children)
         {
            switch(children[i].nodeName)
            {
               case "username":
                  myUsernameNode = children[i];
                  continue;
               case "password":
                  myPasswordNode = children[i];
                  continue;
               case "digest":
                  myDigestNode = children[i];
                  continue;
               case "resource":
                  myResourceNode = children[i];
                  continue;
               default:
                  continue;
            }
         }
         return true;
      }
      
      public function get digest() : String
      {
         if(myDigestNode && myDigestNode.firstChild)
         {
            return myDigestNode.firstChild.nodeValue;
         }
         return null;
      }
      
      public function isDigest() : Boolean
      {
         return exists(myDigestNode);
      }
      
      public function set digest(value:String) : void
      {
         myPasswordNode.removeNode();
         myPasswordNode = null;
         myDigestNode = replaceTextNode(getNode(),myDigestNode,"digest",value);
      }
      
      public function get resource() : String
      {
         if(myResourceNode && myResourceNode.firstChild)
         {
            return myResourceNode.firstChild.nodeValue;
         }
         return null;
      }
      
      public function get username() : String
      {
         if(myUsernameNode && myUsernameNode.firstChild)
         {
            return myUsernameNode.firstChild.nodeValue;
         }
         return null;
      }
      
      public function set resource(value:String) : void
      {
         myResourceNode = replaceTextNode(getNode(),myResourceNode,"resource",value);
      }
      
      public function serialize(parent:XMLNode) : Boolean
      {
         if(!exists(getNode().parentNode))
         {
            parent.appendChild(getNode().cloneNode(true));
         }
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
      
      public function isPassword() : Boolean
      {
         return exists(myPasswordNode);
      }
      
      public function getNS() : String
      {
         return AuthExtension.NS;
      }
      
      public function set username(value:String) : void
      {
         myUsernameNode = replaceTextNode(getNode(),myUsernameNode,"username",value);
      }
      
      public function set password(value:String) : void
      {
         myDigestNode = myDigestNode == null?XMLStanza.XMLFactory.createElement(""):myDigestNode;
         myDigestNode.removeNode();
         myDigestNode = null;
         myPasswordNode = replaceTextNode(getNode(),myPasswordNode,"password",value);
      }
      
      public function getElementName() : String
      {
         return AuthExtension.ELEMENT_NAME;
      }
   }
}

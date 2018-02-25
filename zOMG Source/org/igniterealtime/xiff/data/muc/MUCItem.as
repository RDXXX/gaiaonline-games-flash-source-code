package org.igniterealtime.xiff.data.muc
{
   import flash.xml.XMLNode;
   import org.igniterealtime.xiff.core.EscapedJID;
   import org.igniterealtime.xiff.data.ISerializable;
   import org.igniterealtime.xiff.data.XMLStanza;
   
   public class MUCItem extends XMLStanza implements ISerializable
   {
      
      public static const ELEMENT_NAME:String = "item";
       
      
      private var myActorNode:XMLNode;
      
      private var myReasonNode:XMLNode;
      
      public function MUCItem(parent:XMLNode = null)
      {
         super();
         getNode().nodeName = ELEMENT_NAME;
         if(exists(parent))
         {
            parent.appendChild(getNode());
         }
      }
      
      public function serialize(parent:XMLNode) : Boolean
      {
         if(parent != getNode().parentNode)
         {
            parent.appendChild(getNode().cloneNode(true));
         }
         return true;
      }
      
      public function get nick() : String
      {
         return getNode().attributes.nick;
      }
      
      public function get jid() : EscapedJID
      {
         if(getNode().attributes.jid == null)
         {
            return null;
         }
         return new EscapedJID(getNode().attributes.jid);
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
               case "actor":
                  myActorNode = children[i];
                  continue;
               case "reason":
                  myReasonNode = children[i];
                  continue;
               default:
                  continue;
            }
         }
         return true;
      }
      
      public function set reason(value:String) : void
      {
         myReasonNode = replaceTextNode(getNode(),myReasonNode,"reason",value);
      }
      
      public function set actor(value:EscapedJID) : void
      {
         myActorNode = ensureNode(myActorNode,"actor");
         myActorNode.attributes.jid = value.toString();
      }
      
      public function set role(value:String) : void
      {
         getNode().attributes.role = value;
      }
      
      public function set nick(value:String) : void
      {
         getNode().attributes.nick = value;
      }
      
      public function set affiliation(value:String) : void
      {
         getNode().attributes.affiliation = value;
      }
      
      public function get affiliation() : String
      {
         return getNode().attributes.affiliation;
      }
      
      public function set jid(value:EscapedJID) : void
      {
         getNode().attributes.jid = value.toString();
      }
      
      public function get actor() : EscapedJID
      {
         return new EscapedJID(myActorNode.attributes.jid);
      }
      
      public function get reason() : String
      {
         if(myReasonNode && myReasonNode.firstChild)
         {
            return myReasonNode.firstChild.nodeValue;
         }
         return null;
      }
      
      public function get role() : String
      {
         return getNode().attributes.role;
      }
   }
}

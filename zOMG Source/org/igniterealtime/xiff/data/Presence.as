package org.igniterealtime.xiff.data
{
   import flash.xml.XMLNode;
   import org.igniterealtime.xiff.core.EscapedJID;
   
   public class Presence extends XMPPStanza implements ISerializable
   {
      
      public static const TYPE_ERROR:String = "error";
      
      public static const TYPE_SUBSCRIBE:String = "subscribe";
      
      public static const TYPE_UNSUBSCRIBED:String = "unsubscribed";
      
      public static const TYPE_UNAVAILABLE:String = "unavailable";
      
      public static const TYPE_UNSUBSCRIBE:String = "unsubscribe";
      
      public static const SHOW_XA:String = "xa";
      
      public static const SHOW_DND:String = "dnd";
      
      public static const TYPE_PROBE:String = "probe";
      
      public static const SHOW_AWAY:String = "away";
      
      public static const SHOW_CHAT:String = "chat";
      
      public static const TYPE_SUBSCRIBED:String = "subscribed";
       
      
      private var myStatusNode:XMLNode;
      
      private var myShowNode:XMLNode;
      
      private var myPriorityNode:XMLNode;
      
      public function Presence(recipient:EscapedJID = null, sender:EscapedJID = null, presenceType:String = null, showVal:String = null, statusVal:String = null, priorityVal:int = 0)
      {
         super(recipient,sender,presenceType,null,"presence");
         show = showVal;
         status = statusVal;
         priority = priorityVal;
      }
      
      override public function deserialize(xmlNode:XMLNode) : Boolean
      {
         var children:Array = null;
         var i:* = null;
         var isDeserialized:Boolean = super.deserialize(xmlNode);
         if(isDeserialized)
         {
            children = xmlNode.childNodes;
            for(i in children)
            {
               switch(children[i].nodeName)
               {
                  case "show":
                     myShowNode = children[i];
                     continue;
                  case "status":
                     myStatusNode = children[i];
                     continue;
                  case "priority":
                     myPriorityNode = children[i];
                     continue;
                  default:
                     continue;
               }
            }
         }
         return isDeserialized;
      }
      
      public function set priority(value:int) : void
      {
         myPriorityNode = replaceTextNode(getNode(),myPriorityNode,"priority",value.toString());
      }
      
      public function get priority() : int
      {
         if(myPriorityNode == null)
         {
            return NaN;
         }
         var p:int = int(myPriorityNode.firstChild.nodeValue);
         if(isNaN(p))
         {
            return NaN;
         }
         return p;
      }
      
      override public function serialize(parentNode:XMLNode) : Boolean
      {
         return super.serialize(parentNode);
      }
      
      public function get status() : String
      {
         if(myStatusNode == null || myStatusNode.firstChild == null)
         {
            return null;
         }
         return myStatusNode.firstChild.nodeValue;
      }
      
      public function set show(value:String) : void
      {
         if(value != SHOW_AWAY && value != SHOW_CHAT && value != SHOW_DND && value != SHOW_XA && value != null && value != "")
         {
            throw new Error("Invalid show value: " + value + " for presence");
         }
         if(myShowNode && (value == null || value == ""))
         {
            myShowNode.removeNode();
            myShowNode = null;
         }
         myShowNode = replaceTextNode(getNode(),myShowNode,"show",value);
      }
      
      public function set status(value:String) : void
      {
         myStatusNode = replaceTextNode(getNode(),myStatusNode,"status",value);
      }
      
      public function get show() : String
      {
         if(!myShowNode || !exists(myShowNode.firstChild))
         {
            return null;
         }
         return myShowNode.firstChild.nodeValue;
      }
   }
}

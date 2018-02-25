package org.igniterealtime.xiff.data.muc
{
   import flash.xml.XMLNode;
   import org.igniterealtime.xiff.core.EscapedJID;
   import org.igniterealtime.xiff.data.IExtension;
   
   public class MUCUserExtension extends MUCBaseExtension implements IExtension
   {
      
      public static const NS:String = "http://jabber.org/protocol/muc#user";
      
      public static const TYPE_OTHER:String = "other";
      
      public static const TYPE_INVITE:String = "invite";
      
      public static const TYPE_DECLINE:String = "decline";
      
      public static const TYPE_DESTROY:String = "destroy";
      
      public static const ELEMENT_NAME:String = "x";
       
      
      private var _statuses:Array;
      
      private var _passwordNode:XMLNode;
      
      private var _actionNode:XMLNode;
      
      public function MUCUserExtension(parent:XMLNode = null)
      {
         _statuses = [];
         super(parent);
      }
      
      public function getElementName() : String
      {
         return MUCUserExtension.ELEMENT_NAME;
      }
      
      private function updateActionNode(type:String, attrs:Object, reason:String) : void
      {
         var i:* = null;
         if(_actionNode != null)
         {
            _actionNode.removeNode();
         }
         _actionNode = XMLFactory.createElement(type);
         for(i in attrs)
         {
            if(exists(attrs[i]))
            {
               _actionNode.attributes[i] = attrs[i];
            }
         }
         getNode().appendChild(_actionNode);
         if(reason.length > 0)
         {
            replaceTextNode(_actionNode,undefined,"reason",reason);
         }
      }
      
      public function get reason() : String
      {
         if(_actionNode.firstChild != null)
         {
            if(_actionNode.firstChild.firstChild != null)
            {
               return _actionNode.firstChild.firstChild.nodeValue;
            }
         }
         return null;
      }
      
      public function get jid() : EscapedJID
      {
         return new EscapedJID(_actionNode.attributes.jid);
      }
      
      public function set statuses(value:Array) : void
      {
         _statuses = value;
      }
      
      public function get password() : String
      {
         if(_passwordNode == null)
         {
            return null;
         }
         return _passwordNode.firstChild.nodeValue;
      }
      
      public function invite(to:EscapedJID, from:EscapedJID, reason:String) : void
      {
         updateActionNode(TYPE_INVITE,{
            "to":to.toString(),
            "from":(!!from?from.toString():null)
         },reason);
      }
      
      override public function deserialize(node:XMLNode) : Boolean
      {
         var child:XMLNode = null;
         super.deserialize(node);
         for each(child in node.childNodes)
         {
            switch(child.nodeName)
            {
               case TYPE_DECLINE:
                  _actionNode = child;
                  continue;
               case TYPE_DESTROY:
                  _actionNode = child;
                  continue;
               case TYPE_INVITE:
                  _actionNode = child;
                  continue;
               case "status":
                  _statuses.push(new MUCStatus(child,this));
                  continue;
               case "password":
                  _passwordNode = child;
                  continue;
               default:
                  continue;
            }
         }
         return true;
      }
      
      public function destroy(room:EscapedJID, reason:String) : void
      {
         updateActionNode(TYPE_DESTROY,{"jid":room.toString()},reason);
      }
      
      public function getNS() : String
      {
         return MUCUserExtension.NS;
      }
      
      public function get statuses() : Array
      {
         return _statuses;
      }
      
      public function get from() : EscapedJID
      {
         return new EscapedJID(_actionNode.attributes.from);
      }
      
      public function set password(value:String) : void
      {
         _passwordNode = replaceTextNode(getNode(),_passwordNode,"password",value);
      }
      
      public function hasStatusCode(code:Number) : Boolean
      {
         var status:MUCStatus = null;
         for each(status in statuses)
         {
            if(status.code == code)
            {
               return true;
            }
         }
         return false;
      }
      
      public function get type() : String
      {
         if(_actionNode == null)
         {
            return null;
         }
         return _actionNode.nodeName == null?TYPE_OTHER:_actionNode.nodeName;
      }
      
      public function get to() : EscapedJID
      {
         return new EscapedJID(_actionNode.attributes.to);
      }
      
      public function decline(to:EscapedJID, from:EscapedJID, reason:String) : void
      {
         updateActionNode(TYPE_DECLINE,{
            "to":to.toString(),
            "from":(!!from?from.toString():null)
         },reason);
      }
   }
}

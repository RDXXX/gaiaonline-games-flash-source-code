package org.igniterealtime.xiff.data.muc
{
   import flash.xml.XMLNode;
   import org.igniterealtime.xiff.core.EscapedJID;
   import org.igniterealtime.xiff.data.IExtension;
   
   public class MUCOwnerExtension extends MUCBaseExtension implements IExtension
   {
      
      public static const NS:String = "http://jabber.org/protocol/muc#owner";
      
      public static const ELEMENT_NAME:String = "query";
       
      
      private var _destroyNode:XMLNode;
      
      public function MUCOwnerExtension(parent:XMLNode = null)
      {
         super(parent);
      }
      
      override public function serialize(parent:XMLNode) : Boolean
      {
         return super.serialize(parent);
      }
      
      public function getElementName() : String
      {
         return MUCOwnerExtension.ELEMENT_NAME;
      }
      
      public function destroy(reason:String, alternateJID:EscapedJID = null) : void
      {
         var child:XMLNode = null;
         _destroyNode = ensureNode(_destroyNode,"destroy");
         for each(child in _destroyNode.childNodes)
         {
            child.removeNode();
         }
         if(exists(reason))
         {
            replaceTextNode(_destroyNode,undefined,"reason",reason);
         }
         if(exists(alternateJID))
         {
            _destroyNode.attributes.jid = alternateJID.toString();
         }
      }
      
      public function getNS() : String
      {
         return MUCOwnerExtension.NS;
      }
      
      override public function deserialize(node:XMLNode) : Boolean
      {
         var i:* = null;
         super.deserialize(node);
         var children:Array = node.childNodes;
         for(i in children)
         {
            switch(children[i].nodeName)
            {
               case "destroy":
                  _destroyNode = children[i];
                  continue;
               default:
                  continue;
            }
         }
         return true;
      }
   }
}

package org.igniterealtime.xiff.data.muc
{
   import flash.xml.XMLNode;
   import org.igniterealtime.xiff.core.EscapedJID;
   import org.igniterealtime.xiff.data.Extension;
   import org.igniterealtime.xiff.data.ExtensionClassRegistry;
   import org.igniterealtime.xiff.data.IExtendable;
   import org.igniterealtime.xiff.data.IExtension;
   import org.igniterealtime.xiff.data.ISerializable;
   
   public class MUCBaseExtension extends Extension implements IExtendable, ISerializable
   {
       
      
      private var _items:Array;
      
      public function MUCBaseExtension(parent:XMLNode = null)
      {
         _items = [];
         super(parent);
      }
      
      public function serialize(parent:XMLNode) : Boolean
      {
         var ii:* = undefined;
         var node:XMLNode = getNode();
         var len:uint = _items.length;
         for(var i:uint = 0; i < len; i++)
         {
            if(!_items[i].serialize(node))
            {
               return false;
            }
         }
         var exts:Array = getAllExtensions();
         for each(ii in exts)
         {
            if(!ii.serialize(node))
            {
               return false;
            }
         }
         if(parent != node.parentNode)
         {
            parent.appendChild(node.cloneNode(true));
         }
         return true;
      }
      
      public function addItem(affiliation:String = null, role:String = null, nick:String = null, jid:EscapedJID = null, actor:String = null, reason:String = null) : MUCItem
      {
         var item:MUCItem = new MUCItem(getNode());
         if(exists(affiliation))
         {
            item.affiliation = affiliation;
         }
         if(exists(role))
         {
            item.role = role;
         }
         if(exists(nick))
         {
            item.nick = nick;
         }
         if(exists(jid))
         {
            item.jid = jid;
         }
         if(exists(actor))
         {
            item.actor = new EscapedJID(actor);
         }
         if(exists(reason))
         {
            item.reason = reason;
         }
         _items.push(item);
         return item;
      }
      
      public function getAllItems() : Array
      {
         return _items;
      }
      
      public function removeAllItems() : void
      {
         var item:MUCItem = null;
         var len:uint = _items.length;
         for(var i:uint = 0; i < len; i++)
         {
            item = _items[i] as MUCItem;
            item.setNode(null);
         }
         _items = [];
      }
      
      public function deserialize(node:XMLNode) : Boolean
      {
         var child:XMLNode = null;
         var item:MUCItem = null;
         var extClass:Class = null;
         var ext:IExtension = null;
         setNode(node);
         removeAllItems();
         for each(child in node.childNodes)
         {
            switch(child.nodeName)
            {
               case "item":
                  item = new MUCItem(getNode());
                  item.deserialize(child);
                  _items.push(item);
                  continue;
               default:
                  extClass = ExtensionClassRegistry.lookup(child.attributes.xmlns);
                  if(extClass != null)
                  {
                     ext = new extClass();
                     if(ext != null)
                     {
                        if(ext is ISerializable)
                        {
                           ISerializable(ext).deserialize(child);
                        }
                        addExtension(ext);
                     }
                  }
                  continue;
            }
         }
         return true;
      }
   }
}

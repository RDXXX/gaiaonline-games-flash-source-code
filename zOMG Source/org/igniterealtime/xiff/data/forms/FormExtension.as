package org.igniterealtime.xiff.data.forms
{
   import flash.xml.XMLNode;
   import org.igniterealtime.xiff.data.Extension;
   import org.igniterealtime.xiff.data.ExtensionClassRegistry;
   import org.igniterealtime.xiff.data.IExtension;
   import org.igniterealtime.xiff.data.ISerializable;
   
   public class FormExtension extends Extension implements IExtension, ISerializable
   {
      
      public static const TYPE_RESULT:String = "result";
      
      public static const FIELD_TYPE_TEXT_MULTI:String = "text-multi";
      
      public static const FIELD_TYPE_BOOLEAN:String = "boolean";
      
      public static const FIELD_TYPE_LIST_SINGLE:String = "list-single";
      
      public static const NS:String = "jabber:x:data";
      
      public static const FIELD_TYPE_TEXT_PRIVATE:String = "text-private";
      
      public static const ELEMENT_NAME:String = "x";
      
      public static const FIELD_TYPE_TEXT_SINGLE:String = "text-single";
      
      public static const FIELD_TYPE_FIXED:String = "fixed";
      
      public static const TYPE_CANCEL:String = "cancel";
      
      public static const FIELD_TYPE_JID_SINGLE:String = "jid-single";
      
      public static const FIELD_TYPE_HIDDEN:String = "hidden";
      
      public static const TYPE_REQUEST:String = "form";
      
      public static const FIELD_TYPE_LIST_MULTI:String = "list-multi";
      
      public static const TYPE_SUBMIT:String = "submit";
      
      public static const FIELD_TYPE_JID_MULTI:String = "jid-multi";
       
      
      private var _items:Array;
      
      private var myReportedFields:Array;
      
      private var myInstructionsNode:XMLNode;
      
      private var _fields:Array;
      
      private var myTitleNode:XMLNode;
      
      public function FormExtension(parent:XMLNode = null)
      {
         _items = [];
         _fields = [];
         myReportedFields = [];
         super(parent);
      }
      
      public static function enable() : Boolean
      {
         ExtensionClassRegistry.register(FormExtension);
         return true;
      }
      
      public function removeAllItems() : void
      {
         var item:FormField = null;
         var i:* = undefined;
         for each(item in _items)
         {
            for each(i in item)
            {
               i.getNode().removeNode();
               i.setNode(null);
            }
         }
         _items = [];
      }
      
      public function getAllFields() : Array
      {
         return _fields;
      }
      
      public function deserialize(node:XMLNode) : Boolean
      {
         var c:XMLNode = null;
         var field:FormField = null;
         var itemFields:Array = null;
         var reportedFieldXML:XMLNode = null;
         var itemFieldXML:XMLNode = null;
         setNode(node);
         removeAllItems();
         removeAllFields();
         for each(c in node.childNodes)
         {
            switch(c.nodeName)
            {
               case "instructions":
                  myInstructionsNode = c;
                  continue;
               case "title":
                  myTitleNode = c;
                  continue;
               case "reported":
                  for each(reportedFieldXML in c.childNodes)
                  {
                     field = new FormField();
                     field.deserialize(reportedFieldXML);
                     myReportedFields.push(field);
                  }
                  continue;
               case "item":
                  itemFields = [];
                  for each(itemFieldXML in c.childNodes)
                  {
                     field = new FormField();
                     field.deserialize(itemFieldXML);
                     itemFields.push(field);
                  }
                  _items.push(itemFields);
                  continue;
               case "field":
                  field = new FormField();
                  field.deserialize(c);
                  _fields.push(field);
                  continue;
               default:
                  continue;
            }
         }
         return true;
      }
      
      public function set title(value:String) : void
      {
         myTitleNode = replaceTextNode(getNode(),myTitleNode,"Title",value);
      }
      
      public function set instructions(value:String) : void
      {
         myInstructionsNode = replaceTextNode(getNode(),myInstructionsNode,"instructions",value);
      }
      
      public function getFormType() : String
      {
         var field:FormField = null;
         for each(field in _fields)
         {
            if(field.name == "FORM_TYPE")
            {
               return field.value;
            }
         }
         return "";
      }
      
      public function getAllItems() : Array
      {
         return _items;
      }
      
      public function removeAllFields() : void
      {
         var item:FormField = null;
         var i:* = undefined;
         for each(item in _fields)
         {
            for each(i in item)
            {
               i.getNode().removeNode();
               i.setNode(null);
            }
         }
         _fields = [];
      }
      
      public function get title() : String
      {
         if(myTitleNode && myTitleNode.firstChild)
         {
            return myTitleNode.firstChild.nodeValue;
         }
         return null;
      }
      
      public function serialize(parent:XMLNode) : Boolean
      {
         var field:FormField = null;
         var node:XMLNode = getNode();
         for each(field in _fields)
         {
            if(!field.serialize(node))
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
      
      public function getNS() : String
      {
         return FormExtension.NS;
      }
      
      public function get instructions() : String
      {
         if(myInstructionsNode && myInstructionsNode.firstChild)
         {
            return myInstructionsNode.firstChild.nodeValue;
         }
         return null;
      }
      
      public function getFormField(value:String) : FormField
      {
         var field:FormField = null;
         for each(field in _fields)
         {
            if(field.name == value)
            {
               return field;
            }
         }
         return null;
      }
      
      public function getReportedFields() : Array
      {
         return myReportedFields;
      }
      
      public function set type(value:String) : void
      {
         getNode().attributes.type = value;
      }
      
      public function getElementName() : String
      {
         return FormExtension.ELEMENT_NAME;
      }
      
      public function get type() : String
      {
         return getNode().attributes.type;
      }
      
      public function setFields(fieldmap:Object) : void
      {
         var f:* = null;
         var field:FormField = null;
         removeAllFields();
         for(f in fieldmap)
         {
            field = new FormField();
            field.name = f;
            field.setAllValues(fieldmap[f]);
            _fields.push(field);
         }
      }
   }
}

package org.igniterealtime.xiff.data.forms
{
   import flash.xml.XMLNode;
   import org.igniterealtime.xiff.data.ISerializable;
   import org.igniterealtime.xiff.data.XMLStanza;
   
   public class FormField extends XMLStanza implements ISerializable
   {
      
      public static const ELEMENT_NAME:String = "field";
       
      
      private var myDescNode:XMLNode;
      
      private var myValueNodes:Array;
      
      private var myRequiredNode:XMLNode;
      
      private var myOptionNodes:Array;
      
      public function FormField()
      {
         super();
      }
      
      public function serialize(parent:XMLNode) : Boolean
      {
         getNode().nodeName = FormField.ELEMENT_NAME;
         if(parent != getNode().parentNode)
         {
            parent.appendChild(getNode().cloneNode(true));
         }
         return true;
      }
      
      public function get type() : String
      {
         return getNode().attributes.type;
      }
      
      public function set value(value:String) : void
      {
         if(myValueNodes == null)
         {
            myValueNodes = [];
         }
         myValueNodes[0] = replaceTextNode(getNode(),myValueNodes[0],"value",value);
      }
      
      public function set label(value:String) : void
      {
         getNode().attributes.label = value;
      }
      
      public function get name() : String
      {
         return getNode().attributes["var"];
      }
      
      public function get value() : String
      {
         try
         {
            if(myValueNodes[0] != null && myValueNodes[0].firstChild != null)
            {
               return myValueNodes[0].firstChild.nodeValue;
            }
         }
         catch(error:Error)
         {
            trace(error.getStackTrace());
         }
         return null;
      }
      
      public function set type(value:String) : void
      {
         getNode().attributes.type = value;
      }
      
      public function getAllOptions() : Array
      {
         return myOptionNodes.map(function(optionNode:XMLNode, index:uint, arr:Array):Object
         {
            return {
               "label":optionNode.attributes.label,
               "value":optionNode.firstChild.firstChild.nodeValue
            };
         });
      }
      
      public function set name(value:String) : void
      {
         getNode().attributes["var"] = value;
      }
      
      public function setAllOptions(value:Array) : void
      {
         var optionNode:XMLNode = null;
         for each(optionNode in myOptionNodes)
         {
            optionNode.removeNode();
         }
         myOptionNodes = value.map(function(v:Object, index:uint, arr:Array):XMLNode
         {
            var option:* = replaceTextNode(getNode(),undefined,"value",v.value);
            option.attributes.label = v.label;
            return option;
         });
      }
      
      public function setAllValues(value:Array) : void
      {
         var v:XMLNode = null;
         for each(v in myValueNodes)
         {
            v.removeNode();
         }
         myValueNodes = value.map(function(value:String, index:uint, arr:Array):*
         {
            return replaceTextNode(getNode(),undefined,"value",value);
         });
      }
      
      public function get label() : String
      {
         return getNode().attributes.label;
      }
      
      public function getAllValues() : Array
      {
         var valueNode:XMLNode = null;
         var res:Array = [];
         for each(valueNode in myValueNodes)
         {
            res.push(valueNode.firstChild.nodeValue);
         }
         return res;
      }
      
      public function deserialize(node:XMLNode) : Boolean
      {
         var i:* = null;
         var c:XMLNode = null;
         setNode(node);
         myValueNodes = [];
         myOptionNodes = [];
         var children:Array = node.childNodes;
         for(i in children)
         {
            c = children[i];
            switch(children[i].nodeName)
            {
               case "desc":
                  myDescNode = c;
                  continue;
               case "required":
                  myRequiredNode = c;
                  continue;
               case "value":
                  myValueNodes.push(c);
                  continue;
               case "option":
                  myOptionNodes.push(c);
                  continue;
               default:
                  continue;
            }
         }
         return true;
      }
   }
}

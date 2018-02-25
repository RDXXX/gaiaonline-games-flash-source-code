package org.igniterealtime.xiff.data
{
   import flash.xml.XMLNode;
   
   public interface ISerializable
   {
       
      
      function serialize(param1:XMLNode) : Boolean;
      
      function deserialize(param1:XMLNode) : Boolean;
   }
}

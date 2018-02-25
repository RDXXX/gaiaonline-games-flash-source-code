package com.hurlant.util.der
{
   import flash.utils.ByteArray;
   
   public class PrintableString implements IAsn1Type
   {
       
      
      protected var type:uint;
      
      protected var str:String;
      
      protected var len:uint;
      
      public function PrintableString(type:uint, length:uint)
      {
         super();
         this.type = type;
         this.len = length;
      }
      
      public function getLength() : uint
      {
         return len;
      }
      
      public function getString() : String
      {
         return str;
      }
      
      public function toString() : String
      {
         return DER.indent + str;
      }
      
      public function getType() : uint
      {
         return type;
      }
      
      public function toDER() : ByteArray
      {
         return null;
      }
      
      public function setString(s:String) : void
      {
         str = s;
      }
   }
}

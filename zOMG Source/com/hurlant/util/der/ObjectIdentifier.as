package com.hurlant.util.der
{
   import flash.utils.ByteArray;
   
   public class ObjectIdentifier implements IAsn1Type
   {
       
      
      private var oid:Array;
      
      private var len:uint;
      
      private var type:uint;
      
      public function ObjectIdentifier(type:uint, length:uint, b:*)
      {
         super();
         this.type = type;
         this.len = length;
         if(b is ByteArray)
         {
            parse(b as ByteArray);
         }
         else if(b is String)
         {
            generate(b as String);
         }
         else
         {
            throw new Error("Invalid call to new ObjectIdentifier");
         }
      }
      
      public function dump() : String
      {
         return "OID[" + type + "][" + len + "][" + toString() + "]";
      }
      
      public function getLength() : uint
      {
         return len;
      }
      
      private function generate(s:String) : void
      {
         oid = s.split(".");
      }
      
      public function toString() : String
      {
         return DER.indent + oid.join(".");
      }
      
      public function getType() : uint
      {
         return type;
      }
      
      private function parse(b:ByteArray) : void
      {
         var last:* = false;
         var o:uint = b.readUnsignedByte();
         var a:Array = [];
         a.push(uint(o / 40));
         a.push(uint(o % 40));
         var v:uint = 0;
         while(b.bytesAvailable > 0)
         {
            o = b.readUnsignedByte();
            last = (o & 128) == 0;
            o = o & 127;
            v = v * 128 + o;
            if(last)
            {
               a.push(v);
               v = 0;
            }
         }
         oid = a;
      }
      
      public function toDER() : ByteArray
      {
         var v:int = 0;
         var tmp:Array = [];
         tmp[0] = oid[0] * 40 + oid[1];
         for(var i:int = 2; i < oid.length; i++)
         {
            v = parseInt(oid[i]);
            if(v < 128)
            {
               tmp.push(v);
            }
            else if(v < 128 * 128)
            {
               tmp.push(v >> 7 | 128);
               tmp.push(v & 127);
            }
            else if(v < 128 * 128 * 128)
            {
               tmp.push(v >> 14 | 128);
               tmp.push(v >> 7 & 127 | 128);
               tmp.push(v & 127);
            }
            else if(v < 128 * 128 * 128 * 128)
            {
               tmp.push(v >> 21 | 128);
               tmp.push(v >> 14 & 127 | 128);
               tmp.push(v >> 7 & 127 | 128);
               tmp.push(v & 127);
            }
            else
            {
               throw new Error("OID element bigger than we thought. :(");
            }
         }
         len = tmp.length;
         if(type == 0)
         {
            type = 6;
         }
         tmp.unshift(len);
         tmp.unshift(type);
         var b:ByteArray = new ByteArray();
         for(i = 0; i < tmp.length; i++)
         {
            b[i] = tmp[i];
         }
         return b;
      }
   }
}

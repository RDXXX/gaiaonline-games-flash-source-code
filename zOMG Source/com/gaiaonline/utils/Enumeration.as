package com.gaiaonline.utils
{
   import flash.utils.getQualifiedClassName;
   
   public class Enumeration
   {
      
      private static var _hash:Object = {};
       
      
      private var _count:int = -1;
      
      private var _name:String = null;
      
      public function Enumeration(name:String)
      {
         super();
         _name = name;
         addReferenceCount();
      }
      
      public static function getEnumFromName(enumClass:Class, name:String) : Enumeration
      {
         var className:String = getQualifiedClassName(enumClass);
         var enumInfo:EnumInfo = _hash[getQualifiedClassName(enumClass)] as EnumInfo;
         return (_hash[getQualifiedClassName(enumClass)] as EnumInfo).getEnumFromName(name);
      }
      
      private function addReferenceCount() : void
      {
         var className:String = getQualifiedClassName(this);
         if(!_hash[className])
         {
            _hash[className] = new EnumInfo();
         }
         var enumInfo:EnumInfo = _hash[className] as EnumInfo;
         enumInfo.addName(_name,this);
         _count = enumInfo.total;
      }
      
      public function valueOf() : Number
      {
         return _count;
      }
      
      public function toString() : String
      {
         return _name;
      }
   }
}

import com.gaiaonline.utils.Enumeration;

class EnumInfo
{
    
   
   private var _nameToEnumHash:Object;
   
   private var _total:uint = 0;
   
   function EnumInfo()
   {
      _nameToEnumHash = {};
      super();
   }
   
   public function get total() : uint
   {
      return _total;
   }
   
   public function addName(name:String, enum:Enumeration) : void
   {
      if(!_nameToEnumHash[name.toLowerCase()])
      {
         _nameToEnumHash[name.toLowerCase()] = enum;
         _total++;
      }
   }
   
   public function getEnumFromName(name:String) : Enumeration
   {
      return _nameToEnumHash[name.toLowerCase()] as Enumeration;
   }
}

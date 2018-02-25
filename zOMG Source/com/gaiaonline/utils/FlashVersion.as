package com.gaiaonline.utils
{
   import flash.system.Capabilities;
   
   public class FlashVersion
   {
      
      private static var _instance:FlashVersion = null;
       
      
      private var _revision:uint = 0;
      
      private var _build:uint = 0;
      
      private var _minor:uint = 0;
      
      private var _major:uint = 0;
      
      public function FlashVersion(s:SingletonEnforcer#161)
      {
         super();
         if(s == null)
         {
            throw "don\'t allocate me directly, call getInstance";
         }
         var parts:Array = Capabilities.version.split(" ")[1].split(",");
         _major = uint(parts[0]);
         _minor = uint(parts[1]);
         _revision = uint(parts[2]);
         _build = uint(parts[3]);
      }
      
      public static function getInstance() : FlashVersion
      {
         if(!_instance)
         {
            _instance = new FlashVersion(new SingletonEnforcer#161());
         }
         return _instance;
      }
      
      public function get build() : uint
      {
         return _build;
      }
      
      public function get minor() : uint
      {
         return _minor;
      }
      
      public function get major() : uint
      {
         return _major;
      }
      
      public function get revision() : uint
      {
         return _revision;
      }
   }
}

class SingletonEnforcer#161
{
    
   
   function SingletonEnforcer#161()
   {
      super();
   }
}

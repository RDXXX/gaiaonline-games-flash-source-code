package org.igniterealtime.xiff.data
{
   public class ExtensionClassRegistry
   {
      
      private static var _classes:Array = [];
       
      
      public function ExtensionClassRegistry()
      {
         super();
      }
      
      public static function lookup(ns:String) : Class
      {
         return _classes[ns];
      }
      
      public static function register(extensionClass:Class) : Boolean
      {
         var extensionInstance:IExtension = new extensionClass();
         if(extensionInstance is IExtension)
         {
            _classes[extensionInstance.getNS()] = extensionClass;
            return true;
         }
         return false;
      }
   }
}

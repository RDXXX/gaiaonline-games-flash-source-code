package mx.utils
{
   import flash.utils.describeType;
   import flash.utils.getDefinitionByName;
   import flash.utils.getQualifiedClassName;
   import mx.binding.BindabilityInfo;
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public class DescribeTypeCache
   {
      
      mx_internal static const VERSION:String = "3.6.0.21751";
      
      private static var cacheHandlers:Object = {};
      
      private static var typeCache:Object = {};
      
      {
         registerCacheHandler("bindabilityInfo",bindabilityInfoHandler);
      }
      
      public function DescribeTypeCache()
      {
         super();
      }
      
      public static function describeType(o:*) : DescribeTypeCacheRecord
      {
         var className:String = null;
         var typeDescription:XML = null;
         var record:DescribeTypeCacheRecord = null;
         if(o is String)
         {
            className = o;
         }
         else
         {
            className = getQualifiedClassName(o);
         }
         if(className in typeCache)
         {
            return typeCache[className];
         }
         if(o is String)
         {
            o = getDefinitionByName(o);
         }
         typeDescription = describeType(o);
         record = new DescribeTypeCacheRecord();
         record.typeDescription = typeDescription;
         record.typeName = className;
         typeCache[className] = record;
         return record;
      }
      
      public static function registerCacheHandler(valueName:String, handler:Function) : void
      {
         cacheHandlers[valueName] = handler;
      }
      
      static function extractValue(valueName:String, record:DescribeTypeCacheRecord) : *
      {
         if(valueName in cacheHandlers)
         {
            return cacheHandlers[valueName](record);
         }
         return undefined;
      }
      
      private static function bindabilityInfoHandler(record:DescribeTypeCacheRecord) : *
      {
         return new BindabilityInfo(record.typeDescription);
      }
   }
}

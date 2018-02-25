package mx.utils
{
   import flash.utils.Proxy;
   import flash.utils.flash_proxy;
   
   public dynamic class DescribeTypeCacheRecord extends Proxy
   {
       
      
      public var typeDescription:XML;
      
      public var typeName:String;
      
      private var cache:Object;
      
      public function DescribeTypeCacheRecord()
      {
         cache = {};
         super();
      }
      
      override flash_proxy function getProperty(name:*) : *
      {
         var result:* = cache[name];
         if(result === undefined)
         {
            result = DescribeTypeCache.extractValue(name,this);
            cache[name] = result;
         }
         return result;
      }
      
      override flash_proxy function hasProperty(name:*) : Boolean
      {
         if(name in cache)
         {
            return true;
         }
         var value:* = DescribeTypeCache.extractValue(name,this);
         if(value === undefined)
         {
            return false;
         }
         cache[name] = value;
         return true;
      }
   }
}

package mx.utils
{
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public class ArrayUtil
   {
      
      mx_internal static const VERSION:String = "3.6.0.21751";
       
      
      public function ArrayUtil()
      {
         super();
      }
      
      public static function getItemIndex(item:Object, source:Array) : int
      {
         var n:int = source.length;
         for(var i:int = 0; i < n; i++)
         {
            if(source[i] === item)
            {
               return i;
            }
         }
         return -1;
      }
      
      public static function toArray(obj:Object) : Array
      {
         if(!obj)
         {
            return [];
         }
         if(obj is Array)
         {
            return obj as Array;
         }
         return [obj];
      }
   }
}

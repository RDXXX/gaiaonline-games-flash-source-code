package mx.core
{
   use namespace mx_internal;
   
   public class DragSource
   {
      
      mx_internal static const VERSION:String = "3.6.0.21751";
       
      
      private var formatHandlers:Object;
      
      private var dataHolder:Object;
      
      private var _formats:Array;
      
      public function DragSource()
      {
         dataHolder = {};
         formatHandlers = {};
         _formats = [];
         super();
      }
      
      public function hasFormat(format:String) : Boolean
      {
         var n:int = _formats.length;
         for(var i:int = 0; i < n; i++)
         {
            if(_formats[i] == format)
            {
               return true;
            }
         }
         return false;
      }
      
      public function addData(data:Object, format:String) : void
      {
         _formats.push(format);
         dataHolder[format] = data;
      }
      
      public function dataForFormat(format:String) : Object
      {
         var data:Object = dataHolder[format];
         if(data)
         {
            return data;
         }
         if(formatHandlers[format])
         {
            return formatHandlers[format]();
         }
         return null;
      }
      
      public function addHandler(handler:Function, format:String) : void
      {
         _formats.push(format);
         formatHandlers[format] = handler;
      }
      
      public function get formats() : Array
      {
         return _formats;
      }
   }
}

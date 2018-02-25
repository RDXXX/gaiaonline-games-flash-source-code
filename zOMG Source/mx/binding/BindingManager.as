package mx.binding
{
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public class BindingManager
   {
      
      static var debugDestinationStrings:Object = {};
      
      mx_internal static const VERSION:String = "3.6.0.21751";
       
      
      public function BindingManager()
      {
         super();
      }
      
      public static function executeBindings(document:Object, destStr:String, destObj:Object) : void
      {
         var binding:* = null;
         if(!destStr || destStr == "")
         {
            return;
         }
         if(document && (document is IBindingClient || document.hasOwnProperty("_bindingsByDestination")) && document._bindingsByDestination && document._bindingsBeginWithWord[getFirstWord(destStr)])
         {
            for(binding in document._bindingsByDestination)
            {
               if(binding.charAt(0) == destStr.charAt(0))
               {
                  if(binding.indexOf(destStr + ".") == 0 || binding.indexOf(destStr + "[") == 0 || binding == destStr)
                  {
                     document._bindingsByDestination[binding].execute(destObj);
                  }
               }
            }
         }
      }
      
      public static function addBinding(document:Object, destStr:String, b:Binding) : void
      {
         if(!document._bindingsByDestination)
         {
            document._bindingsByDestination = {};
            document._bindingsBeginWithWord = {};
         }
         document._bindingsByDestination[destStr] = b;
         document._bindingsBeginWithWord[getFirstWord(destStr)] = true;
      }
      
      public static function debugBinding(destinationString:String) : void
      {
         debugDestinationStrings[destinationString] = true;
      }
      
      private static function getFirstWord(destStr:String) : String
      {
         var indexPeriod:int = destStr.indexOf(".");
         var indexBracket:int = destStr.indexOf("[");
         if(indexPeriod == indexBracket)
         {
            return destStr;
         }
         var minIndex:int = Math.min(indexPeriod,indexBracket);
         if(minIndex == -1)
         {
            minIndex = Math.max(indexPeriod,indexBracket);
         }
         return destStr.substr(0,minIndex);
      }
      
      public static function setEnabled(document:Object, isEnabled:Boolean) : void
      {
         var bindings:Array = null;
         var i:uint = 0;
         var binding:Binding = null;
         if(document is IBindingClient && document._bindings)
         {
            bindings = document._bindings as Array;
            for(i = 0; i < bindings.length; i++)
            {
               binding = bindings[i];
               binding.isEnabled = isEnabled;
            }
         }
      }
   }
}

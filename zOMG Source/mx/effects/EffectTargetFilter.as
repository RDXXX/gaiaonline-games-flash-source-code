package mx.effects
{
   import mx.core.mx_internal;
   import mx.effects.effectClasses.PropertyChanges;
   
   use namespace mx_internal;
   
   public class EffectTargetFilter
   {
      
      mx_internal static const VERSION:String = "3.6.0.21751";
       
      
      public var filterFunction:Function;
      
      public var filterStyles:Array;
      
      public var filterProperties:Array;
      
      public var requiredSemantics:Object = null;
      
      public function EffectTargetFilter()
      {
         filterFunction = defaultFilterFunctionEx;
         filterProperties = [];
         filterStyles = [];
         super();
      }
      
      protected function defaultFilterFunctionEx(propChanges:Array, semanticsProvider:IEffectTargetHost, target:Object) : Boolean
      {
         var prop:* = null;
         if(requiredSemantics)
         {
            for(prop in requiredSemantics)
            {
               if(!semanticsProvider)
               {
                  return false;
               }
               if(semanticsProvider.getRendererSemanticValue(target,prop) != requiredSemantics[prop])
               {
                  return false;
               }
            }
            return true;
         }
         return defaultFilterFunction(propChanges,target);
      }
      
      protected function defaultFilterFunction(propChanges:Array, instanceTarget:Object) : Boolean
      {
         var props:PropertyChanges = null;
         var triggers:Array = null;
         var m:int = 0;
         var j:int = 0;
         var n:int = propChanges.length;
         for(var i:int = 0; i < n; i++)
         {
            props = propChanges[i];
            if(props.target == instanceTarget)
            {
               triggers = filterProperties.concat(filterStyles);
               m = triggers.length;
               for(j = 0; j < m; j++)
               {
                  if(props.start[triggers[j]] !== undefined && props.end[triggers[j]] != props.start[triggers[j]])
                  {
                     return true;
                  }
               }
            }
         }
         return false;
      }
      
      public function filterInstance(propChanges:Array, semanticsProvider:IEffectTargetHost, target:Object) : Boolean
      {
         if(filterFunction.length == 2)
         {
            return filterFunction(propChanges,target);
         }
         return filterFunction(propChanges,semanticsProvider,target);
      }
   }
}

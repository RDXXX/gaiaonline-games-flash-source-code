package mx.effects.effectClasses
{
   import mx.core.mx_internal;
   import mx.effects.EffectTargetFilter;
   
   use namespace mx_internal;
   
   public class AddRemoveEffectTargetFilter extends EffectTargetFilter
   {
      
      mx_internal static const VERSION:String = "3.6.0.21751";
       
      
      public var add:Boolean = true;
      
      public function AddRemoveEffectTargetFilter()
      {
         super();
         filterProperties = ["parent"];
      }
      
      override protected function defaultFilterFunction(propChanges:Array, instanceTarget:Object) : Boolean
      {
         var props:PropertyChanges = null;
         var n:int = propChanges.length;
         for(var i:int = 0; i < n; i++)
         {
            props = propChanges[i];
            if(props.target == instanceTarget)
            {
               if(add)
               {
                  return props.start["parent"] == null && props.end["parent"] != null;
               }
               return props.start["parent"] != null && props.end["parent"] == null;
            }
         }
         return false;
      }
   }
}

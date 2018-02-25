package mx.states
{
   import flash.events.EventDispatcher;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   
   use namespace mx_internal;
   
   public class State#13 extends EventDispatcher
   {
      
      mx_internal static const VERSION:String = "3.6.0.21751";
       
      
      public var basedOn:String;
      
      private var initialized:Boolean = false;
      
      public var overrides:Array;
      
      public var name:String;
      
      public function State#13()
      {
         overrides = [];
         super();
      }
      
      mx_internal function initialize() : void
      {
         var i:int = 0;
         if(!initialized)
         {
            initialized = true;
            for(i = 0; i < overrides.length; i++)
            {
               IOverride(overrides[i]).initialize();
            }
         }
      }
      
      mx_internal function dispatchExitState() : void
      {
         dispatchEvent(new FlexEvent(FlexEvent.EXIT_STATE));
      }
      
      mx_internal function dispatchEnterState() : void
      {
         dispatchEvent(new FlexEvent(FlexEvent.ENTER_STATE));
      }
   }
}

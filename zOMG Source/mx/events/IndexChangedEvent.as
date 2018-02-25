package mx.events
{
   import flash.display.DisplayObject;
   import flash.events.Event;
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public class IndexChangedEvent extends Event
   {
      
      public static const HEADER_SHIFT:String = "headerShift";
      
      public static const CHANGE:String = "change";
      
      mx_internal static const VERSION:String = "3.6.0.21751";
      
      public static const CHILD_INDEX_CHANGE:String = "childIndexChange";
       
      
      public var newIndex:Number;
      
      public var triggerEvent:Event;
      
      public var relatedObject:DisplayObject;
      
      public var oldIndex:Number;
      
      public function IndexChangedEvent(type:String, bubbles:Boolean = false, cancelable:Boolean = false, relatedObject:DisplayObject = null, oldIndex:Number = -1, newIndex:Number = -1, triggerEvent:Event = null)
      {
         super(type,bubbles,cancelable);
         this.relatedObject = relatedObject;
         this.oldIndex = oldIndex;
         this.newIndex = newIndex;
         this.triggerEvent = triggerEvent;
      }
      
      override public function clone() : Event
      {
         return new IndexChangedEvent(type,bubbles,cancelable,relatedObject,oldIndex,newIndex,triggerEvent);
      }
   }
}

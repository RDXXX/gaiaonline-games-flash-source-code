package mx.events
{
   import flash.display.DisplayObject;
   import flash.events.Event;
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public class ChildExistenceChangedEvent extends Event
   {
      
      public static const CHILD_REMOVE:String = "childRemove";
      
      mx_internal static const VERSION:String = "3.6.0.21751";
      
      public static const OVERLAY_CREATED:String = "overlayCreated";
      
      public static const CHILD_ADD:String = "childAdd";
       
      
      public var relatedObject:DisplayObject;
      
      public function ChildExistenceChangedEvent(type:String, bubbles:Boolean = false, cancelable:Boolean = false, relatedObject:DisplayObject = null)
      {
         super(type,bubbles,cancelable);
         this.relatedObject = relatedObject;
      }
      
      override public function clone() : Event
      {
         return new ChildExistenceChangedEvent(type,bubbles,cancelable,relatedObject);
      }
   }
}

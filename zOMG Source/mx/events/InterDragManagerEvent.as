package mx.events
{
   import flash.display.DisplayObject;
   import flash.display.InteractiveObject;
   import flash.events.Event;
   import mx.core.DragSource;
   import mx.core.IUIComponent;
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public class InterDragManagerEvent extends DragEvent
   {
      
      mx_internal static const VERSION:String = "3.6.0.21751";
      
      public static const DISPATCH_DRAG_EVENT:String = "dispatchDragEvent";
       
      
      public var dropTarget:DisplayObject;
      
      public var dragEventType:String;
      
      public function InterDragManagerEvent(type:String, bubbles:Boolean = false, cancelable:Boolean = false, localX:Number = NaN, localY:Number = NaN, relatedObject:InteractiveObject = null, ctrlKey:Boolean = false, altKey:Boolean = false, shiftKey:Boolean = false, buttonDown:Boolean = false, delta:int = 0, dropTarget:DisplayObject = null, dragEventType:String = null, dragInitiator:IUIComponent = null, dragSource:DragSource = null, action:String = null, draggedItem:Object = null)
      {
         super(type,false,false,dragInitiator,dragSource,action,ctrlKey,altKey,shiftKey);
         this.dropTarget = dropTarget;
         this.dragEventType = dragEventType;
         this.draggedItem = draggedItem;
         this.localX = localX;
         this.localY = localY;
         this.buttonDown = buttonDown;
         this.delta = delta;
         this.relatedObject = relatedObject;
      }
      
      override public function clone() : Event
      {
         var cloneEvent:InterDragManagerEvent = new InterDragManagerEvent(type,bubbles,cancelable,localX,localY,relatedObject,ctrlKey,altKey,shiftKey,buttonDown,delta,dropTarget,dragEventType,dragInitiator,dragSource,action,draggedItem);
         return cloneEvent;
      }
   }
}

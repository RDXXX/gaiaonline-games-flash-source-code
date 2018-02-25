package mx.events
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import mx.core.DragSource;
   import mx.core.IUIComponent;
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public class DragEvent extends MouseEvent
   {
      
      public static const DRAG_DROP:String = "dragDrop";
      
      public static const DRAG_COMPLETE:String = "dragComplete";
      
      public static const DRAG_EXIT:String = "dragExit";
      
      public static const DRAG_ENTER:String = "dragEnter";
      
      public static const DRAG_START:String = "dragStart";
      
      mx_internal static const VERSION:String = "3.6.0.21751";
      
      public static const DRAG_OVER:String = "dragOver";
       
      
      public var draggedItem:Object;
      
      public var action:String;
      
      public var dragInitiator:IUIComponent;
      
      public var dragSource:DragSource;
      
      public function DragEvent(type:String, bubbles:Boolean = false, cancelable:Boolean = true, dragInitiator:IUIComponent = null, dragSource:DragSource = null, action:String = null, ctrlKey:Boolean = false, altKey:Boolean = false, shiftKey:Boolean = false)
      {
         super(type,bubbles,cancelable);
         this.dragInitiator = dragInitiator;
         this.dragSource = dragSource;
         this.action = action;
         this.ctrlKey = ctrlKey;
         this.altKey = altKey;
         this.shiftKey = shiftKey;
      }
      
      override public function clone() : Event
      {
         var cloneEvent:DragEvent = new DragEvent(type,bubbles,cancelable,dragInitiator,dragSource,action,ctrlKey,altKey,shiftKey);
         cloneEvent.relatedObject = this.relatedObject;
         cloneEvent.localX = this.localX;
         cloneEvent.localY = this.localY;
         return cloneEvent;
      }
   }
}

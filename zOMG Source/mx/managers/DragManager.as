package mx.managers
{
   import flash.events.MouseEvent;
   import mx.core.DragSource;
   import mx.core.IFlexDisplayObject;
   import mx.core.IUIComponent;
   import mx.core.Singleton;
   import mx.core.mx_internal;
   import mx.managers.dragClasses.DragProxy;
   
   use namespace mx_internal;
   
   public class DragManager
   {
      
      private static var implClassDependency:DragManagerImpl;
      
      private static var _impl:IDragManager;
      
      public static const MOVE:String = "move";
      
      public static const COPY:String = "copy";
      
      mx_internal static const VERSION:String = "3.6.0.21751";
      
      public static const LINK:String = "link";
      
      public static const NONE:String = "none";
       
      
      public function DragManager()
      {
         super();
      }
      
      private static function get impl() : IDragManager
      {
         if(!_impl)
         {
            _impl = IDragManager(Singleton.getInstance("mx.managers::IDragManager"));
         }
         return _impl;
      }
      
      mx_internal static function get dragProxy() : DragProxy
      {
         return Object(impl).dragProxy;
      }
      
      public static function showFeedback(feedback:String) : void
      {
         impl.showFeedback(feedback);
      }
      
      public static function acceptDragDrop(target:IUIComponent) : void
      {
         impl.acceptDragDrop(target);
      }
      
      public static function doDrag(dragInitiator:IUIComponent, dragSource:DragSource, mouseEvent:MouseEvent, dragImage:IFlexDisplayObject = null, xOffset:Number = 0, yOffset:Number = 0, imageAlpha:Number = 0.5, allowMove:Boolean = true) : void
      {
         impl.doDrag(dragInitiator,dragSource,mouseEvent,dragImage,xOffset,yOffset,imageAlpha,allowMove);
      }
      
      mx_internal static function endDrag() : void
      {
         impl.endDrag();
      }
      
      public static function get isDragging() : Boolean
      {
         return impl.isDragging;
      }
      
      public static function getFeedback() : String
      {
         return impl.getFeedback();
      }
   }
}

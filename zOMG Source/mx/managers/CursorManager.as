package mx.managers
{
   import mx.core.Singleton;
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public class CursorManager
   {
      
      private static var _impl:ICursorManager;
      
      mx_internal static const VERSION:String = "3.6.0.21751";
      
      public static const NO_CURSOR:int = 0;
      
      private static var implClassDependency:CursorManagerImpl;
       
      
      public function CursorManager()
      {
         super();
      }
      
      public static function set currentCursorYOffset(value:Number) : void
      {
         impl.currentCursorYOffset = value;
      }
      
      mx_internal static function registerToUseBusyCursor(source:Object) : void
      {
         impl.registerToUseBusyCursor(source);
      }
      
      public static function get currentCursorID() : int
      {
         return impl.currentCursorID;
      }
      
      public static function getInstance() : ICursorManager
      {
         return impl;
      }
      
      public static function removeBusyCursor() : void
      {
         impl.removeBusyCursor();
      }
      
      public static function setCursor(cursorClass:Class, priority:int = 2, xOffset:Number = 0, yOffset:Number = 0) : int
      {
         return impl.setCursor(cursorClass,priority,xOffset,yOffset);
      }
      
      public static function set currentCursorID(value:int) : void
      {
         impl.currentCursorID = value;
      }
      
      mx_internal static function unRegisterToUseBusyCursor(source:Object) : void
      {
         impl.unRegisterToUseBusyCursor(source);
      }
      
      private static function get impl() : ICursorManager
      {
         if(!_impl)
         {
            _impl = ICursorManager(Singleton.getInstance("mx.managers::ICursorManager"));
         }
         return _impl;
      }
      
      public static function removeAllCursors() : void
      {
         impl.removeAllCursors();
      }
      
      public static function setBusyCursor() : void
      {
         impl.setBusyCursor();
      }
      
      public static function showCursor() : void
      {
         impl.showCursor();
      }
      
      public static function hideCursor() : void
      {
         impl.hideCursor();
      }
      
      public static function removeCursor(cursorID:int) : void
      {
         impl.removeCursor(cursorID);
      }
      
      public static function get currentCursorXOffset() : Number
      {
         return impl.currentCursorXOffset;
      }
      
      public static function get currentCursorYOffset() : Number
      {
         return impl.currentCursorYOffset;
      }
      
      public static function set currentCursorXOffset(value:Number) : void
      {
         impl.currentCursorXOffset = value;
      }
   }
}

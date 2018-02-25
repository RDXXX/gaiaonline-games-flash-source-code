package mx.managers
{
   import flash.display.DisplayObject;
   import mx.core.IFlexDisplayObject;
   import mx.core.Singleton;
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public class PopUpManager
   {
      
      private static var implClassDependency:PopUpManagerImpl;
      
      private static var _impl:IPopUpManager;
      
      mx_internal static const VERSION:String = "3.6.0.21751";
       
      
      public function PopUpManager()
      {
         super();
      }
      
      private static function get impl() : IPopUpManager
      {
         if(!_impl)
         {
            _impl = IPopUpManager(Singleton.getInstance("mx.managers::IPopUpManager"));
         }
         return _impl;
      }
      
      public static function removePopUp(popUp:IFlexDisplayObject) : void
      {
         impl.removePopUp(popUp);
      }
      
      public static function addPopUp(window:IFlexDisplayObject, parent:DisplayObject, modal:Boolean = false, childList:String = null) : void
      {
         impl.addPopUp(window,parent,modal,childList);
      }
      
      public static function centerPopUp(popUp:IFlexDisplayObject) : void
      {
         impl.centerPopUp(popUp);
      }
      
      public static function bringToFront(popUp:IFlexDisplayObject) : void
      {
         impl.bringToFront(popUp);
      }
      
      public static function createPopUp(parent:DisplayObject, className:Class, modal:Boolean = false, childList:String = null) : IFlexDisplayObject
      {
         return impl.createPopUp(parent,className,modal,childList);
      }
   }
}

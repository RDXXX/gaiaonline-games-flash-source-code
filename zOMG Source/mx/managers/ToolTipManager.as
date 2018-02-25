package mx.managers
{
   import flash.display.DisplayObject;
   import flash.events.EventDispatcher;
   import mx.core.IToolTip;
   import mx.core.IUIComponent;
   import mx.core.Singleton;
   import mx.core.mx_internal;
   import mx.effects.IAbstractEffect;
   
   use namespace mx_internal;
   
   public class ToolTipManager extends EventDispatcher
   {
      
      private static var implClassDependency:ToolTipManagerImpl;
      
      mx_internal static const VERSION:String = "3.6.0.21751";
      
      private static var _impl:IToolTipManager2;
       
      
      public function ToolTipManager()
      {
         super();
      }
      
      mx_internal static function registerToolTip(target:DisplayObject, oldToolTip:String, newToolTip:String) : void
      {
         impl.registerToolTip(target,oldToolTip,newToolTip);
      }
      
      public static function get enabled() : Boolean
      {
         return impl.enabled;
      }
      
      public static function set enabled(value:Boolean) : void
      {
         impl.enabled = value;
      }
      
      public static function createToolTip(text:String, x:Number, y:Number, errorTipBorderStyle:String = null, context:IUIComponent = null) : IToolTip
      {
         return impl.createToolTip(text,x,y,errorTipBorderStyle,context);
      }
      
      public static function set hideDelay(value:Number) : void
      {
         impl.hideDelay = value;
      }
      
      public static function set showDelay(value:Number) : void
      {
         impl.showDelay = value;
      }
      
      public static function get showDelay() : Number
      {
         return impl.showDelay;
      }
      
      public static function destroyToolTip(toolTip:IToolTip) : void
      {
         return impl.destroyToolTip(toolTip);
      }
      
      public static function get scrubDelay() : Number
      {
         return impl.scrubDelay;
      }
      
      public static function get toolTipClass() : Class
      {
         return impl.toolTipClass;
      }
      
      mx_internal static function registerErrorString(target:DisplayObject, oldErrorString:String, newErrorString:String) : void
      {
         impl.registerErrorString(target,oldErrorString,newErrorString);
      }
      
      mx_internal static function sizeTip(toolTip:IToolTip) : void
      {
         impl.sizeTip(toolTip);
      }
      
      public static function set currentTarget(value:DisplayObject) : void
      {
         impl.currentTarget = value;
      }
      
      public static function set showEffect(value:IAbstractEffect) : void
      {
         impl.showEffect = value;
      }
      
      private static function get impl() : IToolTipManager2
      {
         if(!_impl)
         {
            _impl = IToolTipManager2(Singleton.getInstance("mx.managers::IToolTipManager2"));
         }
         return _impl;
      }
      
      public static function get hideDelay() : Number
      {
         return impl.hideDelay;
      }
      
      public static function set hideEffect(value:IAbstractEffect) : void
      {
         impl.hideEffect = value;
      }
      
      public static function set scrubDelay(value:Number) : void
      {
         impl.scrubDelay = value;
      }
      
      public static function get currentToolTip() : IToolTip
      {
         return impl.currentToolTip;
      }
      
      public static function set currentToolTip(value:IToolTip) : void
      {
         impl.currentToolTip = value;
      }
      
      public static function get showEffect() : IAbstractEffect
      {
         return impl.showEffect;
      }
      
      public static function get currentTarget() : DisplayObject
      {
         return impl.currentTarget;
      }
      
      public static function get hideEffect() : IAbstractEffect
      {
         return impl.hideEffect;
      }
      
      public static function set toolTipClass(value:Class) : void
      {
         impl.toolTipClass = value;
      }
   }
}

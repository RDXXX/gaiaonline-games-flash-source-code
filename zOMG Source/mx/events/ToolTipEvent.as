package mx.events
{
   import flash.events.Event;
   import mx.core.IToolTip;
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public class ToolTipEvent extends Event
   {
      
      public static const TOOL_TIP_SHOWN:String = "toolTipShown";
      
      public static const TOOL_TIP_CREATE:String = "toolTipCreate";
      
      public static const TOOL_TIP_SHOW:String = "toolTipShow";
      
      public static const TOOL_TIP_HIDE:String = "toolTipHide";
      
      public static const TOOL_TIP_END:String = "toolTipEnd";
      
      mx_internal static const VERSION:String = "3.6.0.21751";
      
      public static const TOOL_TIP_START:String = "toolTipStart";
       
      
      public var toolTip:IToolTip;
      
      public function ToolTipEvent(type:String, bubbles:Boolean = false, cancelable:Boolean = false, toolTip:IToolTip = null)
      {
         super(type,bubbles,cancelable);
         this.toolTip = toolTip;
      }
      
      override public function clone() : Event
      {
         return new ToolTipEvent(type,bubbles,cancelable,toolTip);
      }
   }
}

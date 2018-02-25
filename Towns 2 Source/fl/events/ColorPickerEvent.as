package fl.events
{
   import flash.events.Event;
   
   public class ColorPickerEvent extends Event
   {
      
      public static const ITEM_ROLL_OUT:String = "itemRollOut";
      
      public static const ITEM_ROLL_OVER:String = "itemRollOver";
      
      public static const ENTER:String = "enter";
      
      public static const CHANGE:String = "change";
       
      
      protected var _color:uint;
      
      public function ColorPickerEvent(param1:String, param2:uint)
      {
         super(param1,true);
         _color = param2;
      }
      
      public function get color() : uint
      {
         return _color;
      }
      
      override public function toString() : String
      {
         return formatToString("ColorPickerEvent","type","bubbles","cancelable","color");
      }
      
      override public function clone() : Event
      {
         return new ColorPickerEvent(type,color);
      }
   }
}

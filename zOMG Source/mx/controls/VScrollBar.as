package mx.controls
{
   import flash.ui.Keyboard;
   import mx.controls.scrollClasses.ScrollBar;
   import mx.controls.scrollClasses.ScrollBarDirection;
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public class VScrollBar extends ScrollBar
   {
      
      mx_internal static const VERSION:String = "3.6.0.21751";
       
      
      public function VScrollBar()
      {
         super();
         super.direction = ScrollBarDirection.VERTICAL;
      }
      
      override protected function measure() : void
      {
         super.measure();
         measuredWidth = _minWidth;
         measuredHeight = _minHeight;
      }
      
      override public function get minHeight() : Number
      {
         return _minHeight;
      }
      
      override mx_internal function isScrollBarKey(key:uint) : Boolean
      {
         if(key == Keyboard.UP)
         {
            lineScroll(-1);
            return true;
         }
         if(key == Keyboard.DOWN)
         {
            lineScroll(1);
            return true;
         }
         if(key == Keyboard.PAGE_UP)
         {
            pageScroll(-1);
            return true;
         }
         if(key == Keyboard.PAGE_DOWN)
         {
            pageScroll(1);
            return true;
         }
         return super.isScrollBarKey(key);
      }
      
      override public function get minWidth() : Number
      {
         return _minWidth;
      }
      
      override public function set direction(value:String) : void
      {
      }
   }
}

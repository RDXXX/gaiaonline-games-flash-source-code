package mx.controls
{
   import flash.display.DisplayObject;
   import flash.events.MouseEvent;
   import mx.controls.tabBarClasses.Tab;
   import mx.core.ClassFactory;
   import mx.core.IFlexDisplayObject;
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public class TabBar extends ToggleButtonBar
   {
      
      mx_internal static const VERSION:String = "3.6.0.21751";
      
      mx_internal static var createAccessibilityImplementation:Function;
       
      
      public function TabBar()
      {
         super();
         buttonHeightProp = "tabHeight";
         buttonStyleNameProp = "tabStyleName";
         firstButtonStyleNameProp = "firstTabStyleName";
         lastButtonStyleNameProp = "lastTabStyleName";
         buttonWidthProp = "tabWidth";
         navItemFactory = new ClassFactory(Tab);
         selectedButtonTextStyleNameProp = "selectedTabTextStyleName";
      }
      
      override protected function clickHandler(event:MouseEvent) : void
      {
         if(getChildIndex(DisplayObject(event.currentTarget)) == selectedIndex)
         {
            Button(event.currentTarget).selected = true;
            event.stopImmediatePropagation();
            return;
         }
         super.clickHandler(event);
      }
      
      override protected function createNavItem(label:String, icon:Class = null) : IFlexDisplayObject
      {
         var navItem:IFlexDisplayObject = super.createNavItem(label,icon);
         DisplayObject(navItem).addEventListener(MouseEvent.MOUSE_DOWN,tab_mouseDownHandler);
         DisplayObject(navItem).addEventListener(MouseEvent.DOUBLE_CLICK,tab_doubleClickHandler);
         return navItem;
      }
      
      private function tab_doubleClickHandler(event:MouseEvent) : void
      {
         Button(event.currentTarget).selected = true;
      }
      
      private function tab_mouseDownHandler(event:MouseEvent) : void
      {
         selectButton(event.currentTarget.parent.getChildIndex(event.currentTarget),true,event);
      }
      
      override protected function initializeAccessibility() : void
      {
         if(TabBar.createAccessibilityImplementation != null)
         {
            TabBar.createAccessibilityImplementation(this);
         }
      }
   }
}

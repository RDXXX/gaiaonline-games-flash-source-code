package mx.containers
{
   import flash.events.Event;
   import mx.containers.utilityClasses.BoxLayout;
   import mx.core.Container;
   import mx.core.IUIComponent;
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public class Box extends Container
   {
      
      mx_internal static const VERSION:String = "3.6.0.21751";
       
      
      mx_internal var layoutObject:BoxLayout;
      
      public function Box()
      {
         layoutObject = new BoxLayout();
         super();
         layoutObject.target = this;
      }
      
      mx_internal function isVertical() : Boolean
      {
         return direction != BoxDirection.HORIZONTAL;
      }
      
      public function set direction(value:String) : void
      {
         layoutObject.direction = value;
         invalidateSize();
         invalidateDisplayList();
         dispatchEvent(new Event("directionChanged"));
      }
      
      override protected function updateDisplayList(unscaledWidth:Number, unscaledHeight:Number) : void
      {
         super.updateDisplayList(unscaledWidth,unscaledHeight);
         layoutObject.updateDisplayList(unscaledWidth,unscaledHeight);
      }
      
      public function pixelsToPercent(pxl:Number) : Number
      {
         var child:IUIComponent = null;
         var size:Number = NaN;
         var perc:Number = NaN;
         var vertical:Boolean = isVertical();
         var totalPerc:Number = 0;
         var totalSize:Number = 0;
         var n:int = numChildren;
         for(var i:int = 0; i < n; i++)
         {
            child = IUIComponent(getChildAt(i));
            size = !!vertical?Number(child.height):Number(child.width);
            perc = !!vertical?Number(child.percentHeight):Number(child.percentWidth);
            if(!isNaN(perc))
            {
               totalPerc = totalPerc + perc;
               totalSize = totalSize + size;
            }
         }
         var p:Number = 100;
         if(totalSize != pxl)
         {
            p = totalSize * totalPerc / (totalSize - pxl) - totalPerc;
         }
         return p;
      }
      
      override protected function measure() : void
      {
         super.measure();
         layoutObject.measure();
      }
      
      [Bindable("directionChanged")]
      public function get direction() : String
      {
         return layoutObject.direction;
      }
   }
}

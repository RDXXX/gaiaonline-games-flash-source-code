package mx.containers.utilityClasses
{
   import mx.core.Container;
   import mx.core.IFlexDisplayObject;
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public class ApplicationLayout extends BoxLayout
   {
      
      mx_internal static const VERSION:String = "3.6.0.21751";
       
      
      public function ApplicationLayout()
      {
         super();
      }
      
      override public function updateDisplayList(unscaledWidth:Number, unscaledHeight:Number) : void
      {
         var paddingLeft:Number = NaN;
         var paddingTop:Number = NaN;
         var oX:Number = NaN;
         var oY:Number = NaN;
         var n:int = 0;
         var i:int = 0;
         var child:IFlexDisplayObject = null;
         super.updateDisplayList(unscaledWidth,unscaledHeight);
         var target:Container = super.target;
         if(target.horizontalScrollBar && getHorizontalAlignValue() > 0 || target.verticalScrollBar && getVerticalAlignValue() > 0)
         {
            paddingLeft = target.getStyle("paddingLeft");
            paddingTop = target.getStyle("paddingTop");
            oX = 0;
            oY = 0;
            n = target.numChildren;
            for(i = 0; i < n; i++)
            {
               child = IFlexDisplayObject(target.getChildAt(i));
               if(child.x < paddingLeft)
               {
                  oX = Math.max(oX,paddingLeft - child.x);
               }
               if(child.y < paddingTop)
               {
                  oY = Math.max(oY,paddingTop - child.y);
               }
            }
            if(oX != 0 || oY != 0)
            {
               for(i = 0; i < n; i++)
               {
                  child = IFlexDisplayObject(target.getChildAt(i));
                  child.move(child.x + oX,child.y + oY);
               }
            }
         }
      }
   }
}

package mx.containers.utilityClasses
{
   import mx.core.Container;
   import mx.core.FlexVersion;
   import mx.core.IUIComponent;
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public class Flex
   {
      
      mx_internal static const VERSION:String = "3.6.0.21751";
       
      
      public function Flex()
      {
         super();
      }
      
      public static function flexChildWidthsProportionally(parent:Container, spaceForChildren:Number, h:Number) : Number
      {
         var childInfoArray:Array = null;
         var childInfo:FlexChildInfo = null;
         var child:IUIComponent = null;
         var i:int = 0;
         var percentWidth:Number = NaN;
         var percentHeight:Number = NaN;
         var height:Number = NaN;
         var width:Number = NaN;
         var spaceToDistribute:Number = spaceForChildren;
         var totalPercentWidth:Number = 0;
         childInfoArray = [];
         var n:int = parent.numChildren;
         for(i = 0; i < n; i++)
         {
            child = IUIComponent(parent.getChildAt(i));
            percentWidth = child.percentWidth;
            percentHeight = child.percentHeight;
            if(!isNaN(percentHeight) && child.includeInLayout)
            {
               height = Math.max(child.minHeight,Math.min(child.maxHeight,percentHeight >= 100?Number(h):Number(h * percentHeight / 100)));
            }
            else
            {
               height = child.getExplicitOrMeasuredHeight();
            }
            if(!isNaN(percentWidth) && child.includeInLayout)
            {
               totalPercentWidth = totalPercentWidth + percentWidth;
               childInfo = new FlexChildInfo();
               childInfo.percent = percentWidth;
               childInfo.min = child.minWidth;
               childInfo.max = child.maxWidth;
               childInfo.height = height;
               childInfo.child = child;
               childInfoArray.push(childInfo);
            }
            else
            {
               width = child.getExplicitOrMeasuredWidth();
               if(child.scaleX == 1 && child.scaleY == 1)
               {
                  child.setActualSize(Math.floor(width),Math.floor(height));
               }
               else
               {
                  child.setActualSize(width,height);
               }
               if(child.includeInLayout)
               {
                  spaceToDistribute = spaceToDistribute - child.width;
               }
            }
         }
         if(totalPercentWidth)
         {
            spaceToDistribute = flexChildrenProportionally(spaceForChildren,spaceToDistribute,totalPercentWidth,childInfoArray);
            n = childInfoArray.length;
            for(i = 0; i < n; i++)
            {
               childInfo = childInfoArray[i];
               child = childInfo.child;
               if(child.scaleX == 1 && child.scaleY == 1)
               {
                  child.setActualSize(Math.floor(childInfo.size),Math.floor(childInfo.height));
               }
               else
               {
                  child.setActualSize(childInfo.size,childInfo.height);
               }
            }
            if(FlexVersion.compatibilityVersion >= FlexVersion.VERSION_3_0)
            {
               distributeExtraWidth(parent,spaceForChildren);
            }
         }
         return spaceToDistribute;
      }
      
      public static function distributeExtraHeight(parent:Container, spaceForChildren:Number) : void
      {
         var i:int = 0;
         var percentHeight:Number = NaN;
         var child:IUIComponent = null;
         var childHeight:Number = NaN;
         var wantSpace:Number = NaN;
         var n:int = parent.numChildren;
         var wantToGrow:Boolean = false;
         var spaceToDistribute:Number = spaceForChildren;
         var spaceUsed:Number = 0;
         for(i = 0; i < n; i++)
         {
            child = IUIComponent(parent.getChildAt(i));
            if(child.includeInLayout)
            {
               childHeight = child.height;
               percentHeight = child.percentHeight;
               spaceUsed = spaceUsed + childHeight;
               if(!isNaN(percentHeight))
               {
                  wantSpace = Math.ceil(percentHeight / 100 * spaceForChildren);
                  if(wantSpace > childHeight)
                  {
                     wantToGrow = true;
                  }
               }
            }
         }
         if(!wantToGrow)
         {
            return;
         }
         spaceToDistribute = spaceToDistribute - spaceUsed;
         var stillFlexibleComponents:Boolean = true;
         while(stillFlexibleComponents && spaceToDistribute > 0)
         {
            stillFlexibleComponents = false;
            for(i = 0; i < n; i++)
            {
               child = IUIComponent(parent.getChildAt(i));
               childHeight = child.height;
               percentHeight = child.percentHeight;
               if(!isNaN(percentHeight) && child.includeInLayout && childHeight < child.maxHeight)
               {
                  wantSpace = Math.ceil(percentHeight / 100 * spaceForChildren);
                  if(wantSpace > childHeight)
                  {
                     child.setActualSize(child.width,childHeight + 1);
                     spaceToDistribute--;
                     stillFlexibleComponents = true;
                     if(spaceToDistribute == 0)
                     {
                        return;
                     }
                  }
               }
            }
         }
      }
      
      public static function distributeExtraWidth(parent:Container, spaceForChildren:Number) : void
      {
         var i:int = 0;
         var percentWidth:Number = NaN;
         var child:IUIComponent = null;
         var childWidth:Number = NaN;
         var wantSpace:Number = NaN;
         var n:int = parent.numChildren;
         var wantToGrow:Boolean = false;
         var spaceToDistribute:Number = spaceForChildren;
         var spaceUsed:Number = 0;
         for(i = 0; i < n; i++)
         {
            child = IUIComponent(parent.getChildAt(i));
            if(child.includeInLayout)
            {
               childWidth = child.width;
               percentWidth = child.percentWidth;
               spaceUsed = spaceUsed + childWidth;
               if(!isNaN(percentWidth))
               {
                  wantSpace = Math.ceil(percentWidth / 100 * spaceForChildren);
                  if(wantSpace > childWidth)
                  {
                     wantToGrow = true;
                  }
               }
            }
         }
         if(!wantToGrow)
         {
            return;
         }
         spaceToDistribute = spaceToDistribute - spaceUsed;
         var stillFlexibleComponents:Boolean = true;
         while(stillFlexibleComponents && spaceToDistribute > 0)
         {
            stillFlexibleComponents = false;
            for(i = 0; i < n; i++)
            {
               child = IUIComponent(parent.getChildAt(i));
               childWidth = child.width;
               percentWidth = child.percentWidth;
               if(!isNaN(percentWidth) && child.includeInLayout && childWidth < child.maxWidth)
               {
                  wantSpace = Math.ceil(percentWidth / 100 * spaceForChildren);
                  if(wantSpace > childWidth)
                  {
                     child.setActualSize(childWidth + 1,child.height);
                     spaceToDistribute--;
                     stillFlexibleComponents = true;
                     if(spaceToDistribute == 0)
                     {
                        return;
                     }
                  }
               }
            }
         }
      }
      
      public static function flexChildrenProportionally(spaceForChildren:Number, spaceToDistribute:Number, totalPercent:Number, childInfoArray:Array) : Number
      {
         var flexConsumed:Number = NaN;
         var done:Boolean = false;
         var spacePerPercent:* = undefined;
         var i:* = undefined;
         var childInfo:* = undefined;
         var size:* = undefined;
         var min:* = undefined;
         var max:* = undefined;
         var numChildren:int = childInfoArray.length;
         var unused:Number = spaceToDistribute - spaceForChildren * totalPercent / 100;
         if(unused > 0)
         {
            spaceToDistribute = spaceToDistribute - unused;
         }
         do
         {
            flexConsumed = 0;
            done = true;
            spacePerPercent = spaceToDistribute / totalPercent;
            for(i = 0; i < numChildren; i++)
            {
               childInfo = childInfoArray[i];
               size = childInfo.percent * spacePerPercent;
               if(size < childInfo.min)
               {
                  min = childInfo.min;
                  childInfo.size = min;
                  childInfoArray[i] = childInfoArray[--numChildren];
                  childInfoArray[numChildren] = childInfo;
                  totalPercent = totalPercent - childInfo.percent;
                  spaceToDistribute = spaceToDistribute - min;
                  done = false;
                  break;
               }
               if(size > childInfo.max)
               {
                  max = childInfo.max;
                  childInfo.size = max;
                  childInfoArray[i] = childInfoArray[--numChildren];
                  childInfoArray[numChildren] = childInfo;
                  totalPercent = totalPercent - childInfo.percent;
                  spaceToDistribute = spaceToDistribute - max;
                  done = false;
                  break;
               }
               childInfo.size = size;
               flexConsumed = flexConsumed + size;
            }
         }
         while(!done);
         
         return Math.max(0,Math.floor(spaceToDistribute - flexConsumed));
      }
      
      public static function flexChildHeightsProportionally(parent:Container, spaceForChildren:Number, w:Number) : Number
      {
         var childInfo:FlexChildInfo = null;
         var child:IUIComponent = null;
         var i:int = 0;
         var percentWidth:Number = NaN;
         var percentHeight:Number = NaN;
         var width:Number = NaN;
         var height:Number = NaN;
         var spaceToDistribute:Number = spaceForChildren;
         var totalPercentHeight:Number = 0;
         var childInfoArray:Array = [];
         var n:int = parent.numChildren;
         for(i = 0; i < n; i++)
         {
            child = IUIComponent(parent.getChildAt(i));
            percentWidth = child.percentWidth;
            percentHeight = child.percentHeight;
            if(!isNaN(percentWidth) && child.includeInLayout)
            {
               width = Math.max(child.minWidth,Math.min(child.maxWidth,percentWidth >= 100?Number(w):Number(w * percentWidth / 100)));
            }
            else
            {
               width = child.getExplicitOrMeasuredWidth();
            }
            if(!isNaN(percentHeight) && child.includeInLayout)
            {
               totalPercentHeight = totalPercentHeight + percentHeight;
               childInfo = new FlexChildInfo();
               childInfo.percent = percentHeight;
               childInfo.min = child.minHeight;
               childInfo.max = child.maxHeight;
               childInfo.width = width;
               childInfo.child = child;
               childInfoArray.push(childInfo);
            }
            else
            {
               height = child.getExplicitOrMeasuredHeight();
               if(child.scaleX == 1 && child.scaleY == 1)
               {
                  child.setActualSize(Math.floor(width),Math.floor(height));
               }
               else
               {
                  child.setActualSize(width,height);
               }
               if(child.includeInLayout)
               {
                  spaceToDistribute = spaceToDistribute - child.height;
               }
            }
         }
         if(totalPercentHeight)
         {
            spaceToDistribute = flexChildrenProportionally(spaceForChildren,spaceToDistribute,totalPercentHeight,childInfoArray);
            n = childInfoArray.length;
            for(i = 0; i < n; i++)
            {
               childInfo = childInfoArray[i];
               child = childInfo.child;
               if(child.scaleX == 1 && child.scaleY == 1)
               {
                  child.setActualSize(Math.floor(childInfo.width),Math.floor(childInfo.size));
               }
               else
               {
                  child.setActualSize(childInfo.width,childInfo.size);
               }
            }
            if(FlexVersion.compatibilityVersion >= FlexVersion.VERSION_3_0)
            {
               distributeExtraHeight(parent,spaceForChildren);
            }
         }
         return spaceToDistribute;
      }
   }
}

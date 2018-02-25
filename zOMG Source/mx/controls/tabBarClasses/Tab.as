package mx.controls.tabBarClasses
{
   import flash.display.DisplayObject;
   import flash.text.TextLineMetrics;
   import mx.controls.Button;
   import mx.core.IFlexDisplayObject;
   import mx.core.IProgrammaticSkin;
   import mx.core.IStateClient;
   import mx.core.mx_internal;
   import mx.styles.ISimpleStyleClient;
   
   use namespace mx_internal;
   
   public class Tab extends Button
   {
      
      mx_internal static const VERSION:String = "3.6.0.21751";
       
      
      private var focusSkin:IFlexDisplayObject;
      
      public function Tab()
      {
         super();
         focusEnabled = false;
      }
      
      override public function drawFocus(isFocused:Boolean) : void
      {
         var checkDefaultUsesStates:Boolean = false;
         var focusClass:Class = null;
         if(isFocused && !selected && !isEffectStarted)
         {
            if(!focusSkin)
            {
               checkDefaultUsesStates = false;
               focusClass = getStyle(overSkinName);
               if(!focusClass)
               {
                  focusClass = getStyle(skinName);
                  checkDefaultUsesStates = true;
               }
               if(focusClass)
               {
                  focusSkin = new focusClass();
                  DisplayObject(focusSkin).name = overSkinName;
                  if(focusSkin is ISimpleStyleClient)
                  {
                     ISimpleStyleClient(focusSkin).styleName = this;
                  }
                  addChild(DisplayObject(focusSkin));
                  if(checkDefaultUsesStates && !(focusSkin is IProgrammaticSkin) && focusSkin is IStateClient)
                  {
                     IStateClient(focusSkin).currentState = "over";
                  }
               }
            }
            invalidateDisplayList();
            validateNow();
         }
         else if(focusSkin)
         {
            removeChild(DisplayObject(focusSkin));
            focusSkin = null;
         }
      }
      
      override mx_internal function layoutContents(unscaledWidth:Number, unscaledHeight:Number, offset:Boolean) : void
      {
         super.layoutContents(unscaledWidth,unscaledHeight,offset);
         if(selected)
         {
            textField.y++;
            if(currentIcon)
            {
               currentIcon.y++;
            }
         }
         if(currentSkin)
         {
            setChildIndex(DisplayObject(currentSkin),numChildren - 1);
         }
         if(focusSkin && !selected)
         {
            focusSkin.setActualSize(unscaledWidth,unscaledHeight);
            setChildIndex(DisplayObject(focusSkin),numChildren - 1);
         }
         if(currentIcon)
         {
            setChildIndex(DisplayObject(currentIcon),numChildren - 1);
         }
         if(textField)
         {
            setChildIndex(DisplayObject(textField),numChildren - 1);
         }
      }
      
      override protected function updateDisplayList(unscaledWidth:Number, unscaledHeight:Number) : void
      {
         super.updateDisplayList(unscaledWidth,unscaledHeight);
         if(currentIcon)
         {
            currentIcon.scaleX = 1;
            currentIcon.scaleY = 1;
         }
         viewIcon();
      }
      
      override public function measureText(text:String) : TextLineMetrics
      {
         return textField.styleName == this?super.measureText(text):textField.getUITextFormat().measureText(text);
      }
      
      override mx_internal function viewIcon() : void
      {
         var scale:Number = NaN;
         super.viewIcon();
         if(currentIcon)
         {
            if(height != 0 && currentIcon.height > height - 4)
            {
               scale = (height - 4) / currentIcon.height;
               currentIcon.scaleX = scale;
               currentIcon.scaleY = scale;
               invalidateSize();
               if(height > 0)
               {
                  layoutContents(width,height,false);
               }
            }
         }
      }
   }
}

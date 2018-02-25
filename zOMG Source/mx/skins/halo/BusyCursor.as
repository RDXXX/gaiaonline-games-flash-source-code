package mx.skins.halo
{
   import flash.display.DisplayObject;
   import flash.display.Graphics;
   import flash.display.InteractiveObject;
   import flash.display.Shape;
   import flash.events.Event;
   import mx.core.FlexShape;
   import mx.core.FlexSprite;
   import mx.core.mx_internal;
   import mx.styles.CSSStyleDeclaration;
   import mx.styles.StyleManager;
   
   use namespace mx_internal;
   
   public class BusyCursor extends FlexSprite
   {
      
      mx_internal static const VERSION:String = "3.6.0.21751";
       
      
      private var hourHand:Shape;
      
      private var minuteHand:Shape;
      
      public function BusyCursor()
      {
         var g:Graphics = null;
         super();
         var cursorManagerStyleDeclaration:CSSStyleDeclaration = StyleManager.getStyleDeclaration("CursorManager");
         var cursorClass:Class = cursorManagerStyleDeclaration.getStyle("busyCursorBackground");
         var cursorHolder:DisplayObject = new cursorClass();
         if(cursorHolder is InteractiveObject)
         {
            InteractiveObject(cursorHolder).mouseEnabled = false;
         }
         addChild(cursorHolder);
         var xOff:Number = -0.5;
         var yOff:Number = -0.5;
         minuteHand = new FlexShape();
         minuteHand.name = "minuteHand";
         g = minuteHand.graphics;
         g.beginFill(0);
         g.moveTo(xOff,yOff);
         g.lineTo(1 + xOff,0 + yOff);
         g.lineTo(1 + xOff,5 + yOff);
         g.lineTo(0 + xOff,5 + yOff);
         g.lineTo(0 + xOff,0 + yOff);
         g.endFill();
         addChild(minuteHand);
         hourHand = new FlexShape();
         hourHand.name = "hourHand";
         g = hourHand.graphics;
         g.beginFill(0);
         g.moveTo(xOff,yOff);
         g.lineTo(4 + xOff,0 + yOff);
         g.lineTo(4 + xOff,1 + yOff);
         g.lineTo(0 + xOff,1 + yOff);
         g.lineTo(0 + xOff,0 + yOff);
         g.endFill();
         addChild(hourHand);
         addEventListener(Event.ADDED,handleAdded);
         addEventListener(Event.REMOVED,handleRemoved);
      }
      
      private function enterFrameHandler(event:Event) : void
      {
         minuteHand.rotation = minuteHand.rotation + 12;
         hourHand.rotation = hourHand.rotation + 1;
      }
      
      private function handleAdded(event:Event) : void
      {
         addEventListener(Event.ENTER_FRAME,enterFrameHandler);
      }
      
      private function handleRemoved(event:Event) : void
      {
         removeEventListener(Event.ENTER_FRAME,enterFrameHandler);
      }
   }
}

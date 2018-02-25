package mx.controls.scrollClasses
{
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import mx.controls.Button;
   import mx.core.mx_internal;
   import mx.events.ScrollEventDetail;
   
   use namespace mx_internal;
   
   public class ScrollThumb extends Button
   {
      
      mx_internal static const VERSION:String = "3.6.0.21751";
       
      
      private var lastY:Number;
      
      private var datamin:Number;
      
      private var ymax:Number;
      
      private var ymin:Number;
      
      private var datamax:Number;
      
      public function ScrollThumb()
      {
         super();
         explicitMinHeight = 10;
         stickyHighlighting = true;
      }
      
      private function stopDragThumb() : void
      {
         var scrollBar:ScrollBar = ScrollBar(parent);
         scrollBar.isScrolling = false;
         scrollBar.dispatchScrollEvent(scrollBar.oldPosition,ScrollEventDetail.THUMB_POSITION);
         scrollBar.oldPosition = NaN;
         systemManager.getSandboxRoot().removeEventListener(MouseEvent.MOUSE_MOVE,mouseMoveHandler,true);
      }
      
      override protected function mouseDownHandler(event:MouseEvent) : void
      {
         super.mouseDownHandler(event);
         var scrollBar:ScrollBar = ScrollBar(parent);
         scrollBar.oldPosition = scrollBar.scrollPosition;
         lastY = event.localY;
         systemManager.getSandboxRoot().addEventListener(MouseEvent.MOUSE_MOVE,mouseMoveHandler,true);
      }
      
      private function mouseMoveHandler(event:MouseEvent) : void
      {
         if(ymin == ymax)
         {
            return;
         }
         var pt:Point = new Point(event.stageX,event.stageY);
         pt = globalToLocal(pt);
         var scrollMove:Number = pt.y - lastY;
         scrollMove = scrollMove + y;
         if(scrollMove < ymin)
         {
            scrollMove = ymin;
         }
         else if(scrollMove > ymax)
         {
            scrollMove = ymax;
         }
         var scrollBar:ScrollBar = ScrollBar(parent);
         scrollBar.isScrolling = true;
         $y = scrollMove;
         var oldPosition:Number = scrollBar.scrollPosition;
         var pos:Number = Math.round((datamax - datamin) * (y - ymin) / (ymax - ymin)) + datamin;
         scrollBar.scrollPosition = pos;
         scrollBar.dispatchScrollEvent(oldPosition,ScrollEventDetail.THUMB_TRACK);
         event.updateAfterEvent();
      }
      
      override mx_internal function buttonReleased() : void
      {
         super.buttonReleased();
         stopDragThumb();
      }
      
      mx_internal function setRange(ymin:Number, ymax:Number, datamin:Number, datamax:Number) : void
      {
         this.ymin = ymin;
         this.ymax = ymax;
         this.datamin = datamin;
         this.datamax = datamax;
      }
   }
}

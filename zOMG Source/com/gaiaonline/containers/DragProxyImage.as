package com.gaiaonline.containers
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import mx.core.UIComponent;
   
   class DragProxyImage extends UIComponent
   {
       
      
      private var rawImage:Bitmap;
      
      function DragProxyImage()
      {
         super();
      }
      
      public function init(sourceObj:DisplayObject, e:MouseEvent, bOffset:Boolean = true) : void
      {
         var pt:Point = null;
         rawImage = new Bitmap();
         rawImage.bitmapData = new BitmapData(sourceObj.width,sourceObj.height,true,0);
         rawImage.bitmapData.draw(sourceObj);
         addChild(rawImage);
         rawImage.x = -rawImage.width / 2;
         rawImage.y = -rawImage.height / 2;
         if(bOffset)
         {
            pt = new Point(0,0);
            pt = sourceObj.localToGlobal(pt);
            pt = parent.globalToLocal(pt);
            x = pt.x + rawImage.width / 2 + stage.mouseX - e.stageX;
            y = pt.y + rawImage.height / 2 + stage.mouseY - e.stageY;
            alpha = 0.5;
         }
      }
      
      public function dragSource(sourceObj:DisplayObject, e:MouseEvent, bOffset:Boolean = true) : void
      {
         init(sourceObj,e,bOffset);
         startDrag();
      }
   }
}

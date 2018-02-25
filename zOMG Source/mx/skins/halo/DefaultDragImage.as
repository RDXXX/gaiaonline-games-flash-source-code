package mx.skins.halo
{
   import flash.display.Graphics;
   import mx.core.IFlexDisplayObject;
   import mx.core.SpriteAsset;
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public class DefaultDragImage extends SpriteAsset implements IFlexDisplayObject
   {
      
      mx_internal static const VERSION:String = "3.6.0.21751";
       
      
      public function DefaultDragImage()
      {
         draw(10,10);
         super();
      }
      
      override public function get measuredWidth() : Number
      {
         return 10;
      }
      
      override public function move(x:Number, y:Number) : void
      {
         this.x = x;
         this.y = y;
      }
      
      override public function get measuredHeight() : Number
      {
         return 10;
      }
      
      override public function setActualSize(newWidth:Number, newHeight:Number) : void
      {
         draw(newWidth,newHeight);
      }
      
      private function draw(w:Number, h:Number) : void
      {
         var g:Graphics = graphics;
         g.clear();
         g.beginFill(15658734);
         g.lineStyle(1,8433818);
         g.drawRect(0,0,w,h);
         g.endFill();
      }
   }
}

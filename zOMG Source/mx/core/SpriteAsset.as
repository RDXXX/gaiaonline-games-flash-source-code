package mx.core
{
   use namespace mx_internal;
   
   public class SpriteAsset extends FlexSprite implements IFlexAsset, IFlexDisplayObject, IBorder
   {
      
      mx_internal static const VERSION:String = "3.6.0.21751";
       
      
      private var _measuredHeight:Number;
      
      private var _measuredWidth:Number;
      
      public function SpriteAsset()
      {
         super();
         _measuredWidth = width;
         _measuredHeight = height;
      }
      
      public function get measuredWidth() : Number
      {
         return _measuredWidth;
      }
      
      public function get measuredHeight() : Number
      {
         return _measuredHeight;
      }
      
      public function setActualSize(newWidth:Number, newHeight:Number) : void
      {
         width = newWidth;
         height = newHeight;
      }
      
      public function move(x:Number, y:Number) : void
      {
         this.x = x;
         this.y = y;
      }
      
      public function get borderMetrics() : EdgeMetrics
      {
         if(scale9Grid == null)
         {
            return EdgeMetrics.EMPTY;
         }
         return new EdgeMetrics(scale9Grid.left,scale9Grid.top,Math.ceil(measuredWidth - scale9Grid.right),Math.ceil(measuredHeight - scale9Grid.bottom));
      }
   }
}

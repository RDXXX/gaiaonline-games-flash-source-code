package mx.skins.halo
{
   import flash.display.Graphics;
   import mx.core.mx_internal;
   import mx.skins.ProgrammaticSkin;
   
   use namespace mx_internal;
   
   public class ListDropIndicator extends ProgrammaticSkin
   {
      
      mx_internal static const VERSION:String = "3.6.0.21751";
       
      
      public var direction:String = "horizontal";
      
      public function ListDropIndicator()
      {
         super();
      }
      
      override protected function updateDisplayList(w:Number, h:Number) : void
      {
         super.updateDisplayList(w,h);
         var g:Graphics = graphics;
         g.clear();
         g.lineStyle(2,2831164);
         if(direction == "horizontal")
         {
            g.moveTo(0,0);
            g.lineTo(w,0);
         }
         else
         {
            g.moveTo(0,0);
            g.lineTo(0,h);
         }
      }
   }
}

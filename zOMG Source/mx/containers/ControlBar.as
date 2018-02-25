package mx.containers
{
   import mx.core.Container;
   import mx.core.ScrollPolicy;
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public class ControlBar extends Box
   {
      
      mx_internal static const VERSION:String = "3.6.0.21751";
       
      
      public function ControlBar()
      {
         super();
         direction = BoxDirection.HORIZONTAL;
      }
      
      override public function set verticalScrollPolicy(value:String) : void
      {
      }
      
      override public function set horizontalScrollPolicy(value:String) : void
      {
      }
      
      override protected function updateDisplayList(unscaledWidth:Number, unscaledHeight:Number) : void
      {
         super.updateDisplayList(unscaledWidth,unscaledHeight);
         if(contentPane)
         {
            contentPane.opaqueBackground = null;
         }
      }
      
      override public function set enabled(value:Boolean) : void
      {
         if(value != super.enabled)
         {
            super.enabled = value;
            alpha = !!value?Number(1):Number(0.4);
         }
      }
      
      override public function get horizontalScrollPolicy() : String
      {
         return ScrollPolicy.OFF;
      }
      
      override public function invalidateSize() : void
      {
         super.invalidateSize();
         if(parent)
         {
            Container(parent).invalidateViewMetricsAndPadding();
         }
      }
      
      override public function get verticalScrollPolicy() : String
      {
         return ScrollPolicy.OFF;
      }
      
      override public function set includeInLayout(value:Boolean) : void
      {
         var p:Container = null;
         if(includeInLayout != value)
         {
            super.includeInLayout = value;
            p = parent as Container;
            if(p)
            {
               p.invalidateViewMetricsAndPadding();
            }
         }
      }
   }
}

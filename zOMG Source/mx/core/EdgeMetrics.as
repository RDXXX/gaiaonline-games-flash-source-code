package mx.core
{
   use namespace mx_internal;
   
   public class EdgeMetrics
   {
      
      mx_internal static const VERSION:String = "3.6.0.21751";
      
      public static const EMPTY:EdgeMetrics = new EdgeMetrics(0,0,0,0);
       
      
      public var top:Number;
      
      public var left:Number;
      
      public var bottom:Number;
      
      public var right:Number;
      
      public function EdgeMetrics(left:Number = 0, top:Number = 0, right:Number = 0, bottom:Number = 0)
      {
         super();
         this.left = left;
         this.top = top;
         this.right = right;
         this.bottom = bottom;
      }
      
      public function clone() : EdgeMetrics
      {
         return new EdgeMetrics(left,top,right,bottom);
      }
   }
}

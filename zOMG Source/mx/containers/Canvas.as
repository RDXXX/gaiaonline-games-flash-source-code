package mx.containers
{
   import mx.containers.utilityClasses.CanvasLayout;
   import mx.containers.utilityClasses.ConstraintColumn;
   import mx.containers.utilityClasses.ConstraintRow;
   import mx.containers.utilityClasses.IConstraintLayout;
   import mx.core.Container;
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public class Canvas extends Container implements IConstraintLayout
   {
      
      mx_internal static const VERSION:String = "3.6.0.21751";
       
      
      private var _constraintColumns:Array;
      
      private var layoutObject:CanvasLayout;
      
      private var _constraintRows:Array;
      
      public function Canvas()
      {
         layoutObject = new CanvasLayout();
         _constraintColumns = [];
         _constraintRows = [];
         super();
         layoutObject.target = this;
      }
      
      public function get constraintColumns() : Array
      {
         return _constraintColumns;
      }
      
      override mx_internal function get usePadding() : Boolean
      {
         return false;
      }
      
      public function set constraintRows(value:Array) : void
      {
         var n:int = 0;
         var i:int = 0;
         if(value != _constraintRows)
         {
            n = value.length;
            for(i = 0; i < n; i++)
            {
               ConstraintRow(value[i]).container = this;
            }
            _constraintRows = value;
            invalidateSize();
            invalidateDisplayList();
         }
      }
      
      public function get constraintRows() : Array
      {
         return _constraintRows;
      }
      
      override protected function updateDisplayList(unscaledWidth:Number, unscaledHeight:Number) : void
      {
         super.updateDisplayList(unscaledWidth,unscaledHeight);
         layoutObject.updateDisplayList(unscaledWidth,unscaledHeight);
      }
      
      public function set constraintColumns(value:Array) : void
      {
         var n:int = 0;
         var i:int = 0;
         if(value != _constraintColumns)
         {
            n = value.length;
            for(i = 0; i < n; i++)
            {
               ConstraintColumn(value[i]).container = this;
            }
            _constraintColumns = value;
            invalidateSize();
            invalidateDisplayList();
         }
      }
      
      override protected function measure() : void
      {
         super.measure();
         layoutObject.measure();
      }
   }
}

package mx.core
{
   import flash.events.Event;
   import mx.containers.BoxDirection;
   import mx.containers.utilityClasses.BoxLayout;
   import mx.containers.utilityClasses.CanvasLayout;
   import mx.containers.utilityClasses.ConstraintColumn;
   import mx.containers.utilityClasses.ConstraintRow;
   import mx.containers.utilityClasses.IConstraintLayout;
   import mx.containers.utilityClasses.Layout;
   
   use namespace mx_internal;
   
   public class LayoutContainer extends Container implements IConstraintLayout
   {
      
      mx_internal static const VERSION:String = "3.6.0.21751";
      
      mx_internal static var useProgressiveLayout:Boolean = false;
       
      
      private var _constraintColumns:Array;
      
      protected var layoutObject:Layout;
      
      private var _layout:String = "vertical";
      
      private var processingCreationQueue:Boolean = false;
      
      protected var boxLayoutClass:Class;
      
      private var resizeHandlerAdded:Boolean = false;
      
      private var preloadObj:Object;
      
      private var creationQueue:Array;
      
      private var _constraintRows:Array;
      
      protected var canvasLayoutClass:Class;
      
      public function LayoutContainer()
      {
         layoutObject = new BoxLayout();
         canvasLayoutClass = CanvasLayout;
         boxLayoutClass = BoxLayout;
         creationQueue = [];
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
         return layout != ContainerLayout.ABSOLUTE;
      }
      
      override protected function layoutChrome(unscaledWidth:Number, unscaledHeight:Number) : void
      {
         super.layoutChrome(unscaledWidth,unscaledHeight);
         if(!doingLayout)
         {
            createBorder();
         }
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
      
      public function set layout(value:String) : void
      {
         if(_layout != value)
         {
            _layout = value;
            if(layoutObject)
            {
               layoutObject.target = null;
            }
            if(_layout == ContainerLayout.ABSOLUTE)
            {
               layoutObject = new canvasLayoutClass();
            }
            else
            {
               layoutObject = new boxLayoutClass();
               if(_layout == ContainerLayout.VERTICAL)
               {
                  BoxLayout(layoutObject).direction = BoxDirection.VERTICAL;
               }
               else
               {
                  BoxLayout(layoutObject).direction = BoxDirection.HORIZONTAL;
               }
            }
            if(layoutObject)
            {
               layoutObject.target = this;
            }
            invalidateSize();
            invalidateDisplayList();
            dispatchEvent(new Event("layoutChanged"));
         }
      }
      
      public function get constraintRows() : Array
      {
         return _constraintRows;
      }
      
      override protected function measure() : void
      {
         super.measure();
         layoutObject.measure();
      }
      
      override protected function updateDisplayList(unscaledWidth:Number, unscaledHeight:Number) : void
      {
         super.updateDisplayList(unscaledWidth,unscaledHeight);
         layoutObject.updateDisplayList(unscaledWidth,unscaledHeight);
         createBorder();
      }
      
      [Bindable("layoutChanged")]
      public function get layout() : String
      {
         return _layout;
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
   }
}

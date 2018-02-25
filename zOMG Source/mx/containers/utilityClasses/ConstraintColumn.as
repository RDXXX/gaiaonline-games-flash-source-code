package mx.containers.utilityClasses
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import mx.core.IInvalidating;
   import mx.core.IMXMLObject;
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public class ConstraintColumn extends EventDispatcher implements IMXMLObject
   {
      
      mx_internal static const VERSION:String = "3.6.0.21751";
       
      
      private var _container:IInvalidating;
      
      private var _explicitMinWidth:Number;
      
      mx_internal var _width:Number;
      
      mx_internal var contentSize:Boolean = false;
      
      private var _percentWidth:Number;
      
      private var _explicitWidth:Number;
      
      private var _explicitMaxWidth:Number;
      
      private var _x:Number;
      
      private var _id:String;
      
      public function ConstraintColumn()
      {
         super();
      }
      
      public function get container() : IInvalidating
      {
         return _container;
      }
      
      [Bindable("widthChanged")]
      public function get width() : Number
      {
         return _width;
      }
      
      [Bindable("percentWidthChanged")]
      public function get percentWidth() : Number
      {
         return _percentWidth;
      }
      
      public function set container(value:IInvalidating) : void
      {
         _container = value;
      }
      
      public function set maxWidth(value:Number) : void
      {
         if(_explicitMaxWidth != value)
         {
            _explicitMaxWidth = value;
            if(container)
            {
               container.invalidateSize();
               container.invalidateDisplayList();
            }
            dispatchEvent(new Event("maxWidthChanged"));
         }
      }
      
      public function set width(value:Number) : void
      {
         if(explicitWidth != value)
         {
            explicitWidth = value;
            if(_width != value)
            {
               _width = value;
               if(container)
               {
                  container.invalidateSize();
                  container.invalidateDisplayList();
               }
               dispatchEvent(new Event("widthChanged"));
            }
         }
      }
      
      [Bindable("maxWidthChanged")]
      public function get maxWidth() : Number
      {
         return _explicitMaxWidth;
      }
      
      [Bindable("minWidthChanged")]
      public function get minWidth() : Number
      {
         return _explicitMinWidth;
      }
      
      public function get id() : String
      {
         return _id;
      }
      
      public function initialized(document:Object, id:String) : void
      {
         this.id = id;
         if(!this.width && !this.percentWidth)
         {
            contentSize = true;
         }
      }
      
      public function set explicitWidth(value:Number) : void
      {
         if(_explicitWidth == value)
         {
            return;
         }
         if(!isNaN(value))
         {
            _percentWidth = NaN;
         }
         _explicitWidth = value;
         if(container)
         {
            container.invalidateSize();
            container.invalidateDisplayList();
         }
         dispatchEvent(new Event("explicitWidthChanged"));
      }
      
      public function setActualWidth(w:Number) : void
      {
         if(_width != w)
         {
            _width = w;
            dispatchEvent(new Event("widthChanged"));
         }
      }
      
      public function set minWidth(value:Number) : void
      {
         if(_explicitMinWidth != value)
         {
            _explicitMinWidth = value;
            if(container)
            {
               container.invalidateSize();
               container.invalidateDisplayList();
            }
            dispatchEvent(new Event("minWidthChanged"));
         }
      }
      
      public function set percentWidth(value:Number) : void
      {
         if(_percentWidth == value)
         {
            return;
         }
         if(!isNaN(value))
         {
            _explicitWidth = NaN;
         }
         _percentWidth = value;
         if(container)
         {
            container.invalidateSize();
            container.invalidateDisplayList();
         }
         dispatchEvent(new Event("percentWidthChanged"));
      }
      
      public function set x(value:Number) : void
      {
         if(value != _x)
         {
            _x = value;
            dispatchEvent(new Event("xChanged"));
         }
      }
      
      [Bindable("explicitWidthChanged")]
      public function get explicitWidth() : Number
      {
         return _explicitWidth;
      }
      
      public function set id(value:String) : void
      {
         _id = value;
      }
      
      [Bindable("xChanged")]
      public function get x() : Number
      {
         return _x;
      }
   }
}

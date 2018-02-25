package mx.controls.listClasses
{
   import mx.core.IUIComponent;
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public class BaseListData
   {
      
      mx_internal static const VERSION:String = "3.6.0.21751";
       
      
      private var _uid:String;
      
      public var owner:IUIComponent;
      
      [Bindable("dataChange")]
      public var label:String;
      
      public var rowIndex:int;
      
      public var columnIndex:int;
      
      public function BaseListData(label:String, uid:String, owner:IUIComponent, rowIndex:int = 0, columnIndex:int = 0)
      {
         super();
         this.label = label;
         this.uid = uid;
         this.owner = owner;
         this.rowIndex = rowIndex;
         this.columnIndex = columnIndex;
      }
      
      public function set uid(value:String) : void
      {
         _uid = value;
      }
      
      public function get uid() : String
      {
         return _uid;
      }
   }
}

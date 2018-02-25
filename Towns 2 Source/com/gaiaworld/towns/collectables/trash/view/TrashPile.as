package com.gaiaworld.towns.collectables.trash.view
{
   public class TrashPile
   {
       
      
      private var _dataProvider:Array;
      
      public function TrashPile()
      {
         super();
      }
      
      public function get dataProvider() : Array
      {
         return this._dataProvider;
      }
      
      public function set dataProvider(param1:Array) : void
      {
         var _loc4_:Trash = null;
         this._dataProvider = param1;
         var _loc2_:Number = this._dataProvider.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = new Trash();
            _loc4_.name = "btnTrash" + _loc3_;
            _loc4_.dataProvider = this._dataProvider[_loc3_];
            _loc3_++;
         }
      }
   }
}

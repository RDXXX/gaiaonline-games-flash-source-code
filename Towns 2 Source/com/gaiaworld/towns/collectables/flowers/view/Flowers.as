package com.gaiaworld.towns.collectables.flowers.view
{
   public class Flowers
   {
       
      
      private var _dataProvider:Array;
      
      public function Flowers()
      {
         super();
      }
      
      public function get dataProvider() : Array
      {
         return this._dataProvider;
      }
      
      public function set dataProvider(param1:Array) : void
      {
         var _loc4_:Flower = null;
         this._dataProvider = param1;
         var _loc2_:Number = this._dataProvider.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = new Flower();
            _loc4_.dataProvider = this._dataProvider[_loc3_];
            _loc3_++;
         }
      }
   }
}

package com.gaiaworld.towns.collectables
{
   import com.gaiaworld.global.util.StringFunctions;
   import com.gaiaworld.towns.collectables.flowers.services.FlowerData;
   import com.gaiaworld.towns.collectables.flowers.view.Flowers;
   import com.gaiaworld.towns.collectables.flowers.vo.FlowerVo;
   import com.gaiaworld.towns.collectables.trash.view.TrashPile;
   import flash.events.Event;
   
   public class FlowersTrash
   {
       
      
      private var flowers:Flowers;
      
      private var trashPile:TrashPile;
      
      private var flowerData:FlowerData;
      
      public function FlowersTrash()
      {
         this.flowers = new Flowers();
         this.trashPile = new TrashPile();
         this.flowerData = new FlowerData();
         super();
         this.flowerData.addEventListener(FlowerData.FLOWER_DATA_READY,this.gotData);
      }
      
      private function gotData(param1:Event) : void
      {
         var _loc6_:FlowerVo = null;
         var _loc7_:int = 0;
         var _loc8_:String = null;
         var _loc2_:Array = new Array();
         var _loc3_:Array = new Array();
         var _loc4_:Number = this.flowerData.dataArray.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            _loc6_ = this.flowerData.dataArray[_loc5_];
            _loc7_ = 0;
            while(_loc7_ < 20)
            {
               _loc6_.serial = StringFunctions.findReplace(String.fromCharCode(_loc7_),_loc6_.serial,"");
               _loc7_++;
            }
            _loc8_ = _loc6_.img.charAt(0);
            if(_loc8_ == "t")
            {
               _loc3_.push(_loc6_);
            }
            else
            {
               _loc2_.push(_loc6_);
            }
            _loc5_++;
         }
         this.flowers.dataProvider = _loc2_;
         this.trashPile.dataProvider = _loc3_;
      }
      
      public function init() : *
      {
         this.flowerData.getFlowers();
      }
   }
}

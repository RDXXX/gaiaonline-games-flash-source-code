package com.gaiaworld.towns.collectables.flowers.services
{
   import com.gaiaonline.gsi.GSICompleteEvent;
   import com.gaiaonline.gsi.GSIGateway;
   import com.gaiaworld.global.constants.GsiConstants;
   import com.gaiaworld.global.model.GlobalModel;
   import com.gaiaworld.room.model.RoomModel;
   import com.gaiaworld.towns.collectables.flowers.vo.FlowerVo;
   import com.gaiaworld.towns.hood.model.HoodModel;
   import com.gaiaworld.user.model.UserModel;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class FlowerData extends EventDispatcher
   {
      
      public static const FLOWER_DATA_READY:String = "flowerDataReady";
       
      
      private var gsi:GSIGateway;
      
      private var globalModel:GlobalModel;
      
      public var dataArray:Array;
      
      private var roomModel:RoomModel;
      
      private var userModel:UserModel;
      
      private var hoodModel:HoodModel;
      
      public function FlowerData()
      {
         this.globalModel = GlobalModel.getInstance();
         this.dataArray = new Array();
         this.roomModel = RoomModel.getInstance();
         this.userModel = UserModel.getInstance();
         this.hoodModel = HoodModel.getInstance();
         super();
         this.gsi = new GSIGateway(this.globalModel.gsiSubdomain);
      }
      
      public function getFlowers() : *
      {
         this.gsi.addEventListener(GSICompleteEvent.COMPLETE,this.flowersGot);
         this.gsi.queue(GsiConstants.GET_FLOWERS_TRASH,this.hoodModel.currentCommunity,this.hoodModel.currentHoodId);
         this.gsi.send();
      }
      
      private function flowersGot(param1:GSICompleteEvent) : *
      {
         var _loc4_:* = undefined;
         var _loc5_:FlowerVo = null;
         this.gsi.removeEventListener(GSICompleteEvent.COMPLETE,this.flowersGot);
         var _loc2_:Number = param1.methods[0].data.length;
         this.dataArray = [];
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.methods[0].data[_loc3_];
            _loc5_ = new FlowerVo(_loc4_[0],_loc4_[1],_loc4_[2],_loc4_[3]);
            this.dataArray.push(_loc5_);
            _loc3_++;
         }
         this.dispatchEvent(new Event(FLOWER_DATA_READY,true));
      }
   }
}

package com.gaiaworld.user.services
{
   import com.gaiaonline.gsi.GSICompleteEvent;
   import com.gaiaonline.gsi.GSIGateway;
   import com.gaiaonline.serializers.JSONSerializer;
   import com.gaiaworld.global.constants.GsiConstants;
   import com.gaiaworld.global.model.GlobalModel;
   import com.gaiaworld.user.controller.UserController;
   import com.gaiaworld.user.vo.PalTrackVo;
   
   public class TrackerData
   {
       
      
      private var gateway:GSIGateway;
      
      private var globalModel:GlobalModel;
      
      public function TrackerData()
      {
         this.globalModel = GlobalModel.getInstance();
         super();
         this.gateway = new GSIGateway("www");
         this.gateway.serializerClass = JSONSerializer;
      }
      
      public function getAllOnline() : *
      {
         this.gateway.addEventListener(GSICompleteEvent.COMPLETE,this.gotAll);
         this.gateway.queue(GsiConstants.GET_ONLINE_FRIENDS,"gps","friends");
         this.gateway.send();
      }
      
      private function gotAll(param1:GSICompleteEvent) : void
      {
         var _loc3_:* = undefined;
         var _loc4_:UserController = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:PalTrackVo = null;
         var _loc2_:Vector.<PalTrackVo> = new Vector.<PalTrackVo>();
         this.gateway.removeEventListener(GSICompleteEvent.COMPLETE,this.gotAll);
         for(_loc3_ in param1.methods[0].data)
         {
            if(_loc3_ == "0")
            {
               return;
            }
            if(_loc3_ != "num_friends")
            {
               _loc5_ = Number(param1.methods[0].data[_loc3_].room_id);
               _loc6_ = Number(param1.methods[0].data[_loc3_].port);
               _loc7_ = param1.methods[0].data[_loc3_].ip;
               _loc8_ = param1.methods[0].data[_loc3_].room_name;
               _loc9_ = new PalTrackVo(Number(_loc3_),_loc7_,_loc6_,_loc5_,_loc8_);
               _loc2_.push(_loc9_);
            }
            _loc4_ = new UserController();
            _loc4_.setOnlinePals(_loc2_);
         }
      }
   }
}

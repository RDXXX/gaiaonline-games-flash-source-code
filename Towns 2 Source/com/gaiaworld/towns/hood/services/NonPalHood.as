package com.gaiaworld.towns.hood.services
{
   import com.gaiaonline.gsi.GSICompleteEvent;
   import com.gaiaonline.gsi.GSIGateway;
   import com.gaiaonline.serializers.JSONSerializer;
   import com.gaiaworld.global.constants.GsiConstants;
   import com.gaiaworld.global.model.GlobalModel;
   import com.gaiaworld.global.util.DebugTool;
   import com.gaiaworld.towns.hood.vo.HomeVo;
   import com.gaiaworld.user.services.NonPalDataLoader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class NonPalHood extends EventDispatcher
   {
      
      public static const NON_PAL_HOOD_DATA_DONE:String = "nphdd";
       
      
      private var gsi:GSIGateway;
      
      private var globalModel:GlobalModel;
      
      public var homeVo:HomeVo;
      
      private var nonPalDataLoader:NonPalDataLoader;
      
      private var userID:Number;
      
      public function NonPalHood()
      {
         this.globalModel = GlobalModel.getInstance();
         this.nonPalDataLoader = new NonPalDataLoader();
         super();
         this.gsi = new GSIGateway(this.globalModel.gsiSubdomain);
         this.gsi.serializerClass = JSONSerializer;
      }
      
      public function search(param1:String) : *
      {
         this.gsi.addEventListener(GSICompleteEvent.COMPLETE,this.searchComplete);
         this.gsi.invoke(121,param1);
      }
      
      private function searchComplete(param1:GSICompleteEvent) : void
      {
         this.gsi.removeEventListener(GSICompleteEvent.COMPLETE,this.searchComplete);
         var _loc2_:Number = Number(param1.methods[0].data);
         if(_loc2_ != 0)
         {
            this.getHood(_loc2_);
         }
      }
      
      public function getHood(param1:Number) : *
      {
         this.userID = param1;
         this.gsi.addEventListener(GSICompleteEvent.COMPLETE,this.hoodGot);
         this.gsi.invoke(GsiConstants.GET_HOOD_LOC,"user",param1);
      }
      
      private function hoodGot(param1:GSICompleteEvent) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         this.gsi.removeEventListener(GSICompleteEvent.COMPLETE,this.hoodGot);
         var _loc2_:Object = param1.methods[0].data[this.userID];
         DebugTool.pr(param1.methods[0].data);
         if(_loc2_ != null)
         {
            _loc3_ = Number(_loc2_.community);
            _loc4_ = Number(_loc2_.neighborhood);
            _loc5_ = Number(_loc2_.plot);
            _loc6_ = Number(_loc2_.style);
            _loc7_ = Number(_loc2_.style);
            this.homeVo = new HomeVo(_loc3_,_loc5_,_loc6_,_loc7_,this.userID,_loc4_);
            this.nonPalDataLoader.addEventListener(NonPalDataLoader.NON_PALS_DONE,this.gotUserInfo);
            this.nonPalDataLoader.getUserInfo(this.userID);
         }
      }
      
      private function gotUserInfo(param1:Event) : void
      {
         this.nonPalDataLoader.removeEventListener(NonPalDataLoader.NON_PALS_DONE,this.gotUserInfo);
         this.homeVo.palVo = this.nonPalDataLoader.palVo;
         this.dispatchEvent(new Event(NON_PAL_HOOD_DATA_DONE,true));
      }
   }
}

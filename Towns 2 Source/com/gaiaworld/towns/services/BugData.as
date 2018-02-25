package com.gaiaworld.towns.services
{
   import com.gaiaonline.gsi.GSICompleteEvent;
   import com.gaiaonline.gsi.GSIGateway;
   import com.gaiaworld.global.constants.GsiConstants;
   import com.gaiaworld.global.model.GlobalModel;
   import com.gaiaworld.towns.collectables.bugs.vo.BugVo;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class BugData extends EventDispatcher
   {
      
      public static const BUG_DATA_READY:String = "bugDataReady";
       
      
      private var gsi:GSIGateway;
      
      public var dataArray:Array;
      
      private var globalModel:GlobalModel;
      
      public function BugData()
      {
         this.dataArray = new Array();
         this.globalModel = GlobalModel.getInstance();
         super();
         this.gsi = new GSIGateway(this.globalModel.gsiSubdomain);
      }
      
      public function getBugData() : *
      {
         this.gsi.addEventListener(GSICompleteEvent.COMPLETE,this.bugDataReady);
         this.gsi.queue(GsiConstants.GET_BUGS);
         this.gsi.send();
      }
      
      private function bugDataReady(param1:GSICompleteEvent) : *
      {
         var _loc4_:* = undefined;
         var _loc5_:BugVo = null;
         this.gsi.removeEventListener(GSICompleteEvent.COMPLETE,this.bugDataReady);
         var _loc2_:Number = param1.methods[0].data.length;
         this.dataArray = [];
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.methods[0].data[_loc3_];
            _loc5_ = new BugVo(_loc4_[0],_loc4_[1],_loc4_[2],_loc4_[3],_loc4_[4],_loc4_[5],_loc4_[6]);
            this.dataArray.push(_loc5_);
            _loc3_++;
         }
         this.dispatchEvent(new Event(BUG_DATA_READY,true));
      }
   }
}

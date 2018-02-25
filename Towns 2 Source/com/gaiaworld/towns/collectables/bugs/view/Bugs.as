package com.gaiaworld.towns.collectables.bugs.view
{
   import com.gaiaworld.global.constants.GlobalConstants;
   import com.gaiaworld.gobjects.controller.ObjectController;
   import com.gaiaworld.room.interfaces.ISurfaceObject;
   import com.gaiaworld.towns.collectables.bugs.interfaces.IBug;
   import com.gaiaworld.towns.collectables.bugs.model.CollectableModel;
   import com.gaiaworld.towns.collectables.bugs.vo.BugVo;
   import com.gaiaworld.towns.services.BugData;
   import flash.events.Event;
   
   public class Bugs
   {
       
      
      private var objectController:ObjectController;
      
      private var bugData:BugData;
      
      private var colModel:CollectableModel;
      
      public function Bugs()
      {
         this.objectController = new ObjectController();
         this.bugData = new BugData();
         this.colModel = CollectableModel.getInstance();
         super();
         this.bugData.addEventListener(BugData.BUG_DATA_READY,this.gotBugList);
         this.colModel.addEventListener(GlobalConstants.TEST_BUGS,this.testBugs);
      }
      
      public function destroy() : *
      {
         this.bugData.removeEventListener(BugData.BUG_DATA_READY,this.gotBugList);
         this.colModel.removeEventListener(GlobalConstants.TEST_BUGS,this.testBugs);
      }
      
      public function init() : *
      {
         this.bugData.getBugData();
      }
      
      private function gotBugList(param1:Event) : *
      {
         var _loc4_:BugVo = null;
         var _loc5_:IBug = null;
         var _loc2_:Number = this.bugData.dataArray.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = this.bugData.dataArray[_loc3_];
            switch(_loc4_.type)
            {
               case "fly":
                  _loc5_ = new FlyingBug();
                  break;
               case "hop":
                  _loc5_ = new HoppingBug();
                  break;
               case "ground":
                  _loc5_ = new CrawlingBug();
            }
            _loc5_.dataProvider = _loc4_;
            this.objectController.addItem(_loc5_ as ISurfaceObject,false);
            _loc3_++;
         }
      }
      
      private function testBugs(param1:Event) : *
      {
         var _loc3_:FlyingBug = null;
         var _loc4_:CrawlingBug = null;
         var _loc5_:HoppingBug = null;
         var _loc2_:int = 0;
         while(_loc2_ < 10)
         {
            _loc3_ = new FlyingBug();
            _loc3_.dataProvider = new BugVo("-1","fly_1_2");
            this.objectController.addItem(_loc3_,false);
            _loc4_ = new CrawlingBug();
            _loc3_.dataProvider = new BugVo("-1","beetle_1_3");
            this.objectController.addItem(_loc4_,false);
            _loc5_ = new HoppingBug();
            _loc5_.dataProvider = new BugVo("-1","hopper_1_1");
            this.objectController.addItem(_loc5_,false);
            _loc2_++;
         }
      }
   }
}

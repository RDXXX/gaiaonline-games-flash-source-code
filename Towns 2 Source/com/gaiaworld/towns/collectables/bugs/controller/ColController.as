package com.gaiaworld.towns.collectables.bugs.controller
{
   import com.gaiaworld.towns.collectables.bugs.model.CollectableModel;
   import com.gaiaworld.towns.collectables.bugs.vo.CollectedVo;
   import flash.geom.Point;
   
   public class ColController
   {
       
      
      private var colModel:CollectableModel;
      
      public function ColController()
      {
         this.colModel = CollectableModel.getInstance();
         super();
      }
      
      public function addTrash(param1:Point) : *
      {
         this.colModel.addTrashSpot(param1);
      }
      
      public function addFlower(param1:Point) : *
      {
         this.colModel.addFlowerSpot(param1);
      }
      
      public function addBug(param1:Point) : *
      {
         this.colModel.addBugSpot(param1);
      }
      
      public function shuffle() : *
      {
         this.colModel.shuffle();
      }
      
      public function clearAll() : void
      {
         this.colModel.clearAll();
      }
      
      public function addCollected(param1:CollectedVo) : *
      {
         this.colModel.addCollected(param1);
      }
      
      public function setPause(param1:Boolean) : *
      {
         this.colModel.paused = param1;
      }
      
      public function testBugs() : *
      {
         this.colModel.testBugs();
      }
   }
}

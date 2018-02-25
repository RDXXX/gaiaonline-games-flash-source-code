package com.gaiaworld.towns.collectables.bugs.model
{
   import com.gaiaworld.global.constants.GlobalConstants;
   import com.gaiaworld.towns.collectables.bugs.vo.CollectedVo;
   import com.gaiaworld.towns.collectables.constants.MarkerConstants;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   
   public class CollectableModel extends EventDispatcher
   {
      
      private static var instance:CollectableModel;
       
      
      private var flowerSpots:Vector.<Point>;
      
      private var trashSpots:Vector.<Point>;
      
      private var bugSpots:Vector.<Point>;
      
      public var collected:Vector.<CollectedVo>;
      
      private var fc:Number = -1;
      
      private var tc:Number = -1;
      
      private var bc:Number = -1;
      
      public var paused:Boolean = false;
      
      public function CollectableModel()
      {
         this.flowerSpots = new Vector.<Point>();
         this.trashSpots = new Vector.<Point>();
         this.bugSpots = new Vector.<Point>();
         this.collected = new Vector.<CollectedVo>();
         super();
      }
      
      public static function getInstance() : CollectableModel
      {
         if(instance == null)
         {
            instance = new CollectableModel();
         }
         return instance;
      }
      
      public function clearAll() : *
      {
         this.flowerSpots = new Vector.<Point>();
         this.trashSpots = new Vector.<Point>();
         this.bugSpots = new Vector.<Point>();
      }
      
      public function addFlowerSpot(param1:Point) : *
      {
         this.flowerSpots.push(param1);
      }
      
      public function addTrashSpot(param1:Point) : *
      {
         this.trashSpots.push(param1);
      }
      
      public function addBugSpot(param1:Point) : *
      {
         this.bugSpots.push(param1);
      }
      
      public function getFlowerSpot() : Point
      {
         this.fc++;
         if(this.fc > this.flowerSpots.length - 1)
         {
            this.fc = 0;
         }
         if(this.flowerSpots.length == 0)
         {
            return new Point(0,0);
         }
         return this.flowerSpots[this.fc];
      }
      
      public function getBugSpot() : Point
      {
         this.bc++;
         if(this.bc > this.bugSpots.length - 1)
         {
            this.bc = 0;
         }
         if(this.bugSpots.length == 0)
         {
            return new Point(0,0);
         }
         return this.bugSpots[this.bc];
      }
      
      public function getTrashSpot() : Point
      {
         this.tc++;
         if(this.tc > this.trashSpots.length - 1)
         {
            this.tc = 0;
         }
         if(this.trashSpots.length == 0)
         {
            return new Point(0,0);
         }
         return this.trashSpots[this.tc];
      }
      
      public function shuffle() : *
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Point = null;
         var _loc1_:Number = this.bugSpots.length;
         var _loc5_:int = 0;
         while(_loc5_ < 30)
         {
            _loc2_ = int(Math.random() * _loc1_);
            _loc3_ = int(Math.random() * _loc1_);
            _loc4_ = this.bugSpots[_loc2_];
            this.bugSpots[_loc2_] = this.bugSpots[_loc3_];
            this.bugSpots[_loc3_] = _loc4_;
            _loc5_++;
         }
         var _loc6_:Number = this.trashSpots.length;
         var _loc7_:int = 0;
         while(_loc7_ < 30)
         {
            _loc2_ = int(Math.random() * _loc6_);
            _loc3_ = int(Math.random() * _loc6_);
            _loc4_ = this.trashSpots[_loc2_];
            this.trashSpots[_loc2_] = this.trashSpots[_loc3_];
            this.trashSpots[_loc3_] = _loc4_;
            _loc7_++;
         }
         var _loc8_:Number = this.flowerSpots.length;
         var _loc9_:int = 0;
         while(_loc9_ < 30)
         {
            _loc2_ = int(Math.random() * _loc8_);
            _loc3_ = int(Math.random() * _loc8_);
            _loc4_ = this.flowerSpots[_loc2_];
            this.flowerSpots[_loc2_] = this.flowerSpots[_loc3_];
            this.flowerSpots[_loc3_] = _loc4_;
            _loc9_++;
         }
      }
      
      public function addCollected(param1:CollectedVo) : void
      {
         if(this.upCount(param1) == false)
         {
            this.collected.push(param1);
         }
         this.dispatchEvent(new Event(MarkerConstants.COLLECTION_UPDATED,true));
      }
      
      private function upCount(param1:CollectedVo) : Boolean
      {
         var _loc2_:Number = this.collected.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            if(this.collected[_loc3_].img == param1.img)
            {
               this.collected[_loc3_].q++;
               return true;
            }
            _loc3_++;
         }
         return false;
      }
      
      public function testBugs() : *
      {
         this.dispatchEvent(new Event(GlobalConstants.TEST_BUGS,true));
      }
   }
}

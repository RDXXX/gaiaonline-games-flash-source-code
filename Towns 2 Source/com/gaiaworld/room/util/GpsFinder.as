package com.gaiaworld.room.util
{
   import com.gaiaworld.room.constants.MapConstants;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   
   public class GpsFinder extends EventDispatcher
   {
       
      
      public var gridArray:Array;
      
      private var fromPt:Point;
      
      private var toPt:Point;
      
      private var targetX:Number;
      
      private var targetY:Number;
      
      private var currentX:Number;
      
      private var currentY:Number;
      
      private var dirArray:Array;
      
      private var crumbs:Array;
      
      public function GpsFinder()
      {
         this.fromPt = new Point();
         this.toPt = new Point();
         this.dirArray = ["arrived","go north","go east","go south","go west"];
         this.crumbs = new Array();
         super();
      }
      
      public function reset() : *
      {
         this.crumbs = new Array();
      }
      
      public function find(param1:String, param2:String) : *
      {
         this.fromPt = this.findPlace(param1);
         this.toPt = this.findPlace(param2);
         this.targetX = this.toPt.x;
         this.targetY = this.toPt.y;
         this.currentX = this.fromPt.x;
         this.currentY = this.fromPt.y;
         this.nextStep();
         return this.crumbs;
      }
      
      private function findPlace(param1:String) : Point
      {
         var _loc3_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < 20)
         {
            _loc3_ = 0;
            while(_loc3_ < 20)
            {
               if(this.gridArray[_loc2_][_loc3_] == param1)
               {
                  return new Point(_loc2_,_loc3_);
               }
               _loc3_++;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function nextStep() : *
      {
         var _loc1_:Number = 0;
         var _loc2_:Number = Math.abs(this.targetX - this.currentX);
         var _loc3_:Number = Math.abs(this.targetY - this.currentY);
         var _loc4_:String = this.gridArray[this.currentX - 1][this.currentY];
         var _loc5_:String = this.gridArray[this.currentX][this.currentY - 1];
         var _loc6_:String = this.gridArray[this.currentX][this.currentY + 1];
         var _loc7_:String = this.gridArray[this.currentX + 1][this.currentY];
         if(this.currentX < this.targetX && _loc2_ > _loc3_ && _loc7_ != "mt")
         {
            _loc1_ = 2;
         }
         if(this.currentX > this.targetX && _loc2_ > _loc3_ && _loc4_ != "mt")
         {
            _loc1_ = 4;
         }
         if(_loc1_ == 0)
         {
            if(this.currentY < this.targetY && _loc6_ != "mt")
            {
               _loc1_ = 3;
            }
            if(this.currentY > this.targetY && _loc5_ != "mt")
            {
               _loc1_ = 1;
            }
            if(_loc1_ == 0)
            {
               if(this.currentX < this.targetX && _loc7_ != "mt")
               {
                  _loc1_ = 2;
               }
               if(this.currentX > this.targetX && _loc4_ != "mt")
               {
                  _loc1_ = 4;
               }
            }
         }
         switch(_loc1_)
         {
            case 1:
               this.currentY--;
               break;
            case 2:
               this.currentX++;
               break;
            case 3:
               this.currentY++;
               break;
            case 4:
               this.currentX--;
         }
         var _loc8_:String = this.gridArray[this.currentX][this.currentY];
         if(_loc8_ != MapConstants.BUFFER_ROOM)
         {
            this.crumbs.push(_loc8_);
         }
         if(this.currentX != this.targetX || this.currentY != this.targetY)
         {
            this.nextStep();
         }
      }
   }
}

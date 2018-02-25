package com.gaiaworld.room.pathFinding.algorithms
{
   public class IndexedPriorityQ
   {
       
      
      private var keys:Vector.<Number>;
      
      private var data:Vector.<int>;
      
      public function IndexedPriorityQ(param1:Vector.<Number>)
      {
         super();
         this.keys = param1;
         this.data = new Vector.<int>();
      }
      
      public function insert(param1:int) : void
      {
         this.data[this.data.length] = param1;
         this.reorderUp();
      }
      
      public function pop() : int
      {
         var _loc1_:int = this.data[0];
         this.data[0] = this.data[this.data.length - 1];
         this.data.pop();
         this.reorderDown();
         return _loc1_;
      }
      
      public function reorderUp() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = this.data.length - 1;
         while(_loc1_ > 0)
         {
            if(this.keys[this.data[_loc1_]] < this.keys[this.data[_loc1_ - 1]])
            {
               _loc2_ = this.data[_loc1_];
               this.data[_loc1_] = this.data[_loc1_ - 1];
               this.data[_loc1_ - 1] = _loc2_;
               _loc1_--;
               continue;
            }
            return;
         }
      }
      
      public function reorderDown() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.data.length - 1)
         {
            if(this.keys[this.data[_loc1_]] > this.keys[this.data[_loc1_ + 1]])
            {
               _loc2_ = this.data[_loc1_];
               this.data[_loc1_] = this.data[_loc1_ + 1];
               this.data[_loc1_ + 1] = _loc2_;
               _loc1_++;
               continue;
            }
            return;
         }
      }
      
      public function isEmpty() : Boolean
      {
         return this.data.length == 0;
      }
   }
}

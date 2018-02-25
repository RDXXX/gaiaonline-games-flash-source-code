package com.gaiaworld.room.pathFinding.algorithms
{
   import com.gaiaworld.room.pathFinding.Edge;
   import com.gaiaworld.room.pathFinding.Graph;
   import flash.geom.Vector3D;
   
   public class Astar
   {
       
      
      private var graph:Graph;
      
      private var spt:Vector.<Edge>;
      
      private var gCostVec:Vector.<Number>;
      
      private var fCostVec:Vector.<Number>;
      
      private var sf:Vector.<Edge>;
      
      private var source:int;
      
      private var target:int;
      
      public var totalCost:Number = 0;
      
      public function Astar(param1:Graph, param2:int, param3:int)
      {
         super();
         this.graph = param1;
         this.source = param2;
         this.target = param3;
         this.spt = new Vector.<Edge>(this.graph.numNodes());
         this.gCostVec = new Vector.<Number>(this.graph.numNodes());
         this.fCostVec = new Vector.<Number>(this.graph.numNodes());
         this.sf = new Vector.<Edge>(this.graph.numNodes());
         this.search();
      }
      
      private function search() : void
      {
         var _loc2_:int = 0;
         var _loc3_:Array = null;
         var _loc4_:Edge = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:int = 0;
         var _loc1_:IndexedPriorityQ = new IndexedPriorityQ(this.fCostVec);
         _loc1_.insert(this.source);
         while(!_loc1_.isEmpty())
         {
            _loc2_ = _loc1_.pop();
            this.spt[_loc2_] = this.sf[_loc2_];
            if(this.spt[_loc2_])
            {
               this.spt[_loc2_].drawEdge(this.graph.getNode(this.spt[_loc2_].getFrom()).getPos(),this.graph.getNode(this.spt[_loc2_].getTo()).getPos(),"visited");
            }
            if(_loc2_ == this.target)
            {
               return;
            }
            _loc3_ = this.graph.getEdges(_loc2_);
            for each(_loc4_ in _loc3_)
            {
               _loc5_ = Vector3D.distance(this.graph.getNode(_loc4_.getTo()).getPos(),this.graph.getNode(this.target).getPos());
               _loc6_ = this.gCostVec[_loc2_] + _loc4_.getCost();
               _loc7_ = _loc4_.getTo();
               if(this.sf[_loc4_.getTo()] == null)
               {
                  this.fCostVec[_loc4_.getTo()] = _loc6_ + _loc5_;
                  this.gCostVec[_loc4_.getTo()] = _loc6_;
                  _loc1_.insert(_loc4_.getTo());
                  this.sf[_loc4_.getTo()] = _loc4_;
               }
               else if(_loc6_ < this.gCostVec[_loc4_.getTo()] && this.spt[_loc4_.getTo()] == null)
               {
                  this.fCostVec[_loc4_.getTo()] = _loc6_ + _loc5_;
                  this.gCostVec[_loc4_.getTo()] = _loc6_;
                  _loc1_.reorderUp();
                  this.sf[_loc4_.getTo()] = _loc4_;
               }
            }
         }
      }
      
      public function getPath() : Array
      {
         var _loc1_:Array = new Array();
         if(this.target < 0)
         {
            return _loc1_;
         }
         var _loc2_:int = this.target;
         _loc1_.push(_loc2_);
         this.totalCost = 0;
         while(_loc2_ != this.source && this.spt[_loc2_] != null)
         {
            this.spt[_loc2_].drawEdge(this.graph.getNode(this.spt[_loc2_].getFrom()).getPos(),this.graph.getNode(this.spt[_loc2_].getTo()).getPos(),"path");
            _loc2_ = this.spt[_loc2_].getFrom();
            if(this.spt[_loc2_] != null)
            {
               this.totalCost = this.totalCost + this.spt[_loc2_].getCost();
            }
            _loc1_.push(_loc2_);
         }
         _loc1_ = _loc1_.reverse();
         return _loc1_;
      }
   }
}

package com.gaiaworld.room.pathFinding
{
   public class Graph
   {
      
      private static var nextIndex:int = 0;
       
      
      private var nodes:Vector.<Node>;
      
      private var edges:Vector.<Array>;
      
      public function Graph()
      {
         super();
         this.nodes = new Vector.<Node>();
         this.edges = new Vector.<Array>();
      }
      
      public static function reset() : *
      {
         nextIndex = 0;
      }
      
      public static function getNextIndex() : int
      {
         return nextIndex;
      }
      
      public function getNode(param1:int) : Node
      {
         if(param1 > this.nodes.length)
         {
            return null;
         }
         return this.nodes[param1];
      }
      
      public function getEdge(param1:int, param2:int) : Edge
      {
         var _loc6_:Edge = null;
         var _loc3_:Array = this.edges[param1] as Array;
         var _loc4_:Number = _loc3_.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            _loc6_ = _loc3_[_loc5_];
            if(_loc6_.getTo() == param2)
            {
               return _loc6_;
            }
            _loc5_++;
         }
         return null;
      }
      
      public function addNode(param1:Node) : int
      {
         if(this.validIndex(param1.getIndex()))
         {
            this.nodes.push(param1);
            this.edges.push(new Array());
            nextIndex++;
         }
         return 0;
      }
      
      public function addEdge(param1:Edge) : void
      {
         if(this.validIndex(param1.getTo()) && this.validIndex(param1.getFrom()))
         {
            if(this.getEdge(param1.getFrom(),param1.getTo()) == null)
            {
               (this.edges[param1.getFrom()] as Array).push(param1);
            }
         }
      }
      
      public function getEdges(param1:int) : Array
      {
         return this.edges[param1];
      }
      
      public function validIndex(param1:int) : Boolean
      {
         return param1 >= 0 && param1 <= nextIndex;
      }
      
      public function numNodes() : int
      {
         return this.nodes.length;
      }
   }
}

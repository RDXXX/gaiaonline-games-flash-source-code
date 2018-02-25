package com.gaiaworld.room.util
{
   import com.gaiaworld.avatar.controller.AvatarController;
   import com.gaiaworld.avatar.vo.PathVo;
   import com.gaiaworld.global.model.GlobalModel;
   import com.gaiaworld.gobjects.controller.ObjectController;
   import com.gaiaworld.room.constants.RoomConstants;
   import com.gaiaworld.room.model.RoomModel;
   import com.gaiaworld.room.pathFinding.Edge;
   import com.gaiaworld.room.pathFinding.EdgeDisplay;
   import com.gaiaworld.room.pathFinding.Graph;
   import com.gaiaworld.room.pathFinding.Node;
   import com.gaiaworld.room.pathFinding.algorithms.Astar;
   import com.gaiaworld.room.view.PathNode;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Vector3D;
   
   public class PFind extends Sprite
   {
       
      
      private var roomModel:RoomModel;
      
      private var objectController:ObjectController;
      
      private var graph:Graph;
      
      private var edgesCont:EdgeDisplay;
      
      private var globalModel:GlobalModel;
      
      private var xspace:Number;
      
      private var yspace:Number;
      
      private var bmd:BitmapData;
      
      private var nodeArray:Array;
      
      public function PFind()
      {
         this.roomModel = RoomModel.getInstance();
         this.objectController = new ObjectController();
         this.globalModel = GlobalModel.getInstance();
         super();
         this.roomModel.addEventListener(RoomConstants.PATHFINDING_MAP_SET,this.mapSet);
         this.roomModel.addEventListener(RoomConstants.SHOW_NODES,this.showNodes);
         this.roomModel.addEventListener(RoomConstants.HIDE_NODES,this.hideNodes);
         this.roomModel.addEventListener(RoomConstants.SHOW_PATHS,this.showPaths);
         this.roomModel.addEventListener(RoomConstants.HIDE_PATHS,this.hidePaths);
      }
      
      public function destroy() : *
      {
         this.roomModel.removeEventListener(RoomConstants.PATHFINDING_MAP_SET,this.mapSet);
         this.roomModel.removeEventListener(RoomConstants.SHOW_NODES,this.showNodes);
         this.roomModel.removeEventListener(RoomConstants.HIDE_NODES,this.hideNodes);
         this.roomModel.removeEventListener(RoomConstants.SHOW_PATHS,this.showPaths);
         this.roomModel.removeEventListener(RoomConstants.HIDE_PATHS,this.hidePaths);
      }
      
      public function mapSet(param1:Event = null) : void
      {
         var _loc8_:int = 0;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Node = null;
         var _loc12_:PathNode = null;
         this.graph = new Graph();
         this.edgesCont = new EdgeDisplay();
         this.nodeArray = new Array();
         var _loc2_:Sprite = this.roomModel.pathFindingMap;
         var _loc3_:Number = 50;
         var _loc4_:Number = 50;
         this.xspace = int(this.globalModel.mapWidth / _loc3_);
         this.yspace = int(this.globalModel.mapHeight / _loc4_);
         Graph.reset();
         var _loc5_:Number = _loc2_.height;
         var _loc6_:Number = _loc2_.width;
         if(_loc5_ > 2800)
         {
            _loc5_ = 2800;
         }
         if(_loc6_ > 2800)
         {
            _loc6_ = 2800;
         }
         this.bmd = new BitmapData(_loc6_,_loc5_);
         this.bmd.draw(_loc2_);
         var _loc7_:int = 0;
         while(_loc7_ < this.yspace)
         {
            _loc8_ = 0;
            while(_loc8_ < this.xspace)
            {
               _loc9_ = _loc8_ * _loc3_;
               _loc10_ = _loc7_ * _loc4_;
               _loc11_ = new Node(Graph.getNextIndex(),new Vector3D(_loc9_,_loc10_));
               _loc12_ = new PathNode();
               _loc12_.x = _loc9_;
               _loc12_.y = _loc10_;
               this.nodeArray.push(_loc11_);
               if(this.bmd.getPixel(_loc9_,_loc10_) == 16711680)
               {
                  _loc11_.showBlocked();
                  _loc11_.blocked = true;
               }
               this.graph.addNode(_loc11_);
               _loc8_++;
            }
            _loc7_++;
         }
         this.findNeighbours();
      }
      
      private function showNodes(param1:Event) : *
      {
         var _loc4_:Node = null;
         var _loc2_:Number = this.nodeArray.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = this.nodeArray[_loc3_];
            _loc4_.depth2 = 600000 + _loc3_;
            this.objectController.addItem(_loc4_,false);
            _loc3_++;
         }
      }
      
      private function hideNodes(param1:Event) : *
      {
         var _loc4_:Node = null;
         var _loc2_:Number = this.nodeArray.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = this.nodeArray[_loc3_];
            this.objectController.removeItem(_loc4_);
            _loc3_++;
         }
      }
      
      private function showPaths(param1:Event) : *
      {
         this.edgesCont.depth2 = 8000000;
         this.objectController.addItem(this.edgesCont,false);
      }
      
      private function hidePaths(param1:Event) : *
      {
         this.objectController.removeItem(this.edgesCont);
      }
      
      private function findNeighbours() : *
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.yspace)
         {
            _loc2_ = 0;
            while(_loc2_ < this.xspace)
            {
               this.addNeighbours(this.graph,_loc2_,_loc1_,this.yspace,this.xspace);
               _loc2_++;
            }
            _loc1_++;
         }
      }
      
      private function addNeighbours(param1:Graph, param2:int, param3:int, param4:int, param5:int) : void
      {
         var _loc7_:int = 0;
         var _loc8_:* = undefined;
         var _loc9_:* = undefined;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:Node = null;
         var _loc13_:Node = null;
         var _loc14_:Vector3D = null;
         var _loc15_:Vector3D = null;
         var _loc16_:Number = NaN;
         var _loc17_:Edge = null;
         var _loc6_:int = -1;
         while(_loc6_ <= 1)
         {
            _loc7_ = -1;
            while(_loc7_ <= 1)
            {
               _loc8_ = param2 + _loc7_;
               _loc9_ = param3 + _loc6_;
               if(!(_loc6_ == 0 && _loc7_ == 0))
               {
                  if(_loc9_ >= 0 && _loc9_ < param4 && _loc8_ >= 0 && _loc8_ < param5)
                  {
                     _loc10_ = param3 * param5 + param2;
                     _loc11_ = _loc9_ * param5 + _loc8_;
                     _loc12_ = param1.getNode(_loc10_);
                     _loc13_ = param1.getNode(_loc11_);
                     _loc14_ = _loc12_.getPos();
                     _loc15_ = _loc13_.getPos();
                     _loc16_ = Vector3D.distance(_loc14_,_loc15_);
                     if(_loc13_.blocked == true)
                     {
                        _loc16_ = _loc16_ + 60000;
                     }
                     _loc17_ = new Edge(_loc10_,_loc11_,Number(_loc16_));
                     param1.addEdge(_loc17_);
                     this.edgesCont.addChild(_loc17_);
                     _loc17_.drawEdge(_loc14_,_loc15_);
                  }
               }
               _loc7_++;
            }
            _loc6_++;
         }
      }
      
      public function findNode(param1:Number, param2:Number) : *
      {
         var _loc3_:Number = this.posToIndex(param1,param2);
         var _loc4_:Node = this.graph.getNode(_loc3_);
         _loc4_.alpha = 0.5;
      }
      
      public function posToIndex(param1:Number, param2:Number) : Number
      {
         var _loc3_:Number = int(param2 / 51);
         var _loc4_:Number = int(param1 / 51);
         var _loc5_:Number = _loc3_ * this.xspace + _loc4_;
         return _loc5_;
      }
      
      public function indexToPos(param1:Number) : Array
      {
         var _loc2_:Number = int(param1 / this.xspace);
         var _loc3_:Number = param1 - _loc2_ * this.xspace;
         _loc2_ = _loc2_ * 51;
         _loc3_ = _loc3_ * 51;
         return [_loc3_,_loc2_];
      }
      
      public function plot(param1:Number, param2:Number, param3:Number, param4:Number) : *
      {
         var _loc12_:Astar = null;
         var _loc13_:Array = null;
         var _loc14_:Number = NaN;
         var _loc15_:int = 0;
         var _loc16_:Array = null;
         var _loc17_:PathVo = null;
         var _loc5_:Vector.<PathVo> = new Vector.<PathVo>();
         var _loc6_:Number = 0;
         var _loc7_:Number = 0;
         var _loc8_:Number = this.posToIndex(param1,param2);
         var _loc9_:Number = this.posToIndex(param3,param4);
         if(_loc8_ > 0 && _loc9_ > 0)
         {
            _loc12_ = new Astar(this.graph,_loc8_,_loc9_);
            _loc13_ = _loc12_.getPath();
            _loc14_ = _loc13_.length;
            _loc15_ = 0;
            while(_loc15_ < _loc14_)
            {
               _loc16_ = this.indexToPos(_loc13_[_loc15_]);
               _loc17_ = new PathVo(_loc16_[0],_loc16_[1],_loc13_[_loc15_]);
               _loc5_.push(_loc17_);
               _loc15_++;
            }
         }
         if(_loc12_.totalCost > 1000)
         {
            return;
         }
         var _loc10_:PathVo = new PathVo(param3,param4,-1);
         _loc5_.push(_loc10_);
         _loc5_.shift();
         var _loc11_:AvatarController = new AvatarController();
         _loc11_.setBlocked(false);
         _loc11_.setPath(_loc5_);
         _loc11_.nextSpot();
      }
   }
}

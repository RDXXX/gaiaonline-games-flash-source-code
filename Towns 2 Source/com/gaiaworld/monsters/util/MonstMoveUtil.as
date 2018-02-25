package com.gaiaworld.monsters.util
{
   import com.gaiaworld.monsters.vo.WalkVo;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   
   public class MonstMoveUtil extends EventDispatcher
   {
      
      public static const GOT_THE_POINT:String = "gotThePoint";
       
      
      private var _points:Vector.<Point>;
      
      public var totalDist:Number;
      
      public var placePoint:Point;
      
      public var distArray:Vector.<WalkVo>;
      
      private var _targetIndex:int = 1;
      
      public var numPoints:Number = 0;
      
      public function MonstMoveUtil()
      {
         this._points = new Vector.<Point>();
         this.distArray = new Vector.<WalkVo>();
         super();
      }
      
      public function get points() : Vector.<Point>
      {
         return this._points;
      }
      
      public function set points(param1:Vector.<Point>) : void
      {
         var _loc5_:Point = null;
         var _loc6_:Point = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:WalkVo = null;
         this._points = param1;
         this.totalDist = 0;
         var _loc2_:WalkVo = new WalkVo(new Point(this._points[0].x,this._points[0].y),0);
         _loc2_.totalDist = 0;
         this.distArray.push(_loc2_);
         var _loc3_:Number = this._points.length;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            if(_loc4_ > 0)
            {
               _loc5_ = this._points[_loc4_ - 1];
               _loc6_ = this._points[_loc4_];
               _loc7_ = _loc5_.x - _loc6_.x;
               _loc8_ = _loc5_.y - _loc5_.y;
               _loc9_ = Math.sqrt(_loc7_ * _loc7_ + _loc8_ * _loc8_);
               _loc10_ = new WalkVo(this._points[_loc4_],int(_loc9_));
               this.totalDist = this.totalDist + _loc9_;
               _loc10_.totalDist = this.totalDist;
               this.distArray.push(_loc10_);
            }
            _loc4_++;
         }
         this.numPoints = this._points.length - 1;
      }
      
      public function get targetIndex() : int
      {
         return this._targetIndex;
      }
      
      public function set targetIndex(param1:int) : void
      {
         this._targetIndex = param1;
      }
      
      public function getPointByPercent(param1:Number) : *
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc2_:Number = param1 / 100;
         var _loc3_:Number = this.totalDist * _loc2_;
         var _loc4_:Boolean = false;
         var _loc5_:int = 1;
         while(_loc5_ < this._points.length)
         {
            _loc6_ = this.distArray[_loc5_ - 1].totalDist;
            _loc7_ = this.distArray[_loc5_].totalDist;
            if(_loc3_ >= _loc6_ && _loc3_ <= _loc7_)
            {
               this.targetIndex = _loc5_;
               this.placeBetween(_loc5_ - 1,_loc5_,_loc3_);
               _loc4_ = true;
            }
            _loc5_++;
         }
         if(_loc4_ == false)
         {
            this.placeBetween(0,1,_loc3_);
            this.targetIndex = 1;
         }
      }
      
      public function getPointAt(param1:Number) : *
      {
         if(param1 >= this._points.length)
         {
            return this._points[0];
         }
         return this._points[param1];
      }
      
      private function placeBetween(param1:Number, param2:Number, param3:Number) : *
      {
         var _loc4_:WalkVo = this.distArray[param1];
         var _loc5_:WalkVo = this.distArray[param2];
         var _loc6_:Point = _loc4_.point;
         var _loc7_:Point = _loc5_.point;
         var _loc8_:Number = int(param3 - _loc4_.totalDist);
         var _loc9_:Number = _loc6_.x - _loc7_.x;
         var _loc10_:Number = _loc6_.y - _loc7_.y;
         var _loc11_:Number = Math.sqrt(_loc9_ * _loc9_ + _loc10_ * _loc10_);
         var _loc12_:Number = _loc8_ / _loc11_;
         if(param1 > param2)
         {
            this.placePoint = Point.interpolate(_loc6_,_loc7_,_loc12_);
         }
         else
         {
            this.placePoint = Point.interpolate(_loc7_,_loc6_,_loc12_);
         }
         this.dispatchEvent(new Event(GOT_THE_POINT,true));
      }
      
      public function getDist(param1:Point, param2:Point) : *
      {
         var _loc3_:Number = param1.x - param2.x;
         var _loc4_:Number = param1.y - param1.y;
         var _loc5_:Number = Math.sqrt(_loc3_ * _loc3_ + _loc4_ * _loc4_);
         return _loc5_;
      }
      
      public function upTargetIndex() : void
      {
         this.targetIndex++;
         if(this.targetIndex == this._points.length)
         {
            this.targetIndex = 0;
         }
      }
   }
}

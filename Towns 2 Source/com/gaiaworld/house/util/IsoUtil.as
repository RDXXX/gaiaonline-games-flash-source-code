package com.gaiaworld.house.util
{
   import com.gaiaworld.house.vo.CoordVo;
   
   public class IsoUtil
   {
       
      
      private var maxx:Number;
      
      private var maxz:Number;
      
      private var theta:Number;
      
      private var alpha:Number;
      
      private var sinTheta:Number;
      
      private var cosTheta:Number;
      
      private var sinAlpha:Number;
      
      private var cosAlpha:Number;
      
      private var tileWidth:Number = 20;
      
      private var tileHeight:Number = 21;
      
      private var origin:CoordVo;
      
      public function IsoUtil(param1:Number, param2:Number)
      {
         this.origin = new CoordVo(369,212);
         super();
         this.maxx = param1;
         this.maxz = param2;
         this.theta = 30;
         this.alpha = 45;
         this.theta = this.theta * (Math.PI / 180);
         this.alpha = this.alpha * (Math.PI / 180);
         this.sinTheta = Math.sin(this.theta);
         this.cosTheta = Math.cos(this.theta);
         this.sinAlpha = Math.sin(this.alpha);
         this.cosAlpha = Math.cos(this.alpha);
      }
      
      public function mapToScreen(param1:Number, param2:Number, param3:Number) : *
      {
         var _loc4_:* = param2;
         var _loc5_:* = param1 * this.cosAlpha + param3 * this.sinAlpha;
         var _loc6_:* = param3 * this.cosAlpha - param1 * this.sinAlpha;
         var _loc7_:* = _loc5_;
         var _loc8_:* = _loc4_ * this.cosTheta - _loc6_ * this.sinTheta;
         return [_loc7_,_loc8_];
      }
      
      public function calculateDepth(param1:Number, param2:Number, param3:Number) : *
      {
         var _loc4_:Number = 5;
         var _loc5_:Number = Math.abs(param1) * _loc4_;
         var _loc6_:Number = Math.abs(param2);
         var _loc7_:Number = Math.abs(param3) * _loc4_;
         var _loc8_:Number = this.maxx * (this.maxz - 1) + _loc5_;
         var _loc9_:* = this.maxx * (_loc7_ - 1) + _loc5_ + _loc8_ * _loc6_;
         return _loc9_;
      }
      
      public function mapToIsoWorld(param1:Number, param2:Number) : *
      {
         var _loc3_:* = (param1 / this.cosAlpha - param2 / (this.sinAlpha * this.sinTheta)) * (1 / (this.cosAlpha / this.sinAlpha + this.sinAlpha / this.cosAlpha));
         var _loc4_:* = 1 / this.cosAlpha * (param1 - _loc3_ * this.sinAlpha);
         return [_loc4_,_loc3_];
      }
      
      public function coordsToLoc(param1:CoordVo, param2:String = "#floor", param3:Boolean = false) : *
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:CoordVo = new CoordVo();
         _loc5_ = param1.x;
         _loc6_ = param1.y;
         _loc7_ = param1.z;
         switch(param2)
         {
            case "#floor":
               _loc8_ = (_loc5_ + _loc6_) * 5 + _loc7_;
               _loc4_.x = (_loc5_ - _loc6_) * this.tileWidth + this.origin.x;
               _loc4_.y = (_loc5_ + _loc6_) * this.tileWidth / 2 - (_loc7_ - 1) * this.tileHeight + this.origin.y;
               _loc4_.depth = _loc8_;
               break;
            case "#wall":
               if(param3 == true)
               {
                  _loc4_.x = -(_loc5_ + 1) * this.tileWidth + this.origin.x;
                  _loc4_.y = _loc5_ * this.tileWidth / 2 - (_loc6_ - 1) * this.tileHeight + this.origin.y + 6;
                  _loc4_.depth = _loc7_;
               }
               else
               {
                  _loc4_.x = this.origin.x + (_loc5_ + 1) * this.tileWidth - 1;
                  _loc4_.y = this.origin.y + _loc5_ * this.tileWidth / 2 - (_loc6_ - 1) * this.tileHeight + this.tileHeight / 2 - 5;
                  _loc4_.depth = _loc7_;
               }
         }
         return _loc4_;
      }
      
      public function locToCoords(param1:CoordVo) : *
      {
         var _loc2_:Number = param1.x;
         var _loc3_:Number = param1.y;
         var _loc4_:Number = 0;
         var _loc5_:Number = ((_loc3_ - this.origin.y + this.tileHeight) / this.tileWidth * 2 - (_loc2_ - this.origin.x) / this.tileWidth) / 2;
         var _loc6_:Number = (_loc2_ - this.origin.x) / this.tileWidth + _loc5_;
         return new CoordVo(_loc6_,_loc5_,_loc4_);
      }
      
      public function oldToNew(param1:CoordVo) : *
      {
         var _loc2_:Number = param1.z / 2 - 1;
      }
   }
}

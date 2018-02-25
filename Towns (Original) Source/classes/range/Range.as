class classes.range.Range
{
   function Range(parentClip, length, centerX, centerY)
   {
      this.parent = parentClip;
      this.radius = length;
      this.X = centerX != undefined?centerX:0;
      this.Y = centerY != undefined?centerY:0;
   }
   function testRange(target)
   {
      var _loc2_ = undefined;
      var _loc5_ = undefined;
      var _loc3_ = undefined;
      var _loc4_ = undefined;
      _loc2_ = target.getData();
      _loc5_ = Math.abs(this.X + this.parent._x - _loc2_.X);
      _loc3_ = Math.abs(this.Y + this.parent._y - _loc2_.Y);
      _loc4_ = this.radius + _loc2_.radius;
      return _loc4_ * _loc4_ > _loc5_ * _loc5_ + _loc3_ * _loc3_;
   }
   function testPoint(pX, pY, pR)
   {
      var _loc4_ = undefined;
      var _loc2_ = undefined;
      var _loc3_ = undefined;
      _loc4_ = Math.abs(this.X + this.parent._x - pX);
      _loc2_ = Math.abs(this.Y + this.parent._y - pY);
      if(pR == undefined)
      {
         pR = 0;
      }
      _loc3_ = this.radius + pR;
      return _loc3_ * _loc3_ > _loc4_ * _loc4_ + _loc2_ * _loc2_;
   }
   function getRadius()
   {
      return this.radius;
   }
   function getX()
   {
      return this.parent._x + this.X;
   }
   function getY()
   {
      return this.parent._y + this.Y;
   }
   function getData()
   {
      var _loc2_ = new Object();
      _loc2_.radius = this.radius;
      _loc2_.X = this.parent._x + this.X;
      _loc2_.Y = this.parent._y + this.Y;
      return _loc2_;
   }
   function setRadius(length)
   {
      this.radius = length;
   }
   function setPosition(centerX, centerY)
   {
      this.X = !isNaN(centerX)?centerX:0;
      this.Y = !isNaN(centerY)?centerY:0;
   }
   function draw(colour, alpha, fillColour, fillAlpha, newClip)
   {
      var _loc3_ = this.X;
      var _loc2_ = this.Y;
      var _loc4_ = this.radius;
      var _loc7_ = _loc4_ * 0.41421356237309515;
      var _loc6_ = _loc4_ * 0.7071067811865476;
      var _loc5_ = undefined;
      if(newClip == undefined)
      {
         _loc5_ = this.parent;
      }
      else
      {
         _loc5_ = this.parent.createEmptyMovieClip("radius" + newClip,newClip);
      }
      if(colour == undefined)
      {
         colour = 16777215;
      }
      if(alpha == undefined)
      {
         alpha = 75;
      }
      if(fillColour != undefined || fillAlpha != undefined)
      {
         if(fillColour == undefined)
         {
            fillColour = 16777215;
         }
         if(fillAlpha == undefined)
         {
            fillAlpha = 50;
         }
         _loc5_.beginFill(fillColour,fillAlpha);
      }
      _loc5_.lineStyle(2,colour,alpha);
      _loc5_.moveTo(_loc3_ + _loc4_,_loc2_);
      _loc5_.curveTo(_loc3_ + _loc4_,_loc2_ + _loc7_,_loc3_ + _loc6_,_loc2_ + _loc6_);
      _loc5_.curveTo(_loc3_ + _loc7_,_loc2_ + _loc4_,_loc3_,_loc2_ + _loc4_);
      _loc5_.curveTo(_loc3_ - _loc7_,_loc2_ + _loc4_,_loc3_ - _loc6_,_loc2_ + _loc6_);
      _loc5_.curveTo(_loc3_ - _loc4_,_loc2_ + _loc7_,_loc3_ - _loc4_,_loc2_);
      _loc5_.curveTo(_loc3_ - _loc4_,_loc2_ - _loc7_,_loc3_ - _loc6_,_loc2_ - _loc6_);
      _loc5_.curveTo(_loc3_ - _loc7_,_loc2_ - _loc4_,_loc3_,_loc2_ - _loc4_);
      _loc5_.curveTo(_loc3_ + _loc7_,_loc2_ - _loc4_,_loc3_ + _loc6_,_loc2_ - _loc6_);
      _loc5_.curveTo(_loc3_ + _loc4_,_loc2_ - _loc7_,_loc3_ + _loc4_,_loc2_);
      if(fillColour != undefined)
      {
         _loc5_.endFill();
      }
   }
}

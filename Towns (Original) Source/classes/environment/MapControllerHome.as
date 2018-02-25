class classes.environment.MapControllerHome
{
   var numDepthsBetweenStaticItems = 10000;
   function MapControllerHome(pClass)
   {
      this.houseNum = this.propNum = 0;
      this.tileWidth = 20;
      this.tileHeight = 21;
      this.origin = {x:369,y:212};
      pClass.nextSequence();
   }
   function initProp(type, mc)
   {
      mc._x = int(mc._x);
      mc._y = int(mc._y);
      var _loc4_ = _global.gCanvas.mask_canvas;
      this.propNum = this.propNum + 1;
      _loc4_.attachMovie(type + "_mask","prop_mask" + this.propNum,_loc4_.getNextHighestDepth(),{_x:mc._x,_y:mc._y});
   }
   function registerStaticItemArr(mapType, staticItemArr)
   {
      this.sortedStaticItemArr = this.sortZorders3D(staticItemArr,this.numDepthsBetweenStaticItems);
      this.dTrace("registerStaticItemArr;" + staticItemArr);
   }
   function initHouse(mapType)
   {
      _global.gBroadcaster.addListener(this);
   }
   function run()
   {
      if(_global.gCanvas.state == "normal")
      {
         _global.gMapController.sortDynamicItemsAmongStatic(_global.gCanvas.clipping_canvas,_global.gMapController.sortedStaticItemArr);
      }
   }
   function reloadMapGraphics(mapType)
   {
      _global.gCanvas.reloadRoom();
   }
   function sortDynamicItemsAmongStatic(itemsToAdd, staticItems)
   {
      var _loc16_ = undefined;
      var _loc13_ = undefined;
      var _loc5_ = undefined;
      var _loc28_ = undefined;
      var _loc27_ = undefined;
      var _loc15_ = undefined;
      var _loc14_ = undefined;
      var _loc29_ = undefined;
      var _loc6_ = undefined;
      var _loc9_ = undefined;
      var _loc2_ = undefined;
      var _loc8_ = new Array();
      this.dynamicItemArr = new Array();
      for(var _loc16_ in itemsToAdd)
      {
         _loc9_ = itemsToAdd[_loc16_];
         if(_loc9_.staticFlag != true)
         {
            _loc2_ = this.locToCoords({x:_loc9_._x,y:_loc9_._y - 20});
            _loc9_.coords3D = {x:_loc2_.x,y:_loc2_.y,z:_loc2_.z,xMin:_loc2_.x - 1,xMax:_loc2_.x,yMin:_loc2_.y - 1,yMax:_loc2_.y,zMin:_loc2_.z,zMax:_loc2_.z + 8};
            this.dynamicItemArr.push(_loc9_);
         }
      }
      var _loc4_ = undefined;
      var _loc12_ = undefined;
      _loc27_ = this.dynamicItemArr.length;
      _loc15_ = staticItems.length;
      _loc13_ = 0;
      while(_loc13_ < _loc27_)
      {
         _loc6_ = this.dynamicItemArr[_loc13_];
         _loc5_ = 0;
         _loc14_ = false;
         while(!_loc14_ and _loc5_ < _loc15_)
         {
            var _loc11_ = this.checkInFront(staticItems[_loc5_].coords3D,_loc6_.coords3D);
            if(_loc11_ == 1)
            {
               _loc14_ = true;
               _loc12_ = staticItems[_loc5_];
            }
            _loc5_ = _loc5_ + 1;
         }
         if(_loc12_ != undefined)
         {
            _loc4_ = _loc12_.getDepth() - this.numDepthsBetweenStaticItems + Math.floor(_loc6_._y / 800 * this.numDepthsBetweenStaticItems);
         }
         else if(staticItems != undefined)
         {
            _loc4_ = staticItems[_loc15_ - 1].getDepth() + Math.floor(_loc6_._y / 800 * this.numDepthsBetweenStaticItems);
         }
         else
         {
            _loc4_ = _loc6_._y;
         }
         if(_loc8_[String(_loc4_)] != undefined)
         {
            var _loc7_ = _loc4_;
            while(_loc8_[String(_loc7_ + 1)] != undefined)
            {
               _loc7_ = _loc7_ + 1;
            }
            var _loc3_ = _loc7_;
            while(_loc3_ >= _loc4_)
            {
               _loc8_[_loc3_].swapDepths(_loc3_ + 1);
               _loc3_ = _loc3_ - 1;
            }
         }
         _loc8_[String(_loc4_)] = _loc6_;
         _loc6_.swapDepths(_loc4_);
         _loc13_ = _loc13_ + 1;
      }
      if(this.dynamicItemArr.length > 1 and this.gDebugShowFirstDepthArray == undefined)
      {
         this.gDebugShowFirstDepthArray = true;
      }
   }
   function sortZorders3D(objects, numDepthsBetweenLayers)
   {
      var _loc7_ = undefined;
      var _loc9_ = undefined;
      var _loc2_ = undefined;
      var _loc12_ = undefined;
      var _loc6_ = undefined;
      var _loc5_ = undefined;
      var _loc8_ = undefined;
      var _loc3_ = new Array();
      for(var _loc9_ in objects)
      {
         _loc7_ = objects[_loc9_];
         _loc2_ = 0;
         _loc5_ = _loc3_.length;
         _loc6_ = _loc5_;
         _loc8_ = false;
         while(!_loc8_ and _loc2_ < _loc5_)
         {
            var _loc4_ = this.checkInFront(_loc3_[_loc2_].coords3D,_loc7_.coords3D);
            if(_loc4_ == 1)
            {
               _loc8_ = true;
               _loc6_ = _loc2_;
            }
            _loc2_ = _loc2_ + 1;
         }
         _loc3_.splice(_loc6_,0,_loc7_);
      }
      _loc5_ = _loc3_.length;
      _loc2_ = 0;
      while(_loc2_ < _loc5_)
      {
         _loc3_[_loc2_].swapDepths(100 + _loc2_ * numDepthsBetweenLayers);
         _loc3_[_loc2_].zorderDebug = _loc2_;
         _loc2_ = _loc2_ + 1;
      }
      return _loc3_;
   }
   function sortZorders2D(objects)
   {
      var _loc4_ = undefined;
      var _loc1_ = undefined;
      var _loc2_ = 0;
      var _loc3_ = undefined;
      for(var _loc4_ in objects)
      {
         _loc1_ = objects[_loc4_];
         _loc3_ = int(_loc1_._y * 500 - _loc2_);
         _loc1_.swapDepths(_loc3_);
         _loc2_ = _loc2_ + 1;
      }
   }
   function checkInFront(coords1, coords2)
   {
      var _loc2_ = 0;
      if(_loc2_ == 0)
      {
         var _loc10_ = {xMin:0,xMax:coords1.xMax,yMin:0,yMax:coords1.yMax,zMin:0,zMax:coords1.zMax};
         if(this.intersect3D(_loc10_,coords2))
         {
            _loc2_ = 1;
         }
         else
         {
            var _loc9_ = {xMin:0,xMax:coords2.xMax,yMin:0,yMax:coords2.yMax,zMin:0,zMax:coords2.zMax};
            if(this.intersect3D(_loc9_,coords1))
            {
               _loc2_ = -1;
            }
         }
      }
      if(_loc2_ == 0)
      {
         if(coords1.xMin < coords2.xMin)
         {
            var _loc5_ = coords1;
            var _loc8_ = coords2;
         }
         else
         {
            _loc5_ = coords2;
            _loc8_ = coords1;
         }
         var _loc7_ = _loc8_.xMin - _loc5_.xMin;
         var _loc6_ = _loc5_.yMin - _loc8_.yMin;
         if(_loc7_ < _loc6_)
         {
            if(_loc5_ == coords1)
            {
               _loc2_ = 1;
            }
            else
            {
               _loc2_ = -1;
            }
         }
         else if(_loc6_ < _loc7_)
         {
            if(_loc5_ == coords1)
            {
               _loc2_ = -1;
            }
            else
            {
               _loc2_ = 1;
            }
         }
      }
      return _loc2_;
   }
   function footPrintsIntersect(coords1, coords2)
   {
      var _loc5_ = {left:coords1.xMin,right:coords1.xMax,top:coords1.yMin,bottom:coords1.yMax};
      var _loc4_ = {left:coords2.xMin,right:coords2.xMax,top:coords2.yMin,bottom:coords2.yMax};
      return this.intersectRect(_loc5_,_loc4_);
   }
   function union3D(coords1, coords2)
   {
      var _loc1_ = {xMin:Math.min(coords1.xMin,coords2.xMin),xMax:Math.max(coords1.xMax,coords2.xMax)};
      _loc1_.yMin = Math.min(coords1.yMin,coords2.yMin);
      _loc1_.yMax = Math.max(coords1.yMax,coords2.yMax);
      _loc1_.zMin = Math.min(coords1.zMin,coords2.zMin);
      _loc1_.zMax = Math.max(coords1.zMax,coords2.zMax);
      return _loc1_;
   }
   function intersect3D(coords1, coords2)
   {
      var _loc5_ = false;
      var _loc2_ = this.union3D(coords1,coords2);
      if(_loc2_.xMax - _loc2_.xMin < coords1.xMax - coords1.xMin + (coords2.xMax - coords2.xMin))
      {
         if(_loc2_.yMax - _loc2_.yMin < coords1.yMax - coords1.yMin + (coords2.yMax - coords2.yMin))
         {
            if(_loc2_.zMax - _loc2_.zMin < coords1.zMax - coords1.zMin + (coords2.zMax - coords2.zMin))
            {
               _loc5_ = true;
            }
         }
      }
      return _loc5_;
   }
   function intersectRect(rect1, rect2)
   {
      var _loc5_ = false;
      var _loc2_ = this.unionRect(rect1,rect2);
      if(_loc2_.right - _loc2_.left < rect1.right - rect1.left + (rect2.right - rect2.left))
      {
         if(_loc2_.bottom - _loc2_.top < rect1.bottom - rect1.top + (rect2.bottom - rect2.top))
         {
            _loc5_ = true;
         }
      }
      return _loc5_;
   }
   function unionRect(rect1, rect2)
   {
      var _loc1_ = new Object();
      _loc1_.left = Math.min(rect1.left,rect2.left);
      _loc1_.right = Math.max(rect1.right,rect2.right);
      _loc1_.top = Math.min(rect1.top,rect2.top);
      _loc1_.bottom = Math.max(rect1.bottom,rect2.bottom);
      return _loc1_;
   }
   function coordsToLoc(tCoords, tArea, tLeftWallFlag)
   {
      var _loc5_ = undefined;
      var _loc2_ = tCoords.x;
      var _loc3_ = tCoords.y;
      var _loc4_ = tCoords.z;
      if(tArea == undefined)
      {
         tArea = "#floor";
      }
      switch(tArea)
      {
         case "#floor":
            var _loc7_ = (_loc2_ + _loc3_) * 5 + _loc4_;
            _loc5_ = {x:(_loc2_ - _loc3_) * this.tileWidth + this.origin.x,y:(_loc2_ + _loc3_) * this.tileWidth / 2 - (_loc4_ - 1) * this.tileHeight + this.origin.y,depth:_loc7_};
            break;
         case "#wall":
            if(tLeftWallFlag)
            {
               _loc5_ = {x:(- _loc2_ + 1) * this.tileWidth + this.origin.x,y:_loc2_ * this.tileWidth / 2 - (_loc3_ - 1) * this.tileHeight + this.origin.y + 6,depth:_loc4_};
            }
            else
            {
               _loc5_ = {x:this.origin.x + (_loc2_ + 1) * this.tileWidth - 1,y:this.origin.y + _loc2_ * this.tileWidth / 2 - (_loc3_ - 1) * this.tileHeight + this.tileHeight / 2 - 5,depth:_loc4_};
            }
      }
      return _loc5_;
   }
   function locToCoords(coords)
   {
      var _loc8_ = coords.x;
      var _loc7_ = coords.y;
      var _loc3_ = 0;
      var _loc2_ = ((_loc7_ - this.origin.y + this.tileHeight) / this.tileWidth * 2 - (_loc8_ - this.origin.x) / this.tileWidth) / 2;
      var _loc4_ = (_loc8_ - this.origin.x) / this.tileWidth + _loc2_;
      return {x:_loc4_,y:_loc2_,z:_loc3_};
   }
   function dTrace(str)
   {
      _global.gCanvas.mcDebug.dTrace(str);
   }
   function debugDisplayCoords3D(obj)
   {
      var _loc7_ = new Array({x:obj.coords3D.xMin,y:obj.coords3D.yMin,z:0});
      var _loc4_ = 0;
      while(_loc4_ < _loc7_.length)
      {
         var _loc3_ = "mcDot" + obj._name + _loc4_;
         if(_global.gCanvas[_loc3_] == undefined)
         {
            _global.gCanvas.attachMovie("debugDot",_loc3_,_global.gCanvas.getNextHighestDepth());
            _global.gCanvas[_loc3_].gotoAndStop(obj.zorderDebug);
         }
         var _loc6_ = this.coordsToLoc(_loc7_[_loc4_],"#floor");
         _global.gCanvas[_loc3_]._x = _loc6_.x;
         _global.gCanvas[_loc3_]._y = _loc6_.y;
         _global.gCanvas[_loc3_].coords = Math.floor(obj.coords3D.xMin * 10) / 10;
         _global.gCanvas[_loc3_].coords = _global.gCanvas[_loc3_].coords + ("," + Math.floor(obj.coords3D.yMin * 10) / 10);
         _global.gCanvas[_loc3_].coords = _global.gCanvas[_loc3_].coords + ("," + Math.floor(obj.coords3D.zMin * 10) / 10);
         _loc4_ = _loc4_ + 1;
      }
   }
}

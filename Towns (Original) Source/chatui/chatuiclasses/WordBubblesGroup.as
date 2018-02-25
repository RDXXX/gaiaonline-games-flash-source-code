class chatui.chatuiclasses.WordBubblesGroup
{
   var _loaded = false;
   var Remove = false;
   var _tPos = 0;
   var _slideSpeed = 20;
   var _render = false;
   var WQ = 34;
   var _xOffset = 0;
   var _yOffset = 0;
   var _maxBubble = 3;
   function WordBubblesGroup(UserName, TargetMc, ChatLayer, Text, SlideSpeed, Swf, Type, xOffset, yOffset, BoundaryPoints, TargetMCLvl2, MaxBubble)
   {
      this._userName = UserName;
      this._targetMc = TargetMc;
      this._chatLayer = ChatLayer;
      this._txts = new Array();
      this._slideSpeed = SlideSpeed;
      this._swf = Swf;
      this._boundaryPoints = new Array();
      if(MaxBubble != undefined)
      {
         this._maxBubble = MaxBubble;
      }
      if(xOffset != undefined)
      {
         this._xOffset = xOffset;
      }
      if(yOffset != undefined)
      {
         this._yOffset = yOffset;
      }
      if(BoundaryPoints[0] != undefined)
      {
         this._boundaryPoints[0] = BoundaryPoints[0];
      }
      else
      {
         this._boundaryPoints[0] = 0;
      }
      if(BoundaryPoints[1] != undefined)
      {
         this._boundaryPoints[1] = BoundaryPoints[1];
      }
      else
      {
         this._boundaryPoints[1] = 0;
      }
      if(Text != undefined)
      {
         var _loc2_ = Text.length * 70;
         var _loc5_ = -0.00008333333333333333 * _loc2_ * _loc2_ + 2 * _loc2_;
         var _loc9_ = Math.max(Math.max(_loc5_ + 400,3400),_loc2_);
         this._txts.push({Text:Text,time:getTimer(),lifespan:_loc9_,type:Type});
      }
      this._wbg = this._chatLayer.createEmptyMovieClip("wbg" + UserName.split(".").join("").split(":").join("").split("/").join(""),this._chatLayer.getNextHighestDepth());
      var _loc3_ = new MovieClipLoader();
      _loc3_.addListener(this);
      _loc3_.loadClip(this._swf,this._wbg);
      this.RebuildPositions(TargetMCLvl2);
      this._lastPos = {x:this._targetMc._x,y:this._targetMc._y};
   }
   function RebuildPositions(targetMcSize)
   {
      var _loc2_ = new Array();
      if(targetMcSize == undefined)
      {
         this._targetMcSize = this._targetMc;
      }
      else
      {
         this._targetMcSize = targetMcSize;
      }
      _loc2_[0] = this._targetMcSize._width / 2;
      _loc2_[1] = this._targetMcSize._height / 3;
      this._pArray = new Array();
      this._pArray.push({x:- this.WQ + this._xOffset,y:this._yOffset});
      this._pArray.push({x:_loc2_[0] - this.WQ + this._xOffset,y:this._yOffset});
      this._pArray.push({x:- _loc2_[0] - 3 * this.WQ + this._xOffset,y:this._yOffset});
      this._pArray.push({x:_loc2_[0] + this._xOffset,y:_loc2_[1] + this._yOffset});
      this._pArray.push({x:- _loc2_[0] + this._xOffset,y:_loc2_[1] + this._yOffset});
      this._pArray.push({x:_loc2_[0] + this._xOffset,y:_loc2_[1] * 2 + this._yOffset});
      this._pArray.push({x:- _loc2_[0] + this._xOffset,y:_loc2_[1] * 2 + this._yOffset});
      this._pArray.push({x:- this.WQ,y:this._yOffset});
      this._pArray.push({x:_loc2_[0] - this.WQ + this._xOffset,y:this._yOffset});
      this._pArray.push({x:- _loc2_[0] - 3 * this.WQ + this._xOffset,y:this._yOffset});
   }
   function onLoadInit(target)
   {
      this._loaded = true;
      this.setMessage();
      this.HitTest();
      this._wbg._x = this._targetMc._x + this._pArray[this._tPos].x;
      if(this._tPos <= 6)
      {
         this._wbg._y = this._targetMc._y + this._pArray[this._tPos].y - this._targetMcSize._height * 0.85 - this._wbg._height;
      }
      else
      {
         this._wbg._y = this._targetMc._y + this._wbg._height - this._targetMcSize._height / 3;
      }
   }
   function AddMessage(Text, Type)
   {
      var _loc2_ = 230;
      if(this._txts.length >= this._maxBubble || this._wbg._height > _loc2_)
      {
         this._txts.shift();
      }
      var _loc3_ = Text.length * 70;
      var _loc4_ = -0.00008333333333333333 * _loc3_ * _loc3_ + 2 * _loc3_;
      var _loc7_ = Math.max(Math.max(_loc4_ + 400,3400),_loc3_);
      this._txts.push({Text:Text,time:getTimer(),lifespan:_loc7_,type:Type});
      if(this._loaded)
      {
         this.setMessage();
         while(this._wbg._height > _loc2_)
         {
            this._txts.shift();
            this.setMessage();
         }
      }
   }
   function setMessage()
   {
      for(var _loc6_ in this._wbg)
      {
         if(typeof this._wbg[_loc6_] == "movieclip")
         {
            this._wbg[_loc6_].removeMovieClip();
         }
      }
      var _loc5_ = this._wbg.attachMovie("NameLabel","lbl",5);
      _loc5_.txt.text = this._userName;
      _loc5_.mid._width = _loc5_.txt.textWidth - 2;
      if(_loc5_.mid._width < 20)
      {
         _loc5_.mid._width = 20;
      }
      else if(_loc5_.mid._width > 115)
      {
         _loc5_.mid._width = 115;
      }
      _loc5_.right._x = _loc5_.mid._x + _loc5_.mid._width + _loc5_.right._width;
      var _loc4_ = 10;
      var _loc3_ = 0;
      while(_loc3_ < this._txts.length)
      {
         var _loc2_ = this._wbg.attachMovie("wb1","wb" + _loc3_,_loc3_);
         _loc2_.gotoAndStop(this._txts[_loc3_].type);
         _loc2_.txt.autoSize = true;
         _loc2_.txt.html = true;
         _loc2_.txt.htmlText = this._txts[_loc3_].Text;
         _loc2_.mid._height = _loc2_.txt.textHeight - 4;
         _loc2_.buttom._y = _loc2_.top._height * 2 + _loc2_.mid._height;
         _loc2_._y = _loc4_;
         _loc4_ = _loc4_ + _loc2_._height + 2;
         _loc3_ = _loc3_ + 1;
      }
      this._lp = this._wbg.attachMovie("lappet","lappet",10);
      this._lp._y = this._wbg._height - 2;
      this._lp._visible = false;
      this.setPos();
   }
   function setPos()
   {
      var _loc3_ = this._targetMc._x + this._pArray[this._tPos].x;
      var _loc2_ = 0;
      if(this._tPos <= 6)
      {
         _loc2_ = this._targetMc._y + parseInt(this._pArray[this._tPos].y) - this._targetMcSize._height * 0.85 - this._wbg._height;
      }
      else
      {
         _loc2_ = this._targetMc._y;
      }
      if(_loc3_ + this._slideSpeed < this._wbg._x)
      {
         this._wbg._x = Math.round(this._wbg._x - this._slideSpeed);
      }
      else if(_loc3_ - this._slideSpeed > this._wbg._x)
      {
         this._wbg._x = Math.round(this._wbg._x + this._slideSpeed);
      }
      else
      {
         this._wbg._x = Math.round(_loc3_);
      }
      if(_loc2_ + this._slideSpeed < this._wbg._y)
      {
         this._wbg._y = Math.round(this._wbg._y - this._slideSpeed);
      }
      else if(_loc2_ - this._slideSpeed > this._wbg._y)
      {
         this._wbg._y = Math.round(this._wbg._y + this._slideSpeed);
      }
      else
      {
         this._wbg._y = Math.round(_loc2_);
      }
      if(this._wbg._x == Math.round(_loc3_) && this._wbg._y == Math.round(_loc2_))
      {
         this._render = false;
         this.setLpPos();
      }
      else
      {
         this._render = true;
      }
   }
   function setLpPos()
   {
      this._lp._y = this._wbg._height - this._lp._heigh;
      var _loc2_ = this._targetMc._x - this._wbg._x + 10;
      if(_loc2_ < 15)
      {
         _loc2_ = 15;
      }
      else if(_loc2_ > this._wbg._width - 15)
      {
         _loc2_ = this._wbg._width - 15;
      }
      this._lp._x = _loc2_;
      if(this._lp._x < this._wbg._width / 2)
      {
         this._lp._xscale = 100;
      }
      else
      {
         this._lp._xscale = -100;
      }
      if(this._wbg._y >= this._targetMc._y)
      {
         this._lp._visible = false;
      }
      else
      {
         this._lp._visible = true;
      }
   }
   function messageCheck()
   {
      var _loc3_ = false;
      var _loc2_ = getTimer();
      var _loc5_ = _loc2_ - this._txts[0].time;
      if(_loc5_ > this._txts[0].lifespan)
      {
         this._txts.shift();
         if(this._txts.length > 0)
         {
            var _loc4_ = this._txts[0].lifespan - (_loc2_ - this._txts[0].time);
            if(_loc4_ < 1500)
            {
               this._txts[0].lifespan = 1500;
               this._txts[0].time = _loc2_;
            }
         }
         _loc3_ = true;
      }
      if(this._txts.length <= 0)
      {
         this.Remove = true;
         this._wbg.removeMovieClip();
      }
      if(_loc3_ && !this.Remove)
      {
         this.setMessage();
      }
   }
   function Render()
   {
      this.messageCheck();
      if(this._targetMc._x != this._lastPos.x || this._targetMc._y != this._lastPos.y || this._tPos != 0)
      {
         this._render = true;
      }
      this._lastPos = {x:this._targetMc._x,y:this._targetMc._y};
      if(this._render)
      {
         this.messageCheck();
         this.HitTest();
         this.setPos();
         this.setLpPos();
      }
   }
   function Refresh()
   {
      this._render = true;
      this.messageCheck();
      this.HitTest();
      this.setPos();
      this.setLpPos();
   }
   function HitTest()
   {
      var _loc2_ = {x:this._wbg._x,y:this._wbg._y,w:this._wbg._width,h:this._wbg._height};
      var _loc6_ = 0;
      loop0:
      for(; _loc6_ < this._pArray.length; _loc6_ = _loc6_ + 1)
      {
         var _loc5_ = false;
         this._tPos = _loc6_;
         _loc2_.x = this._targetMc._x + this._pArray[this._tPos].x;
         if(this._tPos <= 6)
         {
            _loc2_.y = this._targetMc._y + this._pArray[this._tPos].y - this._targetMcSize._height * 0.85 - _loc2_.h;
         }
         else
         {
            _loc2_.y = this._targetMc._y + _loc2_.h - this._targetMcSize._height / 3;
         }
         var _loc4_ = {x:_loc2_.x,y:_loc2_.y};
         this._chatLayer.localToGlobal(_loc4_);
         if(_loc4_.y < this._boundaryPoints[1] || _loc4_.x < this._boundaryPoints[0] || _loc4_.x + _loc2_.w > Stage.width || _loc4_.y + _loc2_.h > Stage.height)
         {
            _loc5_ = true;
         }
         else
         {
            §§enumerate(this._chatLayer);
            while(true)
            {
               if((var _loc0_ = §§pop()) != null)
               {
                  var _loc7_ = _loc0_;
                  if(this._chatLayer[_loc7_] != this._wbg && typeof this._chatLayer[_loc7_] == "movieclip")
                  {
                     var _loc3_ = this._chatLayer[_loc7_];
                     if(_loc3_._x < _loc2_.x + _loc2_.w && _loc3_._x + _loc3_._width > _loc2_.x && _loc3_._y < _loc2_.y + _loc2_.h && _loc3_._y + _loc3_._height > _loc2_.y)
                     {
                        _loc5_ = true;
                        if(_loc5_)
                        {
                           break;
                        }
                     }
                  }
                  continue;
               }
               addr252:
               break loop0;
            }
            continue;
         }
         if(!_loc5_)
         {
            §§goto(addr252);
         }
         else
         {
            continue;
         }
      }
      if(_loc5_ && this._tPos == this._pArray.length - 1)
      {
         this._tPos = 0;
      }
   }
   function Clear()
   {
      this._txts = new Array();
      for(var _loc2_ in this._wbg)
      {
         if(typeof this._wbg[_loc2_] == "movieclip")
         {
            this._wbg[_loc2_].removeMovieClip();
         }
      }
      this.Remove = true;
      this._wbg.removeMovieClip();
   }
}

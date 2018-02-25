class classes.Toys.SoccerBall extends classes.Toys.Toys
{
   var BOUNCE = 0.3;
   var LEFT_BORDER = 120;
   var RIGHT_BORDER = 900;
   var TOP_BORDER = 120;
   var BOTTOM_BORDER = 900;
   var BEACON_DELAY = 5000;
   var INITIAL_BALL_DELAY = 0;
   var BOUNDARY_DELAY = 0;
   var MAX_NUM_BALLS = 5;
   var bounceUp = 5;
   var bounceDown = 5;
   var numBounces = 0;
   var totalBalls = 0;
   var isBallVisible = false;
   function SoccerBall()
   {
      super();
   }
   function initVars()
   {
      this.WORLD = _global.gCanvas;
      this.COLLISION = _global.gCanvas.mask_canvas;
      this.POOL = _global.gCanvas.clipping_canvas.pool;
      this.collisionObjects = [];
      this.toyClip = _global.gCanvas.clipping_canvas.soccerBallHolder;
      this.GSC_REF = new classes.avatar.GameServerConnector();
      this.beaconClip = _global.beaconClip;
   }
   function getNumbBalls()
   {
      return this.totalBalls;
   }
   function initEvent()
   {
      var _loc3_ = _global.gAvMan.getMyAvatar().avServerID;
      if(!this.toyClip["ball" + _loc3_] && _loc3_ != undefined && _loc3_ != "undefined")
      {
         if(this.totalBalls > this.MAX_NUM_BALLS)
         {
            return undefined;
         }
         var _loc4_ = this.toyClip.attachMovie("soccerBall_mc","ball" + _loc3_,this.toyClip.getNextHighestDepth());
         this.totalBalls = this.totalBalls + 1;
         this.myAv = _global.gAvMan.getMyAvatar().avClip;
         _loc4_.firstDrop = true;
         _loc4_._x = this.myAv._x + this.randRange(30,60);
         _loc4_._y = this.myAv._y;
         _loc4_._visible = false;
         _loc4_.ballId = _loc3_;
         this.startBallEvent(_loc3_);
         _global.myToyManager.setBallState("soccer",true,_global.myUserData[1]);
         var _loc6_ = [_loc4_._x,_loc4_._y,_loc4_._x,_loc4_._y,null,"soccerBall",_loc3_,_loc4_.ballId];
         this.GSC_REF.broadcastAvatarToy(_loc6_);
      }
      else
      {
         var _loc5_ = this.toyClip["ball" + _loc3_];
         _loc5_.firstDrop = false;
         _loc6_ = [_loc5_._x,_loc5_._y,_loc5_._x,_loc5_._y,null,"soccerBall",_loc3_,_loc3_];
         this.GSC_REF.broadcastAvatarToy(_loc6_);
      }
   }
   function highlightBall(id)
   {
      if(this.toyClip["ball" + id])
      {
         clearInterval(this["ballIdentifierInterval" + id]);
         this.beaconClip["myBeacon" + id].removeMovieClip();
         var _loc2_ = this.beaconClip.attachMovie("beacon_mc","myBeacon" + id,this.beaconClip.getNextHighestDepth());
         _loc2_.thisClass = this;
         _loc2_.onEnterFrame = function()
         {
            this._x = this.thisClass.toyClip["ball" + id]._x;
            this._y = this.thisClass.toyClip["ball" + id]._y;
         };
      }
   }
   function deleteBeacon(id)
   {
      clearInterval(this["ballIdentifierInterval" + id]);
      this.beaconClip["myBeacon" + id].removeMovieClip();
   }
   function startBallEvent(avId)
   {
      avId = Number(avId);
      var _loc6_ = _global.gAvMan.getMyAvatar().avServerID;
      if(_loc6_ == avId)
      {
         clearInterval(this["ballIdentifierInterval" + avId]);
         this["ballIdentifierInterval" + avId] = setInterval(this,"highlightBall",this.BEACON_DELAY,avId);
      }
      this.toyClip["ball" + avId].thisClass = this;
      this.toyClip["ball" + avId].onEnterFrame = function()
      {
         if(this.ball.hotspot.hitTest(this.thisClass.myAv.avatarContainer.image.avParts.dropShadow))
         {
            var _loc3_ = _global.gAvMan.getMyAvatar();
            var _loc4_ = _global.gAvMan.getMyAvatar().avServerID;
            var _loc8_ = undefined;
            var _loc5_ = _global.gAvMan.getMyAvatar().gsc;
            if(_loc3_.lastX == undefined)
            {
               _loc3_.lastX = this.thisClass.myAv._x;
            }
            if(_loc3_.lastY == undefined)
            {
               _loc3_.lastY = this.thisClass.myAv._y;
            }
            var _loc7_ = this.thisClass.randRange(-5,5);
            var _loc6_ = this.thisClass.randRange(-5,5);
            _loc8_ = [_loc3_.lastX,_loc3_.lastY,this.thisClass.toyClip["ball" + this.ballId]._x + _loc7_,this.thisClass.toyClip["ball" + this.ballId]._y + 10 + _loc6_,null,"soccerBall",_loc4_,this.ballId];
            _loc5_.broadcastAvatarToy(_loc8_);
            this.onEnterFrame = null;
            clearInterval(this.thisClass.delayInitialBallInterval);
            this.thisClass.delayInitialBallInterval = setInterval(this.thisClass,"delayBallEvent",this.INITIAL_BALL_DELAY,this,_loc4_);
         }
      };
   }
   function displayEvent(startX, startY, xTarget, yTarget, targetClip, memberId, ballId)
   {
      this["tween" + ballId].stop();
      if(ballId == memberId)
      {
         this.deleteBeacon(ballId);
      }
      this.toyClip["ball" + ballId]._x = xTarget;
      this.toyClip["ball" + ballId]._y = yTarget;
      if(!this.toyClip["ball" + ballId] && ballId != "undefined" && ballId != undefined)
      {
         this.totalBalls = this.totalBalls + 1;
         ballId = Number(ballId);
         var _loc3_ = this.toyClip.attachMovie("soccerBall_mc","ball" + ballId,this.toyClip.getNextHighestDepth());
         _loc3_.firstDrop = true;
         this.myAv = _global.gAvMan.getMyAvatar().avClip;
         _loc3_._x = startX;
         _loc3_._y = startY;
         _loc3_._visible = false;
         _loc3_.ballId = ballId;
         clearInterval(this.delayInitialBallInterval);
         this.delayInitialBallInterval = setInterval(this,"delayBallEvent",1000,_loc3_,ballId);
      }
      this.bounceBall(startX,startY,xTarget,yTarget,ballId);
   }
   function bounceBall(firstX, firstY, lastX, lastY, ballId)
   {
      if(firstX == lastX && firstY == lastY)
      {
         var _loc7_ = true;
      }
      var _loc8_ = lastX - firstX;
      var _loc9_ = lastY - firstY;
      var _loc4_ = _loc8_ * 6;
      var _loc3_ = _loc9_ * 5;
      var _loc10_ = undefined;
      if(_loc4_ > 250)
      {
         _loc4_ = 300;
      }
      else if(_loc4_ < -300)
      {
         _loc4_ = -300;
      }
      if(_loc3_ > 250)
      {
         _loc3_ = 250;
      }
      else if(_loc3_ < -250)
      {
         _loc3_ = -250;
      }
      if(_loc8_ < 0)
      {
         var _loc6_ = this.toyClip["ball" + ballId]._x + _loc4_;
         this.toyClip["ball" + ballId].xDir = "left";
         if(!this.toyClip["ball" + ballId].firstDrop)
         {
            if(!_loc7_)
            {
               this.toyClip["ball" + ballId].ball.innerBall.gotoAndPlay("left");
            }
         }
         else
         {
            this.toyClip["ball" + ballId]._visible = true;
            this.toyClip["ball" + ballId].ball.innerBall.gotoAndPlay("firstDrop");
            this.toyClip["ball" + ballId].firstDrop = false;
         }
         _loc10_ = -1;
      }
      else
      {
         _loc6_ = this.toyClip["ball" + ballId]._x + _loc4_;
         this.toyClip["ball" + ballId].xDir = "right";
         if(!this.toyClip["ball" + ballId].firstDrop)
         {
            if(!_loc7_)
            {
               this.toyClip["ball" + ballId].ball.innerBall.gotoAndPlay("right");
            }
         }
         else
         {
            this.toyClip["ball" + ballId]._visible = true;
            this.toyClip["ball" + ballId].ball.innerBall.gotoAndPlay("firstDrop");
            this.toyClip["ball" + ballId].firstDrop = false;
         }
         _loc10_ = -1;
      }
      if(_loc9_ < 0)
      {
         var _loc5_ = this.toyClip["ball" + ballId]._y + _loc3_;
         this.toyClip["ball" + ballId].yDir = "up";
      }
      else
      {
         _loc5_ = this.toyClip["ball" + ballId]._y + _loc3_;
         this.toyClip["ball" + ballId].yDir = "down";
      }
      this.toyClip["ball" + ballId].lastX = _loc6_;
      this.toyClip["ball" + ballId].lastY = _loc5_;
      ballId = Number(ballId);
      this["tween" + ballId] = new mx.transitions.TweenExtended(this.toyClip["ball" + ballId],["_x","_y"],mx.transitions.easing.Regular.easeOut,[this.toyClip["ball" + ballId]._x,this.toyClip["ball" + ballId]._y],[_loc6_,_loc5_],2,true);
      var thisClass = this;
      this["tween" + ballId].onMotionFinished = function()
      {
         this.obj.onEnterFrame = null;
         this.obj.newMgr.onEnterFrame = null;
         thisClass.startBallEvent(this.obj.ballId);
      };
      this.boundaryManager(ballId);
   }
   function boundaryManager(ballId)
   {
      var _loc2_ = this["boundaryManagerClip" + ballId];
      _loc2_ = this.toyClip["ball" + ballId].createEmptyMovieClip("newMgr",200);
      _loc2_.thisClass = this;
      _loc2_.hitBoundary = false;
      _loc2_.ballId = ballId;
      _loc2_.ballClip = this.toyClip["ball" + ballId];
      _loc2_.onEnterFrame = function()
      {
         this.bounceBack = 50;
         if(this.ballClip._x < this.thisClass.LEFT_BORDER)
         {
            this.newTween.stop();
            this.hitBoundary = true;
            this.lastX = this.thisClass.LEFT_BORDER + this.bounceBack;
            if(this.ballClip.yDir == "up")
            {
               var _loc2_ = this.ballClip._y - this.bounceBack;
            }
            else
            {
               _loc2_ = this.ballClip._y + this.bounceBack;
            }
            this.newTween = new mx.transitions.TweenExtended(this.ballClip,["_x","_y"],mx.transitions.easing.Regular.easeOut,[this.ballClip._x,this.ballClip._y],[this.lastX,_loc2_],2,true);
         }
         if(this.ballClip._x > this.thisClass.RIGHT_BORDER)
         {
            this.newTween.stop();
            this.hitBoundary = true;
            this.lastX = this.thisClass.RIGHT_BORDER - this.bounceBack;
            if(this.ballClip.yDir == "up")
            {
               _loc2_ = this.ballClip._y - this.bounceBack;
            }
            else
            {
               _loc2_ = this.ballClip._y + this.bounceBack;
            }
            this.newTween = new mx.transitions.TweenExtended(this.ballClip,["_x","_y"],mx.transitions.easing.Regular.easeOut,[this.ballClip._x,this.ballClip._y],[this.lastX,_loc2_],2,true);
         }
         if(this.ballClip._y < this.thisClass.TOP_BORDER)
         {
            this.newTween.stop();
            this.hitBoundary = true;
            this.lastY = this.thisClass.TOP_BORDER + this.bounceBack;
            if(this.ballClip.xDir == "left")
            {
               var lastX = this.ballClip._x - this.bounceBack;
            }
            else
            {
               var lastX = this.ballClip._x + this.bounceBack;
            }
            this.newTween = new mx.transitions.TweenExtended(this.ballClip,["_x","_y"],mx.transitions.easing.Regular.easeOut,[this.ballClip._x,this.ballClip._y],[lastX,this.lastY],2,true);
         }
         if(this.ballClip._y > this.thisClass.BOTTOM_BORDER)
         {
            this.newTween.stop();
            this.hitBoundary = true;
            this.lastY = this.thisClass.BOTTOM_BORDER - this.bounceBack;
            if(this.ballClip.xDir == "left")
            {
               var lastX = this.ballClip._x - this.bounceBack;
            }
            else
            {
               var lastX = this.ballClip._x + this.bounceBack;
            }
            this.newTween = new mx.transitions.TweenExtended(this.ballClip,["_x","_y"],mx.transitions.easing.Regular.easeOut,[this.ballClip._x,this.ballClip._y],[lastX,this.lastY],2,true);
         }
         if(this.thisClass.COLLISION.hitTest(this.ballClip._x + this.thisClass.WORLD._x,this.ballClip._y + this.thisClass.WORLD._y,1))
         {
            this.newTween.stop();
            this.hitBoundary = true;
            if(this.ballClip.xDir == "left")
            {
               var lastX = this.ballClip._x + 50;
            }
            else
            {
               var lastX = this.ballClip._x - 50;
            }
            if(this.ballClip.yDir == "up")
            {
               _loc2_ = this.ballClip._y + 50;
            }
            else
            {
               _loc2_ = this.ballClip._y - 50;
            }
            this.newTween = new mx.transitions.TweenExtended(this.ballClip,["_x","_y"],mx.transitions.easing.Regular.easeOut,[this.ballClip._x,this.ballClip._y],[lastX,_loc2_],2,true);
         }
         if(this.thisClass.POOL.poolClip.ballHitMarker.hitTest(this.ballClip._x + this.thisClass.WORLD._x,this.ballClip._y + this.thisClass.WORLD._y,1))
         {
            this.newTween.stop();
            this.hitBoundary = true;
            if(this.ballClip.xDir == "left")
            {
               var lastX = this.ballClip._x + 50;
            }
            else
            {
               var lastX = this.ballClip._x - 50;
            }
            if(this.ballClip.yDir == "up")
            {
               _loc2_ = this.ballClip._y + 50;
            }
            else
            {
               _loc2_ = this.ballClip._y - 50;
            }
            this.newTween = new mx.transitions.TweenExtended(this.ballClip,["_x","_y"],mx.transitions.easing.Regular.easeOut,[this.ballClip._x,this.ballClip._y],[lastX,_loc2_],2,true);
         }
         if(this.hitBoundary)
         {
            clearInterval(this.thisClass.delayInitialBallInterval);
            this.hitBoundary = false;
            this.thisClass[this["tween" + ballId]].stop();
            this.onEnterFrame = null;
            clearInterval(this.thisClass.delayBoundaryBallInterval);
            this.thisClass.delayBoundaryBallInterval = setInterval(this.thisClass,"collisionTest",this.BOUNDARY_DELAY,this,this.ballId);
            clearInterval(this.thisClass.collisionTestInterval);
            this.thisClass.collisionTestInterval = setInterval(this.thisClass,"collisionTest",3000,this.ballClip);
         }
      };
   }
   function collisionTest(clip)
   {
      clearInterval(this.collisionTestInterval);
      if(this.COLLISION.hitTest(clip._x + this.WORLD._x,clip._y + this.WORLD._y,1))
      {
         clip._y = clip._y + 275;
      }
   }
   function delayBallEvent(mc, ballId)
   {
      clearInterval(this.delayInitialBallInterval);
      clearInterval(this.delayBoundaryBallInterval);
      this.startBallEvent(ballId);
   }
   function removeThisBall(id)
   {
      this.toyClip["ball" + id].removeMovieClip();
   }
}

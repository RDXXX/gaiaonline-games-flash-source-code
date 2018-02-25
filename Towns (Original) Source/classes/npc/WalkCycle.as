class classes.npc.WalkCycle
{
   var facing = 1;
   function WalkCycle(vAv, spd, mvPat)
   {
      this.moveOn = this.stopX = this.stopY = false;
      this.av = vAv;
      this.speed = spd[0];
      this.sit = spd[1];
      if(this.sit == true)
      {
         this.sitStart();
      }
      this.pattern = mvPat;
      this.rallyPoint = 0;
      _global.gBroadcaster.addListener(this);
   }
   function run(tx, ty)
   {
      if(this.speed != 0)
      {
         !this.moveOn?this.newMovePoint():this.walk();
      }
   }
   function newMovePoint()
   {
      if(random(10) == 1)
      {
         if(this.pattern.length == 0 || this.pattern == undefined)
         {
            this.tx = random(900);
            this.ty = random(900);
         }
         else
         {
            this.rallyPoint = this.rallyPoint + 1;
            if(this.rallyPoint == this.pattern.length)
            {
               this.rallyPoint = 0;
            }
            this.tx = this.pattern[this.rallyPoint][0];
            this.ty = this.pattern[this.rallyPoint][1];
         }
         this.getAngle();
         this.moveOn = true;
         this.orientPose("w");
      }
   }
   function facingAt(toX, toY)
   {
      if(this.sit == true)
      {
         clearInterval(this.interval);
      }
      this.rallyPoint = this.rallyPoint - 1;
      this.tx = toX;
      this.ty = toY;
      this.getAngle();
      this.stopMove();
      _global.gBroadcaster.removeListener(this);
   }
   function stopMove()
   {
      this.moveOn = this.stopX = this.stopY = false;
      this.orientPose("s");
   }
   function orientPose(stance)
   {
      switch(stance)
      {
         case "s":
            !(this.facing == 1 || this.facing == 2)?this.av.asset.gotoAndStop(2):this.av.asset.gotoAndStop(1);
            break;
         case "w":
            !(this.facing == 1 || this.facing == 2)?this.av.asset.gotoAndStop(4):this.av.asset.gotoAndStop(3);
            break;
         case "c":
            !(this.facing == 1 || this.facing == 2)?this.av.asset.gotoAndStop(6):this.av.asset.gotoAndStop(5);
      }
      if(!(this.facing == 0 || this.facing == 1))
      {
         this.av.asset._xscale = _loc0_ = -100;
         §§push(_loc0_);
      }
      else
      {
         this.av.asset._xscale = _loc0_ = 100;
         §§push(_loc0_);
      }
      §§pop();
   }
   function getAngle()
   {
      var _loc4_ = this.tx - this.av._x;
      var _loc3_ = this.ty - this.av._y;
      var _loc2_ = this.mode360(Math.atan2(_loc3_,_loc4_) / 3.141592653589793 * 180 + 90);
      this.facing = Math.min(int(_loc2_ / 90),3);
      this.dx = Math.sin(_loc2_ * 3.141592653589793 / 180) * this.speed;
      this.dy = (- Math.cos(_loc2_ * 3.141592653589793 / 180)) * this.speed;
   }
   function mode360(a)
   {
      return (a + 360) % 360;
   }
   function checkCollision()
   {
      if(_global.gCanvas.mask_canvas.hitTest(this.av._x + this.dx + _global.gCanvas._x,this.av._y + this.dy + _global.gCanvas._y,1))
      {
         this.stopMove();
      }
   }
   function walk()
   {
      this.checkCollision();
      var _loc3_ = this.av._x;
      var _loc2_ = this.av._y;
      if(!this.stopX)
      {
         if(_loc3_ + 5 > this.tx && _loc3_ - 5 < this.tx)
         {
            this.stopX = true;
         }
      }
      if(!this.stopY)
      {
         if(_loc2_ + 5 > this.ty && _loc2_ - 5 < this.ty)
         {
            this.stopY = true;
         }
      }
      if(this.stopX && this.stopY)
      {
         this.stopMove();
      }
      this.av._x = this.av._x + this.dx;
      this.av._y = this.av._y + this.dy;
   }
   function sitStart()
   {
      this.sitInt = setInterval(this,"sitDown",4000);
   }
   function sitDown()
   {
      if(_global.gAvMan.getMyAvatar().walkLock == false)
      {
         clearInterval(this.sitInt);
         this.facingAt(this.tx,this.ty);
         this.orientPose("c");
         this.interval = setInterval(this,"standUp",10000);
      }
   }
   function standUp()
   {
      this.sitStart();
      this.orientPose("s");
      clearInterval(this.interval);
      _global.gBroadcaster.addListener(this);
   }
   function restartMotion()
   {
      if(this.sit == true)
      {
         this.sitStart();
         this.rallyPoint = this.rallyPoint + 1;
      }
      _global.gBroadcaster.addListener(this);
   }
}

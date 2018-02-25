class classes.collectables.MovingSprites extends classes.collectables.Collectables
{
   var moving = false;
   var facing = 1;
   var collisionDetect = false;
   function MovingSprites(serial, img, type, xPos, yPos, mv, spd)
   {
      super(type,0,img,xPos,yPos,serial);
      this.range.setPosition(0,0);
      this.movement = mv;
      this.speed = spd;
      this.spriteType = type;
      if(type == "raref" || type == "rareg")
      {
         _global.gAvMan.getMyAvatar().emoteBubble.playEmote(2,"bugeye");
      }
      switch(type)
      {
         case "ground":
         case "rareg":
         case "easter":
            break;
         default:
            this.sprite.ignoreZorder = true;
      }
      this.collisionDetect = true;
   }
   function startMoving()
   {
      _global.gBroadcaster.addListener(this);
   }
   function getAngle()
   {
      var _loc2_ = this.targetY - this.sprite._y;
      var _loc3_ = this.targetX - this.sprite._x;
      this.angle = this.mode360(Math.atan2(_loc2_,_loc3_) / 3.141592653589793 * 180 + 90);
      this.facing = Math.min(int(this.angle / 90),3);
      this.dx = Math.sin(this.angle * 3.141592653589793 / 180) * this.speed;
      this.dy = (- Math.cos(this.angle * 3.141592653589793 / 180)) * this.speed;
      this.moving = true;
   }
   function mode360(a)
   {
      return (a + 360) % 360;
   }
   function stopMove()
   {
      this.stopX = this.stopY = false;
      this.dx = this.dy = 0;
      this.moving = false;
      this.orientPose("s");
   }
   function run()
   {
      if(this.moving)
      {
         var _loc4_ = this.targetX;
         var _loc3_ = this.targetY;
         var _loc6_ = this.sprite._x;
         var _loc5_ = this.sprite._y;
         var _loc2_ = 15;
         if(_loc6_ + _loc2_ > _loc4_ && _loc6_ - _loc2_ < _loc4_)
         {
            this.stopX = true;
         }
         if(_loc5_ + _loc2_ > _loc3_ && _loc5_ - _loc2_ < _loc3_)
         {
            this.stopY = true;
         }
         if(this.stopX == true && this.stopY == true)
         {
            this.stopMove();
         }
         else
         {
            this.sprite._x = this.sprite._x + this.dx;
            this.sprite._y = this.sprite._y + this.dy;
            if(this.collisionDetect)
            {
               this.checkCollision();
            }
         }
      }
      else if(random(this.movement) == 1)
      {
         this.nextPath();
      }
   }
   function nextPath()
   {
      this.targetX = random(1024);
      this.targetY = random(1024);
      this.getAngle();
      this.orientPose("w");
   }
   function orientPose(stance)
   {
      switch(stance)
      {
         case "s":
            !(this.facing == 1 || this.facing == 2)?this.sprite.image.gotoAndStop(2):this.sprite.image.gotoAndStop(1);
            break;
         case "w":
            !(this.facing == 1 || this.facing == 2)?this.sprite.image.gotoAndStop(4):this.sprite.image.gotoAndStop(3);
      }
      if(!(this.facing == 0 || this.facing == 1))
      {
         this.sprite.image._xscale = _loc0_ = -100;
         §§push(_loc0_);
      }
      else
      {
         this.sprite.image._xscale = _loc0_ = 100;
         §§push(_loc0_);
      }
      §§pop();
   }
   function checkCollision()
   {
      var _loc4_ = _global.gCanvas._x;
      var _loc3_ = _global.gCanvas._y;
      if(_global.gCanvas.mask_canvas.hitTest(this.sprite._x + this.dx + _loc4_,this.sprite._y + this.dy + _loc3_,1))
      {
         this.stopMove();
      }
   }
   function collect()
   {
      var _loc3_ = this.range.testRange(_global.gAvMan.getMyAvatar().range);
      if(_loc3_)
      {
         this.sprite.enabled = false;
         this.stopMove();
         _global.gBroadcaster.removeListener(this);
         this.emoteBubble.playEquip(this.equipment);
         if((var _loc0_ = this.spriteType) !== "easter")
         {
            _global.gsiMethod.invoke("361",[_global.mapData[0],this.spriteSerial],this.collectResult,this,false);
         }
         else
         {
            _global.gsiMethod.invoke("369",[this.spriteSerial],this.collectResult,this,false);
         }
      }
      else
      {
         this.emoteBubble.playEquipMiss();
      }
   }
   function spriteEnable(stat)
   {
      this.sprite.enabled = stat;
      _global.gBroadcaster.addListener(this);
   }
}

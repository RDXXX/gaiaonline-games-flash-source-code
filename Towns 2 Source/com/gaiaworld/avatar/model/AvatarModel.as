package com.gaiaworld.avatar.model
{
   import com.gaiaworld.avatar.constants.AvatarConstants;
   import com.gaiaworld.avatar.controller.events.AvatarMoveEvent;
   import com.gaiaworld.avatar.controller.events.KneelEvent;
   import com.gaiaworld.avatar.controller.events.OtherEvent;
   import com.gaiaworld.avatar.interfaces.IActionGroup;
   import com.gaiaworld.avatar.interfaces.IAvatar;
   import com.gaiaworld.avatar.vo.PathVo;
   import com.gaiaworld.house.controller.events.ScrollEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class AvatarModel extends EventDispatcher
   {
      
      private static var instance:AvatarModel;
       
      
      private var _pathArray:Array;
      
      public var targetX:Number;
      
      public var targetY:Number;
      
      public var targetX2:Number;
      
      public var targetZ2:Number;
      
      public var currentX:Number = 0;
      
      public var currentY:Number = 0;
      
      public var action:String;
      
      private var _globalX:Number = 0;
      
      private var _globalY:Number = 0;
      
      private var _gridX:Number = 0;
      
      private var _gridZ:Number = 0;
      
      private var _movingY:Number = 0;
      
      private var _movingX:Number = 0;
      
      private var speed:Number = 40;
      
      public var avatar:IAvatar;
      
      public var isBlocked:Boolean = false;
      
      public var currentPos:String;
      
      public var actions:IActionGroup;
      
      private var _keyIsDown:Boolean = false;
      
      public var transportFlag:Boolean = false;
      
      public var transportX:Number = -1;
      
      public var transportY:Number = -1;
      
      public var transportRoom:String;
      
      public var avatarDelay:Number = 25;
      
      public var avatarSpeed:Number = 0.5;
      
      public var showReflection:Boolean = false;
      
      private var _userControl:Boolean = true;
      
      private var _throwingFlag:Boolean;
      
      private var lastClick:Number = 0;
      
      private var clicks:Number = -1;
      
      private var notSent:Number = 0;
      
      private var _pathFinding:Boolean = false;
      
      public var useFullCollision:Boolean = false;
      
      public var scale:Number = 100;
      
      private var _pfArray:Vector.<PathVo>;
      
      private var tspeed:Number = 1000;
      
      public var showMenus:Boolean = true;
      
      public var showShadow:Boolean = true;
      
      public var keyWasUsed:Boolean = false;
      
      public var avatarStrip:String = "";
      
      public var ignoreX:Boolean = false;
      
      public var ignoreY:Boolean = false;
      
      public var userNameTextSize:Number = 14;
      
      public var useWhiteText:Boolean = false;
      
      public var setAtStartAfterJump:Boolean = false;
      
      public var shiftIsDown:Boolean = false;
      
      private var _walkSpeed:Number = 3;
      
      public var runSpeed:Number = 12;
      
      public var updateOnStop:Boolean = true;
      
      public var updateServerOnMove:Boolean = true;
      
      private var _useAnimations:Boolean = true;
      
      public var allowArrowKeys:Boolean = true;
      
      public var ignoreCMap:Boolean = false;
      
      private var _animatedItemY:Number = -14;
      
      private var _animatedItemX:Number = 0;
      
      public function AvatarModel()
      {
         this._pathArray = new Array();
         this._pfArray = new Vector.<PathVo>();
         super();
      }
      
      public static function getInstance() : AvatarModel
      {
         if(instance == null)
         {
            instance = new AvatarModel();
         }
         return instance;
      }
      
      public function setTarget(param1:Number, param2:Number) : *
      {
         this.targetX = param1;
         this.targetY = param2;
         var _loc3_:Number = new Date().getTime();
         var _loc4_:Number = _loc3_ - this.lastClick;
         this.clicks++;
         if(this.userControl == true && _loc4_ > 200)
         {
            this.lastClick = _loc3_;
            this.dispatchEvent(new Event(AvatarConstants.TARGET_UPDATED,false));
         }
         else
         {
            this.notSent++;
         }
      }
      
      public function setKeyTarget(param1:Number, param2:Number) : *
      {
         this.targetX = param1;
         this.targetY = param2;
         this.dispatchEvent(new Event(AvatarConstants.TARGET_UPDATED,false));
      }
      
      public function tryTarget(param1:Number, param2:Number) : *
      {
         this.targetX2 = param1;
         this.targetZ2 = param2;
         this.dispatchEvent(new Event(AvatarConstants.TRY_TARGET,false));
      }
      
      public function moveUp() : *
      {
         if(this.avatar.isKneeling == false)
         {
            this.setTarget(this.avatar.clip.x,this.avatar.clip.y - this.tspeed);
         }
         else
         {
            this.dispatchEvent(new KneelEvent(KneelEvent.KNEEL,1));
         }
      }
      
      public function moveNE() : *
      {
         if(this.avatar.isKneeling == false)
         {
            this.setTarget(this.avatar.clip.x + this.tspeed,this.avatar.clip.y - this.tspeed);
         }
      }
      
      public function moveSE() : *
      {
         if(this.avatar.isKneeling == false)
         {
            this.setTarget(this.avatar.clip.x + this.tspeed,this.avatar.clip.y + this.tspeed);
         }
      }
      
      public function moveSW() : *
      {
         if(this.avatar.isKneeling == false)
         {
            this.setTarget(this.avatar.clip.x - this.tspeed,this.avatar.clip.y + this.tspeed);
         }
      }
      
      public function moveNW() : *
      {
         if(this.avatar.isKneeling == false)
         {
            this.setTarget(this.avatar.clip.x - this.tspeed,this.avatar.clip.y - this.tspeed);
         }
      }
      
      public function moveDown() : *
      {
         if(this.avatar.isKneeling == false)
         {
            this.setTarget(this.avatar.clip.x,this.avatar.clip.y + this.tspeed);
         }
         else
         {
            this.dispatchEvent(new KneelEvent(KneelEvent.KNEEL,2));
         }
      }
      
      public function moveLeft() : *
      {
         if(this.avatar.isKneeling == false)
         {
            this.setTarget(this.avatar.clip.x - this.tspeed,this.avatar.clip.y);
         }
         else
         {
            this.dispatchEvent(new KneelEvent(KneelEvent.KNEEL,3));
         }
      }
      
      public function moveRight() : *
      {
         if(this.avatar.isKneeling == false)
         {
            this.setTarget(this.avatar.clip.x + this.tspeed,this.avatar.clip.y);
         }
         else
         {
            this.dispatchEvent(new KneelEvent(KneelEvent.KNEEL,4));
         }
      }
      
      public function doAction(param1:String) : *
      {
         this.action = param1;
         this.dispatchEvent(new Event(AvatarConstants.ACTION_SET));
      }
      
      public function get pathArray() : Array
      {
         return this._pathArray;
      }
      
      public function set pathArray(param1:Array) : void
      {
         this._pathArray = param1;
         this.dispatchEvent(new Event(AvatarConstants.PATH_SET,false));
      }
      
      public function get globalX() : Number
      {
         return this._globalX;
      }
      
      public function set globalX(param1:Number) : void
      {
         if(param1 != this._globalX)
         {
            this.dispatchEvent(new Event(AvatarConstants.AVATAR_IS_MOVING,true));
         }
         this._globalX = param1;
         if(this._globalX < AvatarConstants.LEFT_BORDER)
         {
            this.dispatchEvent(new ScrollEvent(ScrollEvent.SCROLL,ScrollEvent.SCROLL_LEFT,true));
         }
         if(this._globalX > AvatarConstants.RIGHT_BORDER)
         {
            this.dispatchEvent(new ScrollEvent(ScrollEvent.SCROLL,ScrollEvent.SCROLL_RIGHT,true));
         }
      }
      
      public function get globalY() : Number
      {
         return this._globalY;
      }
      
      public function set globalY(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(param1 != this._globalY)
         {
            this.dispatchEvent(new Event(AvatarConstants.AVATAR_IS_MOVING,true));
         }
         this._globalY = param1;
         if(this._globalY < AvatarConstants.TOP_BORDER && this._movingY == -1)
         {
            _loc2_ = this._globalY - AvatarConstants.TOP_BORDER;
            this.dispatchEvent(new ScrollEvent(ScrollEvent.SCROLL,ScrollEvent.SCROLL_UP,true));
         }
         if(this._globalY > AvatarConstants.BOTTOM_BORDER && this._movingY == 1)
         {
            _loc3_ = this._globalY - AvatarConstants.BOTTOM_BORDER;
            this.dispatchEvent(new ScrollEvent(ScrollEvent.SCROLL,ScrollEvent.SCROLL_DOWN,true));
         }
      }
      
      public function get gridX() : Number
      {
         return this._gridX;
      }
      
      public function set gridX(param1:Number) : void
      {
         this._gridX = param1;
      }
      
      public function get gridZ() : Number
      {
         return this._gridZ;
      }
      
      public function set gridZ(param1:Number) : void
      {
         this._gridZ = param1;
      }
      
      public function get movingY() : Number
      {
         return this._movingY;
      }
      
      public function set movingY(param1:Number) : void
      {
         this._movingY = param1;
      }
      
      public function get movingX() : Number
      {
         return this._movingX;
      }
      
      public function set movingX(param1:Number) : void
      {
         this._movingX = param1;
      }
      
      public function get throwingFlag() : Boolean
      {
         return this._throwingFlag;
      }
      
      public function set throwingFlag(param1:Boolean) : void
      {
         this._throwingFlag = param1;
         this.dispatchEvent(new Event(AvatarConstants.THROWING_FLAG_CHANGED,true));
      }
      
      public function get pfArray() : Vector.<PathVo>
      {
         return this._pfArray;
      }
      
      public function set pfArray(param1:Vector.<PathVo>) : void
      {
         this._pfArray = param1;
      }
      
      public function get pathFinding() : Boolean
      {
         return this._pathFinding;
      }
      
      public function set pathFinding(param1:Boolean) : void
      {
         if(this.userControl == false)
         {
            return;
         }
         this._pathFinding = param1;
      }
      
      public function get walkSpeed() : Number
      {
         return this._walkSpeed;
      }
      
      public function set walkSpeed(param1:Number) : void
      {
         if(param1 < 2)
         {
            param1 = 2;
         }
         this._walkSpeed = param1;
      }
      
      public function get userControl() : Boolean
      {
         return this._userControl;
      }
      
      public function set userControl(param1:Boolean) : void
      {
         this._userControl = param1;
         this.dispatchEvent(new Event(AvatarConstants.USER_CONTROL_UPDATED,true));
      }
      
      public function get keyIsDown() : Boolean
      {
         return this._keyIsDown;
      }
      
      public function set keyIsDown(param1:Boolean) : void
      {
         this._keyIsDown = param1;
         this.dispatchEvent(new Event(AvatarConstants.KEY_IS_PRESSED,true));
      }
      
      public function get animatedItemX() : Number
      {
         return this._animatedItemX;
      }
      
      public function set animatedItemX(param1:Number) : void
      {
         this._animatedItemX = param1;
         this.dispatchEvent(new Event(AvatarConstants.ANIMATED_ITEM_X_CHANGED,true));
      }
      
      public function get animatedItemY() : Number
      {
         return this._animatedItemY;
      }
      
      public function set animatedItemY(param1:Number) : void
      {
         this._animatedItemY = param1;
         this.dispatchEvent(new Event(AvatarConstants.ANIMATED_ITEM_Y_CHANGED,true));
      }
      
      public function get useAnimations() : Boolean
      {
         return this._useAnimations;
      }
      
      public function set useAnimations(param1:Boolean) : void
      {
         this._useAnimations = param1;
      }
      
      public function getNextPathFind() : PathVo
      {
         if(this._pfArray != null)
         {
            return this._pfArray.shift();
         }
         return null;
      }
      
      public function setOtherAction(param1:Number, param2:String, param3:String) : *
      {
         this.dispatchEvent(new OtherEvent(OtherEvent.OTHER_ACTION,param1,param2,param3));
      }
      
      public function setNewUser() : *
      {
      }
      
      public function setAtStart() : *
      {
         this.avatar.setAtStart();
         this.dispatchEvent(new AvatarMoveEvent(AvatarMoveEvent.AVATAR_HAS_STOPPED,this.avatar,true));
      }
      
      public function nextSpot() : void
      {
         var _loc1_:PathVo = this.getNextPathFind();
         if(_loc1_ != null)
         {
            this.targetX = _loc1_.x;
            this.targetY = _loc1_.y;
            this.dispatchEvent(new Event(AvatarConstants.TARGET_UPDATED,false));
         }
      }
      
      public function disablePathFinding() : void
      {
         this.dispatchEvent(new Event(AvatarConstants.DISABLED_PATH_FINDING,true));
      }
      
      public function setSpeed(param1:Number) : void
      {
         this.avatarSpeed = param1;
         if(this.avatar)
         {
            if(this.avatar.dataProvider)
            {
               this.avatar.dataProvider.speed = param1;
            }
         }
      }
      
      public function showMoving() : void
      {
         this.avatar.clip.dispatchEvent(new AvatarMoveEvent(AvatarMoveEvent.AVATAR_IS_MOVING,this.avatar,true));
      }
      
      public function setPos(param1:Number, param2:Number) : void
      {
         this.avatar.clip.x = param1;
         this.avatar.clip.y = param2;
         this.avatar.clip.dispatchEvent(new AvatarMoveEvent(AvatarMoveEvent.AVATAR_HAS_STOPPED,this.avatar,true));
      }
      
      public function shake() : *
      {
         this.dispatchEvent(new Event(AvatarConstants.SHAKE,true));
      }
   }
}

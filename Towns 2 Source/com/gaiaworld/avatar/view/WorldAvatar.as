package com.gaiaworld.avatar.view
{
   import com.afcomponents.common.display.BitmapReflection;
   import com.afcomponents.common.graphics.ReflectionStyle;
   import com.gaiaworld.avatar.constants.AvatarConstants;
   import com.gaiaworld.avatar.controller.AvatarController;
   import com.gaiaworld.avatar.controller.events.AvatarMoveEvent;
   import com.gaiaworld.avatar.controller.events.KneelEvent;
   import com.gaiaworld.avatar.controller.events.OtherEvent;
   import com.gaiaworld.avatar.controller.events.SwapEvent;
   import com.gaiaworld.avatar.effects.Static;
   import com.gaiaworld.avatar.interfaces.IActionGroup;
   import com.gaiaworld.avatar.interfaces.IAvatar;
   import com.gaiaworld.avatar.model.AvatarModel;
   import com.gaiaworld.global.controller.EventController;
   import com.gaiaworld.global.controller.GlobalController;
   import com.gaiaworld.global.interfaces.ISurface;
   import com.gaiaworld.global.model.GlobalModel;
   import com.gaiaworld.gobjects.constants.CollisionConstants;
   import com.gaiaworld.house.controller.DebugController;
   import com.gaiaworld.room.controller.RoomController;
   import com.gaiaworld.room.interfaces.ISurfaceObject;
   import com.gaiaworld.room.interfaces.IWorldItem;
   import com.gaiaworld.room.model.RoomModel;
   import com.gaiaworld.sushi.constants.ChatConstants;
   import com.gaiaworld.sushi.controller.ChatController;
   import com.gaiaworld.sushi.controller.events.ChatEvent;
   import com.gaiaworld.sushi.model.ChatModel;
   import com.gaiaworld.towns.hood.controller.HoodController;
   import com.gaiaworld.towns.hood.model.HoodModel;
   import com.gaiaworld.user.controller.UserController;
   import com.gaiaworld.user.model.UserModel;
   import com.gaiaworld.user.vo.UserVo;
   import fl.motion.AdjustColor;
   import fl.transitions.Tween;
   import fl.transitions.TweenEvent;
   import fl.transitions.easing.None;
   import flash.display.BitmapData;
   import flash.display.Loader;
   import flash.display.Shape;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.filters.ColorMatrixFilter;
   import flash.net.URLRequest;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.utils.Timer;
   
   public class WorldAvatar extends Sprite implements IAvatar, ISurfaceObject
   {
      
      public static const MY_NAME:String = "worldAvatar";
      
      public static const ANIMATION_DONE:String = "animationDone";
       
      
      private var stripArray:Array;
      
      private var loader:Loader;
      
      public var face:String;
      
      public var dir:String;
      
      public var pos:Number = 0;
      
      private var targetY:Number;
      
      private var targetX:Number;
      
      private var _depth2:Number = 0;
      
      public var movingX:Number;
      
      public var movingY:Number;
      
      private var offY:Number = -50;
      
      private var offX:Number = 25;
      
      private var avatarController:AvatarController;
      
      private var avatarModel:AvatarModel;
      
      private var debugController:DebugController;
      
      private var _surface:ISurface;
      
      private var xx:Number;
      
      private var zz:Number;
      
      private var _blockedItem:IWorldItem;
      
      private var _isBlocked:Boolean = false;
      
      private var _currentAction:String = "none";
      
      private var _isKneeling:Boolean = false;
      
      private var _isJumping:Boolean = false;
      
      private var _isWalking:Boolean = false;
      
      private var jumpY:Number = 0;
      
      private var jumpDir:Number = -1;
      
      private var jumpCount:Number = 0;
      
      private var action:String = "none";
      
      private var actions:IActionGroup;
      
      private var _checkBlockedFunction:Function;
      
      private var avMask:AvatarLoader;
      
      private var _avatarLoader:AvatarLoader;
      
      private var chatController:ChatController;
      
      private var userModel:UserModel;
      
      private var userController:UserController;
      
      private var globalModel:GlobalModel;
      
      private var scroller:Object;
      
      public var level:Number = 1;
      
      private var _ignoreTarget:Boolean = false;
      
      private var userText:TextField;
      
      private var chatModel:ChatModel;
      
      private var xTween:Tween;
      
      private var yTween:Tween;
      
      private var facing:Number;
      
      private var dx:Number;
      
      private var dy:Number;
      
      private var speed:Number = 1;
      
      private var stopX:Boolean = false;
      
      private var stopY:Boolean = false;
      
      private var surfaceX:Number;
      
      private var surfaceY:Number;
      
      private const PI:Number = 3.141592653589793;
      
      private var _dataProvider:UserVo;
      
      private var _collideClip:Sprite;
      
      private var orignalY:Number;
      
      private var gender:String;
      
      private var roomModel:RoomModel;
      
      private var globalController:GlobalController;
      
      private var legsHidden:Boolean = false;
      
      private var attachedLoader:Loader;
      
      var db:DebugController;
      
      private var _keepOnTop:Boolean;
      
      private var lastUpdate:Number = 0;
      
      private var _status:String = "normal";
      
      private var _isLocked:Boolean = false;
      
      private var _sx:Number = 0;
      
      private var _sy:Number = 0;
      
      private var _hitBy:IAvatar;
      
      private var _depthDef:Number = 0;
      
      private var _showWalk:Boolean = true;
      
      private var jumpTween:Tween;
      
      private var afcReflection:BitmapReflection;
      
      private var isSwimming:Boolean;
      
      private var attachArray:Array;
      
      private var itemClip:Sprite;
      
      private var _immunity:Boolean = false;
      
      private var immunityResetTimer:Timer;
      
      private var shadow:Shape;
      
      private var swimMask:Shape;
      
      private var walkCount:Number = 0;
      
      private var eventController:EventController;
      
      private var hoodModel:HoodModel;
      
      private var hoodController:HoodController;
      
      private var flipTween:Tween;
      
      private var _chatStatus:String;
      
      private var effectClip:Sprite;
      
      public function WorldAvatar()
      {
         this.stripArray = new Array();
         this.loader = new Loader();
         this.avatarController = new AvatarController();
         this.avatarModel = AvatarModel.getInstance();
         this.debugController = new DebugController();
         this._avatarLoader = new AvatarLoader();
         this.chatController = new ChatController();
         this.userModel = UserModel.getInstance();
         this.userController = new UserController();
         this.globalModel = GlobalModel.getInstance();
         this.userText = new TextField();
         this.chatModel = ChatModel.getInstance();
         this._collideClip = new Sprite();
         this.roomModel = RoomModel.getInstance();
         this.globalController = new GlobalController();
         this.attachedLoader = new Loader();
         this.db = new DebugController();
         this.attachArray = new Array();
         this.itemClip = new Sprite();
         this.immunityResetTimer = new Timer(5000);
         this.eventController = new EventController();
         this.hoodModel = HoodModel.getInstance();
         this.hoodController = new HoodController();
         this.effectClip = new Sprite();
         super();
         this.focusRect = false;
         this._avatarLoader.addEventListener(AvatarLoader.USE_MASK,this.addMask);
         this._avatarLoader.addEventListener(AvatarLoader.AVATAR_LOADED,this.avLoaded);
         this.eventController.addEventListener(this,Event.ENTER_FRAME,this.doTheWalk3);
         this.eventController.addEventListener(this,MouseEvent.MOUSE_DOWN,this.clickMe);
         this.eventController.addEventListener(this.chatModel,ChatConstants.COLORS_READY,this.setName);
         this.eventController.addEventListener(this.avatarModel,AvatarConstants.ACTION_SET,this.doAction);
         this.eventController.addEventListener(this.avatarModel,KneelEvent.KNEEL,this.doKneel3);
         this.eventController.addEventListener(this.avatarModel,AvatarConstants.SHAKE,this.shake);
         this.addChild(this.avatarLoader);
         this.userText.multiline = false;
         this.userText.mouseEnabled = false;
         this.userText.autoSize = TextFieldAutoSize.CENTER;
         if(this.userModel.userVo.userName != null && this.userModel.userVo.userName != "")
         {
            this.setName2();
         }
         this.makeCollide();
         if(this.avatarModel.showReflection == true)
         {
            this.showReflection();
         }
         this.makeSwimMask();
         this.addChild(this.attachedLoader);
         this.addChild(this.userText);
         this.addChild(this.itemClip);
         this.useHandCursor = true;
      }
      
      private function avLoaded(param1:Event) : void
      {
         if(this.avatarModel.showShadow == true)
         {
            this.makeShadow();
         }
      }
      
      private function addMask(param1:Event) : *
      {
         var _loc5_:ColorMatrixFilter = null;
         var _loc6_:Array = null;
         this.avMask = new AvatarLoader();
         this.avMask.setStrip(this.avatarModel.avatarStrip);
         this.avMask.x = this.avatarLoader.x;
         this.avMask.y = this.avatarLoader.y;
         var _loc2_:Static = new Static();
         var _loc3_:BitmapData = new BitmapData(this.avatarLoader.width,this.avatarLoader.height,true);
         _loc3_.draw(this.avatarLoader);
         _loc2_.x = this.avatarLoader.x - 80;
         _loc2_.y = this.avatarLoader.y - 150;
         _loc2_.alpha = 0.2;
         _loc2_.setData(_loc3_);
         this.effectClip.addChild(_loc2_);
         var _loc4_:AdjustColor = new AdjustColor();
         _loc4_.brightness = 0;
         _loc4_.hue = 0;
         _loc4_.contrast = 0;
         _loc4_.saturation = -100;
         _loc6_ = _loc4_.CalculateFinalFlatArray();
         _loc5_ = new ColorMatrixFilter(_loc6_);
         this.filters = [_loc5_];
         this.effectClip.cacheAsBitmap = true;
         this.avMask.cacheAsBitmap = true;
         this.addChild(this.effectClip);
         this.addChild(this.avMask);
         this.effectClip.mask = this.avMask;
      }
      
      public function get userID() : Number
      {
         return this.dataProvider.gaia_id;
      }
      
      public function actionReceived(param1:OtherEvent) : void
      {
      }
      
      private function shake(param1:Event) : void
      {
      }
      
      private function clickMe(param1:MouseEvent) : *
      {
         this.avatarController.setTarget(this.x + this.mouseX,this.y + this.mouseY - 30);
      }
      
      private function makeSwimMask() : *
      {
         this.swimMask = new Shape();
         this.swimMask.graphics.beginFill(0,0.5);
         this.swimMask.graphics.drawRect(0,0,110,90);
         this.swimMask.graphics.endFill();
         this.swimMask.x = -50;
         this.swimMask.y = -115;
      }
      
      private function makeShadow() : *
      {
         this.shadow = new Shape();
         if(this.gender != "Animal")
         {
            this.shadow.graphics.beginFill(0,0.2);
            this.shadow.graphics.drawEllipse(0,0,40,15);
            this.shadow.x = -10;
            this.shadow.y = 12;
         }
         else
         {
            this.shadow.graphics.beginFill(0,0.2);
            this.shadow.graphics.drawEllipse(0,0,40,15);
            this.shadow.y = 2;
            this.shadow.x = -6;
            this.shadow.scaleX = 0.9;
            this.shadow.scaleY = 0.9;
         }
         this.addChildAt(this.shadow,0);
      }
      
      private function makeCollide() : *
      {
         this.collideClip.y = 20;
         this.collideClip.x = -10;
         this.collideClip.graphics.lineStyle(1,0);
         this.collideClip.graphics.beginFill(0,1);
         this.collideClip.graphics.drawCircle(0,0,5);
         this.collideClip.graphics.endFill();
         this.addChild(this.collideClip);
         this.collideClip.visible = false;
      }
      
      private function setName(param1:Event) : void
      {
         this.setName2();
      }
      
      public function attachToAvatar(param1:String) : void
      {
         this.attachedLoader.load(new URLRequest(param1));
         this.attachedLoader.visible = true;
         this.eventController.addEventListener(this.attachedLoader,ANIMATION_DONE,this.removeAttached);
      }
      
      public function removeAttached(param1:Event = null) : *
      {
         this.eventController.removeEventListener(this.attachedLoader,ANIMATION_DONE,this.removeAttached);
         this.attachedLoader.unload();
      }
      
      private function setName2() : *
      {
         var _loc1_:Number = this.chatModel.getColor(this.userModel.userVo.user_level);
         if(this.avatarModel.useWhiteText == true)
         {
            if(_loc1_ == 0)
            {
               _loc1_ = 16777215;
            }
         }
         var _loc2_:TextFormat = new TextFormat();
         _loc2_.color = _loc1_;
         _loc2_.size = this.avatarModel.userNameTextSize;
         _loc2_.font = new Font1().fontName;
         _loc2_.bold = true;
         _loc2_.align = "center";
         this.userText.embedFonts = true;
         this.userText.defaultTextFormat = _loc2_;
         if(this.userModel.userVo.userName != null)
         {
            this.userText.text = this.userModel.userVo.userName;
            this.userText.x = -this.userText.width / 2 + 15;
            this.userText.y = 28;
         }
      }
      
      public function setStrip(param1:String) : void
      {
         this.avatarLoader.setStrip(param1);
         this.avatarController.setImage(param1);
         this.eventController.addEventListener(this.avatarModel,AvatarConstants.TARGET_UPDATED,this.targetUpdated);
      }
      
      public function walk(param1:String, param2:String) : void
      {
         this.face = param2;
         this.dir = param1;
         if(this._dataProvider)
         {
            this.avatarLoader.gender = this.gender;
         }
         this.avatarLoader.setFaceDir(this.dir,this.face);
         if(this.avMask)
         {
            this.avMask.setFaceDir(this.dir,this.face);
         }
         if(this.globalModel.isInSittingGame == true)
         {
            this.doKneel();
         }
         else if(this.legsHidden == false)
         {
            if(this.avatarModel.action != AvatarConstants.ACTION_FLY)
            {
               if(this.showWalk == true)
               {
                  this.avatarLoader.legsWalk();
                  if(this.avMask)
                  {
                     this.avMask.legsWalk();
                  }
               }
               else
               {
                  this.doStand();
               }
            }
            else
            {
               this.avatarLoader.doKneel();
               if(this.avMask)
               {
                  this.avMask.doKneel();
               }
            }
         }
      }
      
      public function getMyName() : String
      {
         return "user-avatar";
      }
      
      public function get myName() : String
      {
         return "worldAvatar";
      }
      
      public function get clip() : Sprite
      {
         return this as Sprite;
      }
      
      public function doStand() : void
      {
         this.standStill(this.dir,this.face);
      }
      
      public function standStill(param1:String, param2:String) : void
      {
         if(this.globalModel.isInSittingGame == true)
         {
            return;
         }
         if(this.isKneeling == true)
         {
            this.dispatchEvent(new Event(AvatarConstants.UNKNEEL,true));
         }
         this.isWalking = false;
         this.isKneeling = false;
         this.dir = param1;
         this.face = param2;
         this.avatarLoader.legsStopWalk();
         if(this.avMask)
         {
            this.avMask.legsStopWalk();
         }
         if(this.legsHidden == false)
         {
            this.avatarLoader.standStill(param1,param2);
            if(this.avMask)
            {
               this.avMask.standStill(param1,param2);
            }
         }
         this.avatarController.setMoving(0,0);
         this.dispatchEvent(new AvatarMoveEvent(AvatarMoveEvent.AVATAR_HAS_STOPPED,this,true));
         this.updatePosOnServer();
         if(this.avatarModel.updateOnStop == true)
         {
            this.updateOnStop();
         }
      }
      
      public function doKneel() : void
      {
         if(this.currentAction != "none")
         {
            this.actions.stopAction();
         }
         this.avatarLoader.doKneel();
         if(this.avMask)
         {
            this.avatarLoader.doKneel();
         }
         this.isKneeling = true;
         this.updateSpecial();
         this.dispatchEvent(new Event(AvatarConstants.ACTION_KNEEL));
      }
      
      public function setDir(param1:String) : void
      {
         this.dir = param1;
         this.avatarLoader.setDir(param1);
         if(this.avMask)
         {
            this.avMask.setDir(param1);
         }
      }
      
      private function targetUpdated(param1:Event) : *
      {
         if(this.avatarModel.userControl == false)
         {
            return;
         }
         if(this.avatarModel.throwingFlag == true && this.avatarModel.keyIsDown == false)
         {
            return;
         }
         if(this.isLocked == true)
         {
            return;
         }
         this.avatarController.clearTransport();
         if(this.actions)
         {
            if(this.action != "none")
            {
               this.actions.stopAction();
            }
         }
         this.isWalking = false;
         var _loc2_:Number = this.avatarModel.targetX;
         var _loc3_:Number = this.avatarModel.targetY;
         if(this.avatarModel.ignoreX == true)
         {
            _loc2_ = this.x;
         }
         if(this.avatarModel.ignoreY == true)
         {
            _loc3_ = this.y;
            this.face = AvatarConstants.FACE_FRONT;
         }
         this.startWalkToOnServer(_loc2_,_loc3_);
         this.walkTo(_loc2_,_loc3_);
         this.dispatchEvent(new AvatarMoveEvent(AvatarMoveEvent.AVATAR_IS_MOVING,this,true));
      }
      
      public function walkTo(param1:Number, param2:Number) : void
      {
         if(this.isLocked == true)
         {
         }
         if(this._dataProvider)
         {
            this._dataProvider.speed = this.avatarModel.avatarSpeed;
         }
         this.speed = this.avatarModel.avatarSpeed;
         if(this.actions)
         {
            this.actions.stopAction();
         }
         this.action = "none";
         this.targetY = param2;
         this.targetX = param1;
         var _loc3_:Number = param1 - this.x;
         var _loc4_:Number = param2 - this.y;
         if(_loc3_ > 0)
         {
            _loc3_ = 1;
         }
         if(_loc3_ < 0)
         {
            _loc3_ = -1;
         }
         if(_loc4_ < 0)
         {
            _loc4_ = -1;
         }
         if(_loc4_ > 0)
         {
            _loc4_ = 1;
         }
         this.collideClip.x = _loc3_ * 6;
         this.collideClip.y = _loc4_ * 6;
         if(this.currentAction != AvatarConstants.ACTION_JUMP)
         {
            this.blockedItem = null;
            this.collideClip.x = _loc3_ * 20;
            this.collideClip.y = _loc4_ * 20;
         }
         if(this.isKneeling == true)
         {
            this.doKneel2(_loc3_,_loc4_);
            return;
         }
         if(_loc3_ == -1 && _loc4_ == -1)
         {
            this.walk(AvatarConstants.DIR_LEFT,AvatarConstants.FACE_BACK);
         }
         if(_loc3_ == 1 && _loc4_ == -1)
         {
            this.walk(AvatarConstants.DIR_RIGHT,AvatarConstants.FACE_BACK);
         }
         if(_loc3_ == -1 && _loc4_ == 1)
         {
            this.walk(AvatarConstants.DIR_LEFT,AvatarConstants.FACE_FRONT);
         }
         if(_loc3_ == 1 && _loc4_ == 1)
         {
            this.walk(AvatarConstants.DIR_RIGHT,AvatarConstants.FACE_FRONT);
         }
         if(_loc3_ == 0 && _loc4_ == -1)
         {
            this.walk(this.dir,AvatarConstants.FACE_BACK);
         }
         if(_loc3_ == 0 && _loc4_ == 1)
         {
            this.walk(this.dir,AvatarConstants.FACE_FRONT);
         }
         if(_loc3_ == -1 && _loc4_ == 0)
         {
            this.walk(AvatarConstants.DIR_LEFT,this.face);
         }
         if(_loc3_ == 1 && _loc4_ == 0)
         {
            this.walk(AvatarConstants.DIR_RIGHT,this.face);
         }
         this.avatarLoader.arrangeAnimations();
         this.movingX = _loc3_;
         this.movingY = _loc4_;
         this.isWalking = true;
      }
      
      private function doKneel2(param1:Number, param2:Number) : void
      {
         var _loc3_:* = AvatarConstants.ACTION_TURN_KNEEL;
         if(param1 == -1 && param2 == -1)
         {
            _loc3_ = _loc3_ + ":3";
            this.avatarLoader.setKneelDir(AvatarConstants.DIR_LEFT,AvatarConstants.FACE_BACK);
            if(this.avMask)
            {
               this.avMask.setKneelDir(AvatarConstants.DIR_LEFT,AvatarConstants.FACE_BACK);
            }
         }
         if(param1 == 1 && param2 == -1)
         {
            _loc3_ = _loc3_ + ":1";
            this.avatarLoader.setKneelDir(AvatarConstants.DIR_RIGHT,AvatarConstants.FACE_BACK);
            if(this.avMask)
            {
               this.avMask.setKneelDir(AvatarConstants.DIR_RIGHT,AvatarConstants.FACE_BACK);
            }
         }
         if(param1 == -1 && param2 == 1)
         {
            _loc3_ = _loc3_ + ":2";
            this.avatarLoader.setKneelDir(AvatarConstants.DIR_LEFT,AvatarConstants.FACE_FRONT);
            if(this.avMask)
            {
               this.avMask.setKneelDir(AvatarConstants.DIR_LEFT,AvatarConstants.FACE_FRONT);
            }
         }
         if(param1 == 1 && param2 == 1)
         {
            _loc3_ = _loc3_ + ":4";
            this.avatarLoader.setKneelDir(AvatarConstants.DIR_RIGHT,AvatarConstants.FACE_FRONT);
            if(this.avMask)
            {
               this.avMask.setKneelDir(AvatarConstants.DIR_RIGHT,AvatarConstants.FACE_FRONT);
            }
         }
         this.face = this.avatarLoader.face;
         this.dir = this.avatarLoader.dir;
         this.userController.updateDir(this.dir,this.face);
         this.chatController.setNewEvent(new ChatEvent(ChatEvent.AVATAR_UPDATE,this.userModel.userVo,_loc3_,false));
         this.dispatchEvent(new Event(AvatarConstants.ACTION_KNEEL));
      }
      
      private function doKneel3(param1:KneelEvent) : *
      {
         var _loc2_:Number = param1.dir;
         switch(_loc2_)
         {
            case 1:
               this.avatarLoader.setKneelDir(AvatarConstants.DIR_RIGHT,AvatarConstants.FACE_BACK);
               if(this.avMask)
               {
                  this.avMask.setKneelDir(AvatarConstants.DIR_RIGHT,AvatarConstants.FACE_BACK);
               }
               break;
            case 2:
               this.avatarLoader.setKneelDir(AvatarConstants.DIR_LEFT,AvatarConstants.FACE_FRONT);
               if(this.avMask)
               {
                  this.avMask.setKneelDir(AvatarConstants.DIR_LEFT,AvatarConstants.FACE_FRONT);
               }
               break;
            case 3:
               this.avatarLoader.setKneelDir(AvatarConstants.DIR_LEFT,AvatarConstants.FACE_BACK);
               if(this.avMask)
               {
                  this.avMask.setKneelDir(AvatarConstants.DIR_LEFT,AvatarConstants.FACE_BACK);
               }
               break;
            case 4:
               this.avatarLoader.setKneelDir(AvatarConstants.DIR_RIGHT,AvatarConstants.FACE_FRONT);
               if(this.avMask)
               {
                  this.avMask.setKneelDir(AvatarConstants.DIR_RIGHT,AvatarConstants.FACE_FRONT);
               }
         }
         this.face = this.avatarLoader.face;
         this.dir = this.avatarLoader.dir;
         this.userController.updateDir(this.dir,this.face);
         var _loc3_:String = AvatarConstants.ACTION_TURN_KNEEL + ":" + _loc2_;
         this.chatController.setNewEvent(new ChatEvent(ChatEvent.AVATAR_UPDATE,this.userModel.userVo,_loc3_,false));
         this.dispatchEvent(new Event(AvatarConstants.ACTION_KNEEL));
      }
      
      private function getAngle() : void
      {
         var _loc1_:Number = this.targetX - this.x;
         var _loc2_:Number = this.targetY - this.y;
         var _loc3_:Number = this.mode360(Math.atan2(_loc2_,_loc1_) / this.PI * 180 + 90);
         this.facing = Math.min(int(_loc3_ / 90),3);
         this.dx = Math.sin(_loc3_ * this.PI / 180) * this.speed;
         this.dy = -Math.cos(_loc3_ * this.PI / 180) * this.speed;
         this.dx = int(this.dx * 100) / 100;
         this.dy = int(this.dy * 100) / 100;
      }
      
      private function mode360(param1:Number) : Number
      {
         return (param1 + 360) % 360;
      }
      
      public function doTheWalk3(param1:Event = null) : void
      {
         if(this.isWalking == true)
         {
            this.doTheWalk();
         }
         if(this.isJumping == true)
         {
            this.showMoving();
            this.checkIfCollided();
         }
      }
      
      private function doTheWalk() : *
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:RoomController = null;
         var _loc7_:Boolean = false;
         if(this.globalModel.isInSittingGame == true)
         {
            return;
         }
         this.calculateCoords();
         this.getAngle();
         var _loc1_:Number = int(this.x + this.dx * this.speed);
         var _loc2_:Number = int(this.y + this.dy * this.speed);
         if(this.avatarModel.ignoreY == true)
         {
            _loc2_ = this.y;
         }
         if(this.avatarModel.ignoreX == true)
         {
            _loc1_ = this.x;
         }
         this.stopX = false;
         this.stopY = false;
         var _loc3_:Number = 10;
         if(this.avatarModel.pfArray.length > 0 && this.avatarModel.pathFinding == true)
         {
            this.isBlocked = false;
         }
         if(this.isBlocked == false || this.avatarModel.ignoreCMap == true)
         {
            _loc4_ = Math.abs(this.x - this.targetX);
            _loc5_ = Math.abs(this.y - this.targetY);
            if(_loc4_ < _loc3_)
            {
               this.stopX = true;
            }
            if(_loc5_ < _loc3_)
            {
               this.stopY = true;
            }
            if(this.avatarModel.ignoreX == true)
            {
               this.stopX = true;
            }
            if(this.avatarModel.ignoreY == true)
            {
               this.stopY = true;
            }
            if(this.stopX == true && this.stopY == true)
            {
               if(this.isLocked == false)
               {
                  if(this.avatarModel.ignoreX == false)
                  {
                     this.x = this.targetX;
                  }
                  if(this.avatarModel.ignoreY == false)
                  {
                     this.y = this.targetY;
                  }
               }
               this.globalController.setCurrentPos(x,y);
               if(this._ignoreTarget == false)
               {
                  if(this.avatarModel.keyIsDown == false || this.avatarModel.shiftIsDown == true)
                  {
                     if(this.avatarModel.pathFinding == false)
                     {
                        if(this.isLocked == false)
                        {
                           this.standStill(this.dir,this.face);
                           this.isWalking = false;
                        }
                     }
                     else if(this.avatarModel.pfArray == null || this.avatarModel.pfArray.length == 0)
                     {
                        this.standStill(this.dir,this.face);
                        this.isWalking = false;
                     }
                     else
                     {
                        this.avatarController.nextSpot();
                     }
                  }
               }
               if(this.avatarModel.transportFlag == true)
               {
                  this.dataProvider.x = this.avatarModel.transportX;
                  this.dataProvider.y = this.avatarModel.transportY;
                  this.userController.setUserDataSilent(this.dataProvider);
                  _loc6_ = new RoomController();
                  this.visible = false;
                  if(this.hoodModel.wanderFlag == true)
                  {
                     this.hoodController.setWander(false);
                     this.hoodController.setCurrentHood(this.hoodModel.pendingHood);
                  }
                  _loc6_.changeRoom(this.avatarModel.transportRoom);
                  this.avatarController.clearTransport();
                  this.avatarController.updateCurrent(this.avatarModel.transportX,this.avatarModel.transportY);
                  this.x = this.avatarModel.transportX;
                  this.y = this.avatarModel.transportY;
               }
            }
            else
            {
               if(this.isLocked == false)
               {
                  if(this.avatarModel.ignoreX == false)
                  {
                     this.x = this.x + this.dx;
                  }
                  if(this.avatarModel.ignoreY == false)
                  {
                     this.y = this.y + this.dy;
                  }
               }
               this.walkCount++;
               if(this.walkCount > 2)
               {
                  this.walkCount = 0;
               }
               this.avatarLoader.y = this.walkCount;
               if(this.avMask)
               {
                  this.avMask.y = this.walkCount;
               }
               this.x = int(this.x);
               this.y = int(this.y);
               this.avatarController.updateCurrent(this.x,this.y);
               this.avatarController.setMoving(this.movingX,this.movingY);
               this.dispatchEvent(new AvatarMoveEvent(AvatarMoveEvent.AVATAR_IS_MOVING,this,true));
            }
         }
         else
         {
            this.isWalking = false;
            this.doStand();
         }
         if(this.blockedItem != null)
         {
            _loc7_ = false;
            _loc7_ = this.blockedItem.canSitOn;
            this.action = "none";
            this.action = this.blockedItem.specialAction;
            if(this.action == "" || this.action == null)
            {
               this.action = "none";
            }
            if(this.action == "none" && _loc7_ == false && this.blockedItem.h != 0)
            {
               if(_loc7_ == true && this.action == "none")
               {
                  this.isWalking = false;
                  this.x = _loc1_;
                  this.y = _loc2_;
                  this.avatarController.updateCurrent(this.x,this.y);
                  this.globalController.setCurrentPos(x,y);
                  this.standStill(this.dir,this.face);
                  this.dispatchEvent(new SwapEvent(SwapEvent.SWAP_DEPTHS,this as Sprite,this.blockedItem as Sprite,true));
                  return;
               }
            }
            else
            {
               this.reactToObject(this.action);
               return;
            }
         }
         else if(this.actions != null)
         {
            this.actions.stopAction();
         }
      }
      
      private function reactToObject(param1:String) : *
      {
         if(param1 == this.currentAction)
         {
            return;
         }
         this.currentAction = param1;
         if(this.actions == null)
         {
            if(this.roomModel.actions != null)
            {
               this.actions = this.roomModel.actions.clone();
               this.actions.setAvatar(this);
            }
            else
            {
               return;
            }
         }
         if(this.actions.getName() != this.roomModel.actions.getName())
         {
            this.actions = this.roomModel.actions.clone();
            this.actions.setAvatar(this);
         }
         if(this.actions != null && this.blockedItem != null)
         {
            this.actions.setItem(this.blockedItem);
            this.actions.setAction(param1);
         }
      }
      
      private function updatePosOnServer() : *
      {
         if(this._dataProvider == null)
         {
            return;
         }
         if(this.isKneeling == true)
         {
            return;
         }
         if(this.avatarModel.updateServerOnMove == false)
         {
            return;
         }
         var _loc1_:* = AvatarConstants.UPDATE_POS + ":" + String(this.x) + ":" + String(this.y) + ":" + this.dir + ":" + this.face + ":0";
         _loc1_ = _loc1_ + (":" + String(this.sx) + ":" + String(this.sy));
         _loc1_ = _loc1_ + (":" + this._status);
         _loc1_ = _loc1_ + (":" + String(this._dataProvider.speed));
         this.userController.updatePos(this.x,this.y);
         this.userController.updateDir(this.dir,this.face);
         this.chatController.setNewEvent(new ChatEvent(ChatEvent.AVATAR_UPDATE,this.userModel.userVo,_loc1_,false));
      }
      
      private function updateOnStop() : *
      {
         if(this._dataProvider == null)
         {
            return;
         }
         var _loc1_:String = this.isKneeling == true?"1":"0";
         var _loc2_:String = AvatarConstants.UPDATE_POS + ":" + String(this.x) + ":" + String(this.y) + ":" + this.dir + ":" + this.face + ":" + _loc1_;
         _loc2_ = _loc2_ + (":" + String(this.sx) + ":" + String(this.sy));
         _loc2_ = _loc2_ + (":" + this._status);
         _loc2_ = _loc2_ + (":" + String(this._dataProvider.speed));
         this.userController.updatePos(this.x,this.y);
         this.userController.updateDir(this.dir,this.face);
         this.chatController.setNewEvent(new ChatEvent(ChatEvent.AVATAR_HAS_STOPPED,this.userModel.userVo,_loc2_,false));
      }
      
      private function updateSpecial() : *
      {
         var _loc1_:* = null;
         if(this.isKneeling == true)
         {
            _loc1_ = AvatarConstants.ACTION_KNEEL + ":" + this.x + ":" + this.y + ":" + this.dir + ":" + this.face + ":1";
            _loc1_ = _loc1_ + (":" + String(this.sx) + ":" + String(this.sy));
            _loc1_ = _loc1_ + (":" + this._status);
            _loc1_ = _loc1_ + (":" + String(this._dataProvider.speed));
            this.chatController.setNewEvent(new ChatEvent(ChatEvent.AVATAR_UPDATE,this.userModel.userVo,_loc1_,false));
         }
         if(this.isJumping == true)
         {
            _loc1_ = AvatarConstants.ACTION_JUMP;
            this.chatController.setNewEvent(new ChatEvent(ChatEvent.AVATAR_UPDATE,this.userModel.userVo,_loc1_,false));
         }
      }
      
      private function updateCustom(param1:String) : *
      {
         var _loc2_:* = null;
         _loc2_ = param1 + ":" + this.x + ":" + this.y + ":" + this.dir + ":" + this.face + ":0";
         _loc2_ = _loc2_ + (":" + String(this.sx) + ":" + String(this.sy));
         _loc2_ = _loc2_ + (":" + this._status);
         _loc2_ = _loc2_ + (":" + String(this._dataProvider.speed));
         this.chatController.setNewEvent(new ChatEvent(ChatEvent.AVATAR_UPDATE,this.userModel.userVo,_loc2_,false));
      }
      
      private function updateReset() : *
      {
         var _loc2_:String = null;
         var _loc1_:String = this.isKneeling == true?"1":"0";
         _loc2_ = AvatarConstants.STAND_STILL + ":" + this.dir + ":" + this.face + ":" + _loc1_;
         _loc2_ = _loc2_ + (":" + String(this.sx) + ":" + String(this.sy));
         _loc2_ = _loc2_ + (":" + this._status);
         _loc2_ = _loc2_ + (":" + String(this._dataProvider.speed));
         this.chatController.setNewEvent(new ChatEvent(ChatEvent.AVATAR_UPDATE,this.userModel.userVo,_loc2_,false));
      }
      
      private function startWalkToOnServer(param1:Number, param2:Number) : *
      {
         var _loc3_:* = null;
         if(this.avatarModel.updateServerOnMove == false)
         {
            return;
         }
         if(this.isKneeling == false)
         {
            _loc3_ = AvatarConstants.MOVE_TO + ":" + String(param1) + ":" + String(param2) + ":" + this.dir + ":" + this.face + ":0";
            _loc3_ = _loc3_ + (":" + String(this.sx) + ":" + String(this.sy));
            _loc3_ = _loc3_ + (":" + this._status);
            _loc3_ = _loc3_ + (":" + String(this._dataProvider.speed));
            this.chatController.setNewEvent(new ChatEvent(ChatEvent.AVATAR_UPDATE,this.userModel.userVo,_loc3_,false));
         }
      }
      
      public function hitSomething() : void
      {
         this.isWalking = false;
         this.standStill(this.dir,this.face);
      }
      
      public function setSurface(param1:ISurface) : void
      {
         this.surface = param1;
      }
      
      public function setScroller(param1:Object) : void
      {
         this.scroller = param1;
      }
      
      private function calculateCoords() : *
      {
         var _loc1_:Number = int(this.surfaceX + this.x + this.scroller.x);
         var _loc2_:Number = int(this.surfaceY + this.y + this.scroller.y);
         this.avatarController.setGlobal(_loc1_,_loc2_);
      }
      
      private function checkBlocked(param1:Number, param2:Number) : *
      {
         var _loc3_:Array = null;
         if(this.checkBlockedFunction != null)
         {
            _loc3_ = this.checkBlockedFunction.call(this,param1,param2);
            this.blockedItem = _loc3_[1];
            return _loc3_[0];
         }
         return -1;
      }
      
      public function doAction(param1:Event) : void
      {
         var _loc2_:* = null;
         switch(this.avatarModel.action)
         {
            case AvatarConstants.ACTION_KNEEL:
               if(this.isKneeling == false)
               {
                  this.doKneel();
               }
               else
               {
                  this.doStand();
                  _loc2_ = AvatarConstants.UPDATE_POS + ":" + String(this.x) + ":" + String(this.y) + ":" + this.dir + ":" + this.face + ":0";
                  _loc2_ = _loc2_ + (":" + String(this.sx) + ":" + String(this.sy));
                  _loc2_ = _loc2_ + (":" + this._status);
                  this.chatController.setNewEvent(new ChatEvent(ChatEvent.AVATAR_UPDATE,this.userModel.userVo,_loc2_,false));
               }
               break;
            case AvatarConstants.ACTION_JUMP:
               if(this.isJumping == false && this.isSwimming == false)
               {
                  this.isJumping = true;
                  this.jumpTween = new Tween(this,"y",None.easeNone,this.y,this.y - 200,2,false);
                  this.eventController.addEventListener(this.jumpTween,TweenEvent.MOTION_FINISH,this.jumpDone);
                  this.updateSpecial();
               }
               break;
            case AvatarConstants.ACTION_FLIP:
               this.avatarLoader.doKneel();
               this.avatarLoader.y = this.avatarLoader.y - 100;
               this.flipTween = new Tween(this.avatarLoader,"rotation",None.easeNone,359,0,6,false);
               this.flipTween.addEventListener(TweenEvent.MOTION_FINISH,this.flipDone);
               break;
            case AvatarConstants.ACTION_FLY:
               this.keepOnTop = true;
               this.avatarLoader.doKneel();
               break;
            case AvatarConstants.ACTION_STOP_FLY:
               this.keepOnTop = false;
               this.avatarLoader.standStill(this.avatarLoader.dir,this.avatarLoader.face);
         }
      }
      
      private function flipDone(param1:TweenEvent) : void
      {
         this.avatarLoader.y = this.avatarLoader.y + 100;
         this.flipTween.removeEventListener(TweenEvent.MOTION_FINISH,this.flipDone);
         this.avatarLoader.standStill(this.avatarLoader.dir,this.avatarLoader.face);
      }
      
      private function jumpDone(param1:TweenEvent) : *
      {
         this.isJumping = false;
         this.eventController.removeEventListener(this.jumpTween,TweenEvent.MOTION_FINISH,this.jumpDone);
         if(this.action == "none")
         {
            this.jumpTween = new Tween(this,"y",None.easeNone,this.y,this.y + 200,2,false);
         }
      }
      
      private function turnToObj(param1:Number) : *
      {
         switch(param1)
         {
            case 1:
               if(this.isWalking == true)
               {
                  this.walk(AvatarConstants.DIR_RIGHT,AvatarConstants.FACE_BACK);
               }
               else
               {
                  this.standStill(AvatarConstants.DIR_RIGHT,AvatarConstants.FACE_BACK);
               }
               break;
            case 2:
               if(this.isWalking == true)
               {
                  this.walk(AvatarConstants.DIR_LEFT,AvatarConstants.FACE_FRONT);
               }
               else
               {
                  this.standStill(AvatarConstants.DIR_LEFT,AvatarConstants.FACE_FRONT);
               }
               break;
            case 3:
               if(this.isWalking == true)
               {
                  this.walk(AvatarConstants.DIR_LEFT,AvatarConstants.FACE_BACK);
               }
               else
               {
                  this.standStill(AvatarConstants.DIR_LEFT,AvatarConstants.FACE_BACK);
               }
               break;
            case 4:
               if(this.isWalking == true)
               {
                  this.walk(AvatarConstants.DIR_RIGHT,AvatarConstants.FACE_FRONT);
               }
               else
               {
                  this.standStill(AvatarConstants.DIR_RIGHT,AvatarConstants.FACE_FRONT);
               }
         }
      }
      
      public function setAtStart() : void
      {
         this.x = this.globalModel.startX;
         this.y = this.globalModel.startY;
         this.userController.updatePos(this.x,this.y);
         this.globalController.setCurrentPos(x,y);
         this.walkTo(this.x + 1,this.y + 1);
      }
      
      public function setCheckBlockedFunction(param1:Function) : void
      {
         this.checkBlockedFunction = param1;
      }
      
      public function setPos(param1:Number) : void
      {
         this.pos = param1;
      }
      
      public function setFace(param1:String) : void
      {
         if(this.globalModel.isInSittingGame == false)
         {
            this.face = param1;
            this.avatarLoader.setFaceDir(this.dir,this.face);
            if(this.avMask)
            {
               this.avMask.setFaceDir(this.dir,this.face);
            }
         }
      }
      
      public function setDepth2(param1:Number) : void
      {
         this.depth2 = param1;
      }
      
      public function getDepth2() : Number
      {
         return this.depth2;
      }
      
      public function getX() : Number
      {
         return x;
      }
      
      public function getY() : Number
      {
         return y;
      }
      
      public function get surface() : ISurface
      {
         return this._surface;
      }
      
      public function set surface(param1:ISurface) : void
      {
         this._surface = param1;
         this.surfaceX = this._surface.getX();
         this.surfaceY = this._surface.getY();
      }
      
      public function get checkBlockedFunction() : Function
      {
         return this._checkBlockedFunction;
      }
      
      public function set checkBlockedFunction(param1:Function) : void
      {
         this._checkBlockedFunction = param1;
      }
      
      public function get isKneeling() : Boolean
      {
         return this._isKneeling;
      }
      
      public function set isKneeling(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         if(this._isKneeling != param1)
         {
            _loc2_ = true;
         }
         this._isKneeling = param1;
         this.userController.updateKneel(this._isKneeling);
         if(_loc2_ == true)
         {
            this.chatController.setNewEvent(new ChatEvent(ChatEvent.SILENT_UPDATE,this.userModel.userVo,"",false));
         }
      }
      
      public function get depth2() : Number
      {
         if(this.isJumping == true && this.blockedItem != null)
         {
            return this.blockedItem.depth2 + 500;
         }
         if(this.keepOnTop == true)
         {
            return 300000;
         }
         return this._depth2 + this._depthDef;
      }
      
      public function set depth2(param1:Number) : void
      {
         this._depth2 = param1;
      }
      
      public function get isJumping() : Boolean
      {
         return this._isJumping;
      }
      
      public function set isJumping(param1:Boolean) : void
      {
         this._isJumping = param1;
      }
      
      public function get isWalking() : Boolean
      {
         return this._isWalking;
      }
      
      public function set isWalking(param1:Boolean) : void
      {
         this._isWalking = param1;
      }
      
      public function get dataProvider() : UserVo
      {
         return this._dataProvider;
      }
      
      public function set dataProvider(param1:UserVo) : void
      {
         this._dataProvider = param1;
         if(this._dataProvider.gender != "")
         {
            this.gender = this._dataProvider.gender;
         }
      }
      
      public function get collideClip() : Sprite
      {
         return this._collideClip;
      }
      
      public function get avatarLoader() : AvatarLoader
      {
         return this._avatarLoader;
      }
      
      public function get blockedItem() : IWorldItem
      {
         return this._blockedItem;
      }
      
      public function set blockedItem(param1:IWorldItem) : void
      {
         this._blockedItem = param1;
         this.globalController.setBlockedItem(this._blockedItem);
      }
      
      public function get isBlocked() : Boolean
      {
         return this._isBlocked;
      }
      
      public function set isBlocked(param1:Boolean) : void
      {
         this._isBlocked = param1;
      }
      
      public function get currentAction() : String
      {
         return this._currentAction;
      }
      
      public function set currentAction(param1:String) : void
      {
         this._currentAction = param1;
      }
      
      public function get ignoreTarget() : Boolean
      {
         return this._ignoreTarget;
      }
      
      public function set ignoreTarget(param1:Boolean) : void
      {
         this._ignoreTarget = param1;
      }
      
      public function get keepOnTop() : Boolean
      {
         return this._keepOnTop;
      }
      
      public function set keepOnTop(param1:Boolean) : void
      {
         this._keepOnTop = param1;
      }
      
      public function resetAvatar() : void
      {
      }
      
      public function getFace() : String
      {
         return this.face;
      }
      
      public function getDir() : String
      {
         return this.dir;
      }
      
      public function getAvatarLoader() : AvatarLoader
      {
         return this.avatarLoader;
      }
      
      public function moveToTopOfObject() : void
      {
         this.dispatchEvent(new SwapEvent(SwapEvent.SWAP_DEPTHS,this.clip as Sprite,this.blockedItem as Sprite,true));
      }
      
      public function hideLegs() : void
      {
         this.legsHidden = true;
         this.avatarLoader.hideLegs();
         if(this.avMask)
         {
            this.avMask.hideLegs();
         }
      }
      
      public function showLegs() : void
      {
         this.legsHidden = false;
         if(this.isWalking == true)
         {
            this.avatarLoader.showLegs();
            if(this.avMask)
            {
               this.avMask.showLegs();
            }
         }
      }
      
      public function showReflection(param1:Number = -65) : void
      {
         var _loc2_:ReflectionStyle = new ReflectionStyle();
         _loc2_.distance = param1;
         _loc2_.alpha = 0.8;
         _loc2_.matrixRatio = 0.8;
         this.afcReflection = new BitmapReflection(this.avatarLoader,_loc2_);
         this.addChild(this.afcReflection);
      }
      
      public function hideReflection() : void
      {
         if(this.contains(this.afcReflection))
         {
            this.removeChild(this.afcReflection);
         }
      }
      
      public function get canCollide() : Boolean
      {
         return false;
      }
      
      public function attachItem(param1:Number, param2:Number, param3:ISurfaceObject) : void
      {
         param3.clip.x = param1;
         param3.clip.y = param2;
         if(param3.depth2 != 0)
         {
            this.itemClip.addChild(param3.clip);
         }
         else
         {
            this.itemClip.addChildAt(param3.clip,0);
         }
         this.attachArray.push(param3);
      }
      
      public function removeItem(param1:ISurfaceObject) : void
      {
         while(this.itemClip.numChildren > 0)
         {
            this.itemClip.removeChild(this.itemClip.getChildAt(0));
         }
      }
      
      private function removeItemFromArray(param1:ISurfaceObject) : void
      {
         var _loc4_:ISurfaceObject = null;
         var _loc2_:Number = this.attachArray.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = this.attachArray[_loc3_];
            if(param1 == _loc4_)
            {
               this.attachArray.splice(_loc3_,1);
               return;
            }
            _loc3_++;
         }
      }
      
      public function getNumberOfAttachedItems() : Number
      {
         return this.attachArray.length;
      }
      
      public function clearItems() : void
      {
         var _loc3_:ISurfaceObject = null;
         var _loc1_:Number = this.attachArray.length;
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            _loc3_ = this.attachArray[_loc2_];
            if(this.contains(_loc3_.clip) == true)
            {
               this.removeChild(_loc3_.clip);
            }
            _loc2_++;
         }
         this.attachArray = [];
      }
      
      public function get status() : String
      {
         return this._status;
      }
      
      public function set status(param1:String) : void
      {
         this._status = param1;
      }
      
      public function get iSurfaceObject() : ISurfaceObject
      {
         return this as ISurfaceObject;
      }
      
      public function get isLocked() : Boolean
      {
         return this._isLocked;
      }
      
      public function set isLocked(param1:Boolean) : void
      {
         this._isLocked = param1;
      }
      
      public function showMoving() : void
      {
         this.dispatchEvent(new AvatarMoveEvent(AvatarMoveEvent.AVATAR_IS_MOVING,this,true));
      }
      
      public function isHit(param1:IAvatar) : void
      {
         this.hitBy = param1;
         this.dispatchEvent(new AvatarMoveEvent(AvatarMoveEvent.AVATAR_IS_HIT,this,true));
      }
      
      public function set sx(param1:Number) : void
      {
         this._sx = param1;
      }
      
      public function set sy(param1:Number) : void
      {
         this._sy = param1;
      }
      
      public function get sx() : Number
      {
         return this._sx;
      }
      
      public function get sy() : Number
      {
         return this._sy;
      }
      
      public function get hitBy() : IAvatar
      {
         return this._hitBy;
      }
      
      public function set hitBy(param1:IAvatar) : void
      {
         this._hitBy = param1;
      }
      
      public function get depthDef() : Number
      {
         return this._depthDef;
      }
      
      public function set depthDef(param1:Number) : void
      {
         this._depthDef = param1;
      }
      
      public function get showWalk() : Boolean
      {
         return this._showWalk;
      }
      
      public function set showWalk(param1:Boolean) : void
      {
         this._showWalk = param1;
      }
      
      public function showSwim(param1:Boolean) : void
      {
         this.isSwimming = param1;
         if(param1 == false)
         {
            this.doStand();
            this.showShadow();
            if(this.contains(this.swimMask))
            {
               this.avatarLoader.mask = null;
               removeChild(this.swimMask);
            }
         }
         else
         {
            this.addChild(this.swimMask);
            this.avatarLoader.mask = this.swimMask;
            this.hideShadow();
         }
      }
      
      public function isAvSwimming() : Boolean
      {
         return this.isSwimming;
      }
      
      public function checkIfCollided() : *
      {
         var _loc1_:Boolean = false;
         if(this.blockedItem != null)
         {
            _loc1_ = false;
            _loc1_ = this.blockedItem.canSitOn;
            this.action = "none";
            this.action = this.blockedItem.specialAction;
            if(this.action == "" || this.action == null)
            {
               this.action = "none";
            }
            if(this.action == "none" && _loc1_ == false && this.blockedItem.h != 0)
            {
               this.isWalking = false;
               this.standStill(this.dir,this.face);
               return;
            }
            this.reactToObject(this.action);
            return;
         }
      }
      
      public function get collideType() : String
      {
         return CollisionConstants.ALL_COLLISIONS;
      }
      
      public function get immunity() : Boolean
      {
         return this._immunity;
      }
      
      public function set immunity(param1:Boolean) : void
      {
         this._immunity = param1;
         if(this._immunity == true)
         {
            this.alpha = 0.8;
            this.eventController.addEventListener(this.immunityResetTimer,TimerEvent.TIMER,this.resetImmunity);
            this.immunityResetTimer.start();
         }
         this.dispatchEvent(new Event(AvatarConstants.IMMUNITY_CHANGED,true));
      }
      
      private function resetImmunity(param1:TimerEvent) : *
      {
         this.alpha = 1;
         this.immunityResetTimer.stop();
         this.eventController.removeEventListener(this.immunityResetTimer,TimerEvent.TIMER,this.resetImmunity);
         this.immunity = false;
      }
      
      public function sendDataToServer() : void
      {
         if(this.avatarModel.updateServerOnMove == false)
         {
            return;
         }
         var _loc1_:* = AvatarConstants.UPDATE_POS + ":" + String(this.x) + ":" + String(this.y) + ":" + this.dir + ":" + this.face + ":0";
         _loc1_ = _loc1_ + (":" + String(this.sx) + ":" + String(this.sy));
         _loc1_ = _loc1_ + (":" + this._status);
         _loc1_ = _loc1_ + (":" + String(this._dataProvider.speed));
         this.chatController.setNewEvent(new ChatEvent(ChatEvent.AVATAR_UPDATE,this.userModel.userVo,_loc1_,false));
      }
      
      public function hideShadow() : void
      {
         if(this.shadow != null)
         {
            this.shadow.visible = false;
         }
      }
      
      public function showShadow() : void
      {
         this.shadow.visible = true;
         this.setChildIndex(this.shadow,0);
      }
      
      public function destroy() : void
      {
         this._avatarLoader.destroy();
      }
      
      public function setAvPos(param1:Number, param2:Number) : void
      {
         this.dataProvider.x = param1;
         this.dataProvider.y = param2;
         this.userController.setUserDataSilent(this.dataProvider);
         this.visible = false;
         this.avatarController.updateCurrent(param1,param2);
         this.x = this.dataProvider.x;
         this.y = this.dataProvider.y;
         this._isWalking = false;
         this.avatarLoader.legsStopWalk();
         this.avatarLoader.showLegs();
         if(this.avMask)
         {
            this.avMask.legsStopWalk();
            this.avMask.showLegs();
         }
      }
      
      public function set chatStatus(param1:String) : void
      {
         this._chatStatus = param1;
      }
      
      public function get chatStatus() : String
      {
         return this._chatStatus;
      }
   }
}

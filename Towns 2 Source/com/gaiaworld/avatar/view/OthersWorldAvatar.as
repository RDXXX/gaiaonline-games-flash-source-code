package com.gaiaworld.avatar.view
{
   import com.afcomponents.common.display.BitmapReflection;
   import com.afcomponents.common.graphics.ReflectionStyle;
   import com.gaiaworld.avatar.constants.AvatarConstants;
   import com.gaiaworld.avatar.controller.AvatarController;
   import com.gaiaworld.avatar.controller.OthersController;
   import com.gaiaworld.avatar.controller.events.AvatarMoveEvent;
   import com.gaiaworld.avatar.controller.events.OtherEvent;
   import com.gaiaworld.avatar.controller.events.SwapEvent;
   import com.gaiaworld.avatar.effects.Static;
   import com.gaiaworld.avatar.interfaces.IActionGroup;
   import com.gaiaworld.avatar.interfaces.IAvatar;
   import com.gaiaworld.avatar.model.AvatarModel;
   import com.gaiaworld.avatar.model.OthersModel;
   import com.gaiaworld.avatar.services.OtherAvDataLoader;
   import com.gaiaworld.global.controller.EventController;
   import com.gaiaworld.global.interfaces.ISurface;
   import com.gaiaworld.global.model.GlobalModel;
   import com.gaiaworld.gobjects.constants.CollisionConstants;
   import com.gaiaworld.house.controller.DebugController;
   import com.gaiaworld.room.interfaces.ISurfaceObject;
   import com.gaiaworld.room.interfaces.IWorldItem;
   import com.gaiaworld.room.model.RoomModel;
   import com.gaiaworld.sushi.constants.ChatConstants;
   import com.gaiaworld.sushi.controller.ChatController;
   import com.gaiaworld.sushi.model.ChatModel;
   import com.gaiaworld.user.model.UserModel;
   import com.gaiaworld.user.vo.UserVo;
   import fl.motion.AdjustColor;
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
   
   public class OthersWorldAvatar extends Sprite implements IAvatar, ISurfaceObject
   {
      
      public static const MY_NAME:String = "otherWorldAvatar";
      
      public static const ANIMATION_DONE:String = "animationDone";
       
      
      private var face:String;
      
      public var dir:String;
      
      public var pos:Number = 0;
      
      private var jumpTimer:Timer;
      
      private var targetY:Number;
      
      private var targetX:Number;
      
      private var _depth2:Number = 0;
      
      public var movingX:Number;
      
      public var movingY:Number;
      
      private var offY:Number = -50;
      
      private var offX:Number = 25;
      
      private var avatarController:AvatarController;
      
      private var avatarModel:AvatarModel;
      
      private var aniLoader:Loader;
      
      private var surface:ISurface;
      
      private var xx:Number;
      
      private var zz:Number;
      
      private var _isKneeling:Boolean = false;
      
      private var _isJumping:Boolean = false;
      
      private var _isWalking:Boolean = false;
      
      private var jumpY:Number = 0;
      
      private var jumpDir:Number = -1;
      
      private var jumpCount:Number = 0;
      
      private var action:String = "none";
      
      private var avMask:AvatarLoader;
      
      private var avatarLoader:AvatarLoader;
      
      private var _dataProvider:UserVo;
      
      private var othersModel:OthersModel;
      
      private var globalModel:GlobalModel;
      
      private var chatController:ChatController;
      
      private var othersController:OthersController;
      
      private var debugController:DebugController;
      
      private var userModel:UserModel;
      
      public var _checkBlockedFunction:Function;
      
      private var _blockedItem:IWorldItem;
      
      private var _isBlocked:Boolean = false;
      
      private var _currentAction:String = "none";
      
      public var level:Number = 1;
      
      public var ignorePos:Boolean = false;
      
      private var userText:TextField;
      
      private var chatStat:TextField;
      
      private var facing:Number;
      
      private var dx3:Number;
      
      private var dy3:Number;
      
      private var speed:Number = 10;
      
      private var stopX:Boolean = false;
      
      private var stopY:Boolean = false;
      
      private var _collideClip:Sprite;
      
      private var orignalY:Number;
      
      private var actions:IActionGroup;
      
      private var roomModel:RoomModel;
      
      private var _ignoreTarget:Boolean = false;
      
      private var chatModel:ChatModel;
      
      private var attachedLoader:Loader;
      
      private var _keepOnTop:Boolean = false;
      
      private var kneelTimer:Timer;
      
      private var _status:String = "normal";
      
      private var _isLocked:Boolean = false;
      
      private var nextX:Number;
      
      private var nextY:Number;
      
      private var _sx:Number = 0;
      
      private var _sy:Number = 0;
      
      private var _hitBy:IAvatar;
      
      private var _depthDef:Number = 0;
      
      private var _showWalk:Boolean = true;
      
      private var afcReflection:BitmapReflection;
      
      private var isSwimming:Boolean;
      
      private var attachArray:Array;
      
      private var _immunity:Boolean = false;
      
      private var immunityResetTimer:Timer;
      
      private var shadow:Shape;
      
      private var swimMask:Shape;
      
      private var walkCount:Number = 0;
      
      private var itemClip:Sprite;
      
      private var eventController:EventController;
      
      private var _chatStatus:String;
      
      private var otherAvDataLoader:OtherAvDataLoader;
      
      private var effectClip:Sprite;
      
      private var gender:String = "";
      
      public function OthersWorldAvatar()
      {
         this.jumpTimer = new Timer(50);
         this.avatarController = new AvatarController();
         this.avatarModel = AvatarModel.getInstance();
         this.aniLoader = new Loader();
         this.avatarLoader = new AvatarLoader();
         this.othersModel = OthersModel.getInstance();
         this.globalModel = GlobalModel.getInstance();
         this.chatController = new ChatController();
         this.othersController = new OthersController();
         this.debugController = new DebugController();
         this.userModel = UserModel.getInstance();
         this.userText = new TextField();
         this.chatStat = new TextField();
         this._collideClip = new Sprite();
         this.roomModel = RoomModel.getInstance();
         this.chatModel = ChatModel.getInstance();
         this.attachedLoader = new Loader();
         this.kneelTimer = new Timer(400);
         this.attachArray = new Array();
         this.immunityResetTimer = new Timer(5000);
         this.itemClip = new Sprite();
         this.eventController = new EventController();
         this.otherAvDataLoader = new OtherAvDataLoader();
         this.effectClip = new Sprite();
         super();
         this.focusRect = false;
         this.avatarLoader.addEventListener(AvatarLoader.USE_MASK,this.addMask);
         this.avatarLoader.addEventListener(AvatarLoader.AVATAR_LOADED,this.avLoaded);
         this.eventController.addEventListener(this,MouseEvent.MOUSE_DOWN,this.clickMe);
         this.addChild(this.attachedLoader);
         this.userText.multiline = false;
         this.userText.mouseEnabled = false;
         this.userText.autoSize = TextFieldAutoSize.CENTER;
         this.makeSwimMask();
         this.makeCollide();
         this.buttonMode = true;
         this.useHandCursor = true;
         if(this.avatarModel.showReflection == true)
         {
            this.showReflection();
         }
         this.addChild(this.userText);
         this.addChild(this.chatStat);
         this.addChild(this.itemClip);
         this.eventController.addEventListener(this,Event.REMOVED_FROM_STAGE,this.removed);
      }
      
      private function avLoaded(param1:Event) : void
      {
         this.makeShadow();
      }
      
      public function get userID() : Number
      {
         return this.dataProvider.gaia_id;
      }
      
      private function removed(param1:Event) : void
      {
         this.eventController.removeEventListener(this,Event.REMOVED_FROM_STAGE,this.removed);
         this.destroy();
      }
      
      private function clickMe(param1:MouseEvent) : *
      {
         this.chatController.setSelected(this.dataProvider);
         this.othersController.setSelctedAvatar(this);
         if(this.avatarModel.shiftIsDown == false)
         {
            this.avatarController.setTarget(this.x + this.mouseX,this.y + this.mouseY);
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
      
      private function makeSwimMask() : *
      {
         this.swimMask = new Shape();
         this.swimMask.graphics.beginFill(0,0.5);
         this.swimMask.graphics.drawRect(0,0,110,90);
         this.swimMask.graphics.endFill();
         this.swimMask.x = -50;
         this.swimMask.y = -115;
      }
      
      private function makeCollide() : *
      {
         this.collideClip.y = 20;
         this.collideClip.x = -10;
         this.collideClip.graphics.lineStyle(1,0);
         this.collideClip.graphics.beginFill(1044480,1);
         this.collideClip.graphics.drawCircle(0,0,5);
         this.collideClip.graphics.endFill();
         this.addChild(this.collideClip);
         this.collideClip.visible = false;
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
      
      private function showAvatarMenu(param1:Event) : *
      {
         if(this.avatarModel.showMenus == true)
         {
            this.chatController.setSelected(this.dataProvider);
            this.othersController.showAvatarMenu();
         }
      }
      
      private function hideAvatarMenu(param1:Event) : *
      {
         this.othersController.hideAvatarMenu();
      }
      
      public function getMyName() : String
      {
         return "other-player-avatar";
      }
      
      public function walk(param1:String, param2:String) : void
      {
         this.face = param2;
         this.dir = param1;
         this.avatarLoader.setFaceDir(this.dir,this.face);
         if(this._showWalk == true)
         {
            this.avatarLoader.legsWalk();
         }
         if(this._dataProvider)
         {
            this.avatarLoader.gender = this.gender;
         }
      }
      
      public function standStill(param1:String, param2:String) : void
      {
         if(this.isKneeling == true)
         {
            this.dispatchEvent(new Event(AvatarConstants.UNKNEEL,true));
         }
         if(this._dataProvider.userName == "mtest2")
         {
         }
         this.isWalking = false;
         this.isKneeling = false;
         this.dir = param1;
         this.face = param2;
         this.avatarLoader.legsStopWalk();
         this.avatarLoader.standStill(param1,param2);
         this.dispatchEvent(new AvatarMoveEvent(AvatarMoveEvent.AVATAR_HAS_STOPPED,this,true));
      }
      
      private function setPos2(param1:Number, param2:Number) : void
      {
         this.x = param1;
         this.y = param2;
         this.targetX = x;
         this.targetY = y;
      }
      
      public function setPos(param1:Number) : void
      {
         this.pos = param1;
      }
      
      public function setSurface(param1:ISurface) : void
      {
         this.surface = param1;
      }
      
      public function actionReceived(param1:OtherEvent) : void
      {
         var _loc2_:Array = null;
         if(param1.id == this.dataProvider.gaia_id)
         {
            _loc2_ = param1.param.split(":");
            if(_loc2_[5] != null)
            {
               this.sx = Number(_loc2_[5]);
            }
            if(_loc2_[6] != null)
            {
               this.sy = Number(_loc2_[6]);
            }
            if(_loc2_[7] != null)
            {
               this.status = _loc2_[7];
            }
            if(_loc2_[8] != null)
            {
               if(!isNaN(_loc2_[8]))
               {
                  this._dataProvider.speed = Number(_loc2_[8]);
               }
            }
            switch(param1.action)
            {
               case AvatarConstants.UPDATE_POS:
                  if(this._isJumping == true)
                  {
                     this.stopJump();
                  }
                  this.setPos2(_loc2_[0],_loc2_[1]);
                  this.standStill(_loc2_[2],_loc2_[3]);
                  this.dispatchEvent(new AvatarMoveEvent(AvatarMoveEvent.AVATAR_IS_MOVING,this,false));
                  break;
               case AvatarConstants.MOVE_TO:
                  if(this.surface.isInRoom(this) == false)
                  {
                     this.surface.addOtherAvatar(this);
                  }
                  this.walkTo(_loc2_[0],_loc2_[1]);
                  this.dispatchEvent(new AvatarMoveEvent(AvatarMoveEvent.AVATAR_IS_MOVING,this,false));
                  break;
               case AvatarConstants.STAND_STILL:
                  if(this.isJumping == true)
                  {
                     this.stopJump();
                  }
                  if(this._dataProvider.userName == "mtest2")
                  {
                  }
                  this.standStill(_loc2_[0],_loc2_[1]);
                  break;
               case AvatarConstants.ACTION_JUMP:
                  this.setPos2(_loc2_[0],_loc2_[1]);
                  this.startJump();
                  this.dispatchEvent(new AvatarMoveEvent(AvatarMoveEvent.AVATAR_IS_MOVING,this,false));
                  break;
               case AvatarConstants.ACTION_KNEEL:
                  this.setPos2(_loc2_[0],_loc2_[1]);
                  this.doKneel();
                  break;
               case AvatarConstants.ACTION_TURN_KNEEL:
                  this.doKneel3(_loc2_[0]);
            }
         }
      }
      
      public function get dataProvider() : UserVo
      {
         return this._dataProvider;
      }
      
      public function set dataProvider(param1:UserVo) : void
      {
         this._dataProvider = param1;
         var _loc2_:Array = this._dataProvider.avatar.split("/");
         var _loc3_:Array = _loc2_[3].split("_");
         if(this.userModel.palsOnly == true)
         {
            if(this.userModel.isPal(this.dataProvider.gaia_id) == true)
            {
               this.addChild(this.avatarLoader);
            }
         }
         else
         {
            this.addChild(this.avatarLoader);
         }
         this.avatarLoader.cacheAsBitmap = true;
         this.otherAvDataLoader.addEventListener(OtherAvDataLoader.AV_DATA_COMPLETE,this.gotImageData);
         this.otherAvDataLoader.getUserInfo(this._dataProvider.gaia_id);
         if(this.ignorePos == false)
         {
            this.x = this.dataProvider.x;
            this.y = this.dataProvider.y;
            this.targetX = this.x;
            this.targetY = this.y;
         }
         this.face = this.dataProvider.face;
         this.dir = this.dataProvider.dir;
         this.avatarLoader.standStill(this.dir,this.face);
         if(this._dataProvider.isIgnored == true)
         {
            this.alpha = 0.3;
         }
         if(this._dataProvider.isKneeling == 1)
         {
            this.eventController.addEventListener(this.kneelTimer,TimerEvent.TIMER,this.kneelAtStart);
            this.kneelTimer.start();
         }
         this.setName2();
      }
      
      private function gotImageData(param1:Event) : void
      {
         this.otherAvDataLoader.removeEventListener(OtherAvDataLoader.AV_DATA_COMPLETE,this.gotImageData);
         if(this.gender == "" && this.otherAvDataLoader.userVo.gender != "")
         {
            this.gender = this.otherAvDataLoader.userVo.gender;
            this.makeShadow();
         }
         this.avatarLoader.setStrip(this.otherAvDataLoader.avPath);
      }
      
      private function setName2() : *
      {
         var _loc1_:Number = this.chatModel.getColor(this._dataProvider.user_level);
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
         if(this.dataProvider.userName != null)
         {
            this.userText.text = this.dataProvider.userName;
            this.userText.x = -this.userText.width / 2 + 15;
            this.userText.y = 28;
         }
      }
      
      private function ignored(param1:Event) : *
      {
         if(this.othersModel.ignoreID == this.dataProvider.gaia_id)
         {
            this.alpha = 0.3;
         }
      }
      
      private function unIgnored(param1:Event) : *
      {
         if(this.othersModel.unIgnoreID == this.dataProvider.gaia_id)
         {
            this.alpha = 1;
         }
      }
      
      public function walkTo(param1:Number, param2:Number) : void
      {
         this.chatStatus = "";
         this.speed = this._dataProvider.speed;
         if(this.actions)
         {
            if(this.currentAction != "none")
            {
               this.actions.stopAction();
            }
         }
         this.action = "none";
         this.targetY = param2;
         this.targetX = param1;
         var _loc3_:Number = param1 - this.x;
         var _loc4_:Number = param2 - this.y;
         _loc3_ = _loc3_ < 0?Number(-1):Number(1);
         _loc4_ = _loc4_ < 0?Number(-1):Number(1);
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
         this.avatarLoader.arrangeAnimations();
         this.isWalking = true;
         this.movingX = _loc3_;
         this.movingY = _loc4_;
      }
      
      private function getAngle() : void
      {
         var _loc1_:Number = this.targetX - this.x;
         var _loc2_:Number = this.targetY - this.y;
         var _loc3_:Number = this.mode360(Math.atan2(_loc2_,_loc1_) / Math.PI * 180 + 90);
         this.facing = Math.min(int(_loc3_ / 90),3);
         this.dx3 = Math.sin(_loc3_ * Math.PI / 180) * this.speed;
         this.dy3 = -Math.cos(_loc3_ * Math.PI / 180) * this.speed;
         this.dx3 = int(this.dx3 * 100) / 100;
         this.dy3 = int(this.dy3 * 100) / 100;
      }
      
      private function mode360(param1:Number) : Number
      {
         return (param1 + 360) % 360;
      }
      
      private function doTheWalk2(param1:TimerEvent) : *
      {
         this.doTheWalk();
      }
      
      public function doTheWalk3(param1:Event = null) : void
      {
         if(this.isWalking == true)
         {
            this.doTheWalk();
         }
      }
      
      private function doTheWalk() : *
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         this.getAngle();
         this.nextX = this.x + this.dx3;
         this.nextY = this.y + this.dy3;
         this.stopX = false;
         this.stopY = false;
         var _loc1_:Number = 10;
         if(this.isBlocked == false || this._dataProvider.pathFinding == true)
         {
            _loc2_ = Math.abs(this.x - this.targetX);
            _loc3_ = Math.abs(this.y - this.targetY);
            if(_loc2_ < _loc1_)
            {
               this.stopX = true;
            }
            if(_loc3_ < _loc1_)
            {
               this.stopY = true;
            }
            if(this.stopX == true && this.stopY == true)
            {
               this.x = this.targetX;
               this.y = this.targetY;
               if(this._ignoreTarget == false)
               {
                  if(this.isLocked == false)
                  {
                     if(this._isWalking == true)
                     {
                        this.standStill(this.dir,this.face);
                        this.isWalking = false;
                     }
                  }
               }
            }
            else
            {
               if(this.isLocked == false)
               {
                  this.x = this.x + this.dx3;
                  this.y = this.y + this.dy3;
               }
               this.walkCount++;
               if(this.walkCount > 2)
               {
                  this.walkCount = 0;
               }
               this.avatarLoader.y = this.walkCount;
               this.dispatchEvent(new AvatarMoveEvent(AvatarMoveEvent.AVATAR_IS_MOVING,this,true));
            }
         }
         else
         {
            this.isWalking = false;
            this.doStand();
         }
         this.processBlockedItem();
      }
      
      public function processBlockedItem() : *
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
            if(this.action == "none")
            {
               if(this.isKneeling == false)
               {
                  this.standStill(this.dir,this.face);
               }
               return;
            }
            this.reactToObject(this.action);
            return;
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
         if(this.actions != null)
         {
            this.actions.setItem(this.blockedItem);
            this.actions.setAction(param1);
         }
      }
      
      private function checkBlocked(param1:Number, param2:Number) : *
      {
         var _loc3_:Array = this._checkBlockedFunction.call(this,this,param1,param2);
         this.blockedItem = _loc3_[1];
         return _loc3_[0];
      }
      
      private function calculateCoords() : *
      {
      }
      
      public function doStand() : void
      {
         this.standStill(this.dir,this.face);
      }
      
      public function doKneel() : void
      {
         if(this.currentAction != "none")
         {
            this.actions.stopAction();
         }
         this.avatarLoader.doKneel();
         this.isKneeling = true;
         this.dispatchEvent(new Event(AvatarConstants.ACTION_KNEEL));
      }
      
      private function doKneel3(param1:Number) : *
      {
         switch(param1)
         {
            case 1:
               this.avatarLoader.setKneelDir(AvatarConstants.DIR_RIGHT,AvatarConstants.FACE_BACK);
               break;
            case 2:
               this.avatarLoader.setKneelDir(AvatarConstants.DIR_LEFT,AvatarConstants.FACE_FRONT);
               break;
            case 3:
               this.avatarLoader.setKneelDir(AvatarConstants.DIR_LEFT,AvatarConstants.FACE_BACK);
               break;
            case 4:
               this.avatarLoader.setKneelDir(AvatarConstants.DIR_RIGHT,AvatarConstants.FACE_FRONT);
         }
         this.dispatchEvent(new Event(AvatarConstants.ACTION_KNEEL));
      }
      
      private function startJump() : *
      {
         this.orignalY = y;
         this.jumpCount = 0;
         this.isJumping = true;
         this.isKneeling = false;
         this.eventController.addEventListener(this.jumpTimer,TimerEvent.TIMER,this.doJump);
         this.jumpTimer.start();
      }
      
      private function doJump(param1:TimerEvent) : *
      {
         this.jumpY = this.jumpY + this.jumpDir * 20;
         this.jumpCount++;
         if(this.jumpCount == 3)
         {
            this.jumpCount = 0;
            this.jumpDir = -this.jumpDir;
         }
         this.avatarLoader.showJumpPos(this.jumpY);
         this.dispatchEvent(new AvatarMoveEvent(AvatarMoveEvent.AVATAR_IS_MOVING,this,true));
      }
      
      private function stopJump() : *
      {
         this.jumpTimer.stop();
         this.eventController.removeEventListener(this.jumpTimer,TimerEvent.TIMER,this.doJump);
         this.isJumping = false;
         this.jumpY = 0;
         this.avatarLoader.showJumpPos(0);
      }
      
      public function resetAvatar() : void
      {
         this.eventController.removeEventListener(this.othersModel,OtherEvent.OTHER_ACTION,this.actionReceived);
         this.eventController.removeEventListener(this.jumpTimer,TimerEvent.TIMER,this.doJump);
      }
      
      public function setAtStart() : void
      {
         this.x = this.globalModel.startX;
         this.y = this.globalModel.startY;
         this.targetX = x;
         this.targetY = y;
         this.dataProvider.x = this.x;
         this.dataProvider.y = this.y;
         this.dispatchEvent(new AvatarMoveEvent(AvatarMoveEvent.AVATAR_IS_MOVING,this,true));
      }
      
      public function init() : void
      {
         this.dispatchEvent(new AvatarMoveEvent(AvatarMoveEvent.AVATAR_IS_MOVING,this,true));
      }
      
      public function removeMe() : *
      {
         var _loc1_:Sprite = this.parent as Sprite;
         _loc1_.removeChild(this);
      }
      
      public function hitSomething() : void
      {
      }
      
      public function setStrip(param1:String) : void
      {
      }
      
      public function setDir(param1:String) : void
      {
         this.avatarLoader.setDir(param1);
      }
      
      public function setScroller(param1:Object) : void
      {
      }
      
      public function setFace(param1:String) : void
      {
         this.avatarLoader.setFaceDir(this.avatarLoader.dir,param1);
      }
      
      public function setDepth2(param1:Number) : void
      {
         this._depth2 = param1;
      }
      
      public function getDepth2() : Number
      {
         if(this.keepOnTop == true)
         {
            return 1000000;
         }
         return this._depth2 + this._depthDef;
      }
      
      public function getX() : Number
      {
         return x;
      }
      
      public function getY() : Number
      {
         return y;
      }
      
      public function get collideClip() : Sprite
      {
         return this._collideClip;
      }
      
      public function get clip() : Sprite
      {
         return this as Sprite;
      }
      
      public function set depth2(param1:Number) : void
      {
         this._depth2 = param1;
      }
      
      public function get depth2() : Number
      {
         if(this.isJumping == true && this.blockedItem != null)
         {
            return this.blockedItem.depth2 + 500;
         }
         return this._depth2;
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
         this._isKneeling = param1;
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
      
      public function get blockedItem() : IWorldItem
      {
         return this._blockedItem;
      }
      
      public function set blockedItem(param1:IWorldItem) : void
      {
         this._blockedItem = param1;
         if(this._blockedItem == null)
         {
            this.action = "none";
         }
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
         this.avatarLoader.hideLegs();
      }
      
      public function showLegs() : void
      {
         this.avatarLoader.showLegs();
      }
      
      public function set ignoreTarget(param1:Boolean) : void
      {
         this._ignoreTarget = param1;
      }
      
      public function get ignoreTarget() : Boolean
      {
         return this._ignoreTarget;
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
      
      public function get myName() : String
      {
         return MY_NAME;
      }
      
      public function get keepOnTop() : Boolean
      {
         return this._keepOnTop;
      }
      
      public function set keepOnTop(param1:Boolean) : void
      {
         this._keepOnTop = param1;
      }
      
      public function get status() : String
      {
         return this._status;
      }
      
      public function set status(param1:String) : void
      {
         var _loc2_:Boolean = false;
         if(this._status != param1)
         {
            _loc2_ = true;
         }
         this._status = param1;
         if(_loc2_ == true)
         {
            this.othersController.updateStatus(this);
         }
      }
      
      private function kneelAtStart(param1:TimerEvent) : *
      {
         this.eventController.removeEventListener(this.kneelTimer,TimerEvent.TIMER,this.kneelAtStart);
         this.kneelTimer.stop();
         this.doKneel();
      }
      
      public function attachItem(param1:Number, param2:Number, param3:ISurfaceObject) : void
      {
         param3.clip.x = param1;
         param3.clip.y = param2;
         if(param3.depth2 != 0)
         {
            this.itemClip.addChild(param3.clip);
            this.setChildIndex(this.itemClip,this.numChildren - 1);
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
         this.avatarLoader.swimming = param1;
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
            this.eventController.addEventListener(this.immunityResetTimer,TimerEvent.TIMER,this.resetImmunity,false,0,true);
            this.immunityResetTimer.start();
         }
         this.dispatchEvent(new Event(AvatarConstants.IMMUNITY_CHANGED,true));
      }
      
      private function resetImmunity(param1:TimerEvent) : *
      {
         this.immunityResetTimer.stop();
         this.eventController.removeEventListener(this.immunityResetTimer,TimerEvent.TIMER,this.resetImmunity);
         this.immunity = false;
         this.alpha = 1;
      }
      
      public function sendDataToServer() : void
      {
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
         if(this.shadow)
         {
            this.shadow.visible = true;
            if(this.contains(this.shadow))
            {
               this.setChildIndex(this.shadow,0);
            }
         }
      }
      
      public function destroy() : void
      {
         this.othersController.takeOtherOffList(this.dataProvider);
         this.avatarLoader.destroy();
         this.eventController.removeEventListener(this.othersModel,OtherEvent.OTHER_ACTION,this.actionReceived);
         this.eventController.removeEventListener(this.othersModel,ChatConstants.UNIGNORE,this.unIgnored);
         this.eventController.removeEventListener(this.othersModel,ChatConstants.IGNORE,this.ignored);
         this.eventController.removeEventListener(this,Event.ENTER_FRAME,this.doTheWalk3);
         this.eventController.removeEventListener(this,MouseEvent.MOUSE_DOWN,this.clickMe);
         this.eventController.removeEventListener(this.jumpTimer,TimerEvent.TIMER,this.doJump);
         this.eventController.removeEventListener(this.kneelTimer,TimerEvent.TIMER,this.kneelAtStart);
         this.eventController.removeEventListener(this.attachedLoader,ANIMATION_DONE,this.removeAttached);
         this.eventController.removeEventListener(this.immunityResetTimer,TimerEvent.TIMER,this.resetImmunity);
      }
      
      public function setAvPos(param1:Number, param2:Number) : void
      {
         this.dataProvider.x = param1;
         this.dataProvider.y = param2;
         this.x = this.dataProvider.x;
         this.y = this.dataProvider.y;
      }
      
      public function set chatStatus(param1:String) : void
      {
         this._chatStatus = param1;
         var _loc2_:TextFormat = new TextFormat();
         var _loc3_:Number = 0;
         var _loc4_:String = "";
         switch(this._chatStatus)
         {
            case ChatConstants.AWAY_FROM_KEYBOARD:
               if(this.globalModel.showAFK == true)
               {
                  _loc3_ = 16711680;
                  this.chatStat.backgroundColor = 0;
                  this.chatStat.background = true;
                  _loc4_ = "afk";
               }
               break;
            case ChatConstants.TYPING_STARTED:
               if(this.globalModel.showIsTyping == true)
               {
                  _loc4_ = "typing...";
                  _loc3_ = 16711680;
                  this.chatStat.background = false;
               }
               break;
            case ChatConstants.TYPING_STOPPED:
            case ChatConstants.AT_KEYBOARD:
            case "":
               _loc4_ = "";
               this.chatStat.background = false;
         }
         _loc2_.color = _loc3_;
         _loc2_.size = this.avatarModel.userNameTextSize;
         _loc2_.font = new Font1().fontName;
         _loc2_.bold = true;
         _loc2_.align = "center";
         this.chatStat.multiline = false;
         this.chatStat.autoSize = TextFieldAutoSize.CENTER;
         this.chatStat.embedFonts = true;
         this.chatStat.defaultTextFormat = _loc2_;
         this.chatStat.text = _loc4_;
         this.chatStat.x = -this.chatStat.width / 2 + 15;
         this.chatStat.y = 45;
      }
      
      public function get chatStatus() : String
      {
         return this._chatStatus;
      }
   }
}

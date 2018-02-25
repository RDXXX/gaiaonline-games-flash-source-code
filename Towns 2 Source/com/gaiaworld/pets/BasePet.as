package com.gaiaworld.pets
{
   import com.gaiaworld.avatar.controller.events.AvatarMoveEvent;
   import com.gaiaworld.avatar.interfaces.IAvatar;
   import com.gaiaworld.avatar.model.AvatarModel;
   import com.gaiaworld.avatar.model.OthersModel;
   import com.gaiaworld.global.constants.GlobalConstants;
   import com.gaiaworld.global.controller.EventController;
   import com.gaiaworld.global.model.GlobalModel;
   import com.gaiaworld.gobjects.constants.CollisionConstants;
   import com.gaiaworld.gobjects.controller.ObjectController;
   import com.gaiaworld.gobjects.model.ObjectModel;
   import com.gaiaworld.house.model.HousingModel;
   import com.gaiaworld.pets.constants.PetConstants;
   import com.gaiaworld.pets.controller.PetController;
   import com.gaiaworld.pets.interfaces.IPet;
   import com.gaiaworld.pets.model.PetModel;
   import com.gaiaworld.pets.vo.PetVo;
   import com.gaiaworld.room.interfaces.ISurfaceObject;
   import com.gaiaworld.room.interfaces.IWorldItem2;
   import com.gaiaworld.room.model.RoomModel;
   import com.gaiaworld.room.util.ObjUtil;
   import com.gaiaworld.sushi.controller.ChatController;
   import com.gaiaworld.sushi.controller.events.ChatEvent;
   import com.gaiaworld.sushi.controller.events.UserMessageEvent;
   import com.gaiaworld.sushi.model.ChatModel;
   import com.gaiaworld.user.model.UserModel;
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.net.URLRequest;
   import flash.text.Font;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class BasePet extends Sprite implements ISurfaceObject, IPet, IWorldItem2
   {
      
      public static const PET_LOADED:String = "petLoaded";
       
      
      private var _depth2:Number;
      
      private var _canCollide:Boolean = false;
      
      private var _speed:Number = 2;
      
      protected var loader:Loader;
      
      private var _owner:IAvatar;
      
      private var _ownerIsMoving:Boolean = false;
      
      protected var roomModel:RoomModel;
      
      protected var objectModel:ObjectModel;
      
      protected var _petClip:Object;
      
      private var _dataProvider:PetVo;
      
      private var _collideType:String;
      
      protected var othersModel:OthersModel;
      
      protected var objectController:ObjectController;
      
      protected var chatModel:ChatModel;
      
      protected var petModel:PetModel;
      
      protected var globalModel:GlobalModel;
      
      protected var userModel:UserModel;
      
      protected var chatController:ChatController;
      
      protected var petController:PetController;
      
      protected var housingModel:HousingModel;
      
      protected var avatarModel:AvatarModel;
      
      protected var eventController:EventController;
      
      protected var petIsLoaded:Boolean = false;
      
      public var text1:TextField;
      
      protected var targetX:Number = 0;
      
      protected var targetY:Number = 0;
      
      protected var targetIndex:Number = 0;
      
      protected var targetArray:Array;
      
      private var _hitBox:MovieClip;
      
      private var xDir:Number;
      
      private var yDir:Number;
      
      public var faceFront:Boolean = true;
      
      protected var currentStatus:String;
      
      public var marker:Boolean = false;
      
      private var lastCollide:Number = 0;
      
      private var collideCount:Number = 0;
      
      private var isFollowing:Boolean = false;
      
      private var sleepTimer:Timer;
      
      protected var moveX:Number;
      
      public var moveStatus:String = "";
      
      protected var nextAction:String = "";
      
      private var _clickable:Boolean = true;
      
      public function BasePet()
      {
         this.loader = new Loader();
         this.roomModel = RoomModel.getInstance();
         this.objectModel = ObjectModel.getInstance();
         this.othersModel = OthersModel.getInstance();
         this.objectController = new ObjectController();
         this.chatModel = ChatModel.getInstance();
         this.petModel = PetModel.getInstance();
         this.globalModel = GlobalModel.getInstance();
         this.userModel = UserModel.getInstance();
         this.chatController = new ChatController();
         this.petController = new PetController();
         this.housingModel = HousingModel.getInstance();
         this.avatarModel = AvatarModel.getInstance();
         this.eventController = new EventController();
         this.text1 = new TextField();
         this.sleepTimer = new Timer(2000);
         super();
         this.eventController.addEventListener(this.chatModel,ChatEvent.USER_HAS_LEFT_ROOM,this.userLeft);
         this.eventController.addEventListener(this.petModel,PetConstants.CAN_FOLLOW_USER_CHANGED,this.canFollowChanged);
         this.addChild(this.loader);
         this.eventController.addEventListener(this.loader.contentLoaderInfo,Event.COMPLETE,this.petLoaded);
         this.eventController.addEventListener(this.loader.contentLoaderInfo,IOErrorEvent.IO_ERROR,this.petLoadError);
         this.eventController.addEventListener(this.petModel,PetConstants.FOLLOW_PATH,this.followPath);
         this.eventController.addEventListener(this.petModel,PetConstants.DEACTIVATE_DONE,this.deactivateDone);
         this.eventController.addEventListener(this,Event.REMOVED_FROM_STAGE,this.destroy);
         this.eventController.addEventListener(this.chatModel,UserMessageEvent.USER_MESSAGE_REC,this.updateTarget);
         this.eventController.addEventListener(this,MouseEvent.CLICK,this.selectMe);
         this.useHandCursor = true;
      }
      
      private function petLoadError(param1:IOErrorEvent) : void
      {
      }
      
      protected function checkStats(param1:Event = null) : *
      {
      }
      
      public function getObject() : ISurfaceObject
      {
         return this as ISurfaceObject;
      }
      
      public function get petID() : Number
      {
         return this.dataProvider.itemSerial;
      }
      
      private function checkMe(param1:Event) : void
      {
         if(this.petModel.myPet.dataProvider.itemSerial == this.dataProvider.itemSerial)
         {
            this.dataProvider.avatar = this.avatarModel.avatar;
            this.owner = this.avatarModel.avatar;
            this.petController.setFollow(true);
            this.doWaitAnimation();
         }
      }
      
      private function removeMyPet(param1:Event) : void
      {
         if(this.petModel.activeID == this.dataProvider.itemSerial)
         {
            this.destroy();
            this.petController.myPetHasBeenRemoved();
            this.objectController.removeItem(this);
         }
      }
      
      private function petIsWashed(param1:Event) : void
      {
         if(this.petModel.activeID == this.petModel.selectedPet.itemSerial)
         {
            this.doWashAnimation();
         }
      }
      
      private function putToBed(param1:Event) : void
      {
         if(this.petModel.activeID == this.dataProvider.itemSerial)
         {
            this.petController.deactivateMyPet();
            this.destroy();
            this.objectController.removeItem(this);
         }
      }
      
      private function deactivateDone(param1:Event) : *
      {
         if(this.petModel.activeID == this.dataProvider.itemSerial)
         {
            this.destroy();
            this.objectController.removeItem(this);
            this.petModel.myPet = null;
         }
      }
      
      public function moveAboutHouse() : void
      {
         if(this.dataProvider.sleeping == false && this.currentStatus != "sleep")
         {
            this.speed = 3;
            this.pickDir();
            this.moveStatus = "moveAboutHouse";
            this.eventController.addEventListener(this,Event.ENTER_FRAME,this.moveMe,false,0,true,"Move about House");
         }
         else
         {
            this.x = this.globalModel.startX;
            this.y = this.globalModel.startY;
            this.sleepTimer.addEventListener(TimerEvent.TIMER,this.delaySleep);
            this.sleepTimer.start();
         }
      }
      
      private function delaySleep(param1:TimerEvent) : *
      {
         this.sleepTimer.stop();
         this.sleepTimer.removeEventListener(TimerEvent.TIMER,this.delaySleep);
         this.doSleepAnimation();
      }
      
      private function moveMe(param1:Event = null) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(this.currentStatus == "eat")
         {
            return;
         }
         if(this.currentStatus == "sleep")
         {
            this.eventController.removeEventListener(this,Event.ENTER_FRAME,this.moveMe);
            this.moveStatus = "";
            this.doSleepAnimation();
            return;
         }
         if(this.petClip)
         {
            if(this.petClip.pet)
            {
               if(this.petClip.pet.fa)
               {
                  this.petClip.pet.fa.gotoAndStop("walk");
                  this.buildPet();
               }
            }
         }
         if(this.objectModel.room.checkMapCollision(this) == true)
         {
            _loc2_ = getTimer();
            _loc3_ = _loc2_ - this.lastCollide;
            if(_loc3_ < 300)
            {
               this.collideCount++;
               if(this.collideCount == 10)
               {
                  this.collideCount = 0;
                  this.x = this.globalModel.startX;
                  this.y = this.globalModel.startY;
               }
            }
            this.lastCollide = getTimer();
            this.revesePos();
            this.updatePos();
            this.updatePos();
         }
         else
         {
            this.updatePos();
         }
         if(Math.random() * 100 < 4)
         {
            this.pickDir();
            this.updatePos();
         }
      }
      
      private function revesePos() : *
      {
         this.xDir = -this.xDir;
         this.yDir = -this.yDir;
      }
      
      private function updatePos() : void
      {
         this.x = this.x + this.xDir * this.speed;
         this.y = this.y + this.yDir * this.speed;
         if(this.xDir > 0)
         {
            if(this.petClip)
            {
               if(this.petClip.pet)
               {
                  this.petClip.pet.scaleX = -1;
                  this.adjustX();
               }
            }
         }
         else if(this.petClip)
         {
            if(this.petClip.pet)
            {
               this.petClip.pet.scaleX = 1;
               this.adjustX();
            }
         }
         this.dispatchEvent(new Event(GlobalConstants.MOVING,true));
      }
      
      private function pickDir() : void
      {
         this.xDir = int(Math.random() * 3) - 1;
         this.yDir = int(Math.random() * 3) - 1;
      }
      
      private function selectMe(param1:MouseEvent) : void
      {
         this.petController.selectPet(this._dataProvider);
         this.petController.selectPetClip(this);
      }
      
      public function refreshPet() : void
      {
         this.buildPet();
      }
      
      private function updateTarget(param1:UserMessageEvent) : void
      {
         var _loc2_:Array = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(this.marker == true)
         {
            return;
         }
         if(this.dataProvider.userID == param1.sender.gaia_id)
         {
            if(this.dataProvider.userID != this.userModel.userID)
            {
               _loc2_ = param1.message.split(":");
               if(_loc2_[0] == "updatePetTarget")
               {
                  _loc3_ = Number(_loc2_[1]);
                  _loc4_ = Number(_loc2_[2]);
                  this.targetX = _loc3_;
                  this.targetY = _loc4_;
                  this.moveStatus = "moveOtherFluff";
               }
               if(_loc2_[0] == "doAnimation")
               {
                  switch(_loc2_[1])
                  {
                     case "wait":
                        this.doWaitAnimation();
                  }
               }
            }
         }
      }
      
      protected function canFollowChanged(param1:Event) : void
      {
         if(this.owner != null)
         {
            if(this.owner.clip != null)
            {
               this.eventController.removeEventListener(this.owner.clip,AvatarMoveEvent.AVATAR_IS_MOVING,this.targetUpdated);
            }
         }
         if(this.petModel.followUser == true)
         {
            if(this.dataProvider.userID == this.userModel.userID)
            {
            }
            this.setWalking();
            this.eventController.removeEventListener(this,Event.ENTER_FRAME,this.moveOnPath);
            this.moveStatus = "";
            if(this.owner)
            {
               this.eventController.addEventListener(this.owner.clip,AvatarMoveEvent.AVATAR_IS_MOVING,this.targetUpdated);
            }
         }
         else
         {
            this.isFollowing = false;
            this.moveStatus = "";
            this.eventController.removeEventListener(this,Event.ENTER_FRAME,this.move);
         }
      }
      
      public function showName(param1:Boolean) : *
      {
         this.text1.visible = param1;
      }
      
      protected function loadPet(param1:String) : *
      {
         var _loc2_:String = this.globalModel.imagePath2 + "/Gaia_Flash/Towns2/" + param1;
         this.loader.load(new URLRequest(_loc2_));
      }
      
      protected function loadPetLocal(param1:String) : *
      {
         this.loader.load(new URLRequest(param1));
      }
      
      protected function petLoaded(param1:Event) : *
      {
         this.loader.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.petLoaded);
         this.petIsLoaded = true;
         this.centerLoader();
         this._petClip = this.loader.content as Object;
         this.buildPet();
      }
      
      private function centerLoader() : *
      {
         this.loader.x = -this.loader.width / 2;
         this.loader.y = -this.loader.height / 2;
      }
      
      public function setName(param1:String) : void
      {
         var _loc2_:TextFormat = new TextFormat();
         var _loc3_:Font = new Font3();
         _loc2_.font = _loc3_.fontName;
         _loc2_.size = 12;
         _loc2_.color = 0;
         this.text1.multiline = false;
         this.text1.selectable = false;
         this.text1.autoSize = TextFieldAutoSize.CENTER;
         this.text1.text = param1 + " ";
         this.text1.x = -this.text1.width / 2;
         this.text1.y = this.loader.y + this.loader.height + 6;
         this.addChild(this.text1);
      }
      
      private function petNameUpdated(param1:Event) : *
      {
         if(this.petModel.myPet)
         {
            if(this.petModel.myPet.dataProvider.itemSerial == this.dataProvider.itemSerial)
            {
               this.text1.text = this.petModel.myPetName;
            }
         }
      }
      
      public function setAvatar(param1:IAvatar) : *
      {
         this.owner = param1;
         if(this.petModel.followUser == true)
         {
            this.setWalking();
            this.eventController.addEventListener(param1.clip,AvatarMoveEvent.AVATAR_IS_MOVING,this.targetUpdated);
         }
      }
      
      protected function setWalking() : void
      {
         if(this.dataProvider.walking == false)
         {
            this.petController.setWalking();
         }
      }
      
      protected function targetUpdated(param1:Event) : *
      {
         if(this._clickable == false)
         {
            return;
         }
         if(this.petModel.followUser == false)
         {
            return;
         }
         if(this.isFollowing == false)
         {
            this.isFollowing = true;
            this.moveStatus = "move";
         }
      }
      
      public function doMove() : void
      {
         switch(this.moveStatus)
         {
            case "move":
               this.move();
               break;
            case "moveOnPath":
               this.moveOnPath();
               break;
            case "moveAboutHouse":
               this.moveMe();
               break;
            case "moveOtherFluff":
               this.moveOtherFluff();
               break;
            case "moveTarget":
               this.moveToTarget();
         }
      }
      
      public function isCloseEnough() : Boolean
      {
         var _loc1_:Number = ObjUtil.getDistance2(this.owner.clip.x,this.owner.clip.y + 6,this.clip.x,this.clip.y);
         if(_loc1_ < 50)
         {
            this.isFollowing = false;
            if(this.moveStatus == "move")
            {
               this.moveStatus = "";
            }
            this.ownerIsMoving = false;
            this.doWaitAnimation();
            return true;
         }
         return false;
      }
      
      public function setAction(param1:String) : void
      {
      }
      
      protected function move(param1:Event = null) : *
      {
         var _loc2_:Array = null;
         var _loc3_:Number = NaN;
         if(this._clickable == false)
         {
            return;
         }
         if(this.petModel.followUser == false)
         {
            return;
         }
         if(this.petModel.paused == true)
         {
            return;
         }
         if(this.userModel.userID == this.dataProvider.userID)
         {
         }
         this.buildPet();
         if(this.isCloseEnough() == false)
         {
            _loc2_ = ObjUtil.getPreciseDir(this.owner.clip,this.clip);
            this.moveX = Number(_loc2_[0]);
            _loc3_ = Number(_loc2_[1]);
            if(this.objectModel.checkCollisionMap(this) == false)
            {
               this.visible = true;
            }
            else
            {
               this.visible = false;
            }
            this.x = this.x + this.moveX * this.speed;
            this.y = this.y + _loc3_ * this.speed;
            if(_loc3_ < 0)
            {
               this.faceFront = false;
            }
            else
            {
               this.faceFront = true;
            }
            if(this.moveX > 0)
            {
               if(this._petClip)
               {
                  if(this._petClip.pet)
                  {
                     this._petClip.pet.scaleX = -1;
                     this.adjustX();
                  }
               }
            }
            else if(this._petClip)
            {
               if(this._petClip.pet)
               {
                  this._petClip.pet.scaleX = 1;
                  this.adjustX();
               }
            }
            this.doWalkAnimation();
         }
      }
      
      protected function moveOnPath(param1:Event = null) : *
      {
         if(this.petModel.paused == true)
         {
            this.buildPet();
            return;
         }
         if(this.isCloseEnoughToTarget() == false)
         {
            this.visible = true;
            this.updateMove(this.targetX,this.targetY);
         }
         else
         {
            this.getNextTarget();
         }
      }
      
      private function moveOtherFluff(param1:Event = null) : *
      {
         if(this.isCloseEnoughToTarget() == false)
         {
            this.visible = true;
            this.updateMove(this.targetX,this.targetY);
         }
         else
         {
            this.removeEventListener(Event.ENTER_FRAME,this.moveOtherFluff);
         }
      }
      
      private function updateMove(param1:Number, param2:Number) : *
      {
         if(this._clickable == false)
         {
            return;
         }
         var _loc3_:Array = ObjUtil.getPreciseDir2(param1,param2,this.clip.x,this.clip.y);
         this.moveX = Number(_loc3_[0]);
         var _loc4_:Number = Number(_loc3_[1]);
         this.x = this.x + this.moveX * this.speed;
         this.y = this.y + _loc4_ * this.speed;
         if(this.moveX > 0)
         {
            if(this._petClip)
            {
               if(this._petClip.pet)
               {
                  this._petClip.pet.scaleX = -1;
                  this.adjustX();
               }
            }
         }
         else if(this._petClip)
         {
            if(this._petClip.pet)
            {
               this._petClip.pet.scaleX = 1;
               this.adjustX();
            }
         }
         if(_loc4_ < 0)
         {
            this.faceFront = false;
         }
         else
         {
            this.faceFront = true;
         }
         this.dispatchEvent(new Event(GlobalConstants.MOVING,true));
         this.doWalkAnimation();
      }
      
      private function isCloseEnoughToTarget() : Boolean
      {
         var _loc1_:Number = ObjUtil.getDistance2(this.targetX,this.targetY,this.clip.x,this.clip.y);
         if(_loc1_ < 10)
         {
            return true;
         }
         return false;
      }
      
      protected function getNextTarget() : void
      {
         var _loc1_:String = null;
         if(this.targetIndex == this.targetArray.length)
         {
            this.endOfPath();
         }
         else
         {
            this.targetX = this.targetArray[this.targetIndex].x;
            this.targetY = this.targetArray[this.targetIndex].y;
            this.targetIndex++;
            _loc1_ = "updatePetTarget:" + String(this.targetX) + ":" + String(this.targetY);
            this.chatController.sendUserMessage(_loc1_,this.userModel.userVo);
         }
      }
      
      public function setTarget(param1:Number, param2:Number) : void
      {
         if(this._clickable == false)
         {
            return;
         }
         this.isFollowing = false;
         this.moveStatus = "moveTarget";
         this.targetX = param1;
         this.targetY = param2;
         this.eventController.addEventListener(this,Event.REMOVED_FROM_STAGE,this.destroy);
      }
      
      private function moveToTarget(param1:Event = null) : *
      {
         var _loc2_:Array = null;
         var _loc3_:Number = NaN;
         var _loc4_:String = null;
         var _loc5_:String = null;
         if(this._clickable == false)
         {
            return;
         }
         if(this.isCloseEnoughToTarget() == false)
         {
            _loc2_ = ObjUtil.getPreciseDir2(this.targetX,this.targetY,this.clip.x,this.clip.y);
            this.moveX = Number(_loc2_[0]);
            _loc3_ = Number(_loc2_[1]);
            this.x = this.x + this.moveX * this.speed;
            this.y = this.y + _loc3_ * this.speed;
            if(_loc3_ < 0)
            {
               this.faceFront = false;
            }
            else
            {
               this.faceFront = true;
            }
            if(this.moveX > 0)
            {
               if(this._petClip)
               {
                  if(this._petClip.pet)
                  {
                     this._petClip.pet.scaleX = -1;
                     this.adjustX();
                  }
               }
            }
            else if(this._petClip)
            {
               if(this._petClip.pet)
               {
                  this._petClip.pet.scaleX = 1;
                  this.adjustX();
               }
            }
            _loc4_ = "updatePetTarget:" + String(this.targetX) + ":" + String(this.targetY);
            this.chatController.sendUserMessage(_loc4_,this.userModel.userVo);
            this.doWalkAnimation();
         }
         else
         {
            _loc5_ = "doAnimation:wait";
            this.chatController.sendUserMessage(_loc5_,this.userModel.userVo);
            this.doWaitAnimation();
            this.dispatchEvent(new Event(PetConstants.REACHED_TARGET,true));
            this.moveStatus = "";
         }
      }
      
      protected function adjustX() : void
      {
      }
      
      protected function endOfPath() : void
      {
      }
      
      private function followPath(param1:Event) : *
      {
         if(this.owner.dataProvider.gaia_id == this.userModel.userVo.gaia_id)
         {
            this.eventController.removeEventListener(this.owner.clip,AvatarMoveEvent.AVATAR_IS_MOVING,this.targetUpdated);
            this.isFollowing = false;
            this.doWalkAnimation();
            this.targetArray = this.petModel.pathArray;
            this.targetIndex = 0;
            this.getNextTarget();
            this.moveStatus = "moveOnPath";
         }
      }
      
      public function doStill() : void
      {
      }
      
      protected function doWaitAnimation() : void
      {
      }
      
      protected function doWalkAnimation() : void
      {
      }
      
      protected function doEatAnimation(param1:Number = 1) : void
      {
      }
      
      protected function doSleepAnimation() : void
      {
      }
      
      protected function doWashAnimation() : void
      {
      }
      
      protected function doHappyAnimation() : void
      {
      }
      
      protected function doSadAnimation() : void
      {
      }
      
      public function get clip() : Sprite
      {
         return this as Sprite;
      }
      
      public function get depth2() : Number
      {
         if(isNaN(this._depth2))
         {
            return this.y;
         }
         return this._depth2;
      }
      
      public function set depth2(param1:Number) : void
      {
         this._depth2 = param1;
      }
      
      public function get myName() : String
      {
         return "pet";
      }
      
      public function get canCollide() : Boolean
      {
         return true;
      }
      
      public function get collideType() : String
      {
         return CollisionConstants.ALL_COLLISIONS;
      }
      
      public function get dataProvider() : PetVo
      {
         return this._dataProvider;
      }
      
      public function set dataProvider(param1:PetVo) : void
      {
         this._dataProvider = param1;
         this.buildPet();
      }
      
      public function get speed() : Number
      {
         return this._speed;
      }
      
      public function set speed(param1:Number) : void
      {
         this._speed = param1;
      }
      
      public function get ownerIsMoving() : Boolean
      {
         return this._ownerIsMoving;
      }
      
      public function set ownerIsMoving(param1:Boolean) : void
      {
         this._ownerIsMoving = param1;
      }
      
      public function get petClip() : Object
      {
         return this._petClip;
      }
      
      public function set petClip(param1:Object) : void
      {
         this._petClip = param1;
      }
      
      public function get owner() : IAvatar
      {
         return this._owner;
      }
      
      public function set owner(param1:IAvatar) : void
      {
         this._owner = param1;
      }
      
      protected function buildPet() : void
      {
         if(this._dataProvider != null && this.petIsLoaded == true)
         {
         }
      }
      
      private function userLeft(param1:ChatEvent) : void
      {
         if(this.dataProvider != null)
         {
            if(param1.userVo != null)
            {
               if(param1.userVo.gaia_id == this.dataProvider.userID)
               {
                  this.objectController.removeItem(this);
               }
            }
         }
      }
      
      public function destroy(param1:Event = null) : *
      {
         this.removeEventListener(Event.REMOVED_FROM_STAGE,this.destroy);
         this.eventController.removeEventListener(this,Event.REMOVED_FROM_STAGE,this.destroy);
         this.eventController.removeEventListener(this.chatModel,ChatEvent.USER_HAS_LEFT_ROOM,this.userLeft);
         this.eventController.removeEventListener(this.petModel,PetConstants.CAN_FOLLOW_USER_CHANGED,this.canFollowChanged);
         this.eventController.removeEventListener(this.loader.contentLoaderInfo,Event.COMPLETE,this.petLoaded);
         this.eventController.removeEventListener(this.petModel,PetConstants.FOLLOW_PATH,this.followPath);
         this.sleepTimer.removeEventListener(TimerEvent.TIMER,this.delaySleep);
         if(this.owner != null)
         {
            this.eventController.removeEventListener(this.owner.clip,AvatarMoveEvent.AVATAR_IS_MOVING,this.targetUpdated);
         }
         this.eventController.removeEventListener(this.petModel,PetConstants.REFRESH_PET,this.refreshPet);
         this.eventController.removeEventListener(this.petModel,PetConstants.FOLLOW_PATH,this.followPath);
         this.eventController.removeEventListener(this.petModel,PetConstants.NAME_MY_PET,this.petNameUpdated);
         this.eventController.removeEventListener(this.petModel,PetConstants.PUT_TO_BED,this.putToBed);
         this.eventController.removeEventListener(this.chatModel,UserMessageEvent.USER_MESSAGE_REC,this.updateTarget);
         this.eventController.removeEventListener(this,MouseEvent.MOUSE_DOWN,this.selectMe);
         this.eventController.removeEventListener(this.petModel,PetConstants.PET_INFO_UPDATED,this.checkStats);
         this.eventController.removeEventListener(this.petModel,PetConstants.DEACTIVATE_DONE,this.deactivateDone);
         this.customDestroy();
      }
      
      protected function customDestroy() : *
      {
      }
      
      public function get specialAction() : String
      {
         return "";
      }
      
      public function get type() : String
      {
         return "pet";
      }
      
      public function get hitBox() : MovieClip
      {
         return this._hitBox;
      }
      
      public function set hitBox(param1:MovieClip) : *
      {
         this._hitBox = param1;
      }
      
      public function get clickable() : Boolean
      {
         return this._clickable;
      }
      
      public function set clickable(param1:Boolean) : void
      {
         this._clickable = param1;
         this.eventController.removeEventListener(this,MouseEvent.CLICK,this.selectMe);
         if(this._clickable == true)
         {
            this.eventController.addEventListener(this,MouseEvent.CLICK,this.selectMe);
         }
      }
   }
}

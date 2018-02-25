package com.gaiaworld.avatar.view
{
   import com.gaiaworld.avatar.constants.AvatarConstants;
   import com.gaiaworld.avatar.model.AvatarModel;
   import com.gaiaworld.avatar.util.BitmapUtil;
   import com.gaiaworld.avatar.view.parts.BodyPart;
   import com.gaiaworld.avatar.view.parts.Legs;
   import com.gaiaworld.global.controller.EventController;
   import com.gaiaworld.global.model.GlobalModel;
   import com.gaiaworld.global.util.StringFunctions;
   import com.gaiaworld.house.controller.DebugController;
   import com.gaiaworld.user.vo.UserVo;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.geom.ColorTransform;
   import flash.net.URLRequest;
   import flash.system.LoaderContext;
   
   public class AvatarLoader extends Sprite
   {
      
      public static const AVATAR_LOADED:String = "avatarLoaded";
      
      public static const USE_MASK:String = "useMask";
       
      
      private var offY:Number = -50;
      
      private var offX:Number = 25;
      
      private var loader:Loader;
      
      private var aniLoader:Loader;
      
      private var xx:Number;
      
      private var zz:Number;
      
      private var stripArray:Array;
      
      private var torso:BodyPart;
      
      private var torsoBack:BodyPart;
      
      private var kneel:BodyPart;
      
      private var kneelBack:BodyPart;
      
      public var stand:BodyPart;
      
      public var standBack:BodyPart;
      
      private var legs:Legs;
      
      public var face:String;
      
      public var dir:String;
      
      private var debugController:DebugController;
      
      private var _swimming:Boolean = false;
      
      public var useAnimations:Boolean = true;
      
      public var gender:String = "";
      
      private var globalModel:GlobalModel;
      
      private var image:String;
      
      private var loaderArray:Array;
      
      private var animLoader:AnimationLoader;
      
      private var animationClip:Sprite;
      
      private var frontAniItems:AnimatedItemGroup;
      
      private var backAniItem:AnimatedItemGroup;
      
      private var distAniItem:AnimatedItemGroup;
      
      private var avClip:Sprite;
      
      private var isKneeling:Boolean = false;
      
      private var avatarModel:AvatarModel;
      
      private var eventController:EventController;
      
      public function AvatarLoader()
      {
         this.loader = new Loader();
         this.aniLoader = new Loader();
         this.stripArray = new Array();
         this.torso = new BodyPart();
         this.torsoBack = new BodyPart();
         this.kneel = new BodyPart();
         this.kneelBack = new BodyPart();
         this.stand = new BodyPart();
         this.standBack = new BodyPart();
         this.legs = new Legs();
         this.debugController = new DebugController();
         this.globalModel = GlobalModel.getInstance();
         this.loaderArray = new Array();
         this.animationClip = new Sprite();
         this.frontAniItems = new AnimatedItemGroup();
         this.backAniItem = new AnimatedItemGroup();
         this.distAniItem = new AnimatedItemGroup();
         this.avClip = new Sprite();
         this.avatarModel = AvatarModel.getInstance();
         this.eventController = new EventController();
         super();
         this.addChildAt(this.backAniItem,0);
         this.addChild(this.avClip);
         this.addChild(this.frontAniItems);
         this.addChild(this.animationClip);
         this.addChild(this.distAniItem);
         this.avatarModel.addEventListener(AvatarConstants.ANIMATED_ITEM_X_CHANGED,this.animXChanged);
         this.avatarModel.addEventListener(AvatarConstants.ANIMATED_ITEM_Y_CHANGED,this.animYChanged);
      }
      
      private function animYChanged(param1:Event) : void
      {
         var _loc2_:Number = this.avatarModel.animatedItemY;
         this.backAniItem.y = _loc2_;
         this.frontAniItems.y = _loc2_;
         this.distAniItem.y = _loc2_;
      }
      
      private function animXChanged(param1:Event) : void
      {
         var _loc2_:Number = this.avatarModel.animatedItemX;
         this.backAniItem.x = _loc2_;
         this.frontAniItems.x = _loc2_;
         this.distAniItem.x = _loc2_;
      }
      
      public function setStrip(param1:String) : void
      {
         if(param1 == null)
         {
            return;
         }
         this.image = param1;
         if(this.avatarModel.useAnimations == true)
         {
            if(this.hasAnimation() == true)
            {
               param1 = StringFunctions.findReplace("strip",param1,"stripnoanim");
            }
         }
         var _loc2_:Number = new Date().time;
         var _loc3_:String = param1 + "?cb=" + _loc2_;
         var _loc4_:LoaderContext = new LoaderContext();
         _loc4_.checkPolicyFile = true;
         if(this.loader == null)
         {
            this.loader = new Loader();
         }
         this.loader.contentLoaderInfo.addEventListener(Event.COMPLETE,this.loaded);
         this.loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.loadError);
         this.loader.load(new URLRequest(_loc3_),_loc4_);
      }
      
      private function loadError(param1:IOErrorEvent) : void
      {
      }
      
      public function setUser(param1:UserVo) : *
      {
         var _loc2_:Array = param1.avatar.split("/");
         var _loc3_:Array = _loc2_[3].split("_");
         var _loc4_:* = this.globalModel.avatarpath + _loc2_[0] + "/" + _loc2_[1] + "/" + _loc2_[2] + "/" + _loc3_[0] + "_strip.png";
         this.setStrip(_loc4_);
      }
      
      public function setUser2(param1:UserVo) : *
      {
         var _loc2_:String = param1.avatar_url;
         _loc2_ = StringFunctions.findReplace("flip",_loc2_,"strip");
         this.setStrip(_loc2_);
      }
      
      private function hasAnimation() : Boolean
      {
         var _loc1_:Number = this.image.indexOf("a=1");
         if(_loc1_ == -1)
         {
            return false;
         }
         return true;
      }
      
      private function addAnimations() : *
      {
         var _loc3_:Array = null;
         var _loc6_:String = null;
         var _loc1_:Array = this.image.split("&");
         var _loc2_:String = "";
         var _loc4_:Number = _loc1_.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            _loc6_ = _loc1_[_loc5_];
            if(_loc6_.substr(0,2) == "i=")
            {
               _loc2_ = _loc6_.substr(2,_loc6_.length - 2);
            }
            _loc5_++;
         }
         if(_loc2_ != "")
         {
            _loc3_ = _loc2_.split(",");
            this.addAnimLoaders(_loc3_);
         }
      }
      
      private function addAnimLoaders(param1:Array) : *
      {
         var _loc4_:Object = null;
         var _loc2_:Number = param1.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.animLoader = new AnimationLoader();
            this.animLoader.x = 30;
            _loc4_ = new Object();
            _loc4_.facing = this.face == AvatarConstants.FACE_FRONT?"front":"back";
            _loc4_.stance = this.isKneeling == false?"stand":"kneel";
            this.animLoader.setParam(_loc4_);
            this.animLoader.addEventListener(AnimationLoader.ANI_ITEM_LOADED,this.animationLoaded);
            this.animLoader.setAnimation(param1[_loc3_]);
            this.aniLoader.name = "al" + String(_loc3_);
            this.loaderArray.push(this.animLoader);
            this.animationClip.addChildAt(this.animLoader,0);
            _loc3_++;
         }
      }
      
      private function animationLoaded(param1:Event) : void
      {
         var _loc5_:ColorTransform = null;
         var _loc2_:Number = -13;
         var _loc3_:Number = 1;
         this.backAniItem.y = _loc2_;
         this.frontAniItems.y = _loc2_;
         this.distAniItem.y = _loc2_;
         this.backAniItem.x = _loc3_;
         this.frontAniItems.x = _loc3_;
         this.distAniItem.x = _loc3_;
         var _loc4_:AnimationLoader = param1.target as AnimationLoader;
         if(_loc4_.mcBack != null)
         {
            this.backAniItem.addChild(_loc4_.mcBack);
         }
         if(_loc4_.mcFront != null)
         {
            this.frontAniItems.addChild(_loc4_.mcFront);
         }
         if(_loc4_.mcDist != null)
         {
            this.distAniItem.addChild(_loc4_.mcDist);
            _loc4_.mcDist.visible = true;
            _loc4_.mcDist.alpha = 100;
            if(_loc4_.mcDist.av1 != null)
            {
               _loc5_ = MovieClip(_loc4_.mcDist.av1).transform.colorTransform;
               this.avClip.transform.colorTransform = _loc5_;
               this.avClip.filters = MovieClip(_loc4_.mcDist.av1).filters;
               this.legs.transform.colorTransform = _loc5_;
               this.legs.filters = MovieClip(_loc4_.mcDist.av1).filters;
            }
            if(_loc4_.mcDist.noiseLoop != null)
            {
               this.dispatchEvent(new Event(USE_MASK,true));
               _loc4_.mcDist.noiseLoop.visible = false;
            }
         }
      }
      
      private function loaded(param1:Event) : void
      {
         var _loc5_:BitmapData = null;
         this.loader.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.loaded);
         var _loc2_:BitmapUtil = new BitmapUtil();
         var _loc3_:Bitmap = Bitmap(this.loader.content);
         var _loc4_:int = 0;
         while(_loc4_ < 10)
         {
            _loc5_ = _loc2_.setBitmapData(_loc3_.bitmapData,_loc4_);
            this.stripArray.push(_loc5_);
            _loc4_++;
         }
         this.torso.setBitmapData(this.stripArray[0]);
         this.avClip.addChild(this.torso);
         this.torsoBack.setBitmapData(this.stripArray[1]);
         this.avClip.addChild(this.torsoBack);
         this.kneel.setBitmapData(this.stripArray[2]);
         this.avClip.addChild(this.kneel);
         this.kneelBack.setBitmapData(this.stripArray[3]);
         this.avClip.addChild(this.kneelBack);
         this.stand.setBitmapData(this.stripArray[4]);
         this.avClip.addChild(this.stand);
         this.standBack.setBitmapData(this.stripArray[5]);
         this.avClip.addChild(this.standBack);
         this.torso.y = this.offY;
         this.torsoBack.y = this.offY;
         this.kneel.y = this.offY + 25;
         this.kneelBack.y = this.offY + 25;
         this.stand.y = this.offY;
         this.standBack.y = this.offY;
         this.legs.y = this.offY - 2;
         this.legs.x = 0;
         this.legs.dataProvider = [this.stripArray[6],this.stripArray[7],this.stripArray[8],this.stripArray[9]];
         this.addChild(this.legs);
         this.aniLoader.y = 40;
         this.aniLoader.x = 30;
         this.addChild(this.aniLoader);
         this.allOff();
         if(this.dir == null || this.face == null)
         {
            this.standStill(AvatarConstants.DIR_RIGHT,AvatarConstants.FACE_FRONT);
         }
         else
         {
            this.standStill(this.dir,this.face);
         }
         _loc3_ = null;
         this.loader = null;
         this.dispatchEvent(new Event(AVATAR_LOADED,true));
         if(this.avatarModel.useAnimations == true)
         {
            this.addAnimations();
            this.arrangeAnimations();
         }
      }
      
      private function allOff() : void
      {
         this.isKneeling = false;
         this.torso.visible = false;
         this.torsoBack.visible = false;
         this.kneel.visible = false;
         this.kneelBack.visible = false;
         this.stand.visible = false;
         this.standBack.visible = false;
         this.legs.visible = false;
      }
      
      public function standStill(param1:String, param2:String) : void
      {
         this.allOff();
         this.dir = param1;
         this.face = param2;
         if(param2 == AvatarConstants.FACE_FRONT)
         {
            this.stand.visible = true;
         }
         else
         {
            this.standBack.visible = true;
         }
         if(param1 == AvatarConstants.DIR_RIGHT)
         {
            this.scaleX = -1;
            this.x = 20;
         }
         else
         {
            this.scaleX = 1;
            this.x = 0;
            if(this.gender == "Animal")
            {
               this.x = 6;
            }
         }
         this.arrangeAnimations();
      }
      
      public function arrangeAnimations() : void
      {
         if(this.avatarModel.useAnimations == false)
         {
            return;
         }
         var _loc1_:Number = this.avatarModel.animatedItemY;
         var _loc2_:Number = this.avatarModel.animatedItemX;
         if(this.isKneeling == false)
         {
            this.backAniItem.y = _loc1_;
            this.frontAniItems.y = _loc1_;
            this.distAniItem.y = _loc1_;
         }
         else
         {
            this.backAniItem.y = _loc1_ + 24;
            this.frontAniItems.y = _loc1_ + 24;
            this.distAniItem.y = _loc1_ + 24;
            this.backAniItem.x = _loc2_ + 1;
            this.frontAniItems.x = _loc2_ + 1;
            this.distAniItem.x = _loc2_ + 1;
         }
         if(this.face == AvatarConstants.FACE_BACK)
         {
            this.setChildIndex(this.frontAniItems,this.numChildren - 1);
            this.setChildIndex(this.avClip,this.numChildren - 1);
            this.setChildIndex(this.distAniItem,this.numChildren - 1);
            this.setChildIndex(this.backAniItem,this.numChildren - 1);
         }
         else
         {
            this.setChildIndex(this.backAniItem,this.numChildren - 1);
            this.setChildIndex(this.distAniItem,this.numChildren - 1);
            this.setChildIndex(this.avClip,this.numChildren - 1);
            this.setChildIndex(this.frontAniItems,this.numChildren - 1);
         }
         this.frontAniItems.arrange();
         this.backAniItem.arrange();
         this.distAniItem.arrange();
         this.setChildIndex(this.distAniItem,this.numChildren - 1);
      }
      
      public function doKneel() : void
      {
         this.allOff();
         this.isKneeling = true;
         if(this.globalModel.isInSittingGame == true)
         {
            this.face = AvatarConstants.FACE_FRONT;
         }
         if(this.face == AvatarConstants.FACE_FRONT)
         {
            this.kneel.visible = true;
         }
         else
         {
            this.kneelBack.visible = true;
         }
         if(this.dir == AvatarConstants.DIR_RIGHT)
         {
            this.scaleX = -1;
            this.x = 20;
         }
         else
         {
            this.scaleX = 1;
            this.x = 0;
            if(this.gender == "Animal")
            {
               this.x = 6;
            }
         }
         this.arrangeAnimations();
      }
      
      public function setDir(param1:String) : void
      {
         this.dir = param1;
         if(param1 == AvatarConstants.DIR_RIGHT)
         {
            this.scaleX = -1;
            this.x = 20;
         }
         else
         {
            this.scaleX = 1;
            this.x = 0;
            if(this.gender == "Animal")
            {
               this.x = 6;
            }
         }
      }
      
      public function legsWalk() : void
      {
         this.legs.visible = true;
         this.legs.walk();
      }
      
      public function legsStopWalk() : void
      {
         this.legs.visible = false;
         this.legs.stopWalk();
      }
      
      public function setFace(param1:String) : *
      {
         this.allOff();
         this.face = param1;
         this.showLegs();
         if(param1 == AvatarConstants.FACE_FRONT)
         {
            this.torso.visible = true;
         }
         else
         {
            this.torsoBack.visible = true;
         }
      }
      
      public function setDirInPlace(param1:String) : *
      {
         if(param1 == AvatarConstants.DIR_RIGHT)
         {
            this.scaleX = -1;
         }
         else
         {
            this.scaleX = 1;
         }
      }
      
      public function setFaceDir(param1:String, param2:String) : *
      {
         this.allOff();
         this.face = param2;
         this.dir = param2;
         this.showLegs();
         if(param2 == AvatarConstants.FACE_FRONT)
         {
            this.torso.visible = true;
         }
         else
         {
            this.torsoBack.visible = true;
         }
         if(param1 == AvatarConstants.DIR_RIGHT)
         {
            this.scaleX = -1;
            this.x = 20;
         }
         else
         {
            this.scaleX = 1;
            this.x = 0;
            if(this.gender == "Animal")
            {
               this.x = 6;
            }
         }
      }
      
      public function setKneelDir(param1:String, param2:String) : *
      {
         this.allOff();
         this.face = param2;
         this.dir = param1;
         this.isKneeling = true;
         if(param2 == AvatarConstants.FACE_FRONT)
         {
            this.kneel.visible = true;
         }
         else
         {
            this.kneelBack.visible = true;
         }
         if(param1 == AvatarConstants.DIR_RIGHT)
         {
            this.scaleX = -1;
            this.x = 20;
         }
         else
         {
            this.scaleX = 1;
            this.x = 0;
            if(this.gender == "Animal")
            {
               this.x = 6;
            }
         }
         this.arrangeAnimations();
      }
      
      public function showJumpPos(param1:Number) : *
      {
         this.stand.y = this.offY + param1;
         this.standBack.y = this.offY + param1;
      }
      
      public function hideLegs() : *
      {
         this.legs.visible = false;
      }
      
      public function showLegs() : *
      {
         this.legs.visible = true;
      }
      
      public function get swimming() : Boolean
      {
         return this._swimming;
      }
      
      public function set swimming(param1:Boolean) : void
      {
         this._swimming = param1;
      }
      
      public function destroy() : *
      {
         this.legs.destroy();
      }
   }
}

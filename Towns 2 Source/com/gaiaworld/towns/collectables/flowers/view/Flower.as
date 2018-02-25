package com.gaiaworld.towns.collectables.flowers.view
{
   import com.gaiaonline.gsi.GSICompleteEvent;
   import com.gaiaonline.gsi.GSIGateway;
   import com.gaiaworld.avatar.controller.AvatarController;
   import com.gaiaworld.avatar.controller.events.AvatarMoveEvent;
   import com.gaiaworld.avatar.model.AvatarModel;
   import com.gaiaworld.global.constants.GsiConstants;
   import com.gaiaworld.global.model.GlobalModel;
   import com.gaiaworld.gobjects.constants.CollisionConstants;
   import com.gaiaworld.gobjects.controller.ObjectController;
   import com.gaiaworld.gobjects.model.ObjectModel;
   import com.gaiaworld.room.controller.RoomController;
   import com.gaiaworld.room.interfaces.ISurfaceObject;
   import com.gaiaworld.room.model.RoomModel;
   import com.gaiaworld.room.util.ObjUtil;
   import com.gaiaworld.sushi.controller.ChatController;
   import com.gaiaworld.towns.collectables.bugs.controller.ColController;
   import com.gaiaworld.towns.collectables.bugs.model.CollectableModel;
   import com.gaiaworld.towns.collectables.bugs.vo.CollectedVo;
   import com.gaiaworld.towns.collectables.constants.MarkerConstants;
   import com.gaiaworld.towns.collectables.flowers.interfaces.IFlower;
   import com.gaiaworld.towns.collectables.flowers.vo.FlowerVo;
   import com.gaiaworld.towns.hood.model.HoodModel;
   import com.gaiaworld.towns.view.MissBox;
   import fl.transitions.Tween;
   import fl.transitions.TweenEvent;
   import fl.transitions.easing.None;
   import flash.display.Loader;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.net.URLRequest;
   
   public class Flower extends Sprite implements IFlower, ISurfaceObject
   {
      
      private static const TARG_DIST:Number = 60;
       
      
      private var loader:Loader;
      
      private var globalModel:GlobalModel;
      
      private var avatarModel:AvatarModel;
      
      private var objectModel:ObjectModel;
      
      private var roomModel:RoomModel;
      
      private var collectController:ColController;
      
      private var avatarController:AvatarController;
      
      private var chatController:ChatController;
      
      private var objectController:ObjectController;
      
      private var _depth2:Number;
      
      private var _dataProvider:FlowerVo;
      
      private var colModel:CollectableModel;
      
      private var path:String;
      
      private var yTween:Tween;
      
      private var roomController:RoomController;
      
      private var hoodModel:HoodModel;
      
      private var gsi:GSIGateway;
      
      public function Flower()
      {
         this.loader = new Loader();
         this.globalModel = GlobalModel.getInstance();
         this.avatarModel = AvatarModel.getInstance();
         this.objectModel = ObjectModel.getInstance();
         this.roomModel = RoomModel.getInstance();
         this.collectController = new ColController();
         this.avatarController = new AvatarController();
         this.chatController = new ChatController();
         this.objectController = new ObjectController();
         this.colModel = CollectableModel.getInstance();
         this.roomController = new RoomController();
         this.hoodModel = HoodModel.getInstance();
         super();
         this.gsi = new GSIGateway(this.globalModel.gsiSubdomain);
         this.addChild(this.loader);
         this.addEventListener(MouseEvent.MOUSE_DOWN,this.pickMe);
         this.buttonMode = true;
         this.useHandCursor = true;
         this.mouseChildren = false;
      }
      
      private function stopped(param1:AvatarMoveEvent) : void
      {
         var _loc3_:MissBox = null;
         var _loc2_:Number = this.distFromUser();
         this.avatarModel.avatar.clip.removeEventListener(AvatarMoveEvent.AVATAR_HAS_STOPPED,this.stopped);
         if(this.distFromUser() < 120)
         {
            this.doAni();
            this.recordPicked();
         }
         else
         {
            _loc3_ = new MissBox();
            _loc3_.x = this.x;
            _loc3_.y = this.y;
            this.objectController.addItem(_loc3_,false);
         }
      }
      
      public function placeFlower() : *
      {
         var _loc1_:Point = this.colModel.getFlowerSpot();
         this.x = _loc1_.x;
         this.y = _loc1_.y;
         this.depth2 = _loc1_.y - 20;
         this.objectController.addItem(this,false);
      }
      
      private function doAni() : *
      {
         this._depth2 = 10000;
         this.roomController.refreshSurface();
         this.yTween = new Tween(this,"y",None.easeNone,this.y,this.y - 50,6,false);
         this.yTween.addEventListener(TweenEvent.MOTION_FINISH,this.aniDone);
      }
      
      private function aniDone(param1:TweenEvent) : void
      {
         this.yTween.removeEventListener(TweenEvent.MOTION_FINISH,this.aniDone);
         this.chatController.emoteToSelf("flowers/" + this.path);
         this.objectController.removeItem(this);
      }
      
      public function get myName() : String
      {
         return "flower";
      }
      
      public function loadFlower(param1:String) : void
      {
         this.path = param1;
         this.loader.load(new URLRequest("flowers/" + param1 + ".swf"));
      }
      
      public function get canCollide() : Boolean
      {
         return false;
      }
      
      public function get collideType() : String
      {
         return CollisionConstants.NO_COLLISION;
      }
      
      public function set depth2(param1:Number) : void
      {
         this._depth2 = param1;
      }
      
      public function get clip() : Sprite
      {
         return this as Sprite;
      }
      
      public function get depth2() : Number
      {
         return this._depth2;
      }
      
      public function get dataProvider() : FlowerVo
      {
         return this._dataProvider;
      }
      
      public function set dataProvider(param1:FlowerVo) : void
      {
         this._dataProvider = param1;
         this.loadFlower(this._dataProvider.img);
         this.placeFlower();
      }
      
      private function pickMe(param1:MouseEvent) : *
      {
         if(this.avatarModel.userControl == false)
         {
            return;
         }
         this.avatarController.setTarget(this.x,this.y - 40);
         if(this.distFromUser() < 80)
         {
            this.doAni();
            this.recordPicked();
            this.avatarController.setTarget(this.x,this.y - TARG_DIST);
         }
         else
         {
            this.avatarController.setTarget(this.x,this.y);
            this.avatarModel.avatar.clip.addEventListener(AvatarMoveEvent.AVATAR_HAS_STOPPED,this.stopped);
         }
      }
      
      private function distFromUser() : Number
      {
         return ObjUtil.getDistance(this.avatarModel.avatar as Sprite,this as Sprite);
      }
      
      private function recordPicked() : *
      {
         this.collectController.addCollected(new CollectedVo(this._dataProvider.serial,this._dataProvider.img,MarkerConstants.FLOWER));
         var _loc1_:Number = this.roomModel.roomNumber;
         if(isNaN(_loc1_) == true)
         {
            _loc1_ = 0;
         }
         this.gsi.addEventListener(GSICompleteEvent.COMPLETE,this.picked);
         this.gsi.invoke(GsiConstants.ITEM_PICKED,5,this.hoodModel.currentCommunity,this.hoodModel.currentHoodId,this._dataProvider.serial);
      }
      
      private function picked(param1:GSICompleteEvent) : void
      {
         this.gsi.removeEventListener(GSICompleteEvent.COMPLETE,this.picked);
      }
   }
}

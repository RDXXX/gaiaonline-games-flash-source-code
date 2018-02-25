package com.gaiaworld.towns.collectables.trash.view
{
   import com.gaiaonline.gsi.GSICompleteEvent;
   import com.gaiaonline.gsi.GSIGateway;
   import com.gaiaonline.serializers.JSONSerializer;
   import com.gaiaworld.avatar.controller.AvatarController;
   import com.gaiaworld.avatar.controller.events.AvatarMoveEvent;
   import com.gaiaworld.avatar.model.AvatarModel;
   import com.gaiaworld.global.constants.GsiConstants;
   import com.gaiaworld.global.model.GlobalModel;
   import com.gaiaworld.gobjects.constants.CollisionConstants;
   import com.gaiaworld.gobjects.controller.ObjectController;
   import com.gaiaworld.gobjects.model.ObjectModel;
   import com.gaiaworld.room.interfaces.ISurfaceObject;
   import com.gaiaworld.room.model.RoomModel;
   import com.gaiaworld.room.util.ObjUtil;
   import com.gaiaworld.room.view.Surface;
   import com.gaiaworld.sushi.controller.ChatController;
   import com.gaiaworld.towns.collectables.bugs.controller.ColController;
   import com.gaiaworld.towns.collectables.bugs.model.CollectableModel;
   import com.gaiaworld.towns.collectables.bugs.vo.CollectedVo;
   import com.gaiaworld.towns.collectables.constants.MarkerConstants;
   import com.gaiaworld.towns.collectables.flowers.vo.FlowerVo;
   import com.gaiaworld.towns.collectables.trash.interfaces.ITrash;
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
   
   public class Trash extends Sprite implements ITrash, ISurfaceObject
   {
      
      private static const TARG_DIST:Number = 60;
       
      
      private var loader:Loader;
      
      private var room:Surface;
      
      private var globalModel:GlobalModel;
      
      private var avatarModel:AvatarModel;
      
      private var objectModel:ObjectModel;
      
      private var roomModel:RoomModel;
      
      private var hoodModel:HoodModel;
      
      private var avatarController:AvatarController;
      
      private var chatController:ChatController;
      
      private var objectController:ObjectController;
      
      private var _depth2:Number;
      
      private var _dataProvider:FlowerVo;
      
      private var path:String;
      
      private var collectController:ColController;
      
      private var yTween:Tween;
      
      private var xTween:Tween;
      
      private var gsi:GSIGateway;
      
      public function Trash()
      {
         this.loader = new Loader();
         this.globalModel = GlobalModel.getInstance();
         this.avatarModel = AvatarModel.getInstance();
         this.objectModel = ObjectModel.getInstance();
         this.roomModel = RoomModel.getInstance();
         this.hoodModel = HoodModel.getInstance();
         this.avatarController = new AvatarController();
         this.chatController = new ChatController();
         this.objectController = new ObjectController();
         this.collectController = new ColController();
         super();
         this.gsi = new GSIGateway(this.globalModel.gsiSubdomain);
         this.gsi.serializerClass = JSONSerializer;
         this.addChild(this.loader);
         this.addEventListener(MouseEvent.MOUSE_DOWN,this.pickUp);
         this.buttonMode = true;
         this.useHandCursor = true;
         this.mouseChildren = false;
      }
      
      public function placeTrash() : *
      {
         var _loc1_:CollectableModel = CollectableModel.getInstance();
         var _loc2_:Point = _loc1_.getTrashSpot();
         this.x = _loc2_.x;
         this.y = _loc2_.y;
         this.objectController.addItem(this,false);
         if(this.objectModel.checkCollisionMap(this) == true)
         {
            this.objectController.removeItem(this);
            this.placeTrash();
         }
      }
      
      public function loadTrash(param1:String) : void
      {
         this.path = param1;
         this.loader.load(new URLRequest("trash/" + param1 + ".swf"));
      }
      
      public function get canCollide() : Boolean
      {
         return false;
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
         return this.y - 20;
      }
      
      public function get dataProvider() : FlowerVo
      {
         return this._dataProvider;
      }
      
      public function set dataProvider(param1:FlowerVo) : void
      {
         this._dataProvider = param1;
         this.loadTrash(this._dataProvider.img);
         this.placeTrash();
      }
      
      private function distFromUser() : Number
      {
         return ObjUtil.getDistance(this.avatarModel.avatar as Sprite,this as Sprite);
      }
      
      private function pickUp(param1:MouseEvent) : *
      {
         if(this.avatarModel.userControl == false)
         {
            return;
         }
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
      
      private function doAni() : *
      {
         this.yTween = new Tween(this,"y",None.easeNone,this.y,this.avatarModel.avatar.y,6,false);
         this.xTween = new Tween(this,"x",None.easeNone,this.x,this.avatarModel.avatar.x,6,false);
         this.yTween.addEventListener(TweenEvent.MOTION_FINISH,this.tweenDone);
      }
      
      private function tweenDone(param1:TweenEvent) : void
      {
         this.yTween.removeEventListener(TweenEvent.MOTION_FINISH,this.tweenDone);
         this.objectController.removeItem(this);
         this.chatController.emoteToSelf("trash/" + this.path);
      }
      
      public function get myName() : String
      {
         return "trash";
      }
      
      private function recordPicked() : *
      {
         this.collectController.addCollected(new CollectedVo(this._dataProvider.serial,this._dataProvider.img,MarkerConstants.TRASH));
         var _loc1_:Number = this.roomModel.roomNumber;
         if(isNaN(_loc1_) == true)
         {
            _loc1_ = 0;
         }
         this.gsi.addEventListener(GSICompleteEvent.COMPLETE,this.picked);
         this.gsi.invoke(GsiConstants.ITEM_PICKED,6,this.hoodModel.currentCommunity,this.hoodModel.currentHoodId,this._dataProvider.serial);
      }
      
      private function picked(param1:GSICompleteEvent) : void
      {
         this.gsi.removeEventListener(GSICompleteEvent.COMPLETE,this.picked);
      }
      
      public function get collideType() : String
      {
         return CollisionConstants.NO_COLLISION;
      }
   }
}

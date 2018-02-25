package com.gaiaworld.towns.collectables.bugs.view
{
   import com.gaiaonline.gsi.GSICompleteEvent;
   import com.gaiaonline.gsi.GSIGateway;
   import com.gaiaworld.avatar.controller.AvatarController;
   import com.gaiaworld.avatar.model.AvatarModel;
   import com.gaiaworld.global.constants.GsiConstants;
   import com.gaiaworld.global.model.GlobalModel;
   import com.gaiaworld.gobjects.constants.CollisionConstants;
   import com.gaiaworld.gobjects.controller.ObjectController;
   import com.gaiaworld.room.interfaces.ISurfaceObject;
   import com.gaiaworld.room.util.ObjUtil;
   import com.gaiaworld.sushi.controller.ChatController;
   import com.gaiaworld.towns.collectables.bugs.controller.ColController;
   import com.gaiaworld.towns.collectables.bugs.interfaces.IBug;
   import com.gaiaworld.towns.collectables.bugs.model.CollectableModel;
   import com.gaiaworld.towns.collectables.bugs.vo.BugVo;
   import com.gaiaworld.towns.collectables.bugs.vo.CollectedVo;
   import com.gaiaworld.towns.collectables.constants.MarkerConstants;
   import com.gaiaworld.towns.view.MissBox;
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.utils.Timer;
   
   public class BaseBug extends Sprite implements IBug, ISurfaceObject
   {
      
      private static const TARG_DIST:Number = 60;
       
      
      protected var moveTimer:Timer;
      
      protected var facing:Number = 0;
      
      protected var targetX:Number = 0;
      
      protected var targetY:Number = 0;
      
      protected var speed:Number = 4;
      
      protected var dx:Number = 0;
      
      protected var dy:Number = 0;
      
      protected var range:Number = 10;
      
      protected var bugBody:MovieClip;
      
      protected var loader:Loader;
      
      protected var _isBlocked:Boolean;
      
      protected var _depth2:Number;
      
      protected const PI:Number = 3.141592653589793;
      
      protected var avatarModel:AvatarModel;
      
      private var avatarController:AvatarController;
      
      protected var chatController:ChatController;
      
      private var objectController:ObjectController;
      
      private var collectController:ColController;
      
      private var gsi:GSIGateway;
      
      protected var globalModel:GlobalModel;
      
      protected var colModel:CollectableModel;
      
      protected var h:Number;
      
      protected var w:Number;
      
      protected var _dataProvider:BugVo;
      
      public function BaseBug()
      {
         this.moveTimer = new Timer(100);
         this.loader = new Loader();
         this.avatarModel = AvatarModel.getInstance();
         this.avatarController = new AvatarController();
         this.chatController = new ChatController();
         this.objectController = new ObjectController();
         this.collectController = new ColController();
         this.globalModel = GlobalModel.getInstance();
         this.colModel = CollectableModel.getInstance();
         super();
         this.cacheAsBitmap = true;
         this.addChild(this.loader);
         this.addEventListener(MouseEvent.MOUSE_DOWN,this.catchMe);
         this.loader.contentLoaderInfo.addEventListener(Event.COMPLETE,this.bugLoaded);
         this.buttonMode = true;
         this.useHandCursor = true;
      }
      
      public function getBugType() : String
      {
         return "";
      }
      
      public function get myName() : String
      {
         return "bug";
      }
      
      public function loadBug(param1:String) : void
      {
         this.loader.load(new URLRequest("bugs/" + param1 + ".swf"));
      }
      
      protected function bugLoaded(param1:Event) : void
      {
         this.bugBody = this.loader.content as MovieClip;
      }
      
      public function get collideType() : String
      {
         return CollisionConstants.NO_COLLISION;
      }
      
      protected function catchMe(param1:MouseEvent) : void
      {
         var _loc2_:MissBox = null;
         if(this.avatarModel.userControl == false)
         {
            return;
         }
         this.avatarController.setTarget(this.x,this.y);
         if(this.distFromUser() < 150)
         {
            this.chatController.emoteToSelf("equipment/net");
            this.objectController.removeItem(this);
            this.recordCatch();
            this.avatarController.setTarget(this.x,this.y - TARG_DIST);
         }
         else
         {
            this.avatarController.setTarget(this.x,this.y - TARG_DIST);
            _loc2_ = new MissBox();
            _loc2_.x = this.x;
            _loc2_.y = this.y;
            this.objectController.addItem(_loc2_,false);
         }
      }
      
      private function recordCatch() : *
      {
         if(this._dataProvider == null)
         {
            return;
         }
         this.collectController.addCollected(new CollectedVo(this._dataProvider.serial,this._dataProvider.img,MarkerConstants.BUG));
         if(this._dataProvider.serial != "-1")
         {
            this.gsi = new GSIGateway(this.globalModel.gsiSubdomain);
            this.gsi.addEventListener(GSICompleteEvent.COMPLETE,this.picked);
            this.gsi.queue(GsiConstants.CATCH_BUG,this._dataProvider.serial);
            this.gsi.send();
         }
      }
      
      private function picked(param1:GSICompleteEvent) : void
      {
         this.gsi.removeEventListener(GSICompleteEvent.COMPLETE,this.picked);
      }
      
      protected function distFromUser() : Number
      {
         return ObjUtil.getDistance(this.avatarModel.avatar as Sprite,this as Sprite);
      }
      
      public function stopMove() : void
      {
         this.removeEventListener(Event.ENTER_FRAME,this.move);
      }
      
      public function startMove() : void
      {
         this.addEventListener(Event.ENTER_FRAME,this.move);
      }
      
      protected function move(param1:Event) : void
      {
         if(this.colModel.paused == true)
         {
            return;
         }
         this.getAngle();
         this.x = this.x + this.dx;
         this.y = this.y + this.dy;
      }
      
      protected function getAngle() : void
      {
         var _loc1_:Number = this.targetX - this.x;
         var _loc2_:Number = this.targetY - this.y;
         var _loc3_:Number = this.mode360(Math.atan2(_loc2_,_loc1_) / this.PI * 180 + 90);
         this.facing = Math.min(int(_loc3_ / 90),3);
         this.dx = Math.sin(_loc3_ * this.PI / 180);
         this.dy = -Math.cos(_loc3_ * this.PI / 180);
         if(this.dx < 0)
         {
            this.scaleX = -1;
         }
         else
         {
            this.scaleX = 1;
         }
      }
      
      private function mode360(param1:Number) : Number
      {
         return (param1 + 360) % 360;
      }
      
      public function get isBlocked() : Boolean
      {
         return this._isBlocked;
      }
      
      public function set isBlocked(param1:Boolean) : void
      {
         this._isBlocked = param1;
      }
      
      public function get depth2() : Number
      {
         return this.y;
      }
      
      public function set depth2(param1:Number) : void
      {
         this._depth2 = param1;
      }
      
      public function get clip() : Sprite
      {
         return this as Sprite;
      }
      
      public function get dataProvider() : BugVo
      {
         return this._dataProvider;
      }
      
      public function set dataProvider(param1:BugVo) : void
      {
         this._dataProvider = param1;
      }
      
      public function init() : void
      {
      }
      
      public function get canCollide() : Boolean
      {
         return false;
      }
      
      protected function checkTarget() : *
      {
         if(ObjUtil.getDistance2(this.x,this.y,this.targetX,this.targetY) < 20)
         {
            this.targetReached();
         }
      }
      
      protected function targetReached() : *
      {
         this.targetX = int(Math.random() * this.w);
         this.targetY = int(Math.random() * this.h);
      }
      
      protected function destroy() : void
      {
      }
   }
}

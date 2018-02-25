package com.gaiaworld.avatar.view
{
   import com.gaiaworld.global.model.GlobalModel;
   import com.gaiaworld.gobjects.constants.CollisionConstants;
   import com.gaiaworld.house.vo.ItemDataVo;
   import com.gaiaworld.room.interfaces.ISurfaceObject;
   import com.gaiaworld.room.interfaces.ITileVo;
   import com.gaiaworld.room.interfaces.IWorldItem;
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.net.URLRequest;
   
   public class WorldItem extends Sprite implements IWorldItem, ISurfaceObject
   {
      
      public static const ITEM_LOADED:String = "itemLoaded";
       
      
      private var _h:Number;
      
      private var _w:Number;
      
      private var _l:Number;
      
      private var _numberOfRots:Number;
      
      private var _canSitOn:Boolean = false;
      
      private var _specialAction:String = "";
      
      private var _type:String;
      
      private var obj:MovieClip;
      
      private var _hitBox:MovieClip;
      
      private var _itemID:Number;
      
      private var _itemTileVo:ITileVo;
      
      private var _itemDataVo:ItemDataVo;
      
      private var globalModel:GlobalModel;
      
      private var _rot:Number;
      
      private var loader:Loader;
      
      private var _xx:Number;
      
      private var _yy:Number;
      
      private var _zz:Number;
      
      private var _depth2:Number;
      
      private var _isMovingObject:Boolean = false;
      
      public function WorldItem()
      {
         this.globalModel = GlobalModel.getInstance();
         this.loader = new Loader();
         super();
         this.addChild(this.loader);
      }
      
      public function setItem(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:Number, param7:Number = -1) : *
      {
         this.zz = param5;
         this.xx = param4;
         this.yy = param6;
         this.itemID = param1;
         this.itemDataVo.uid = param7;
         this._rot = param2;
         var _loc8_:* = this.globalModel.imagespath + "items/" + String(param1) + ".swf";
         this.loader.load(new URLRequest(_loc8_));
      }
      
      public function loadItem(param1:String) : *
      {
         this.loader.load(new URLRequest(param1));
      }
      
      public function getMyName() : String
      {
         return "worldItem";
      }
      
      private function swfLoaded(param1:Event) : *
      {
         this.dispatchEvent(new Event(ITEM_LOADED,true));
      }
      
      public function get h() : Number
      {
         return this._h;
      }
      
      public function set h(param1:Number) : void
      {
         this._h = param1;
      }
      
      public function get w() : Number
      {
         return this._w;
      }
      
      public function set w(param1:Number) : void
      {
         this._w = param1;
      }
      
      public function get l() : Number
      {
         return this._l;
      }
      
      public function set l(param1:Number) : void
      {
         this._l = param1;
      }
      
      public function get numberOfRots() : Number
      {
         return this._numberOfRots;
      }
      
      public function set numberOfRots(param1:Number) : void
      {
         this._numberOfRots = param1;
      }
      
      public function get canSitOn() : Boolean
      {
         return this._canSitOn;
      }
      
      public function set canSitOn(param1:Boolean) : void
      {
         this._canSitOn = param1;
      }
      
      public function get specialAction() : String
      {
         return this._specialAction;
      }
      
      public function set specialAction(param1:String) : void
      {
         this._specialAction = param1;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function set type(param1:String) : void
      {
         this._type = param1;
      }
      
      public function get hitBox() : MovieClip
      {
         return this._hitBox;
      }
      
      public function set hitBox(param1:MovieClip) : void
      {
         this._hitBox = param1;
      }
      
      public function get itemID() : Number
      {
         return this._itemID;
      }
      
      public function set itemID(param1:Number) : void
      {
         this._itemID = param1;
      }
      
      public function get itemTileVo() : ITileVo
      {
         return this._itemTileVo;
      }
      
      public function set itemTileVo(param1:ITileVo) : void
      {
         this._itemTileVo = param1;
      }
      
      public function get itemDataVo() : ItemDataVo
      {
         return this._itemDataVo;
      }
      
      public function set itemDataVo(param1:ItemDataVo) : void
      {
         this._itemDataVo = param1;
      }
      
      public function get xx() : Number
      {
         return this._xx;
      }
      
      public function set xx(param1:Number) : void
      {
         this._xx = param1;
      }
      
      public function get yy() : Number
      {
         return this._yy;
      }
      
      public function set yy(param1:Number) : void
      {
         this._yy = param1;
      }
      
      public function get zz() : Number
      {
         return this._zz;
      }
      
      public function set zz(param1:Number) : void
      {
         this._zz = param1;
      }
      
      public function get depth2() : Number
      {
         return this._depth2;
      }
      
      public function set depth2(param1:Number) : void
      {
         this._depth2 = param1;
      }
      
      public function getRotation() : Number
      {
         return this._rot;
      }
      
      public function get collideType() : String
      {
         return CollisionConstants.NO_COLLISION;
      }
      
      public function get canCollide() : Boolean
      {
         return false;
      }
      
      public function get clip() : Sprite
      {
         return this as Sprite;
      }
      
      public function get myName() : String
      {
         return "worldItem";
      }
      
      public function get isMovingObject() : Boolean
      {
         return this._isMovingObject;
      }
      
      public function set isMovingObject(param1:Boolean) : void
      {
         this._isMovingObject = param1;
      }
   }
}

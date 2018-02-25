package com.gaiaworld.monsters.view
{
   import com.gaiaworld.global.TheStage;
   import com.gaiaworld.global.util.ServerTimer;
   import com.gaiaworld.house.controller.DebugController;
   import com.gaiaworld.monsters.interfaces.IMonster;
   import com.gaiaworld.monsters.model.MonsterModel;
   import com.gaiaworld.monsters.util.MonstMoveUtil;
   import com.gaiaworld.room.interfaces.ISurfaceObject;
   import fl.transitions.Tween;
   import fl.transitions.easing.None;
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.net.URLRequest;
   import flash.utils.Timer;
   
   public class BaseMonster extends Sprite implements ISurfaceObject, IMonster
   {
       
      
      private var loader:Loader;
      
      private var _depth2:Number;
      
      private var _canCollide:Boolean = false;
      
      private var _collideType:String;
      
      private var _myName:String;
      
      private var _points:Vector.<Point>;
      
      protected var flips:Boolean = false;
      
      protected var hasBack:Boolean = false;
      
      protected var animation:MovieClip;
      
      public var walkDuration:Number = 60;
      
      private var percentPerSec:Number = 0;
      
      protected var monsterModel:MonsterModel;
      
      protected var serverTimer:ServerTimer;
      
      protected var monstMoveUtil:MonstMoveUtil;
      
      private var debugController:DebugController;
      
      private var updateTimer:Timer;
      
      private var posTimer:Timer;
      
      protected var targetIndex:Number = 0;
      
      protected var tx:Number = 0;
      
      protected var ty:Number = 0;
      
      private var pixToMove:Number;
      
      private var pixMoved:Number = 0;
      
      private var pixPerSec:Number;
      
      private var tweenX:Tween;
      
      private var tweenY:Tween;
      
      private var allTime:Number = 0;
      
      private var frameCount:Number = 0;
      
      public var frameCycle:Number = 60;
      
      public function BaseMonster()
      {
         this.loader = new Loader();
         this.monsterModel = MonsterModel.getInstance();
         this.serverTimer = ServerTimer.getInstance();
         this.monstMoveUtil = new MonstMoveUtil();
         this.debugController = new DebugController();
         this.updateTimer = new Timer(2000);
         this.posTimer = new Timer(60000);
         super();
         this.addChild(this.loader);
         TheStage.getInstance().addEventListener(Event.ACTIVATE,this.backOn);
         TheStage.getInstance().addEventListener(Event.DEACTIVATE,this.turnOff);
         this.addEventListener(Event.ADDED,this.addedToStage);
         this.addEventListener(Event.REMOVED_FROM_STAGE,this.destroy);
      }
      
      private function addedToStage(param1:Event) : void
      {
         this.removeEventListener(Event.ADDED,this.addedToStage);
      }
      
      private function destroy(param1:Event) : void
      {
         removeEventListener(Event.REMOVED_FROM_STAGE,this.destroy);
         TheStage.getInstance().removeEventListener(Event.ACTIVATE,this.backOn);
         TheStage.getInstance().removeEventListener(Event.DEACTIVATE,this.turnOff);
      }
      
      private function turnOff(param1:Event) : void
      {
      }
      
      private function backOn(param1:Event) : void
      {
         this.removeEventListener(Event.ENTER_FRAME,this.moveMe);
         this.getResetPoint();
      }
      
      public function loadMonster(param1:String) : void
      {
         this.loader.contentLoaderInfo.addEventListener(Event.COMPLETE,this.monsterLoaded);
         this.loader.load(new URLRequest("monsters/" + param1 + ".swf"));
      }
      
      public function get clip() : Sprite
      {
         return this as Sprite;
      }
      
      public function get depth2() : Number
      {
         return this.y;
      }
      
      public function set depth2(param1:Number) : void
      {
         this._depth2 = param1;
      }
      
      public function get myName() : String
      {
         return this._myName;
      }
      
      public function get canCollide() : Boolean
      {
         return this._canCollide;
      }
      
      public function get collideType() : String
      {
         return this._collideType;
      }
      
      public function get points() : Vector.<Point>
      {
         return this._points;
      }
      
      public function set points(param1:Vector.<Point>) : void
      {
         this._points = param1;
         this.monstMoveUtil.points = this._points;
         this.getStartPos();
      }
      
      private function getStartPos() : void
      {
         var _loc1_:Number = this.serverTimer.secs;
         var _loc2_:Number = _loc1_ / 60 * 100;
         var _loc3_:Number = int(60 / this.walkDuration);
         _loc2_ = _loc2_ * _loc3_;
         this.monstMoveUtil.addEventListener(MonstMoveUtil.GOT_THE_POINT,this.gotStartPoint);
         this.monstMoveUtil.getPointByPercent(_loc2_);
      }
      
      private function gotStartPoint(param1:Event) : void
      {
         this.monstMoveUtil.removeEventListener(MonstMoveUtil.GOT_THE_POINT,this.gotStartPoint);
         this.x = this.monstMoveUtil.placePoint.x;
         this.y = this.monstMoveUtil.placePoint.y;
         this.removeEventListener(Event.ENTER_FRAME,this.moveMe);
         this.addEventListener(Event.ENTER_FRAME,this.moveMe);
      }
      
      private function getNextPos() : void
      {
         var _loc1_:Number = this.serverTimer.secs;
         var _loc2_:Number = _loc1_ / 60 * 100;
         var _loc3_:Number = int(60 / this.walkDuration);
         _loc2_ = _loc2_ * _loc3_;
         this.monstMoveUtil.addEventListener(MonstMoveUtil.GOT_THE_POINT,this.gotNextPoint);
         this.monstMoveUtil.getPointByPercent(_loc2_);
      }
      
      private function gotNextPoint(param1:Event) : *
      {
         this.monstMoveUtil.removeEventListener(MonstMoveUtil.GOT_THE_POINT,this.gotNextPoint);
         var _loc2_:Number = this.monstMoveUtil.placePoint.x;
         var _loc3_:Number = this.monstMoveUtil.placePoint.y;
         if(this.hasBack == true)
         {
            if(_loc3_ >= this.y)
            {
               this.animation.gotoAndStop("walk");
            }
            else
            {
               this.animation.gotoAndStop("back_walk");
            }
         }
         if(this.flips == true)
         {
            if(_loc2_ > this.x)
            {
               this.animation.scaleX = -1;
            }
            else
            {
               this.animation.scaleX = 1;
            }
         }
         this.tweenX = new Tween(this,"x",None.easeNone,this.x,_loc2_,this.frameCycle,false);
         this.tweenY = new Tween(this,"y",None.easeNone,this.y,_loc3_,this.frameCycle,false);
      }
      
      private function monsterLoaded(param1:Event) : void
      {
         this.loader.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.monsterLoaded);
         this.animation = MovieClip(this.loader.content).clip;
         this.monsterReady();
      }
      
      protected function monsterReady() : void
      {
      }
      
      private function moveMe(param1:Event) : void
      {
         this.frameCount++;
         if(this.frameCount == this.frameCycle)
         {
            this.frameCount = 0;
            this.getNextPos();
         }
      }
      
      private function getResetPoint() : void
      {
         this.serverTimer.addEventListener(ServerTimer.TIME_SET,this.timeSet);
         this.serverTimer.refreshFromServer();
      }
      
      private function timeSet(param1:Event) : void
      {
         this.serverTimer.removeEventListener(ServerTimer.TIME_SET,this.timeSet);
         var _loc2_:Number = this.serverTimer.secs;
         var _loc3_:Number = _loc2_ / 60 * 100;
         var _loc4_:Number = int(60 / this.walkDuration);
         _loc3_ = _loc3_ * _loc4_;
         this.monstMoveUtil.addEventListener(MonstMoveUtil.GOT_THE_POINT,this.gotNextPoint);
         this.monstMoveUtil.getPointByPercent(_loc3_);
         this.removeEventListener(Event.ENTER_FRAME,this.moveMe);
         this.addEventListener(Event.ENTER_FRAME,this.moveMe);
      }
   }
}

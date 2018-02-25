package com.gaiaworld.avatar.interfaces
{
   import com.gaiaworld.avatar.controller.events.OtherEvent;
   import com.gaiaworld.avatar.view.AvatarLoader;
   import com.gaiaworld.global.interfaces.ISurface;
   import com.gaiaworld.room.interfaces.ISurfaceObject;
   import com.gaiaworld.room.interfaces.IWorldItem;
   import com.gaiaworld.user.vo.UserVo;
   import flash.display.Sprite;
   import flash.events.Event;
   
   public interface IAvatar
   {
       
      
      function hitSomething() : void;
      
      function setSurface(param1:ISurface) : void;
      
      function setAtStart() : void;
      
      function setStrip(param1:String) : void;
      
      function walk(param1:String, param2:String) : void;
      
      function doStand() : void;
      
      function standStill(param1:String, param2:String) : void;
      
      function doKneel() : void;
      
      function setDir(param1:String) : void;
      
      function walkTo(param1:Number, param2:Number) : void;
      
      function setScroller(param1:Object) : void;
      
      function setPos(param1:Number) : void;
      
      function setFace(param1:String) : void;
      
      function setDepth2(param1:Number) : void;
      
      function getDepth2() : Number;
      
      function getX() : Number;
      
      function getY() : Number;
      
      function set checkBlockedFunction(param1:Function) : void;
      
      function get checkBlockedFunction() : Function;
      
      function get x() : Number;
      
      function get y() : Number;
      
      function set x(param1:Number) : void;
      
      function set y(param1:Number) : void;
      
      function set sx(param1:Number) : void;
      
      function set sy(param1:Number) : void;
      
      function get sx() : Number;
      
      function get sy() : Number;
      
      function get isKneeling() : Boolean;
      
      function get clip() : Sprite;
      
      function set depth2(param1:Number) : void;
      
      function get depth2() : Number;
      
      function get isJumping() : Boolean;
      
      function set isJumping(param1:Boolean) : void;
      
      function get isWalking() : Boolean;
      
      function set isWalking(param1:Boolean) : void;
      
      function get dataProvider() : UserVo;
      
      function set dataProvider(param1:UserVo) : void;
      
      function get collideClip() : Sprite;
      
      function resetAvatar() : void;
      
      function get isBlocked() : Boolean;
      
      function set isBlocked(param1:Boolean) : void;
      
      function get blockedItem() : IWorldItem;
      
      function set blockedItem(param1:IWorldItem) : void;
      
      function get currentAction() : String;
      
      function set currentAction(param1:String) : void;
      
      function getDir() : String;
      
      function getFace() : String;
      
      function getAvatarLoader() : AvatarLoader;
      
      function moveToTopOfObject() : void;
      
      function set ignoreTarget(param1:Boolean) : void;
      
      function get ignoreTarget() : Boolean;
      
      function hideLegs() : void;
      
      function showLegs() : void;
      
      function attachToAvatar(param1:String) : void;
      
      function removeAttached(param1:Event = null) : *;
      
      function get keepOnTop() : Boolean;
      
      function set keepOnTop(param1:Boolean) : void;
      
      function attachItem(param1:Number, param2:Number, param3:ISurfaceObject) : void;
      
      function removeItem(param1:ISurfaceObject) : void;
      
      function clearItems() : void;
      
      function getNumberOfAttachedItems() : Number;
      
      function get status() : String;
      
      function set status(param1:String) : void;
      
      function get iSurfaceObject() : ISurfaceObject;
      
      function get isLocked() : Boolean;
      
      function set isLocked(param1:Boolean) : void;
      
      function showMoving() : void;
      
      function isHit(param1:IAvatar) : void;
      
      function get hitBy() : IAvatar;
      
      function set hitBy(param1:IAvatar) : void;
      
      function get depthDef() : Number;
      
      function set depthDef(param1:Number) : void;
      
      function get showWalk() : Boolean;
      
      function set showWalk(param1:Boolean) : void;
      
      function showSwim(param1:Boolean) : void;
      
      function showReflection(param1:Number = -65) : void;
      
      function hideReflection() : void;
      
      function isAvSwimming() : Boolean;
      
      function set immunity(param1:Boolean) : void;
      
      function get immunity() : Boolean;
      
      function sendDataToServer() : void;
      
      function hideShadow() : void;
      
      function showShadow() : void;
      
      function destroy() : void;
      
      function setAvPos(param1:Number, param2:Number) : void;
      
      function actionReceived(param1:OtherEvent) : void;
      
      function get userID() : Number;
      
      function doTheWalk3(param1:Event = null) : void;
      
      function set chatStatus(param1:String) : void;
      
      function get chatStatus() : String;
   }
}

package com.gaiaworld.room.view
{
   import com.gaiamobile.room.interfaces.ISurfaceObject;
   import com.gaiaworld.room.interfaces.IWorldItem2;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class WorldItem2 extends Sprite implements IWorldItem2, ISurfaceObject
   {
       
      
      private var _depth2:Number;
      
      private var _myName:String;
      
      private var _canCollide:Boolean = false;
      
      private var _collideType:String = "none";
      
      private var _type:String;
      
      private var _hitBox:MovieClip;
      
      private var _specialAction:String;
      
      public var isMovingObject:Boolean = false;
      
      public function WorldItem2()
      {
         super();
      }
      
      public function get clip() : Sprite
      {
         return this as Sprite;
      }
      
      public function get depth2() : Number
      {
         return this._depth2;
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
      
      public function get hitBox() : MovieClip
      {
         return this._hitBox;
      }
      
      public function set hitBox(param1:MovieClip) : void
      {
         this._hitBox = param1;
      }
   }
}

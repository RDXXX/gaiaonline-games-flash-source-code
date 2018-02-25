package com.gaiaworld.room.view
{
   import com.gaiaworld.avatar.controller.events.MoveEvent;
   import com.gaiaworld.gobjects.constants.CollisionConstants;
   import com.gaiaworld.room.interfaces.IAnimatedObject;
   import com.gaiaworld.room.interfaces.ISurfaceObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class AnimatedObject extends MovieClip implements IAnimatedObject, ISurfaceObject
   {
       
      
      private var _depth2:Number;
      
      private var _specialAction:String;
      
      public function AnimatedObject()
      {
         super();
      }
      
      protected function pressed(param1:MouseEvent) : void
      {
         this.dispatchEvent(new MoveEvent(MoveEvent.MOVE,this.x + this.mouseX,this.y + this.mouseY,true));
      }
      
      public function get depth2() : Number
      {
         return this._depth2;
      }
      
      public function set depth2(param1:Number) : void
      {
         this._depth2 = param1;
      }
      
      public function getMyName() : String
      {
         return "animated object";
      }
      
      public function get collideType() : String
      {
         return CollisionConstants.NO_COLLISION;
      }
      
      public function get canCollide() : Boolean
      {
         return false;
      }
      
      public function get myName() : String
      {
         return "animatedObject";
      }
      
      public function get specialAction() : String
      {
         return this._specialAction;
      }
      
      public function set specialAction(param1:String) : void
      {
         this._specialAction = param1;
      }
      
      public function get clip() : Sprite
      {
         return this as Sprite;
      }
   }
}

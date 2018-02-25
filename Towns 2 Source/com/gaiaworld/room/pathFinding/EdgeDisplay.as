package com.gaiaworld.room.pathFinding
{
   import com.gaiaworld.gobjects.constants.CollisionConstants;
   import com.gaiaworld.room.interfaces.ISurfaceObject;
   import flash.display.Sprite;
   
   public class EdgeDisplay extends Sprite implements ISurfaceObject
   {
       
      
      private var _depth2:Number = 0;
      
      public function EdgeDisplay()
      {
         super();
      }
      
      public function get collideType() : String
      {
         return CollisionConstants.NO_COLLISION;
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
         return "";
      }
      
      public function get canCollide() : Boolean
      {
         return false;
      }
   }
}

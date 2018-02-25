package com.gaiaworld.gobjects.view
{
   import com.gaiaworld.room.interfaces.ISurfaceObject;
   import flash.display.Sprite;
   
   public class BaseScreen extends Sprite implements ISurfaceObject
   {
       
      
      public var isMovingObject:Boolean = false;
      
      public function BaseScreen()
      {
         super();
      }
      
      public function get clip() : Sprite
      {
         return this as Sprite;
      }
      
      public function get depth2() : Number
      {
         return 5000000;
      }
      
      public function set depth2(param1:Number) : void
      {
      }
      
      public function get myName() : String
      {
         return "screen";
      }
      
      public function get canCollide() : Boolean
      {
         return false;
      }
      
      public function get collideType() : String
      {
         return "";
      }
   }
}

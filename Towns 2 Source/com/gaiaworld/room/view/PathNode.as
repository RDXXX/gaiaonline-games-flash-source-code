package com.gaiaworld.room.view
{
   import com.gaiaworld.gobjects.constants.CollisionConstants;
   import com.gaiaworld.room.interfaces.ISurfaceObject;
   import flash.display.Sprite;
   import flash.geom.Vector3D;
   
   public class PathNode extends Sprite implements ISurfaceObject
   {
       
      
      private var _clip:Sprite;
      
      private var _depth2:Number;
      
      private var _myName:String;
      
      private var pos:Vector3D;
      
      private var index:int;
      
      public function PathNode()
      {
         super();
         this.graphics.beginFill(16711680,1);
         this.graphics.drawCircle(0,0,20);
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
         return this._myName;
      }
      
      public function get canCollide() : Boolean
      {
         return false;
      }
   }
}

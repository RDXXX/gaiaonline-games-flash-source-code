package com.gaiaworld.room.pathFinding
{
   import com.gaiaworld.gobjects.constants.CollisionConstants;
   import com.gaiaworld.room.interfaces.ISurfaceObject;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.geom.Vector3D;
   import flash.text.TextField;
   
   public class Node extends Sprite implements ISurfaceObject
   {
       
      
      private var pos:Vector3D;
      
      public var index:int;
      
      private var _depth2:Number = 0;
      
      private var _blocked:Boolean = false;
      
      private var text1:TextField;
      
      public function Node(param1:int, param2:Vector3D)
      {
         this.text1 = new TextField();
         super();
         this.index = param1;
         this.pos = param2;
         this.x = param2.x;
         this.y = param2.y;
         this.graphics.beginFill(16711680,1);
         this.graphics.drawCircle(0,0,15);
         this.text1.textColor = 16777215;
         this.addChild(this.text1);
         this.text1.mouseEnabled = false;
         this.text1.selectable = false;
         this.text1.text = String(param1);
      }
      
      public function showBlocked() : *
      {
         this.graphics.clear();
         this.graphics.beginFill(0,1);
         this.graphics.drawCircle(0,0,15);
      }
      
      private function pressed(param1:MouseEvent) : *
      {
         var _loc2_:Number = int((y - 200) / 51);
         var _loc3_:Number = int((x - 50) / 51);
         var _loc4_:Number = _loc2_ * 20 + _loc3_;
      }
      
      public function getIndex() : int
      {
         return this.index;
      }
      
      public function setPos(param1:Vector3D) : *
      {
         this.pos = param1;
      }
      
      public function getPos() : Vector3D
      {
         return this.pos;
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
      
      public function get blocked() : Boolean
      {
         return this._blocked;
      }
      
      public function set blocked(param1:Boolean) : void
      {
         this._blocked = param1;
      }
   }
}

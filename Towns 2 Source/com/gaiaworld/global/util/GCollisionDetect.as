package com.gaiaworld.global.util
{
   import com.coreyoneil.collision.CollisionList;
   import com.gaiaworld.avatar.interfaces.IAvatar;
   import flash.display.Sprite;
   
   public class GCollisionDetect
   {
       
      
      public function GCollisionDetect()
      {
         super();
      }
      
      public function checkHit(param1:IAvatar, param2:Sprite) : Boolean
      {
         if(param2 == null)
         {
            return false;
         }
         var _loc3_:CollisionList = new CollisionList(param1.collideClip);
         _loc3_.addItem(param2);
         if(_loc3_.checkCollisions().length > 0)
         {
            return true;
         }
         return false;
      }
      
      public function checkHitObj(param1:Sprite, param2:Sprite) : *
      {
         if(param2 == null)
         {
            return false;
         }
         var _loc3_:CollisionList = new CollisionList(param1);
         _loc3_.addItem(param2);
         if(_loc3_.checkCollisions().length > 0)
         {
            return true;
         }
         return false;
      }
      
      public function checkItemHit(param1:Sprite, param2:Sprite) : *
      {
         if(param1 == null || param2 == null)
         {
            return false;
         }
         var _loc3_:CollisionList = new CollisionList(param1,param2);
         if(_loc3_.checkCollisions().length > 0)
         {
            return true;
         }
         return false;
      }
   }
}

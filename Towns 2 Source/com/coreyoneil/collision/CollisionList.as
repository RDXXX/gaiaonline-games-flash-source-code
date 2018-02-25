package com.coreyoneil.collision
{
   import flash.display.DisplayObject;
   
   public class CollisionList extends CDK
   {
       
      
      public function CollisionList(param1:*, ... rest)
      {
         super();
         addItem(param1);
         var _loc3_:uint = 0;
         while(_loc3_ < rest.length)
         {
            addItem(rest[_loc3_]);
            _loc3_++;
         }
      }
      
      public function checkCollisions() : Array
      {
         var _loc3_:DisplayObject = null;
         clearArrays();
         var _loc1_:uint = objectArray.length;
         var _loc2_:* = DisplayObject(objectArray[0]);
         var _loc4_:uint = 1;
         while(_loc4_ < _loc1_)
         {
            _loc3_ = DisplayObject(objectArray[_loc4_]);
            if(_loc2_.hitTestObject(_loc3_))
            {
               if(_loc3_.width * _loc3_.height > _loc2_.width * _loc2_.height)
               {
                  objectCheckArray.push([_loc2_,_loc3_]);
               }
               else
               {
                  objectCheckArray.push([_loc3_,_loc2_]);
               }
            }
            _loc4_++;
         }
         _loc1_ = objectCheckArray.length;
         _loc4_ = 0;
         while(_loc4_ < _loc1_)
         {
            findCollisions(DisplayObject(objectCheckArray[_loc4_][0]),DisplayObject(objectCheckArray[_loc4_][1]));
            _loc4_++;
         }
         return objectCollisionArray;
      }
      
      public function swapTarget(param1:*) : void
      {
         if(param1 is DisplayObject)
         {
            objectArray[0] = param1;
            return;
         }
         throw new Error("Cannot swap target: " + param1 + " - item must be a Display Object.");
      }
      
      override public function removeItem(param1:*) : void
      {
         var _loc2_:int = objectArray.indexOf(param1);
         if(_loc2_ > 0)
         {
            objectArray.splice(_loc2_,1);
            return;
         }
         if(_loc2_ == 0)
         {
            throw new Error("You cannot remove the target from CollisionList.  Use swapTarget to change the target.");
         }
         throw new Error(param1 + " could not be removed - object not found in item list.");
      }
   }
}

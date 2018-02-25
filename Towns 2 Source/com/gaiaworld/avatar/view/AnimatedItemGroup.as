package com.gaiaworld.avatar.view
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class AnimatedItemGroup extends Sprite
   {
       
      
      public function AnimatedItemGroup()
      {
         super();
      }
      
      public function arrange() : *
      {
         var _loc1_:Array = new Array();
         var _loc2_:Number = this.numChildren - 1;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc1_.push(this.getChildAt(_loc3_) as MovieClip);
            _loc3_++;
         }
         _loc1_.sortOn("priority");
         _loc1_.reverse();
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            this.addChild(_loc1_[_loc4_]);
            _loc4_++;
         }
      }
   }
}

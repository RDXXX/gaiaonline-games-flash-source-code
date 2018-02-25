package com.gaiaworld.global.view.ui
{
   import flash.display.Sprite;
   
   public class WordLine extends Sprite
   {
       
      
      private var buffer:Number = 4;
      
      public function WordLine()
      {
         super();
      }
      
      public function lineUp() : *
      {
         var _loc4_:Sprite = null;
         var _loc1_:Number = 0;
         var _loc2_:Number = this.numChildren;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = getChildAt(_loc3_) as Sprite;
            _loc4_.x = _loc1_;
            _loc1_ = _loc1_ + (_loc4_.width + this.buffer);
            _loc3_++;
         }
      }
      
      public function empty() : *
      {
         var _loc1_:Number = this.numChildren;
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            if(this.contains(this.getChildAt(0)))
            {
               removeChild(this.getChildAt(0));
            }
            _loc2_++;
         }
      }
   }
}

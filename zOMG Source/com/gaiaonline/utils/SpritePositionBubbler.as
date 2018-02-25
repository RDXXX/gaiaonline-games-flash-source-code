package com.gaiaonline.utils
{
   import flash.display.Sprite;
   
   public class SpritePositionBubbler extends Sprite
   {
       
      
      public function SpritePositionBubbler()
      {
         super();
      }
      
      override public function set x(value:Number) : void
      {
         if(value != super.x)
         {
            super.x = value;
            dispatchPositionChangeEvent();
         }
      }
      
      override public function set y(value:Number) : void
      {
         if(value != super.y)
         {
            super.y = value;
            dispatchPositionChangeEvent();
         }
      }
      
      protected function invalidateDisplayProperties() : void
      {
         dispatchEvent(new SpritePositionChangeEvent(SpritePositionChangeEvent.INVALIDATE_PROPERTIES,this,true,true));
      }
      
      private function dispatchPositionChangeEvent() : void
      {
         this.dispatchEvent(new SpritePositionChangeEvent(SpritePositionChangeEvent.POSITION_CHANGE,this,true,true));
      }
   }
}

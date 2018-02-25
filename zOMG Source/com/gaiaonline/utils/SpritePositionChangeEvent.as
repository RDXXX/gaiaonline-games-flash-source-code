package com.gaiaonline.utils
{
   import flash.events.Event;
   
   public class SpritePositionChangeEvent extends Event
   {
      
      public static const POSITION_CHANGE:String = "PositionChange";
      
      public static const INVALIDATE_PROPERTIES:String = "InvalidateProperties";
       
      
      private var _spritePositionInvalidator:SpritePositionBubbler = null;
      
      public function SpritePositionChangeEvent(type:String, spi:SpritePositionBubbler, bubbles:Boolean = false, cancelable:Boolean = false)
      {
         _spritePositionInvalidator = spi;
         super(type,bubbles,cancelable);
      }
      
      public function get spritePositionInvalidator() : SpritePositionBubbler
      {
         return _spritePositionInvalidator;
      }
   }
}

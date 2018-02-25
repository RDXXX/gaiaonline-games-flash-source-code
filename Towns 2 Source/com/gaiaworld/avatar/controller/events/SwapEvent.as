package com.gaiaworld.avatar.controller.events
{
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class SwapEvent extends Event
   {
      
      public static const SWAP_DEPTHS:String = "swapDepths";
       
      
      public var topItem:Sprite;
      
      public var bottomItem:Sprite;
      
      public function SwapEvent(param1:String, param2:Sprite, param3:Sprite, param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
         this.bottomItem = param3;
         this.topItem = param2;
      }
      
      override public function clone() : Event
      {
         return new SwapEvent(type,this.topItem,this.bottomItem,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("SwapEvent","type","topItem","bottomItem","bubbles","cancelable","eventPhase");
      }
   }
}

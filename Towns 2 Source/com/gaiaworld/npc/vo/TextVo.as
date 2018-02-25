package com.gaiaworld.npc.vo
{
   public class TextVo
   {
       
      
      public var text:String;
      
      public var windowType:String;
      
      public var buttons:Number;
      
      public var media:String;
      
      public function TextVo(param1:String = "", param2:String = "standard", param3:Number = 1, param4:String = "")
      {
         super();
         this.text = param1;
         this.windowType = param2;
         this.buttons = param3;
         this.media = param4;
      }
   }
}

package com.gaiaworld.global.view
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   
   public class WordBubble2 extends Sprite
   {
       
      
      public var bubble:MovieClip;
      
      public var txtChat:TextField;
      
      public var time:Number = 0;
      
      public function WordBubble2()
      {
         super();
         this.txtChat.autoSize = TextFieldAutoSize.LEFT;
      }
      
      public function setText(param1:String) : *
      {
         this.txtChat.text = param1;
         var _loc2_:Number = this.txtChat.height * 1.2;
         if(_loc2_ < 40)
         {
            _loc2_ = 40;
         }
         this.graphics.lineStyle(2,0,1);
         this.graphics.beginFill(16777215,1);
         this.graphics.drawRoundRect(0,0,this.txtChat.width * 1.2,_loc2_,8);
         this.graphics.endFill();
      }
   }
}

package com.gaiaonline.display.wordbubble
{
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class BubbleEvent extends Event
   {
      
      public static const BTN_CLICK:String = "Btn_Click";
      
      public static const OK_CLICK:String = "Ok_Click";
      
      public static const OPTION_CLICK:String = "Option_Click";
      
      public static const BUBBLE_MOUSE_DOWN:String = "Bubble_Mouse_Down";
      
      public static const DONE:String = "Done";
       
      
      private var myOption:int;
      
      private var _myActor:Sprite;
      
      private var myNpcId:String;
      
      private var myDialogId:String;
      
      public function BubbleEvent(param1:String, param2:Sprite, param3:String = "ddd", param4:int = 0, param5:String = null)
      {
         super(param1,false,false);
         this.myOption = param4;
         this._myActor = param2;
         this.myNpcId = param3;
         this.myDialogId = param5;
      }
      
      public function get option() : int
      {
         return this.myOption;
      }
      
      public function get myActor() : Sprite
      {
         return this._myActor;
      }
      
      public function get npcId() : String
      {
         return this.myNpcId;
      }
      
      public function get dialogId() : String
      {
         return this.myDialogId;
      }
   }
}

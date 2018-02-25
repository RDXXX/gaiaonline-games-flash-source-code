package com.gaiaonline.display.wordbubble
{
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class BubbleEvent extends Event
   {
      
      public static const OK_CLICK:String = "Ok_Click";
      
      public static const DONE:String = "Done";
      
      public static const BTN_CLICK:String = "Btn_Click";
      
      public static const OPTION_CLICK:String = "Option_Click";
      
      public static const BUBBLE_MOUSE_DOWN:String = "Bubble_Mouse_Down";
       
      
      private var myOption:int;
      
      private var _myActor:Sprite;
      
      private var myDialogId:String;
      
      private var myNpcId:String;
      
      public function BubbleEvent(type:String, myActor:Sprite, npcId:String = "ddd", option:int = 0, dialogId:String = null)
      {
         super(type,false,false);
         this.myOption = option;
         this._myActor = myActor;
         this.myNpcId = npcId;
         this.myDialogId = dialogId;
      }
      
      public function get dialogId() : String
      {
         return this.myDialogId;
      }
      
      public function get myActor() : Sprite
      {
         return this._myActor;
      }
      
      public function get option() : int
      {
         return this.myOption;
      }
      
      public function get npcId() : String
      {
         return this.myNpcId;
      }
   }
}

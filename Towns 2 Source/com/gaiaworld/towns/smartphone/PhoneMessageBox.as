package com.gaiaworld.towns.smartphone
{
   import com.gaiaworld.global.constants.MessageConstants;
   import com.gaiaworld.global.model.MessageModel;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class PhoneMessageBox extends Sprite
   {
       
      
      public var btnClose:SimpleButton;
      
      public var text1:TextField;
      
      private var messageModel:MessageModel;
      
      public function PhoneMessageBox()
      {
         this.messageModel = MessageModel.getInstance();
         super();
         this.visible = false;
         this.messageModel.addEventListener(MessageConstants.NEW_PHONE_MESSAGE,this.newPhoneMessage);
         this.btnClose.addEventListener(MouseEvent.MOUSE_DOWN,this.closeMe);
      }
      
      private function closeMe(param1:MouseEvent) : void
      {
         this.visible = false;
      }
      
      private function newPhoneMessage(param1:Event) : void
      {
         this.text1.text = this.messageModel.phoneMessage;
         this.visible = true;
      }
   }
}

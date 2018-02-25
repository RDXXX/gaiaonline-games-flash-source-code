package com.gaiaworld.global.view.debug
{
   import com.gaiaworld.global.constants.GlobalConstants;
   import com.gaiaworld.sushi.model.ChatModel;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.text.TextField;
   
   public class IpBox extends Sprite
   {
       
      
      public var ipText:TextField;
      
      public var portText:TextField;
      
      public var roomIDText:TextField;
      
      public var roomText:TextField;
      
      private var chatModel:ChatModel;
      
      public function IpBox()
      {
         this.chatModel = ChatModel.getInstance();
         super();
         this.chatModel.addEventListener(GlobalConstants.IP_CHANGED,this.ipChanged);
         this.chatModel.addEventListener(GlobalConstants.PORT_CHANGED,this.portChanged);
         this.chatModel.addEventListener(GlobalConstants.DEBUG_ROOM_INFO_UPDATED,this.roomChanged);
         this.chatModel.addEventListener(GlobalConstants.ROOM_ID_UPDATED,this.roomIDUpdated);
         this.visible = false;
         this.chatModel.addEventListener(GlobalConstants.TOGGLE_IP_BOX,this.toggleBox);
      }
      
      private function roomIDUpdated(param1:Event) : void
      {
         this.roomIDText.text = String(this.chatModel.roomID);
      }
      
      private function toggleBox(param1:Event) : void
      {
         this.visible = !this.visible;
      }
      
      private function ipChanged(param1:Event) : void
      {
         this.ipText.text = this.chatModel.ip;
      }
      
      private function portChanged(param1:Event) : *
      {
         this.portText.text = String(this.chatModel.port);
      }
      
      private function roomChanged(param1:Event) : *
      {
         this.roomText.text = this.chatModel.currentRoom;
      }
   }
}

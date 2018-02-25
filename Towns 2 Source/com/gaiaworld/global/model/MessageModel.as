package com.gaiaworld.global.model
{
   import com.gaiaworld.global.constants.MessageConstants;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class MessageModel extends EventDispatcher
   {
      
      private static var instance:MessageModel;
       
      
      public var showCloseButton:Boolean = true;
      
      public var fontSize:Number = 16;
      
      private var _message:String;
      
      private var _phoneMessage:String;
      
      public function MessageModel()
      {
         super();
      }
      
      public static function getInstance() : MessageModel
      {
         if(instance == null)
         {
            instance = new MessageModel();
         }
         return instance;
      }
      
      public function get message() : String
      {
         return this._message;
      }
      
      public function set message(param1:String) : void
      {
         this._message = param1;
         this.dispatchEvent(new Event(MessageConstants.NEW_MESSAGE,true));
      }
      
      public function get phoneMessage() : String
      {
         return this._phoneMessage;
      }
      
      public function set phoneMessage(param1:String) : void
      {
         this._phoneMessage = param1;
         this.dispatchEvent(new Event(MessageConstants.NEW_PHONE_MESSAGE,true));
      }
   }
}

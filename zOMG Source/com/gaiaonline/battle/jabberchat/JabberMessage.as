package com.gaiaonline.battle.jabberchat
{
   import flash.events.EventDispatcher;
   
   public class JabberMessage extends EventDispatcher
   {
      
      public static const MESSAGE_READY:String = "JabberMessage_MessageReady";
       
      
      private var _userId:String;
      
      private var _squashName:String;
      
      private var _displayName:String;
      
      private var _txt:String;
      
      public var channel:String = null;
      
      private var _isError:Boolean = false;
      
      public function JabberMessage(userName:String, txt:String)
      {
         super();
         this._txt = txt;
         if(userName != null)
         {
            this._squashName = getSquashName(userName);
         }
      }
      
      public static function getSquashName(userName:String) : String
      {
         var re:RegExp = /[^A-Za-z0-9]+/;
         var squashName:String = userName;
         var i:int = squashName.search(re);
         while(i > -1)
         {
            squashName = squashName.replace(re,"");
            i = squashName.search(re);
         }
         return squashName.toLowerCase();
      }
      
      public function set txt(v:String) : void
      {
         this._txt = v;
      }
      
      public function set isError(value:Boolean) : void
      {
         _isError = value;
      }
      
      public function get displayName() : String
      {
         return this._displayName;
      }
      
      public function get txt() : String
      {
         return this._txt;
      }
      
      public function get isError() : Boolean
      {
         return _isError;
      }
      
      public function get squashName() : String
      {
         return this._squashName;
      }
      
      public function set displayName(v:String) : void
      {
         this._displayName = v;
      }
   }
}

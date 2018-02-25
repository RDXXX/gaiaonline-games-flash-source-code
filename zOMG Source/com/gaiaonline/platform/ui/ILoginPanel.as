package com.gaiaonline.platform.ui
{
   import flash.events.IEventDispatcher;
   
   public interface ILoginPanel extends IEventDispatcher
   {
       
      
      function get autoconnectIP() : String;
      
      function get partnerID() : String;
      
      function set partnerID(param1:String) : void;
      
      function get gsiSubdomain() : String;
      
      function showGuestPicker() : void;
      
      function set username(param1:String) : void;
      
      function set useCaptcha(param1:Boolean) : void;
      
      function set gsiSubdomain(param1:String) : void;
      
      function get useCaptcha() : Boolean;
      
      function set password(param1:String) : void;
      
      function setErrorText(param1:String) : void;
      
      function get password() : String;
      
      function set baseURL(param1:String) : void;
      
      function get username() : String;
      
      function get baseURL() : String;
   }
}

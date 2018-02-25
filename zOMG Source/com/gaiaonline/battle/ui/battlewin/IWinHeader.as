package com.gaiaonline.battle.ui.battlewin
{
   import com.gaiaonline.battle.ApplicationInterfaces.IUIFramework;
   
   public interface IWinHeader
   {
       
      
      function init(param1:IUIFramework) : void;
      
      function setSize(param1:uint, param2:uint, param3:Number = 0) : void;
      
      function get serverName() : String;
      
      function startFps() : void;
      
      function get zoneName() : String;
      
      function set serverName(param1:String) : void;
      
      function set zoneName(param1:String) : void;
      
      function stopFps() : void;
   }
}

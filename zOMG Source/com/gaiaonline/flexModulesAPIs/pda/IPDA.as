package com.gaiaonline.flexModulesAPIs.pda
{
   import flash.display.DisplayObject;
   import mx.controls.Button;
   
   public interface IPDA
   {
       
      
      function get recrewtButton() : Button;
      
      function setQuests(param1:Array) : void;
      
      function addMinimap(param1:DisplayObject) : void;
      
      function setGST(param1:String) : void;
   }
}

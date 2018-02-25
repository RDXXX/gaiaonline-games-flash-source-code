package com.gaiaonline.flexModulesAPIs.minimap
{
   import flash.display.DisplayObject;
   
   public interface IMinimapContainer
   {
       
      
      function setLocal(param1:Boolean) : void;
      
      function setEventHandler(param1:IMinimapEventHandler) : void;
      
      function setRawMinimapDisplay(param1:DisplayObject, param2:DisplayObject) : void;
      
      function setMarkerType() : void;
   }
}

package com.gaiaonline.platform.map
{
   import flash.display.DisplayObject;
   
   public interface ITalkIconManager
   {
       
      
      function removeDialog(param1:DisplayObject) : void;
      
      function getTalkIconLayer() : DisplayObject;
      
      function contains(param1:DisplayObject) : Boolean;
   }
}

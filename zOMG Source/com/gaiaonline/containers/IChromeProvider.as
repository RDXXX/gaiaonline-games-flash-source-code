package com.gaiaonline.containers
{
   import flash.display.DisplayObjectContainer;
   
   public interface IChromeProvider
   {
       
      
      function getTopChrome() : DisplayObjectContainer;
      
      function getBottomChrome() : DisplayObjectContainer;
   }
}

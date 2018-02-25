package com.gaiaonline.battle.ui
{
   public interface IFlexUiManager
   {
       
      
      function initializeContainer(param1:Object) : void;
      
      function getArrayCollection() : Object;
      
      function getModule(param1:String, param2:IAsyncCreationHandler) : void;
      
      function clearContentCache(param1:String) : void;
   }
}

package com.gaiaonline.battle.map
{
   public interface IEnvironmentChanger
   {
       
      
      function updateObject(param1:Object) : void;
      
      function registerForEnvironmentChanges(param1:IEnvironmentChangeHandler) : void;
   }
}

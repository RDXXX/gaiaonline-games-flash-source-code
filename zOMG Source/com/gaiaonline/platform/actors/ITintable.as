package com.gaiaonline.platform.actors
{
   import com.gaiaonline.battle.map.TintTypes;
   
   public interface ITintable extends IDisplayObject
   {
       
      
      function getTintType() : TintTypes;
      
      function setTint(param1:int, param2:int, param3:int) : void;
   }
}

package com.gaiaworld.avatar.interfaces
{
   import com.gaiaworld.room.interfaces.IWorldItem;
   
   public interface IAction
   {
       
      
      function setAvatar(param1:IAvatar) : void;
      
      function setItem(param1:IWorldItem) : void;
      
      function startAction() : void;
      
      function stopAction() : void;
   }
}

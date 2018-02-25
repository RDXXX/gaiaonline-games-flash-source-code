package com.gaiaworld.avatar.interfaces
{
   import com.gaiaworld.room.interfaces.IWorldItem;
   
   public interface IActionGroup
   {
       
      
      function setAvatar(param1:IAvatar) : void;
      
      function setItem(param1:IWorldItem) : void;
      
      function setAction(param1:String) : void;
      
      function stopAction() : void;
      
      function clone() : IActionGroup;
      
      function getName() : String;
   }
}

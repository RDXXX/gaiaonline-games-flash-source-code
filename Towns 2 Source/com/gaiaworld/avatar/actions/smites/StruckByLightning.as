package com.gaiaworld.avatar.actions.smites
{
   import com.gaiaworld.avatar.actions.BaseAction;
   import com.gaiaworld.avatar.interfaces.IAction;
   import com.gaiaworld.avatar.interfaces.IAvatar;
   import com.gaiaworld.room.interfaces.IWorldItem;
   import com.gaiaworld.towns.smites.Lightning;
   
   public class StruckByLightning extends BaseAction implements IAction
   {
       
      
      public function StruckByLightning()
      {
         super();
      }
      
      override public function setAvatar(param1:IAvatar) : void
      {
         this.av = param1;
      }
      
      override public function setItem(param1:IWorldItem) : void
      {
         this.item = param1;
      }
      
      override public function startAction() : void
      {
         var _loc1_:Lightning = new Lightning();
         this.av.attachItem(0,0,_loc1_);
      }
      
      override public function stopAction() : void
      {
      }
   }
}

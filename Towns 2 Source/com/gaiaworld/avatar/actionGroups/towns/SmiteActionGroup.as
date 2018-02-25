package com.gaiaworld.avatar.actionGroups.towns
{
   import com.gaiaworld.avatar.actions.smites.StruckByLightning;
   import com.gaiaworld.avatar.interfaces.IActionGroup;
   import com.gaiaworld.avatar.interfaces.IAvatar;
   import com.gaiaworld.room.controller.RoomController;
   import com.gaiaworld.room.interfaces.IWorldItem;
   
   public class SmiteActionGroup implements IActionGroup
   {
       
      
      private var av:IAvatar;
      
      private var item:IWorldItem;
      
      private var action:String;
      
      private var lightningAction:StruckByLightning;
      
      private var roomController:RoomController;
      
      public function SmiteActionGroup()
      {
         this.lightningAction = new StruckByLightning();
         this.roomController = new RoomController();
         super();
      }
      
      public function setAvatar(param1:IAvatar) : void
      {
         this.av = param1;
      }
      
      public function setItem(param1:IWorldItem) : void
      {
         this.item = param1;
      }
      
      public function setAction(param1:String) : void
      {
         this.action = param1;
         if(param1 == "1")
         {
            this.lightningAction.setAvatar(this.av);
            this.lightningAction.startAction();
         }
      }
      
      public function stopAction() : void
      {
      }
      
      public function clone() : IActionGroup
      {
         return new SmiteActionGroup();
      }
      
      public function getName() : String
      {
         return "smiteAction";
      }
   }
}

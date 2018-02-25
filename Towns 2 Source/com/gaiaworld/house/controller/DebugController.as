package com.gaiaworld.house.controller
{
   import com.gaiaworld.house.model.DebugModel;
   
   public class DebugController
   {
       
      
      private var debugModel:DebugModel;
      
      public function DebugController()
      {
         this.debugModel = DebugModel.getInstance();
         super();
      }
      
      public function dtrace(param1:String) : *
      {
         this.debugModel.debugText = param1;
      }
      
      public function debugFlag(param1:Boolean) : *
      {
         this.debugModel.debugFlag = param1;
      }
      
      public function setLoc(param1:String) : *
      {
         this.debugModel.locText = param1;
      }
      
      public function setCol(param1:String) : *
      {
         this.debugModel.colText = param1;
      }
      
      public function updatedInfo() : *
      {
         this.debugModel.upadtedInfo();
      }
      
      public function setRoomID(param1:Number) : *
      {
         this.debugModel.roomID = param1;
      }
      
      public function setDist(param1:Number) : void
      {
         this.debugModel.dist = param1;
      }
      
      public function listAllObjects() : *
      {
         this.debugModel.listAllObjects();
      }
      
      public function listSurface() : void
      {
         this.debugModel.listSurface();
      }
      
      public function listRooms() : void
      {
         this.debugModel.listRooms();
      }
   }
}

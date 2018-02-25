package com.gaiaworld.house.view
{
   import com.efnx.fps.FpsBox;
   import com.gaiaworld.avatar.constants.AvatarConstants;
   import com.gaiaworld.avatar.model.AvatarModel;
   import com.gaiaworld.global.TheStage;
   import com.gaiaworld.global.constants.GlobalConstants;
   import com.gaiaworld.global.model.GlobalModel;
   import com.gaiaworld.house.constants.HouseConstants;
   import com.gaiaworld.house.model.DebugModel;
   import com.gaiaworld.pets.constants.PetConstants;
   import com.gaiaworld.pets.model.PetModel;
   import com.gaiaworld.room.model.RoomModel;
   import com.gaiaworld.towns.hood.constants.HoodConstants;
   import com.gaiaworld.towns.hood.model.HoodModel;
   import com.gaiaworld.user.constants.UserConstants;
   import com.gaiaworld.user.model.UserModel;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.text.TextField;
   
   public class DebugTextViewer extends Sprite
   {
       
      
      public var blockedText:TextField;
      
      public var colText:TextField;
      
      public var comText:TextField;
      
      public var hoodText:TextField;
      
      public var justText:TextField;
      
      public var locText:TextField;
      
      public var petText:TextField;
      
      public var roomIDText:TextField;
      
      public var text1:TextField;
      
      public var text2:TextField;
      
      public var tx:TextField;
      
      public var ty:TextField;
      
      public var userControlText:TextField;
      
      public var visText:TextField;
      
      private var debugModel:DebugModel;
      
      private var roomModel:RoomModel;
      
      private var hoodModel:HoodModel;
      
      private var avatarModel:AvatarModel;
      
      private var globalModel:GlobalModel;
      
      private var userModel:UserModel;
      
      private var petModel:PetModel;
      
      public function DebugTextViewer()
      {
         this.debugModel = DebugModel.getInstance();
         this.roomModel = RoomModel.getInstance();
         this.hoodModel = HoodModel.getInstance();
         this.avatarModel = AvatarModel.getInstance();
         this.globalModel = GlobalModel.getInstance();
         this.userModel = UserModel.getInstance();
         this.petModel = PetModel.getInstance();
         super();
         this.debugModel.addEventListener(HouseConstants.NEW_DEBUG_TEXT,this.addText);
         this.debugModel.addEventListener(HouseConstants.TEXT_FLAG_UPDATED,this.setFlag);
         this.debugModel.addEventListener(HouseConstants.NEW_LOC_TEXT,this.setLoc);
         this.debugModel.addEventListener(HouseConstants.NEW_COL_TEXT,this.setCol);
         this.roomModel.addEventListener(GlobalConstants.ROOM_ID_UPDATED,this.setRoomID);
         this.hoodModel.addEventListener(HoodConstants.JUST_ARRIVED_CHANGED,this.justArrivedChanged);
         this.avatarModel.addEventListener(AvatarConstants.USER_CONTROL_UPDATED,this.userControlUpdated);
         this.petModel.addEventListener(PetConstants.MY_PET_SET,this.petSelected);
         this.hoodModel.addEventListener(HoodConstants.HOOD_CHANGED,this.hoodChanged);
         this.hoodModel.addEventListener(HoodConstants.COMMUNITY_CHANGED,this.communityChanged);
         this.globalModel.addEventListener(GlobalConstants.SHOW_DEBUG_BOX,this.toggleMe);
         this.visible = false;
         this.avatarModel.addEventListener(AvatarConstants.TARGET_UPDATED,this.targetUpdated);
         this.userModel.addEventListener(UserConstants.USER_DATA_SET,this.userDataSet);
         this.globalModel.addEventListener(GlobalConstants.BLOCK_ITEM_UPDATED,this.setBlockedItem);
         var _loc1_:FpsBox = new FpsBox(TheStage.getInstance().STAGE);
         _loc1_.y = -160;
         this.addChild(_loc1_);
      }
      
      private function petSelected(param1:Event) : void
      {
      }
      
      private function userDataSet(param1:Event) : void
      {
         this.visText.text = String(this.userModel.userVo.visible);
      }
      
      private function targetUpdated(param1:Event) : void
      {
         this.tx.text = String(this.avatarModel.targetX);
         this.ty.text = String(this.avatarModel.targetY);
      }
      
      private function toggleMe(param1:Event) : void
      {
         this.visible = !this.visible;
      }
      
      private function communityChanged(param1:Event) : void
      {
         this.comText.text = String(this.hoodModel.currentCommunity);
      }
      
      private function hoodChanged(param1:Event) : void
      {
         this.hoodText.text = String(this.hoodModel.currentHoodId);
      }
      
      private function userControlUpdated(param1:Event) : void
      {
         this.userControlText.text = String(this.avatarModel.userControl);
      }
      
      private function justArrivedChanged(param1:Event) : void
      {
         this.justText.text = String(this.hoodModel.justArrived);
      }
      
      private function clear(param1:Event) : *
      {
         this.text1.text = "";
      }
      
      private function addText(param1:Event) : *
      {
         this.text1.text = this.text1.text + this.debugModel.debugText + String.fromCharCode(13);
         this.text1.scrollV = this.text1.maxScrollV;
      }
      
      private function setFlag(param1:Event) : *
      {
         this.text2.text = String(this.debugModel.debugFlag);
      }
      
      private function setLoc(param1:Event) : *
      {
         this.locText.text = this.debugModel.locText;
      }
      
      private function setCol(param1:Event) : *
      {
         this.colText.text = this.debugModel.colText;
      }
      
      private function setRoomID(param1:Event) : *
      {
         this.roomIDText.text = String(this.roomModel.roomID);
      }
      
      private function setBlockedItem(param1:Event) : *
      {
         this.blockedText.text = String(this.globalModel.blockedItem);
      }
   }
}

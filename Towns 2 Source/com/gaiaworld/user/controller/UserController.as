package com.gaiaworld.user.controller
{
   import com.gaiaworld.user.model.UserModel;
   import com.gaiaworld.user.vo.PalTrackVo;
   import com.gaiaworld.user.vo.PalVo;
   import com.gaiaworld.user.vo.UserVo;
   
   public class UserController
   {
       
      
      private var userModel:UserModel;
      
      public function UserController()
      {
         this.userModel = UserModel.getInstance();
         super();
      }
      
      public function setUserDataSilent(param1:UserVo) : *
      {
         this.userModel.setDataSilent(param1);
      }
      
      public function setUserData(param1:UserVo) : *
      {
         this.userModel.setData(param1);
      }
      
      public function setPals(param1:Array) : *
      {
         this.userModel.palArray = param1;
      }
      
      public function setOnlinePals(param1:Vector.<PalTrackVo>) : *
      {
         this.userModel.onlinePals = param1;
      }
      
      public function setSid(param1:String) : void
      {
         this.userModel.sid = param1;
      }
      
      public function setGaiaId(param1:Number) : void
      {
         this.userModel.userID = param1;
      }
      
      public function updatePos(param1:Number, param2:Number) : *
      {
         this.userModel.userVo.x = param1;
         this.userModel.userVo.y = param2;
      }
      
      public function updateDir(param1:String, param2:String) : void
      {
         this.userModel.userVo.dir = param1;
         this.userModel.userVo.face = param2;
      }
      
      public function setUserGold(param1:Number) : void
      {
         this.userModel.gold = param1;
      }
      
      public function setUserHood(param1:Number) : void
      {
         this.userModel.hood = param1;
      }
      
      public function ignore(param1:String) : void
      {
         this.userModel.ignore(param1);
      }
      
      public function setDoorPos(param1:Number, param2:Number, param3:Number) : void
      {
         this.userModel.doorX = param1;
         this.userModel.doorY = param2;
         this.userModel.doorR = param3;
      }
      
      public function setAddress(param1:String) : void
      {
         this.userModel.address = param1;
      }
      
      public function updateKneel(param1:Boolean) : void
      {
         this.userModel.userVo.isKneeling = param1 == true?Number(1):Number(0);
      }
      
      public function setPrivacySetting(param1:Number) : *
      {
         this.userModel.pSetting = param1;
      }
      
      public function setVisible(param1:Boolean) : void
      {
         this.userModel.setVisible(param1);
      }
      
      public function setPathFinding(param1:Boolean) : void
      {
         this.userModel.setPathFinding(param1);
      }
      
      public function park(param1:Number) : void
      {
         this.userModel.park(param1);
      }
      
      public function setHellBan(param1:Boolean) : void
      {
         this.userModel.isHellBanned = param1;
      }
      
      public function setSpeed(param1:Number) : void
      {
         this.userModel.setSpeed(param1);
      }
      
      public function setCarPos(param1:Number) : void
      {
         this.userModel.userVo.carSlot = param1;
      }
      
      public function setNonPal(param1:PalVo) : void
      {
         this.userModel.addNonPal(param1);
      }
      
      public function addGold(param1:Number) : void
      {
         this.userModel.addGold(param1);
      }
      
      public function setScas(param1:Boolean) : void
      {
         this.userModel.isScaz = param1;
      }
      
      public function setPalsOnly(param1:Boolean) : void
      {
         this.userModel.palsOnly = param1;
      }
      
      public function setGCash(param1:Number) : void
      {
         this.userModel.gCash = param1;
      }
   }
}

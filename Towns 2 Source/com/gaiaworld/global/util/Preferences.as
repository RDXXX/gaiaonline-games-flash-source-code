package com.gaiaworld.global.util
{
   import com.gaiaworld.avatar.controller.AvatarController;
   import com.gaiaworld.avatar.model.AvatarModel;
   import com.gaiaworld.game.controller.GameController;
   import com.gaiaworld.global.controller.GlobalController;
   import com.gaiaworld.global.model.GlobalModel;
   import com.gaiaworld.user.controller.UserController;
   import flash.net.SharedObject;
   
   public class Preferences
   {
      
      private static var instance:Preferences;
       
      
      private var avatarController:AvatarController;
      
      private var globalController:GlobalController;
      
      private var avatarModel:AvatarModel;
      
      private var gameController:GameController;
      
      private var globalModel:GlobalModel;
      
      private var userController:UserController;
      
      private var pref_so:SharedObject;
      
      public function Preferences()
      {
         this.avatarController = new AvatarController();
         this.globalController = new GlobalController();
         this.avatarModel = AvatarModel.getInstance();
         this.gameController = new GameController();
         this.globalModel = GlobalModel.getInstance();
         this.userController = new UserController();
         this.pref_so = SharedObject.getLocal("gaia_pref");
         super();
      }
      
      public static function getInstance() : Preferences
      {
         if(instance == null)
         {
            instance = new Preferences();
         }
         return instance;
      }
      
      public function setPopUpPhone(param1:Boolean) : *
      {
         var _loc2_:Number = param1 == true?Number(1):Number(0);
         this.pref_so.data.popUpPhone = String(_loc2_);
         this.pref_so.flush();
      }
      
      public function setSpeeds(param1:Number) : *
      {
         this.pref_so.data.walk = param1;
         this.pref_so.flush();
      }
      
      public function getStartUp() : *
      {
         var _loc1_:Number = this.pref_so.data.walk;
         if(!isNaN(_loc1_))
         {
            this.avatarController.setWalkSpeed(_loc1_);
         }
         var _loc2_:Number = Number(this.pref_so.data.popUpPhone);
         var _loc3_:Boolean = _loc2_ != 0?true:false;
         this.gameController.showPhoneOnNewChallenge(_loc3_);
      }
   }
}

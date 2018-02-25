package com.gaiaworld.global.view.ui
{
   import com.gaiaworld.avatar.constants.AvatarConstants;
   import com.gaiaworld.avatar.controller.OthersController;
   import com.gaiaworld.avatar.model.OthersModel;
   import com.gaiaworld.game.constants.GameConstants;
   import com.gaiaworld.game.controller.GameController;
   import com.gaiaworld.game.model.GameModel;
   import com.gaiaworld.global.constants.MessageConstants;
   import com.gaiaworld.global.controller.GlobalController;
   import com.gaiaworld.global.controller.ReportController;
   import com.gaiaworld.global.model.GlobalModel;
   import com.gaiaworld.pets.constants.PetConstants;
   import com.gaiaworld.pets.model.PetModel;
   import com.gaiaworld.room.constants.RoomConstants;
   import com.gaiaworld.room.model.RoomModel;
   import com.gaiaworld.sushi.controller.ChatController;
   import com.gaiaworld.sushi.model.ChatModel;
   import com.gaiaworld.user.model.UserModel;
   import com.gaiaworld.user.vo.UserVo;
   import fl.controls.ColorPicker;
   import fl.events.ColorPickerEvent;
   import fl.transitions.Tween;
   import fl.transitions.easing.None;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.text.TextField;
   
   public class FaceBox extends Sprite
   {
       
      
      public var btnAbuse:SimpleButton;
      
      public var btnAddFriend:SimpleButton;
      
      public var btnChallenge:MovieClip;
      
      public var btnChallenge2:MovieClip;
      
      public var btnClose:SimpleButton;
      
      public var btnIgnore:SimpleButton;
      
      public var btnOpen:MovieClip;
      
      public var btnProfile:SimpleButton;
      
      public var btnSmite:MovieClip;
      
      public var c1:ColorPicker;
      
      public var ignoreText:TextField;
      
      public var nameText:TextField;
      
      private var othersModel:OthersModel;
      
      private var chatModel:ChatModel;
      
      private var chatController:ChatController;
      
      private var reportController:ReportController;
      
      private var userModel:UserModel;
      
      private var globalModel:GlobalModel;
      
      private var gameModel:GameModel;
      
      private var roomModel:RoomModel;
      
      private var gameController:GameController;
      
      private var othersController:OthersController;
      
      private var globalController:GlobalController;
      
      private var bitmap;
      
      private var myTween:Tween;
      
      private var yTween:Tween;
      
      private var petModel:PetModel;
      
      public function FaceBox()
      {
         this.othersModel = OthersModel.getInstance();
         this.chatModel = ChatModel.getInstance();
         this.chatController = new ChatController();
         this.reportController = new ReportController();
         this.userModel = UserModel.getInstance();
         this.globalModel = GlobalModel.getInstance();
         this.gameModel = GameModel.getInstance();
         this.roomModel = RoomModel.getInstance();
         this.gameController = new GameController();
         this.othersController = new OthersController();
         this.globalController = new GlobalController();
         this.petModel = PetModel.getInstance();
         super();
         this.othersModel.addEventListener(AvatarConstants.AVATAR_SELECTED,this.setFace);
         this.visible = false;
         this.btnClose.addEventListener(MouseEvent.MOUSE_DOWN,this.hideMe);
         this.btnAddFriend.addEventListener(MouseEvent.MOUSE_DOWN,this.addAsFriend);
         this.btnIgnore.addEventListener(MouseEvent.MOUSE_DOWN,this.ignoreUser);
         this.btnAbuse.addEventListener(MouseEvent.MOUSE_DOWN,this.reportAbuse);
         this.btnProfile.addEventListener(MouseEvent.MOUSE_DOWN,this.getProfile);
         this.btnOpen.addEventListener(MouseEvent.MOUSE_DOWN,this.showMe);
         this.btnSmite.addEventListener(MouseEvent.MOUSE_DOWN,this.smiteUser);
         this.gameModel.addEventListener(GameConstants.NUM_CHALLENGES_CHANGED,this.numChallengeChanged);
         this.roomModel.addEventListener(RoomConstants.ROOM_IS_READY,this.reset);
         this.ignoreText.mouseEnabled = false;
         this.btnOpen.visible = false;
         this.btnChallenge.addEventListener(MouseEvent.MOUSE_DOWN,this.challengeGameOne);
         this.btnChallenge2.addEventListener(MouseEvent.MOUSE_DOWN,this.challengeGameTwo);
         this.btnChallenge.buttonMode = true;
         this.btnChallenge2.buttonMode = true;
         this.btnChallenge.useHandCursor = true;
         this.btnChallenge2.useHandCursor = true;
         this.btnChallenge.visible = false;
         this.btnChallenge2.visible = false;
         ColorPicker(this.c1).focusEnabled = false;
         ColorPicker(this.c1).addEventListener(ColorPickerEvent.CHANGE,this.changeUserTextColor);
         this.petModel.addEventListener(PetConstants.PET_SELECTED,this.hideMe);
      }
      
      private function changeUserTextColor(param1:ColorPickerEvent) : void
      {
         this.chatController.setUserTextColor(this.othersModel.selectedAvatar.dataProvider,param1.color);
      }
      
      private function reset(param1:Event) : *
      {
         this.visible = false;
      }
      
      private function setFace(param1:Event) : *
      {
         if(this.bitmap != null)
         {
            if(this.contains(this.bitmap))
            {
               this.removeChild(this.bitmap);
            }
         }
         this.nameText.text = this.chatModel.otherSelected.userName;
         var _loc2_:BitmapData = this.othersModel.selectedAvatar.getAvatarLoader().stand.bmd;
         this.bitmap = new Bitmap(_loc2_);
         this.bitmap.y = -20;
         this.bitmap.x = -20;
         this.visible = true;
         this.addChild(this.bitmap);
         if(this.x > 730)
         {
         }
         ColorPicker(this.c1).selectedColor = this.chatModel.getUserTextColorNumber(this.othersModel.selectedAvatar.dataProvider.gaia_id);
         this.initMenu();
      }
      
      private function numChallengeChanged(param1:Event) : *
      {
         switch(this.gameModel.numChallenges)
         {
            case 0:
               this.btnChallenge2.visible = false;
               this.btnChallenge.visible = false;
               break;
            case 1:
               this.btnChallenge2.visible = false;
               this.btnChallenge.visible = true;
               this.btnChallenge2.text1.text = this.gameModel.gameArray[0];
               break;
            case 2:
               this.btnChallenge2.visible = true;
               this.btnChallenge.visible = true;
               this.btnChallenge2.text1.text = this.gameModel.gameArray[1];
               this.btnChallenge2.text1.text = this.gameModel.gameArray[0];
         }
         this.setChildIndex(this.btnChallenge,this.numChildren - 1);
         this.setChildIndex(this.btnChallenge2,this.numChildren - 1);
         this.btnChallenge2.visible = false;
         this.btnChallenge.visible = false;
      }
      
      private function challengeGameOne(param1:MouseEvent) : *
      {
         var _loc2_:UserVo = this.chatModel.otherSelected;
         if(this.gameModel.hasChallengedAlready(this.userModel.userVo.gaia_id,_loc2_.gaia_id) == false)
         {
            this.gameController.setGame(this.gameModel.gameArray[0]);
            this.gameController.dispatchChallenge(0);
            this.chatController.noteToSelf(MessageConstants.CHALLENGE_SENT + _loc2_.userName);
            this.hideMe();
         }
         else
         {
            this.chatController.noteToSelf(MessageConstants.ALREADY_CHALLENGED + _loc2_.userName);
         }
      }
      
      private function challengeGameTwo(param1:MouseEvent) : *
      {
         var _loc2_:UserVo = this.chatModel.otherSelected;
         if(this.gameModel.hasChallengedAlready(this.userModel.userVo.gaia_id,_loc2_.gaia_id) == false)
         {
            this.gameController.setGame(this.gameModel.gameArray[1]);
            this.gameController.dispatchChallenge(1);
            this.chatController.noteToSelf(MessageConstants.CHALLENGE_SENT + _loc2_.userName);
            this.hideMe();
         }
         else
         {
            this.chatController.noteToSelf(MessageConstants.ALREADY_CHALLENGED + _loc2_.userName);
         }
      }
      
      private function smiteUser(param1:Event) : *
      {
         if(this.userModel.userVo.user_level > 50)
         {
            this.globalController.loadScreen("dialogs/smiteScreen.swf");
         }
      }
      
      private function hideMe(param1:Event = null) : *
      {
         this.myTween = new Tween(this,"x",None.easeNone,740,950,1,true);
         this.yTween = new Tween(this,"y",None.easeNone,-180,-50,1,true);
         this.btnOpen.visible = true;
         if(this.bitmap)
         {
            this.bitmap.visible = false;
         }
      }
      
      private function showMe(param1:Event) : *
      {
         this.myTween = new Tween(this,"x",None.easeNone,900,740,1,true);
         this.yTween = new Tween(this,"y",None.easeNone,-50,-180,1,true);
         this.btnOpen.visible = false;
         this.bitmap.visible = true;
      }
      
      public function initMenu() : *
      {
         if(this.userModel.userVo.user_level < 30)
         {
            this.btnSmite.visible = false;
         }
         this.visible = true;
         if(this.chatModel.otherSelected != null)
         {
            if(this.chatModel.otherSelected.isIgnored == false)
            {
               this.ignoreText.text = "IGNORE";
            }
            else
            {
               this.ignoreText.text = "UNIGNORE";
            }
         }
      }
      
      private function addAsFriend(param1:MouseEvent) : *
      {
         this.chatController.sendFriendReq();
      }
      
      private function ignoreUser(param1:MouseEvent) : *
      {
         if(this.chatModel.otherSelected.isIgnored == false)
         {
            this.chatController.showIgnoreDialog();
         }
         else
         {
            this.chatController.showUnignoreDialog();
         }
      }
      
      private function reportAbuse(param1:MouseEvent) : *
      {
         this.reportController.setWhomToReport(this.chatModel.otherSelected);
         this.reportController.showReport();
      }
      
      private function getProfile(param1:MouseEvent) : *
      {
         var _loc2_:String = "http://" + this.globalModel.gsiSubdomain + ".gaiaonline.com/profiles/" + this.chatModel.otherSelected.userName + "/" + this.chatModel.otherSelected.gaia_id;
         navigateToURL(new URLRequest(_loc2_),"_blank");
      }
   }
}

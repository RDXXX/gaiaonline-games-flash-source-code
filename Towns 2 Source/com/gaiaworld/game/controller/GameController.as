package com.gaiaworld.game.controller
{
   import com.gaiaworld.game.model.GameModel;
   import com.gaiaworld.game.vo.ChallengedVo;
   import com.gaiaworld.user.vo.UserVo;
   
   public class GameController
   {
       
      
      private var gameModel:GameModel;
      
      public function GameController()
      {
         this.gameModel = GameModel.getInstance();
         super();
      }
      
      public function challenge(param1:UserVo) : *
      {
         this.gameModel.challengedUser = param1;
      }
      
      public function challengedRec(param1:ChallengedVo) : *
      {
         this.gameModel.newChallenge(param1);
      }
      
      public function refuseChallenge(param1:Number) : *
      {
         this.gameModel.refuseChallenge(param1);
      }
      
      public function challengeIssued(param1:ChallengedVo) : void
      {
         this.gameModel.regSentChallenge(param1);
      }
      
      public function acceptChallenge(param1:ChallengedVo) : void
      {
         this.gameModel.acceptChallenge(param1);
      }
      
      public function setInGame(param1:Boolean) : void
      {
         this.gameModel.inGame = param1;
      }
      
      public function setShareLink(param1:String) : void
      {
         this.gameModel.shareLink = param1;
      }
      
      public function setGame(param1:String) : void
      {
         this.gameModel.currentGame = param1;
      }
      
      public function setSlots(param1:Array) : void
      {
         this.gameModel.slotArray = param1;
      }
      
      public function setHelpLink(param1:String) : void
      {
         this.gameModel.helpLink = param1;
      }
      
      public function showBlockedScreen() : *
      {
         this.gameModel.showBlockedScreen();
      }
      
      public function hideBlockScreen() : *
      {
         this.gameModel.hideBlockScreen();
      }
      
      public function toggleSound() : *
      {
         this.gameModel.toggleSound();
      }
      
      public function toggleMusic() : *
      {
         this.gameModel.toggleMusic();
      }
      
      public function dispatchChallenge(param1:Number) : void
      {
         this.gameModel.dispatchChallenge(param1);
      }
      
      public function setNumChallenges(param1:Number) : void
      {
         this.gameModel.numChallenges = param1;
      }
      
      public function setOtherPlayer(param1:UserVo) : void
      {
         this.gameModel.otherPlayer = param1;
      }
      
      public function setSinglePlayer(param1:Boolean) : void
      {
         this.gameModel.singlePlayer = param1;
      }
      
      public function clearChallenges() : *
      {
         this.gameModel.clearChallenges();
      }
      
      public function setMapNumber(param1:Number) : void
      {
         this.gameModel.mapNumber = param1;
      }
      
      public function showPhoneOnNewChallenge(param1:Boolean) : void
      {
         this.gameModel.showPhone = param1;
      }
      
      public function hideChallengeGlow() : void
      {
         this.gameModel.hideChallengeGlow();
      }
      
      public function setIAmChallenged() : void
      {
         this.gameModel.IamChallended = true;
         this.gameModel.IamChallenger = false;
      }
      
      public function setIAmChallenger() : void
      {
         this.gameModel.IamChallended = false;
         this.gameModel.IamChallenger = true;
      }
      
      public function setGameIndex(param1:Number) : void
      {
         this.gameModel.gameIndex = param1;
      }
   }
}

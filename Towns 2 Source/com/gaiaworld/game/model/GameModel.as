package com.gaiaworld.game.model
{
   import com.gaiaworld.game.constants.GameConstants;
   import com.gaiaworld.game.events.ChallengeEvent;
   import com.gaiaworld.game.vo.ChallengedVo;
   import com.gaiaworld.user.vo.UserVo;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class GameModel extends EventDispatcher
   {
      
      private static var instance:GameModel;
       
      
      private var _challengedUser:UserVo;
      
      public var challenges:Array;
      
      public var sentArray:Array;
      
      public var gameArray:Array;
      
      public var currentGame:String;
      
      public var helpLink:String;
      
      public var canPlayMusic:Boolean = true;
      
      public var canPlaySounds:Boolean = true;
      
      private var _numChallenges:Number = 0;
      
      private var _slotArray:Array;
      
      private var _shareLink:String;
      
      private var _inGame:Boolean = false;
      
      public var otherPlayer:UserVo;
      
      public var challengeDispatchNum:Number;
      
      public var singlePlayer:Boolean = true;
      
      public var mapNumber:Number = 1;
      
      public var showPhone:Boolean = true;
      
      public var IamChallenger:Boolean = false;
      
      public var IamChallended:Boolean = false;
      
      public var gameIndex:Number = 0;
      
      public function GameModel()
      {
         this.challenges = new Array();
         this.sentArray = new Array();
         this.gameArray = ["City Race","City Race","","Tic-Tac-Toe"];
         super();
      }
      
      public static function getInstance() : GameModel
      {
         if(instance == null)
         {
            instance = new GameModel();
         }
         return instance;
      }
      
      public function get challengedUser() : UserVo
      {
         return this._challengedUser;
      }
      
      public function set challengedUser(param1:UserVo) : void
      {
         this._challengedUser = param1;
         this.dispatchEvent(new Event(GameConstants.USER_CHALLENGED,true));
      }
      
      public function get inGame() : Boolean
      {
         return this._inGame;
      }
      
      public function set inGame(param1:Boolean) : void
      {
         this._inGame = param1;
         this.dispatchEvent(new Event(GameConstants.IN_GAME_STATE_CHANGED,true));
      }
      
      public function get shareLink() : String
      {
         return this._shareLink;
      }
      
      public function set shareLink(param1:String) : void
      {
         this._shareLink = param1;
         this.dispatchEvent(new Event(GameConstants.SHARE_LINK_SET,true));
      }
      
      public function get slotArray() : Array
      {
         return this._slotArray;
      }
      
      public function set slotArray(param1:Array) : void
      {
         this._slotArray = param1;
         this.dispatchEvent(new Event(GameConstants.SLOTS_UPDATED,true));
      }
      
      public function get numChallenges() : Number
      {
         return this._numChallenges;
      }
      
      public function set numChallenges(param1:Number) : void
      {
         this._numChallenges = param1;
         this.dispatchEvent(new Event(GameConstants.NUM_CHALLENGES_CHANGED,true));
      }
      
      public function newChallenge(param1:ChallengedVo) : *
      {
         if(this.onMyList(param1) == false)
         {
            this.challenges.push(param1);
            this.dispatchEvent(new Event(GameConstants.NEW_CHALLENGE,true));
         }
      }
      
      public function refuseChallenge(param1:Number) : *
      {
         this.challenges.splice(param1,1);
         this.dispatchEvent(new Event(GameConstants.NEW_CHALLENGE,true));
      }
      
      public function regSentChallenge(param1:ChallengedVo) : void
      {
         this.sentArray.push(param1);
      }
      
      public function clearChallenges() : void
      {
         this.challenges = new Array();
         this.sentArray = new Array();
      }
      
      public function acceptChallenge(param1:ChallengedVo) : void
      {
         this.otherPlayer = param1.challenger;
         this.dispatchEvent(new ChallengeEvent(ChallengeEvent.ACCEPTED,param1,true));
      }
      
      public function onMyList(param1:ChallengedVo) : Boolean
      {
         var _loc4_:ChallengedVo = null;
         var _loc2_:Number = this.challenges.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = this.challenges[_loc3_];
            if(_loc4_.challenger.gaia_id == param1.challenger.gaia_id)
            {
               return true;
            }
            _loc3_++;
         }
         return false;
      }
      
      public function onSentList(param1:ChallengedVo) : Boolean
      {
         var _loc4_:ChallengedVo = null;
         var _loc2_:Number = this.sentArray.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = this.sentArray[_loc3_];
            if(_loc4_.game == param1.game && _loc4_.challenged.gaia_id == param1.challenged.gaia_id)
            {
               if(_loc4_.challenger.gaia_id == param1.challenger.gaia_id)
               {
                  if(_loc4_.cid == param1.cid)
                  {
                     return true;
                  }
               }
            }
            _loc3_++;
         }
         return false;
      }
      
      public function hasChallengedAlready(param1:Number, param2:Number) : *
      {
         var _loc5_:ChallengedVo = null;
         var _loc3_:Number = this.sentArray.length;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = this.sentArray[_loc4_];
            if(_loc5_.challenger.gaia_id == param1 && _loc5_.challenged.gaia_id == param2)
            {
               return true;
            }
            _loc4_++;
         }
         return false;
      }
      
      public function showBlockedScreen() : *
      {
         this.dispatchEvent(new Event(GameConstants.SHOW_BLOCK_SCREEN,true));
      }
      
      public function hideBlockScreen() : void
      {
         this.dispatchEvent(new Event(GameConstants.HIDE_BLOCK_SCREEN,true));
      }
      
      public function toggleMusic() : void
      {
         this.canPlayMusic = !this.canPlayMusic;
         this.dispatchEvent(new Event(GameConstants.TOGGLE_MUSIC,true));
      }
      
      public function toggleSound() : *
      {
         this.canPlaySounds = !this.canPlaySounds;
      }
      
      public function dispatchChallenge(param1:Number) : void
      {
         this.challengeDispatchNum = param1;
         this.dispatchEvent(new Event(GameConstants.UPDATE_CHALLENGE,true));
      }
      
      public function hideChallengeGlow() : void
      {
         this.dispatchEvent(new Event(GameConstants.HIDE_CHALLENGE_GLOW,true));
      }
   }
}

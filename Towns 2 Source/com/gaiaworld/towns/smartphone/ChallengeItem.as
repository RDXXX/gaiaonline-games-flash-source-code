package com.gaiaworld.towns.smartphone
{
   import com.gaiaworld.avatar.model.OthersModel;
   import com.gaiaworld.game.controller.GameController;
   import com.gaiaworld.game.model.GameModel;
   import com.gaiaworld.game.vo.ChallengedVo;
   import com.gaiaworld.towns.constants.PhoneConstants;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class ChallengeItem extends Sprite
   {
       
      
      public var btnAccept:MovieClip;
      
      public var btnDecline:MovieClip;
      
      public var cText:TextField;
      
      private var _dataProvider:ChallengedVo;
      
      private var gameModel:GameModel;
      
      private var othersModel:OthersModel;
      
      private var gameController:GameController;
      
      private var bitmap:Bitmap;
      
      public var index:Number = 0;
      
      public function ChallengeItem()
      {
         this.gameModel = GameModel.getInstance();
         this.othersModel = OthersModel.getInstance();
         this.gameController = new GameController();
         super();
         this.btnDecline.addEventListener(MouseEvent.MOUSE_DOWN,this.refuse);
         this.btnAccept.addEventListener(MouseEvent.MOUSE_DOWN,this.accept);
      }
      
      private function refuse(param1:MouseEvent) : void
      {
         this.gameController.refuseChallenge(this.index);
      }
      
      private function accept(param1:MouseEvent) : *
      {
         this.gameController.acceptChallenge(this._dataProvider);
         this.dispatchEvent(new Event(PhoneConstants.SHOW_START_SCREEN,true));
      }
      
      public function get dataProvider() : ChallengedVo
      {
         return this._dataProvider;
      }
      
      public function set dataProvider(param1:ChallengedVo) : void
      {
         this._dataProvider = param1;
         this.cText.text = this._dataProvider.challenger.userName + " has challenged you to " + this.gameModel.gameArray[this._dataProvider.game];
      }
   }
}

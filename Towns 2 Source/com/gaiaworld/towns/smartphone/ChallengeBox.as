package com.gaiaworld.towns.smartphone
{
   import com.gaiaworld.game.constants.GameConstants;
   import com.gaiaworld.game.model.GameModel;
   import com.gaiaworld.global.view.MaskClass;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class ChallengeBox extends Sprite
   {
       
      
      public var btnScrollDown:SimpleButton;
      
      public var btnScrollUp:SimpleButton;
      
      public var noText:TextField;
      
      private var gameModel:GameModel;
      
      private var content:Sprite;
      
      private var contentMask:MaskClass;
      
      private var speed:Number = 10;
      
      public function ChallengeBox()
      {
         this.gameModel = GameModel.getInstance();
         this.content = new Sprite();
         this.contentMask = new MaskClass(197,284);
         super();
         this.addChild(this.content);
         this.contentMask.x = 0;
         this.contentMask.y = 0;
         this.content.mask = this.contentMask;
         this.addChild(this.contentMask);
         this.gameModel.addEventListener(GameConstants.NEW_CHALLENGE,this.listChallenges);
         this.btnScrollUp.addEventListener(MouseEvent.MOUSE_DOWN,this.scrollUp);
         this.btnScrollDown.addEventListener(MouseEvent.MOUSE_DOWN,this.scrollDown);
         this.btnScrollUp.visible = false;
         this.btnScrollDown.visible = false;
      }
      
      private function listChallenges(param1:Event) : void
      {
         var _loc4_:ChallengeItem = null;
         while(this.content.numChildren > 0)
         {
            this.content.removeChildAt(0);
         }
         var _loc2_:Number = this.gameModel.challenges.length;
         if(_loc2_ > 0)
         {
            this.noText.visible = false;
         }
         else
         {
            this.noText.visible = true;
         }
         if(_loc2_ < 5)
         {
            this.btnScrollDown.visible = false;
         }
         else
         {
            this.btnScrollDown.visible = true;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = new ChallengeItem();
            _loc4_.index = _loc3_;
            _loc4_.x = 4;
            _loc4_.y = 30 + _loc3_ * _loc4_.height;
            _loc4_.dataProvider = this.gameModel.challenges[_loc3_];
            this.content.addChild(_loc4_);
            _loc3_++;
         }
      }
      
      private function scrollUp(param1:Event) : *
      {
         this.content.y = this.content.y - this.speed;
         this.btnScrollDown.visible = false;
      }
      
      private function scrollDown(param1:Event) : *
      {
         this.content.y = this.content.y + this.speed;
         this.btnScrollUp.visible = false;
      }
   }
}

package com.gaiaworld.towns.smartphone
{
   import com.gaiaworld.game.model.GameModel;
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class ChallengeFlag extends Sprite
   {
       
      
      public var countText:TextField;
      
      private var gameModel:GameModel;
      
      public function ChallengeFlag()
      {
         this.gameModel = GameModel.getInstance();
         super();
      }
      
      public function init() : *
      {
         var _loc1_:Number = this.gameModel.challenges.length;
         if(_loc1_ > 9)
         {
            _loc1_ = 9;
         }
         TextField(this.countText).text = String(_loc1_);
         if(_loc1_ == 0)
         {
            this.visible = false;
         }
         else
         {
            this.visible = true;
         }
      }
   }
}

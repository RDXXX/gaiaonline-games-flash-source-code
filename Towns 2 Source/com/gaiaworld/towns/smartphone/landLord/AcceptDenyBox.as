package com.gaiaworld.towns.smartphone.landLord
{
   import com.gaiaworld.user.events.PalEvent;
   import com.gaiaworld.user.vo.PalVo;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class AcceptDenyBox extends Sprite
   {
       
      
      public var back:MovieClip;
      
      public var btnNo:SimpleButton;
      
      public var btnYes:SimpleButton;
      
      public var userText:TextField;
      
      private var _dataProvider:PalVo;
      
      public function AcceptDenyBox()
      {
         super();
         this.btnNo.addEventListener(MouseEvent.MOUSE_DOWN,this.denyPressed);
         this.btnYes.addEventListener(MouseEvent.MOUSE_DOWN,this.acceptPressed);
      }
      
      private function denyPressed(param1:MouseEvent) : *
      {
         this.dispatchEvent(new PalEvent(PalEvent.DENY_INVITE,this._dataProvider,true));
      }
      
      private function acceptPressed(param1:MouseEvent) : *
      {
         this.dispatchEvent(new PalEvent(PalEvent.ACCEPT_INVITE,this._dataProvider,true));
      }
      
      private function over(param1:MouseEvent) : *
      {
         MovieClip(this.back).gotoAndStop(2);
      }
      
      private function out(param1:MouseEvent) : *
      {
         MovieClip(this.back).gotoAndStop(1);
      }
      
      public function get dataProvider() : PalVo
      {
         return this._dataProvider;
      }
      
      public function set dataProvider(param1:PalVo) : void
      {
         this._dataProvider = param1;
         this.userText.text = this._dataProvider.userName;
      }
   }
}

package com.gaiaworld.towns.smartphone.landLord
{
   import com.gaiaworld.user.events.PalEvent;
   import com.gaiaworld.user.vo.PalVo;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class PalInviteField extends Sprite
   {
       
      
      public var back:MovieClip;
      
      public var btnInvite:SimpleButton;
      
      public var fIcon:MovieClip;
      
      public var fText:TextField;
      
      public var hitButtonArea:MovieClip;
      
      private var _dataProvider:PalVo;
      
      public function PalInviteField()
      {
         super();
         this.hitButtonArea.alpha = 0.1;
         this.hitButtonArea.addEventListener(MouseEvent.MOUSE_OVER,this.over);
         this.hitButtonArea.addEventListener(MouseEvent.MOUSE_OUT,this.out);
         this.btnInvite.addEventListener(MouseEvent.MOUSE_DOWN,this.pressed);
      }
      
      private function pressed(param1:MouseEvent) : *
      {
         this.dispatchEvent(new PalEvent(PalEvent.INVITE_TO_HOOD,this._dataProvider,true));
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
         this.fText.text = this._dataProvider.userName;
         if(this._dataProvider.isOnline == false)
         {
            MovieClip(this.fIcon).gotoAndStop(2);
         }
      }
   }
}

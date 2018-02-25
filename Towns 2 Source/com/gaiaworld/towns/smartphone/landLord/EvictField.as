package com.gaiaworld.towns.smartphone.landLord
{
   import com.gaiaworld.user.events.PalEvent;
   import com.gaiaworld.user.model.UserModel;
   import com.gaiaworld.user.vo.PalVo;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class EvictField extends Sprite
   {
       
      
      public var back:MovieClip;
      
      public var btnEvict:SimpleButton;
      
      public var fText:TextField;
      
      public var hitButtonArea:MovieClip;
      
      private var _dataProvider:PalVo;
      
      private var userModel:UserModel;
      
      public function EvictField()
      {
         this.userModel = UserModel.getInstance();
         super();
         this.hitButtonArea.alpha = 0.1;
         this.hitButtonArea.addEventListener(MouseEvent.MOUSE_OVER,this.over);
         this.hitButtonArea.addEventListener(MouseEvent.MOUSE_OUT,this.out);
         this.btnEvict.addEventListener(MouseEvent.MOUSE_DOWN,this.pressed);
      }
      
      private function pressed(param1:MouseEvent) : *
      {
         this.dispatchEvent(new PalEvent(PalEvent.EVICT,this._dataProvider,true));
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
         if(this._dataProvider.id == this.userModel.userID)
         {
            this.btnEvict.visible = false;
         }
         this.fText.text = this._dataProvider.userName;
      }
   }
}

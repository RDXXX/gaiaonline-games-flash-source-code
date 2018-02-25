package com.gaiaworld.towns.smartphone
{
   import com.gaiaworld.user.events.PalEvent;
   import com.gaiaworld.user.vo.PalVo;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class PalField extends Sprite
   {
       
      
      public var back:MovieClip;
      
      public var fIcon:MovieClip;
      
      public var fText:TextField;
      
      private var _dataProvider:PalVo;
      
      public function PalField()
      {
         super();
         this.addEventListener(MouseEvent.MOUSE_OVER,this.over);
         this.addEventListener(MouseEvent.MOUSE_OUT,this.out);
         this.addEventListener(MouseEvent.MOUSE_DOWN,this.pressed);
      }
      
      private function pressed(param1:MouseEvent) : *
      {
         this.dispatchEvent(new PalEvent(PalEvent.GET_PAL_INFO,this._dataProvider,true));
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

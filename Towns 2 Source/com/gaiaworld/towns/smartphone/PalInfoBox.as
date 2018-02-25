package com.gaiaworld.towns.smartphone
{
   import com.gaiaworld.avatar.view.AvatarFaceLoader;
   import com.gaiaworld.user.events.PalEvent;
   import com.gaiaworld.user.vo.PalVo;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class PalInfoBox extends Sprite
   {
       
      
      public var btnFollow:PhoneItemButton;
      
      public var btnInvite:PhoneItemButton;
      
      public var btnTransport:PhoneItemButton;
      
      public var pIcon:MovieClip;
      
      public var uText:TextField;
      
      private var _palVo:PalVo;
      
      private var avatarFace:AvatarFaceLoader;
      
      public function PalInfoBox()
      {
         this.avatarFace = new AvatarFaceLoader();
         super();
         this.avatarFace.x = -24;
         this.avatarFace.y = -30;
         PhoneItemButton(this.btnFollow).addEventListener(MouseEvent.MOUSE_DOWN,this.follow);
         PhoneItemButton(this.btnInvite).visible = false;
         PhoneItemButton(this.btnTransport).addEventListener(MouseEvent.MOUSE_DOWN,this.transport);
      }
      
      public function get palVo() : PalVo
      {
         return this._palVo;
      }
      
      public function set palVo(param1:PalVo) : void
      {
         this._palVo = param1;
         this.avatarFace.setFace(this._palVo.avatarPath);
         TextField(this.uText).text = this._palVo.userName;
         if(this._palVo.isOnline == true)
         {
            MovieClip(this.pIcon).gotoAndStop(1);
         }
         else
         {
            MovieClip(this.pIcon).gotoAndStop(2);
         }
         this.addChild(this.avatarFace);
         PhoneItemButton(this.btnFollow).text = "Follow ";
         PhoneItemButton(this.btnInvite).text = "Challege ";
         PhoneItemButton(this.btnTransport).text = "Transport";
      }
      
      private function follow(param1:MouseEvent) : *
      {
         this.dispatchEvent(new PalEvent(PalEvent.FOLLOW_PAL,this._palVo,true));
      }
      
      private function transport(param1:MouseEvent) : *
      {
         this.dispatchEvent(new PalEvent(PalEvent.TRANSPORT,this._palVo,true));
      }
   }
}

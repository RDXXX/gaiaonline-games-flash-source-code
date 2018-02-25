package com.gaiaworld.global.view.debug
{
   import com.gaiaworld.avatar.controller.AvatarController;
   import com.gaiaworld.avatar.model.AvatarModel;
   import com.gaiaworld.global.constants.GlobalConstants;
   import com.gaiaworld.global.model.GlobalModel;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.FocusEvent;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class AnimatedItemBox extends Sprite
   {
       
      
      public var btnDown:MovieClip;
      
      public var btnLeft:MovieClip;
      
      public var btnRight:MovieClip;
      
      public var btnUp:MovieClip;
      
      public var xText:TextField;
      
      public var yText:TextField;
      
      private var avatarController:AvatarController;
      
      private var globalModel:GlobalModel;
      
      private var avatarModel:AvatarModel;
      
      public function AnimatedItemBox()
      {
         this.avatarController = new AvatarController();
         this.globalModel = GlobalModel.getInstance();
         this.avatarModel = AvatarModel.getInstance();
         super();
         this.visible = false;
         TextField(this.xText).addEventListener(FocusEvent.FOCUS_OUT,this.xChanged);
         TextField(this.yText).addEventListener(FocusEvent.FOCUS_OUT,this.yChanged);
         this.globalModel.addEventListener(GlobalConstants.SHOW_ANIM_DEBUG,this.showMe);
         this.btnDown.addEventListener(MouseEvent.CLICK,this.moveDown);
         this.btnUp.addEventListener(MouseEvent.CLICK,this.moveUp);
         this.btnLeft.addEventListener(MouseEvent.CLICK,this.moveLeft);
         this.btnRight.addEventListener(MouseEvent.CLICK,this.moveRight);
         this.updateText();
      }
      
      private function updateText() : *
      {
         TextField(this.xText).text = String(this.avatarModel.animatedItemX);
         TextField(this.yText).text = String(this.avatarModel.animatedItemY);
      }
      
      private function moveRight(param1:MouseEvent) : void
      {
         this.avatarController.changeAnimatedItemX(this.avatarModel.animatedItemX - 1);
         this.updateText();
      }
      
      private function moveLeft(param1:MouseEvent) : void
      {
         this.avatarController.changeAnimatedItemX(this.avatarModel.animatedItemX + 1);
         this.updateText();
      }
      
      private function moveUp(param1:MouseEvent) : void
      {
         this.avatarController.changeAnimatedItemY(this.avatarModel.animatedItemY - 1);
         this.updateText();
      }
      
      private function moveDown(param1:MouseEvent) : void
      {
         this.avatarController.changeAnimatedItemY(this.avatarModel.animatedItemY + 1);
         this.updateText();
      }
      
      private function showMe(param1:Event) : void
      {
         this.visible = !this.visible;
      }
      
      private function xChanged(param1:FocusEvent) : void
      {
         this.avatarController.changeAnimatedItemX(Number(this.xText.text));
      }
      
      private function yChanged(param1:FocusEvent) : *
      {
         this.avatarController.changeAnimatedItemY(Number(this.yText.text));
      }
   }
}

package com.gaiaworld.towns.smartphone.landLord
{
   import fl.transitions.Tween;
   import fl.transitions.TweenEvent;
   import fl.transitions.easing.None;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class InviteConfirm extends Sprite
   {
      
      public static const BOX_CLOSED:String = "boxClosed";
       
      
      public var btnClose:SimpleButton;
      
      private var myTween:Tween;
      
      public function InviteConfirm()
      {
         super();
         this.myTween = new Tween(this,"alpha",None.easeNone,0,1,1,true);
         this.btnClose.addEventListener(MouseEvent.MOUSE_DOWN,this.hideMe);
      }
      
      private function hideMe(param1:Event) : *
      {
         this.myTween = new Tween(this,"alpha",None.easeNone,1,0,1,true);
         this.myTween.addEventListener(TweenEvent.MOTION_FINISH,this.closed);
      }
      
      private function closed(param1:TweenEvent) : void
      {
         this.dispatchEvent(new Event(BOX_CLOSED,true));
      }
   }
}

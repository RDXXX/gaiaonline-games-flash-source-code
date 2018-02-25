package com.gaiaonline.battle.ui.dialogBox
{
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.MouseEvent;
   
   public class UiDialogOption extends MovieClip
   {
       
      
      private var _id:String;
      
      public var option:MovieClip;
      
      public var btn:SimpleButton;
      
      public function UiDialogOption()
      {
         super();
         this.gotoAndStop(1);
         this.btn.addEventListener(MouseEvent.ROLL_OVER,_onRollOver);
         this.btn.addEventListener(MouseEvent.ROLL_OUT,_onRollOut);
      }
      
      private function _onRollOut(evt:MouseEvent) : void
      {
         this.gotoAndStop(1);
      }
      
      public function set id(theId:String) : void
      {
         this._id = theId;
      }
      
      public function get id() : String
      {
         return this._id;
      }
      
      private function _onRollOver(evt:MouseEvent) : void
      {
         this.gotoAndStop(2);
      }
   }
}

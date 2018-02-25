package com.gaiaonline.battle.ui
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class SvrHelpFooter extends MovieClip
   {
       
      
      public var checkBox:MovieClip;
      
      private var _checkVisible:Boolean = false;
      
      public function SvrHelpFooter()
      {
         super();
         checkBox.buttonMode = true;
         checkBox.addEventListener(MouseEvent.CLICK,onCheckBoxClick,false,0,true);
      }
      
      private function onCheckBoxClick(e:MouseEvent) : void
      {
         _checkVisible = !_checkVisible;
         if(_checkVisible)
         {
            checkBox.gotoAndStop("checked");
         }
         else
         {
            checkBox.gotoAndStop("unchecked");
         }
      }
      
      public function get checked() : Boolean
      {
         return _checkVisible;
      }
   }
}

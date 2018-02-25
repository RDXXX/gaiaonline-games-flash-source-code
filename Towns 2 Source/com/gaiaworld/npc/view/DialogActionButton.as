package com.gaiaworld.npc.view
{
   import com.gaiaworld.hangouts.constants.QuestConstants;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class DialogActionButton extends MovieClip
   {
       
      
      public var btnNext:SimpleButton;
      
      public var btnNo:SimpleButton;
      
      public var btnYes:SimpleButton;
      
      private var actionArray:Array;
      
      private var buttonIndex:Number;
      
      public function DialogActionButton()
      {
         this.actionArray = ["",QuestConstants.ACTION_NEXT,QuestConstants.ACTION_CLOSE,QuestConstants.ACTION_SAVE,"",QuestConstants.ACTION_BEGIN];
         super();
         addFrameScript(0,this.frame1,1,this.frame2,2,this.frame3,3,this.frame4,4,this.frame5);
      }
      
      public function setButtons(param1:Number) : *
      {
         this.buttonIndex = param1;
         this.gotoAndStop(param1);
         switch(param1)
         {
            case QuestConstants.BUTTON_NEXT:
            case QuestConstants.BUTTON_CLOSE:
            case QuestConstants.BUTTON_SAVE:
            case QuestConstants.BUTTON_BEGIN:
               this.btnNext.addEventListener(MouseEvent.MOUSE_DOWN,this.doAction);
               break;
            case QuestConstants.BUTTON_YES_NO:
               this.btnYes.addEventListener(MouseEvent.MOUSE_DOWN,this.sayYes);
               this.btnNo.addEventListener(MouseEvent.MOUSE_DOWN,this.sayNo);
         }
      }
      
      private function doAction(param1:MouseEvent) : void
      {
         param1.stopPropagation();
         this.dispatchEvent(new Event(this.actionArray[this.buttonIndex],true));
      }
      
      private function sayYes(param1:MouseEvent) : *
      {
         param1.stopPropagation();
         this.dispatchEvent(new Event(QuestConstants.ACTION_SAY_YES,true));
      }
      
      private function sayNo(param1:MouseEvent) : *
      {
         param1.stopPropagation();
         this.dispatchEvent(new Event(QuestConstants.ACTION_SAY_NO,true));
      }
      
      function frame1() : *
      {
         stop();
      }
      
      function frame2() : *
      {
         stop();
      }
      
      function frame3() : *
      {
         stop();
      }
      
      function frame4() : *
      {
         stop();
      }
      
      function frame5() : *
      {
         stop();
      }
   }
}

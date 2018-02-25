package com.gaiaonline.battle.ui
{
   import com.gaiaonline.battle.GlobalTexts;
   import flash.display.MovieClip;
   
   public class UiQuestLog extends MovieClip
   {
       
      
      private var _activeList:Array;
      
      private var _completedQuest:Object;
      
      private var _height:Number = 0;
      
      private var _width:Number = 0;
      
      private var _completedList:Array;
      
      public var tabCompleted:UiQuestItemDisplay;
      
      public var tabActive:UiQuestItemDisplay;
      
      private var _activeQuest:Object;
      
      public function UiQuestLog()
      {
         _activeQuest = new Object();
         _completedQuest = new Object();
         _activeList = new Array();
         _completedList = new Array();
         super();
         this.tabChildren = false;
         this.tabCompleted.setNoTasksString(GlobalTexts.getNoCompletedQuestItemsText());
         this.tabActive.setNoTasksString(GlobalTexts.getNoActiveQuestItemsText());
         this.mouseEnabled = false;
      }
      
      override public function set height(v:Number) : void
      {
         this._height = v;
         this.tabActive.height = this._height;
         this.tabCompleted.height = this._height;
      }
      
      public function updateInfo(list:Array = null, active:Boolean = true, completed:Boolean = true) : void
      {
         this._activeList.length = 0;
         this._completedList.length = 0;
         for(var i:int = 0; i < list.length; i++)
         {
            if(list[i].completed)
            {
               _completedList.push(list[i]);
            }
            else
            {
               _activeList.push(list[i]);
            }
         }
         if(active || completed)
         {
            this.tabActive.updateInfo(_activeList);
         }
         if(completed)
         {
            this.tabCompleted.updateInfo(_completedList);
         }
      }
      
      override public function set width(v:Number) : void
      {
         this._width = v;
         this.tabActive.width = this._width;
         this.tabCompleted.width = this._width;
      }
   }
}

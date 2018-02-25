package com.gaiaonline.assets
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   
   public class UiTabButton extends MovieClip
   {
       
      
      private var isSortable:Boolean;
      
      public var backgroundTab:MovieClip;
      
      public var typ:String;
      
      private var isActiveOn:Boolean;
      
      public var tabId:Number;
      
      private var sortDir:String;
      
      public var caption:TextField;
      
      public var sortButton:MovieClip;
      
      private var isButton:Boolean;
      
      public function UiTabButton(caption:String = "", isSortable:Boolean = false, isActive:Boolean = false, isButton:Boolean = true, wdth:Number = -1, flipVertical:Boolean = false)
      {
         super();
         this.tabId = 0;
         this.isActiveOn = isActive;
         this.isSortable = isSortable;
         this.isButton = isButton;
         this.caption.autoSize = TextFieldAutoSize.LEFT;
         this.caption.wordWrap = false;
         this.caption.multiline = false;
         this.caption.text = caption.toUpperCase();
         this.setSortBtnVisible(this.isSortable);
         if(this.isActiveOn)
         {
            this.backgroundTab.gotoAndStop("onState");
            this.changeColor();
         }
         if(wdth != -1)
         {
            this.backgroundTab.width = wdth;
         }
         else
         {
            this.backgroundTab.width = this.caption.width + 10;
         }
         if(this.isSortable)
         {
            this.sortDir = "ASC";
            this.backgroundTab.width = this.backgroundTab.width + 20;
            this.sortButton.x = this.backgroundTab.width - 12;
         }
         if(this.isButton)
         {
            this.buttonMode = true;
            this.mouseChildren = false;
            this.addEventListener(MouseEvent.MOUSE_OVER,mouseOverSet,false,0,true);
            this.addEventListener(MouseEvent.MOUSE_OUT,mouseOutSet,false,0,true);
         }
         if(flipVertical)
         {
            this.backgroundTab.scaleY = -1;
            this.backgroundTab.y = 20;
         }
      }
      
      public function changeState(labelState:String, isActiveOn:Boolean = false) : void
      {
         if(labelState != null)
         {
            this.backgroundTab.gotoAndStop(labelState);
         }
         this.isActiveOn = isActiveOn;
         this.changeColor();
      }
      
      private function mouseOverSet(evt:Event) : void
      {
         if(!this.isActiveOn)
         {
            this.backgroundTab.gotoAndStop("onState");
         }
      }
      
      private function changeColor() : void
      {
         var cFrm:TextFormat = new TextFormat();
         if(this.isActiveOn)
         {
            cFrm.color = 16769679;
         }
         else
         {
            cFrm.color = 12632256;
         }
         TextField(this.caption).setTextFormat(cFrm);
      }
      
      public function getActiveStatus() : Boolean
      {
         return this.isActiveOn;
      }
      
      public function getSortDir() : String
      {
         return this.sortDir;
      }
      
      private function setSortBtnVisible(visible:Boolean) : void
      {
         if(visible && !this.contains(this.sortButton))
         {
            this.addChild(this.sortButton);
         }
         else if(!visible && this.contains(this.sortButton))
         {
            this.removeChild(this.sortButton);
         }
         this.sortButton.visible = visible;
      }
      
      public function getSize() : Object
      {
         var sizeObj:Object = new Object();
         sizeObj.w = this.width;
         sizeObj.h = this.height;
         return sizeObj;
      }
      
      private function mouseOutSet(evt:Event) : void
      {
         if(!this.isActiveOn)
         {
            this.backgroundTab.gotoAndStop("offState");
         }
      }
      
      public function changeSortDir(dir:String = "DESC") : void
      {
         if(this.isSortable)
         {
            this.sortDir = dir;
            if(this.sortDir == "DESC")
            {
               this.sortButton.orderArrow.rotation = 180;
            }
            else
            {
               this.sortButton.orderArrow.rotation = 0;
            }
         }
         this.setSortBtnVisible(this.isSortable);
      }
   }
}

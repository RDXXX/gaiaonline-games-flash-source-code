package com.gaiaonline.battle.ui.components
{
   import com.gaiaonline.battle.ui.events.UiEvents;
   import com.gaiaonline.utils.DisplayObjectUtils;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class TabButton extends MovieClip
   {
       
      
      private var _enabled:Boolean = true;
      
      public var mcSort:MovieClip;
      
      private var _sortAscending:Boolean = true;
      
      private var _mouseOver:Boolean = false;
      
      public var txtLabel:TextField;
      
      public var back:MovieClip;
      
      private var _isActive:Boolean = false;
      
      public function TabButton()
      {
         super();
         this.buttonMode = true;
         this.mouseChildren = false;
         DisplayObjectUtils.addWeakListener(this,MouseEvent.MOUSE_OVER,onMouseOver);
         DisplayObjectUtils.addWeakListener(this,MouseEvent.MOUSE_OUT,onMouseOut);
         DisplayObjectUtils.addWeakListener(this,MouseEvent.CLICK,onMouseClick);
      }
      
      public function set isDisabled(v:Boolean) : void
      {
         if(v)
         {
            this.buttonMode = false;
            this._isActive = true;
            this.txtLabel.alpha = 0.5;
         }
         else
         {
            this.buttonMode = true;
            this.txtLabel.alpha = 1;
         }
         this.setState();
      }
      
      private function setState() : void
      {
         var s:String = "unselected_";
         if(this.isActive)
         {
            s = "selected_";
            if(this.totalFrames == 2)
            {
               this.gotoAndStop(2);
            }
         }
         else if(this.totalFrames == 2)
         {
            this.gotoAndStop(1);
         }
         var m:String = "MouseOff";
         if(this._mouseOver)
         {
            m = "MouseOn";
         }
         this.back.gotoAndStop(s + m);
      }
      
      public function get isActive() : Boolean
      {
         return this._isActive;
      }
      
      public function get sortAscending() : Boolean
      {
         return this._sortAscending;
      }
      
      public function set isActive(v:Boolean) : void
      {
         this._isActive = v;
         this.setState();
      }
      
      private function onMouseClick(evt:MouseEvent) : void
      {
         if(!this._enabled)
         {
            evt.preventDefault();
            evt.stopPropagation();
            return;
         }
         if(this._isActive)
         {
            this.setSort(!this._sortAscending);
         }
         else
         {
            this.isActive = true;
            this.dispatchEvent(new UiEvents(UiEvents.TAB_IS_ACTIVE,""));
         }
         this.dispatchEvent(new UiEvents(UiEvents.TAB_CLICK,""));
      }
      
      private function onMouseOut(evt:MouseEvent) : void
      {
         this._mouseOver = false;
         this.setState();
      }
      
      public function set isEnabled(enabled:Boolean) : void
      {
         this._enabled = enabled;
      }
      
      public function get isEnabled() : Boolean
      {
         return this._enabled;
      }
      
      private function setSort(ascending:Boolean) : void
      {
         this._sortAscending = ascending;
         if(this.mcSort != null)
         {
            if(ascending)
            {
               this.mcSort.gotoAndStop("Ascending");
            }
            else
            {
               this.mcSort.gotoAndStop("Descending");
            }
         }
      }
      
      private function onMouseOver(evt:MouseEvent) : void
      {
         this._mouseOver = true;
         this.setState();
      }
      
      public function set sortAscending(v:Boolean) : void
      {
         this.setSort(v);
      }
   }
}

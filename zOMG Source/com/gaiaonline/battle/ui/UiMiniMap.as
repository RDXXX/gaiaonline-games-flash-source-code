package com.gaiaonline.battle.ui
{
   import com.gaiaonline.battle.ApplicationInterfaces.IUIFramework;
   import com.gaiaonline.utils.DisplayObjectUtils;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class UiMiniMap extends MovieClip
   {
       
      
      private var _showQuestFlags:Boolean = true;
      
      public var mcHeader:MovieClip;
      
      private var _width:Number = 190;
      
      public var mcGlobalMap:UiGlobalMap;
      
      private var _autoCenter:Boolean = true;
      
      public var globalYScale:Number = 2.5;
      
      public var tabLocal:UiMapDisplay;
      
      public var tabGlobal:UiMapDisplay;
      
      private var _showFriends:Boolean = true;
      
      private var _showGroup:Boolean = true;
      
      private var _height:Number = 190;
      
      public var globalXScale:Number = 1.25;
      
      private var _roomScale:Number = 1;
      
      public function UiMiniMap()
      {
         super();
      }
      
      public function init(uiFramework:IUIFramework) : void
      {
         this.mouseEnabled = false;
         this.mcGlobalMap.init(uiFramework);
         this.tabLocal.init(uiFramework.tooltipManager);
         this.tabGlobal.init(uiFramework.tooltipManager);
         this.mcHeader.btnFriend.addEventListener(MouseEvent.CLICK,onBtnFriendClick,false,0,true);
         this.mcHeader.btnGroup.addEventListener(MouseEvent.CLICK,onBtnGroupClick,false,0,true);
         this.mcHeader.btnQuest.addEventListener(MouseEvent.CLICK,onBtnQuestClick,false,0,true);
         this.mcHeader.btnAutoCenter.addEventListener(MouseEvent.CLICK,onBtnAutoCenterClick,false,0,true);
         uiFramework.tooltipManager.addToolTip(this.mcHeader.btnAutoCenter,"Auto Center");
         this.tabGlobal.setMapImg(this.mcGlobalMap);
         this.resize();
         this.tabChildren = false;
         DisplayObjectUtils.addWeakListener(this.tabGlobal,UiMapDisplay.DRAG_START,onStartDrag);
         DisplayObjectUtils.addWeakListener(this.tabLocal,UiMapDisplay.DRAG_START,onStartDrag);
      }
      
      private function onStartDrag(e:Event) : void
      {
         setAutoCenter(false);
      }
      
      private function onBtnFriendClick(evt:MouseEvent) : void
      {
         this._showFriends = !this._showFriends;
         if(this._showFriends)
         {
            this.mcHeader.btnFriend.gotoAndStop(1);
         }
         else
         {
            this.mcHeader.btnFriend.gotoAndStop(2);
         }
         this.tabLocal.showFriend = this.tabGlobal.showFriend = this._showFriends;
      }
      
      private function onBtnAutoCenterClick(evt:MouseEvent) : void
      {
         setAutoCenter(!this._autoCenter);
      }
      
      private function onBtnQuestClick(evt:MouseEvent) : void
      {
         this._showQuestFlags = !this._showQuestFlags;
         if(this._showQuestFlags)
         {
            this.mcHeader.btnQuest.gotoAndStop(1);
         }
         else
         {
            this.mcHeader.btnQuest.gotoAndStop(2);
         }
         this.tabLocal.showQuestFlags = this.tabGlobal.showQuestFlags = this._showQuestFlags;
      }
      
      public function setSize(width:Number, height:Number) : void
      {
         var dirty:Boolean = width != this._width || height != this._height;
         if(dirty)
         {
            this._width = width;
            this._height = height;
            this.resize();
         }
      }
      
      private function onBtnGroupClick(evt:MouseEvent) : void
      {
         this._showGroup = !this._showGroup;
         if(this._showGroup)
         {
            this.mcHeader.btnGroup.gotoAndStop(1);
         }
         else
         {
            this.mcHeader.btnGroup.gotoAndStop(2);
         }
         this.tabLocal.showGroup = this.tabGlobal.showGroup = this._showGroup;
      }
      
      private function setAutoCenter(enabled:Boolean) : void
      {
         this._autoCenter = enabled;
         if(this._autoCenter)
         {
            this.mcHeader.btnAutoCenter.gotoAndStop(1);
         }
         else
         {
            this.mcHeader.btnAutoCenter.gotoAndStop(2);
         }
         this.tabLocal.autoCenter = this._autoCenter;
         this.tabGlobal.autoCenter = this._autoCenter;
      }
      
      private function resize() : void
      {
         this.mcHeader.back.width = this._width;
         var tmpHeight:Number = this._height - this.mcHeader.height;
         this.tabGlobal.setSize(this._width,tmpHeight);
         this.tabLocal.setSize(this._width,tmpHeight);
      }
   }
}

package com.gaiaonline.battle.ui.components
{
   import flash.display.MovieClip;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   
   public class TabManager extends EventDispatcher
   {
      
      public static const SELECTED_TAB_CHANGE:String = "SelectedTabChange";
       
      
      public var activeTabIndex:int = -1;
      
      private var _unparentOnDeactivate:Boolean = false;
      
      private var tabs:Array;
      
      public function TabManager(unparentOnDeactivate:Boolean = true)
      {
         tabs = new Array();
         super();
         _unparentOnDeactivate = unparentOnDeactivate;
      }
      
      public function dispose() : void
      {
         this.tabs = null;
      }
      
      public function setActive(tabIndex:int) : void
      {
         if(tabIndex >= 0)
         {
            activateTabByButton(TabEntry(this.tabs[tabIndex]).btn);
         }
      }
      
      private function onBtnClick(evt:MouseEvent) : void
      {
         var lastIndex:int = 0;
         var btn:TabButton = evt.currentTarget as TabButton;
         if(btn.isEnabled)
         {
            lastIndex = this.activeTabIndex;
            activateTabByButton(TabButton(evt.currentTarget));
            this.dispatchEvent(new TabEvent(SELECTED_TAB_CHANGE,lastIndex,this.activeTabIndex));
         }
      }
      
      private function activateTabByButton(tabButton:TabButton) : void
      {
         var tab:TabEntry = null;
         var isActive:* = false;
         for(var i:int = 0; i < this.tabs.length; i++)
         {
            tab = TabEntry(this.tabs[i]);
            isActive = tab.btn == tabButton;
            tab.btn.isActive = isActive;
            if(tab.mcTab != null)
            {
               tab.mcTab.visible = isActive;
            }
            if(isActive)
            {
               this.activeTabIndex = i;
            }
            tab.activate(isActive);
         }
      }
      
      public function addTabs(btn:TabButton, mcTab:MovieClip, active:Boolean = false) : int
      {
         var index:int = this.tabs.push(new TabEntry(btn,mcTab,active,_unparentOnDeactivate)) - 1;
         btn.isActive = active;
         if(mcTab != null)
         {
            mcTab.visible = active;
         }
         btn.addEventListener(MouseEvent.CLICK,onBtnClick,false,0,true);
         if(active)
         {
            this.setActive(index);
         }
         return index;
      }
   }
}

import com.gaiaonline.battle.ui.components.TabButton;
import com.gaiaonline.battle.utils.DisplayObjectAttacher;
import flash.display.MovieClip;

class TabEntry
{
    
   
   private var _attacher:DisplayObjectAttacher = null;
   
   private var _childIndex:int = -1;
   
   public var btn:TabButton;
   
   public var mcTab:MovieClip;
   
   function TabEntry(_btn:TabButton, _mcTab:MovieClip, _active:Boolean, _unparentInactive:Boolean)
   {
      super();
      btn = _btn;
      mcTab = _mcTab;
      if(_unparentInactive && _mcTab != null)
      {
         _attacher = new DisplayObjectAttacher(_mcTab);
         activate(_active);
      }
   }
   
   public function activate(bActivate:Boolean) : void
   {
      if(_attacher != null)
      {
         _attacher.attached = bActivate;
      }
   }
}

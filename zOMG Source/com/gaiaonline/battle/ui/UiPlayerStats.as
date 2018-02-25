package com.gaiaonline.battle.ui
{
   import com.gaiaonline.battle.ApplicationInterfaces.ILinkManager;
   import com.gaiaonline.battle.ApplicationInterfaces.IUIFramework;
   import com.gaiaonline.battle.ui.components.TabButton;
   import com.gaiaonline.battle.ui.components.TabManager;
   import com.gaiaonline.utils.DisplayObjectUtils;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   
   public class UiPlayerStats extends MovieClip
   {
       
      
      public var mcPaperDoll:MovieClip;
      
      private var _uiFramework:IUIFramework = null;
      
      public var mcCollectiblesGroup:MovieClip;
      
      private var _linkManager:ILinkManager = null;
      
      private var _collectiblesHolder:UiCollectiblesHolder = null;
      
      public var mcGhiGroup:MovieClip;
      
      private var _actorId:String = null;
      
      public var mcTabs:MovieClip;
      
      private var _ghiHolder:UiGhiHolder = null;
      
      private var _tabManager:TabManager;
      
      private var _paperDoll:UiPaperDoll = null;
      
      private var _noGhiText:TextField = null;
      
      private var _ghiInfo:UiGhiInfo = null;
      
      public function UiPlayerStats(uiFramework:IUIFramework, linkManager:ILinkManager, showAllTabs:Boolean)
      {
         super();
         this._uiFramework = uiFramework;
         this._linkManager = linkManager;
         this.addEventListener(Event.ADDED_TO_STAGE,onAddedToStage,false,0,true);
         this.mcTabs.tabChildren = false;
         this._tabManager = new TabManager(false);
         this._tabManager.addTabs(this.mcTabs.tabCharacter,mcPaperDoll,true);
         this._tabManager.addTabs(this.mcTabs.tabGhi,mcGhiGroup,false);
         this._tabManager.addTabs(this.mcTabs.tabCollectible,mcCollectiblesGroup,false);
         if(!showAllTabs)
         {
            TabButton(this.mcTabs.tabCharacter).useHandCursor = false;
            this.mcTabs.tabGhi.visible = false;
            this.mcTabs.tabCollectible.visible = false;
         }
         this._uiFramework.tooltipManager.addToolTip(this.mcGhiGroup.ghiProgressBar,"Time Elapsed Until Next Ghi Ability");
      }
      
      public function get collectiblesHolder() : UiCollectiblesHolder
      {
         if(!_collectiblesHolder)
         {
            _collectiblesHolder = new UiCollectiblesHolder(this._uiFramework,mcCollectiblesGroup.mcCollectiblesHolder);
         }
         return _collectiblesHolder;
      }
      
      public function get paperDoll() : UiPaperDoll
      {
         if(!_paperDoll)
         {
            _paperDoll = new UiPaperDoll(this._uiFramework,this._linkManager,mcPaperDoll);
         }
         return _paperDoll;
      }
      
      public function get actorId() : String
      {
         return _actorId;
      }
      
      public function get noGhiText() : TextField
      {
         if(!_noGhiText)
         {
            _noGhiText = mcGhiGroup.mcGhiInfo.noGhiTxt;
         }
         return _noGhiText;
      }
      
      public function set ghiProgess(v:Number) : void
      {
         MovieClip(this.mcGhiGroup.ghiProgressBar).scaleX = v / 100;
      }
      
      public function dispose() : void
      {
         _paperDoll.dispose();
         _paperDoll = null;
         if(_collectiblesHolder)
         {
            _collectiblesHolder.dispose();
            _collectiblesHolder = null;
         }
         if(_ghiHolder)
         {
            _ghiHolder.dispose();
            _ghiHolder = null;
         }
         _ghiInfo = null;
         _noGhiText = null;
         mcTabs = null;
         mcPaperDoll = null;
         mcCollectiblesGroup = null;
         mcGhiGroup = null;
         _tabManager.dispose();
         _tabManager = null;
         _actorId = null;
         DisplayObjectUtils.ClearAllChildrens(this,4);
      }
      
      public function get ghiInfo() : UiGhiInfo
      {
         if(!_ghiInfo)
         {
            _ghiInfo = new UiGhiInfo(this._uiFramework,mcGhiGroup.mcGhiInfo.mcGhiInfoHolder);
         }
         return _ghiInfo;
      }
      
      private function onAddedToStage(evt:Event) : void
      {
         if(this.parent != null)
         {
            this.parent.addChildAt(this.mcTabs,this.parent.numChildren);
         }
      }
      
      public function get ghiHolder() : UiGhiHolder
      {
         if(!_ghiHolder)
         {
            _ghiHolder = new UiGhiHolder(this._uiFramework,mcGhiGroup.mcGhiHolder);
         }
         return _ghiHolder;
      }
      
      public function setInfo(obj:Object) : void
      {
         if(obj.actorId != null)
         {
            _actorId = obj.actorId;
         }
         paperDoll.setInfo(obj);
      }
   }
}

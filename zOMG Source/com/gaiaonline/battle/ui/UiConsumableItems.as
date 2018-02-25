package com.gaiaonline.battle.ui
{
   import com.gaiaonline.battle.ApplicationInterfaces.IUIFramework;
   import com.gaiaonline.battle.GlobalTexts;
   import com.gaiaonline.battle.ui.uiitemdisplay.ItemDisplay;
   import com.gaiaonline.flexModulesAPIs.globalevent.GlobalEvent;
   import com.gaiaonline.utils.DisplayObjectUtils;
   import com.gaiaonline.utils.VisManagerSingleParent;
   import flash.display.MovieClip;
   import flash.events.TextEvent;
   import flash.text.TextField;
   
   public class UiConsumableItems extends MovieClip
   {
       
      
      public var noConsumablesTxt:TextField;
      
      private var _uiFramework:IUIFramework = null;
      
      private var visManager:VisManagerSingleParent = null;
      
      public var itemDisplay:ItemDisplay;
      
      public var consumableInfoHolder:MovieClip;
      
      public function UiConsumableItems()
      {
         super();
      }
      
      public function get iconContainer() : MovieClip
      {
         return this.consumableInfoHolder.iconContainer;
      }
      
      public function init(uiFramework:IUIFramework) : void
      {
         this._uiFramework = uiFramework;
         this.visManager = new VisManagerSingleParent(this);
         this.itemDisplay.numColumn = 9;
         this.itemDisplay.extraRows = 1;
         this.itemDisplay.minimumRows = 7;
         this.itemDisplay.startIndex = 8;
         noConsumablesTxt.selectable = true;
         noConsumablesTxt.addEventListener(TextEvent.LINK,onNoPowerUpsLink,false,0,true);
         noConsumablesTxt.htmlText = GlobalTexts.getNoPowerUpsHtmlText();
         setInfoAreaVisible(false);
         this.itemDisplay.init(this._uiFramework.assetFactory);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.CONSUMABLE_SELECTION_CHANGE,onConsumableSelectionChange);
      }
      
      private function onConsumableSelectionChange(e:GlobalEvent) : void
      {
         this.setInfo(e.data);
      }
      
      private function onNoPowerUpsLink(e:TextEvent) : void
      {
         if(e.text == GlobalTexts.BACKALLEYBARGAINS_LINK)
         {
            GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.SET_BACK_ALLEY_BARGAINS_SHOW_STATE,{"show":true}));
         }
      }
      
      private function setInfoAreaVisible(visible:Boolean) : void
      {
         this.visManager.setVisible(this.consumableInfoHolder,visible);
         this.visManager.setVisible(this.noConsumablesTxt,!visible);
      }
      
      public function setInfo(obj:Object) : void
      {
         while(MovieClip(this.iconContainer.container).numChildren > 0)
         {
            MovieClip(this.iconContainer.container).removeChildAt(0);
         }
         if(obj != null)
         {
            if(obj.ico != null)
            {
               MovieClip(this.iconContainer.container).addChild(obj.ico);
            }
            this.iconContainer.gotoAndPlay(1);
            this.txtName.text = obj.name || "";
            this.txtDesc.text = obj.desc || "";
         }
         setInfoAreaVisible(obj != null);
      }
      
      public function get txtDesc() : TextField
      {
         return this.consumableInfoHolder.txtDesc;
      }
      
      public function get txtName() : TextField
      {
         return this.consumableInfoHolder.txtName;
      }
   }
}

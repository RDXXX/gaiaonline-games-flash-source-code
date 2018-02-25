package com.gaiaonline.battle.ui.uiactionbar
{
   import com.gaiaonline.battle.ApplicationInterfaces.IUIFramework;
   import com.gaiaonline.battle.GlobalTexts;
   import com.gaiaonline.battle.ui.ToolTipOld;
   import com.gaiaonline.battle.ui.events.ActionBarEvent;
   import com.gaiaonline.utils.MovieClipProxy;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class UiItemBarRotator extends MovieClipProxy
   {
      
      public static const RING_BAR:String = "RingBar";
      
      public static const CONSUMABLE_BAR:String = "ConsumableBar";
       
      
      public var ringBar:UiItemBar;
      
      private var _uiFramework:IUIFramework = null;
      
      public var bg1:MovieClip;
      
      public var btnDownRed:SimpleButton;
      
      public var btnRotate:SimpleButton;
      
      public var btnUpGray:SimpleButton;
      
      private var _bars:Array;
      
      public var btnDownGray:SimpleButton;
      
      private var _mcItemBarRotator:UiItemBarRotatorFl = null;
      
      public var consumableBar:UiItemBar;
      
      public var btnUpRed:SimpleButton;
      
      public function UiItemBarRotator(uiFramework:IUIFramework, mcItemBarRotator:UiItemBarRotatorFl)
      {
         super(mcItemBarRotator);
         this._uiFramework = uiFramework;
         this._mcItemBarRotator = mcItemBarRotator;
         this.btnRotate = this._mcItemBarRotator.btnRotate;
         this.bg1 = this._mcItemBarRotator.bg1;
         this.btnUpRed = this._mcItemBarRotator.btnUpRed;
         this.btnDownRed = this._mcItemBarRotator.btnDownRed;
         this.btnUpGray = this._mcItemBarRotator.btnUpGray;
         this.btnDownGray = this._mcItemBarRotator.btnDownGray;
         this.ringBar = new UiItemBar(this._mcItemBarRotator.ringBar);
         this.consumableBar = new UiItemBar(this._mcItemBarRotator.consumableBar);
         this.ringBar.init(this._uiFramework.assetFactory);
         this.consumableBar.init(this._uiFramework.assetFactory);
         this._bars = new Array();
         this._bars.push(this.ringBar,this.consumableBar);
         this.expand(false);
         this.btnUpRed.addEventListener(MouseEvent.CLICK,onexpand,false,0,true);
         this.btnDownRed.addEventListener(MouseEvent.CLICK,onCollapse,false,0,true);
         this.btnRotate.addEventListener(MouseEvent.CLICK,onRotate,false,0,true);
         setArrowBtnTooltips();
         this.ringBar.btnPopup.addEventListener(MouseEvent.CLICK,onBtnRingInvClick,false,0,true);
         this.consumableBar.btnPopup.addEventListener(MouseEvent.CLICK,onBtnConsumableClick,false,0,true);
         var tooltipManager:ToolTipOld = this._uiFramework.tooltipManager;
         tooltipManager.addToolTip(this.btnRotate,"Swap Ring/PowerUps Trays");
         tooltipManager.addToolTip(this.ringBar.btnPopup,"Inventory");
      }
      
      private function isRingBar(bar:UiItemBar) : Boolean
      {
         return bar == this.ringBar;
      }
      
      private function setArrowBtnTooltips() : void
      {
         var bar:UiItemBar = this._bars[1];
         var btnToSet:SimpleButton = !!btnUpRed.visible?btnUpRed:btnDownRed;
         this._uiFramework.tooltipManager.addToolTip(btnToSet,GlobalTexts.getShowBarTooltip(getBarName(bar),!this.contains(bar.mc)));
      }
      
      public function hideBarControls() : void
      {
         this.btnUpGray.visible = false;
         this.btnUpRed.visible = false;
         this.btnDownGray.visible = false;
         this.btnDownRed.visible = false;
         this.btnRotate.visible = false;
      }
      
      private function getBarName(bar:UiItemBar) : String
      {
         return !!isRingBar(bar)?RING_BAR:CONSUMABLE_BAR;
      }
      
      private function isConsumablesBar(bar:UiItemBar) : Boolean
      {
         return bar == this.consumableBar;
      }
      
      public function isBarOpen(barName:String) : Boolean
      {
         var open:Boolean = false;
         var bar:UiItemBar = getBarByName(barName);
         if(bar != null)
         {
            return this.contains(bar.mc);
         }
         return open;
      }
      
      private function rotate() : void
      {
         var bar:UiItemBar = null;
         var a:UiItemBar = this._bars.shift();
         this._bars.push(a);
         var y:Number = 2.5;
         for(var i:int = 0; i < this._bars.length; i++)
         {
            bar = this._bars[i];
            bar.mc.y = y - i * 32;
         }
         this.addChild(this._bars[0].mc);
         if(this.contains(this.bg1))
         {
            this.addChild(this._bars[1].mc);
         }
         else if(this.contains(this._bars[1].mc))
         {
            this.removeChild(this._bars[1].mc);
         }
         setArrowBtnTooltips();
      }
      
      private function onBtnRingInvClick(evt:MouseEvent) : void
      {
         this.dispatchEvent(new Event(ActionBarEvent.BTN_INVENTORY_CLICK));
      }
      
      public function showBar(barName:String, forceSingleBar:Boolean = false) : void
      {
         var bar:UiItemBar = getBarByName(barName);
         if(bar == null)
         {
            return;
         }
         this.visible = true;
         if(this._bars[0] != bar)
         {
            if(forceSingleBar)
            {
               this.rotate();
            }
            else
            {
               this.expand(true);
            }
         }
      }
      
      public function get mc() : MovieClip
      {
         return this._mcItemBarRotator;
      }
      
      private function onBtnConsumableClick(evt:MouseEvent) : void
      {
         this.dispatchEvent(new Event(ActionBarEvent.BTN_CONSUMABLE_CLICK));
      }
      
      public function expand(v:Boolean) : void
      {
         var bar:UiItemBar = this._bars[1];
         if(v)
         {
            if(!this.contains(bar.mc))
            {
               this.addChild(bg1);
               this.addChild(bar.mc);
            }
         }
         else
         {
            if(this.contains(bg1))
            {
               this.removeChild(bg1);
            }
            if(this.contains(bar.mc))
            {
               this.removeChild(bar.mc);
            }
         }
         this.btnUpGray.visible = v;
         this.btnUpRed.visible = !v;
         this.btnDownGray.visible = !v;
         this.btnDownRed.visible = v;
         this.btnRotate.visible = true;
         setArrowBtnTooltips();
      }
      
      private function onCollapse(evt:MouseEvent) : void
      {
         this.expand(false);
      }
      
      public function hideBar(barName:String) : void
      {
         var bar:UiItemBar = getBarByName(barName);
         if(bar == null)
         {
            return;
         }
         this.expand(false);
         if(this._bars[0] == bar)
         {
            this.rotate();
         }
         this.expand(false);
      }
      
      private function onRotate(evt:MouseEvent) : void
      {
         this.rotate();
      }
      
      private function onexpand(evt:MouseEvent) : void
      {
         this.expand(true);
      }
      
      private function getBarByName(barName:String) : UiItemBar
      {
         var bar:UiItemBar = null;
         if(barName == RING_BAR)
         {
            bar = this.ringBar;
         }
         if(barName == CONSUMABLE_BAR)
         {
            bar = this.consumableBar;
         }
         return bar;
      }
   }
}

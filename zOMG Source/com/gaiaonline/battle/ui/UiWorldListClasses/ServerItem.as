package com.gaiaonline.battle.ui.UiWorldListClasses
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class ServerItem extends Sprite
   {
      
      private static const COLOR_DISABLED:int = 10066329;
      
      private static const COLOR_ENABLED:int = 16777215;
       
      
      public var port:int = 0;
      
      public var bg:MovieClip;
      
      private var _serverName:String;
      
      private var isMouseOn:Boolean = false;
      
      public var id:String;
      
      private var isSelected:Boolean = false;
      
      public var ip:String;
      
      private var _maxPop:Number = 0;
      
      public var mcPopMeter:MovieClip;
      
      private var _population:Number = 0;
      
      public var txtServerName:TextField;
      
      public function ServerItem()
      {
         super();
         this.addEventListener(MouseEvent.MOUSE_OVER,onMouseOver,false,0,true);
         this.addEventListener(MouseEvent.MOUSE_OUT,onMouseOut,false,0,true);
         this.addEventListener(MouseEvent.CLICK,onMouseClick,false,0,true);
         this.setState();
      }
      
      private function setState() : void
      {
         if(this.isSelected)
         {
            this.bg.gotoAndStop("Selected");
         }
         else if(this.isMouseOn)
         {
            this.bg.gotoAndStop("On");
         }
         else
         {
            this.bg.gotoAndStop("Off");
         }
      }
      
      public function get population() : Number
      {
         return this._population;
      }
      
      public function set selected(v:Boolean) : void
      {
         this.isSelected = v;
         this.setState();
      }
      
      private function onMouseClick(evt:MouseEvent) : void
      {
         if(!this.isSelected)
         {
            this.isSelected = true;
            this.setState();
            this.dispatchEvent(new Event("Selected"));
         }
      }
      
      public function set serverName(v:String) : void
      {
         if(!v)
         {
            v = "---";
         }
         this._serverName = v;
         this.txtServerName.text = this.serverName;
      }
      
      private function onMouseOut(evt:MouseEvent) : void
      {
         this.isMouseOn = false;
         this.setState();
      }
      
      public function set population(v:Number) : void
      {
         this._population = v;
         this.onPopulationUpdate();
      }
      
      public function get selected() : Boolean
      {
         return this.isSelected;
      }
      
      public function get maxPop() : Number
      {
         return this._maxPop;
      }
      
      public function get pct() : Number
      {
         var p:Number = NaN;
         if(this._maxPop > 0)
         {
            p = this.population / this._maxPop * 100;
         }
         return p;
      }
      
      public function set maxPop(v:Number) : void
      {
         this._maxPop = v;
         this.onPopulationUpdate();
      }
      
      private function onPopulationUpdate() : void
      {
         var p:Number = this.pct;
         var tooltip:String = null;
         if(p >= 0 && p < 75)
         {
            this.mcPopMeter.gotoAndPlay("Low");
            tooltip = "Light population";
         }
         else if(p >= 75 && p < 85)
         {
            this.mcPopMeter.gotoAndPlay("Med");
            tooltip = "Moderate population";
         }
         else if(p >= 85 && p < 95)
         {
            this.mcPopMeter.gotoAndPlay("High");
            tooltip = "Heavy population";
         }
         else
         {
            this.mcPopMeter.gotoAndPlay("Lock");
         }
         if(tooltip)
         {
            this.txtServerName.textColor = COLOR_ENABLED;
         }
         else
         {
            this.txtServerName.textColor = COLOR_DISABLED;
         }
      }
      
      private function onMouseOver(evt:MouseEvent) : void
      {
         this.isMouseOn = true;
         this.setState();
      }
      
      public function get serverName() : String
      {
         return this._serverName;
      }
   }
}

package com.gaiaonline.battle.ui
{
   import com.gaiaonline.utils.VisManagerSingleParent;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class ToolTipOld
   {
       
      
      private var defaultDelay:int;
      
      private var timer:Timer;
      
      private var txtField:TextField;
      
      private var mcToolTip:Sprite;
      
      private var toolTipLayer:Sprite;
      
      private var visManager:VisManagerSingleParent = null;
      
      private var _objects:Object;
      
      private var _lastMousedOverItem:DisplayObject;
      
      private var mcBack:Sprite;
      
      public function ToolTipOld(toolTipLayer:Sprite, delay:int = 500)
      {
         _objects = new Dictionary(true);
         super();
         this.toolTipLayer = toolTipLayer;
         this.defaultDelay = delay;
         this.timer = new Timer(this.defaultDelay,1);
         this.timer.addEventListener(TimerEvent.TIMER_COMPLETE,onTimer,false,0,true);
         this.mcToolTip = new Sprite();
         this.mcBack = new Sprite();
         this.mcBack.graphics.lineStyle(0,13421772);
         this.mcBack.graphics.beginFill(16777164);
         this.mcBack.graphics.drawRect(0,0,100,20);
         this.mcBack.graphics.endFill();
         this.txtField = new TextField();
         var format:TextFormat = this.txtField.defaultTextFormat;
         format.font = "Arial";
         this.txtField.defaultTextFormat = format;
         this.mcToolTip.addChild(this.mcBack);
         this.mcToolTip.addChild(this.txtField);
         this.mcToolTip.mouseEnabled = false;
         this.mcToolTip.mouseChildren = false;
         this.toolTipLayer.addChild(this.mcToolTip);
         this.visManager = new VisManagerSingleParent(this.toolTipLayer);
         this.setTooltipVisible(false);
      }
      
      private function onTimer(evt:TimerEvent) : void
      {
         this.timer.stop();
         if(this._lastMousedOverItem == null)
         {
            return;
         }
         var entry:TooltipEntry = this._objects[this._lastMousedOverItem];
         if(entry && entry.text != null)
         {
            this.txtField.autoSize = TextFieldAutoSize.LEFT;
            this.txtField.text = entry.text;
            this.mcBack.width = this.txtField.width + 1;
            this.mcBack.height = this.txtField.height + 1;
            this.setTooltipVisible(true);
            this.mcToolTip.x = this.toolTipLayer.mouseX + 2;
            this.mcToolTip.y = this.toolTipLayer.mouseY - this.mcBack.height - 4;
            if(this.mcToolTip.x + this.mcToolTip.width > this.toolTipLayer.stage.stageWidth)
            {
               this.mcToolTip.x = Math.round(this.toolTipLayer.stage.stageWidth - this.mcToolTip.width);
            }
            else if(this.mcToolTip.x < 0)
            {
               this.mcToolTip.x = 0;
            }
            if(this.mcToolTip.y + this.mcToolTip.height > this.toolTipLayer.stage.stageHeight)
            {
               this.mcToolTip.y = Math.round(this.toolTipLayer.stage.stageHeight - this.mcToolTip.height);
            }
            else if(this.mcToolTip.y < 0)
            {
               this.mcToolTip.y = 0;
            }
         }
      }
      
      public function addToolTip(mc:DisplayObject, text:String, delay:int = 0) : void
      {
         if(!delay)
         {
            delay = this.defaultDelay;
         }
         if(mc != null)
         {
            this._objects[mc] = new TooltipEntry(text,delay);
            mc.addEventListener(MouseEvent.MOUSE_OVER,onMouseOver,false,0,true);
            mc.addEventListener(MouseEvent.MOUSE_OUT,onMouseOut,false,0,true);
            if(this._lastMousedOverItem == mc)
            {
               this.txtField.text = text;
            }
         }
      }
      
      private function onMouseOver(me:MouseEvent) : void
      {
         var entry:TooltipEntry = this._objects[me.currentTarget];
         if(entry)
         {
            this._lastMousedOverItem = DisplayObject(me.currentTarget);
            this.timer.stop();
            this.timer.delay = entry.delay;
            this.timer.start();
         }
      }
      
      private function onMouseOut(evt:MouseEvent) : void
      {
         this.timer.stop();
         this.setTooltipVisible(false);
      }
      
      private function setTooltipVisible(visible:Boolean) : void
      {
         this.visManager.setVisible(this.mcToolTip,visible);
      }
      
      public function removeToolTip(mc:DisplayObject) : void
      {
         if(this._objects[mc])
         {
            mc.removeEventListener(MouseEvent.MOUSE_OVER,onMouseOver);
            mc.removeEventListener(MouseEvent.MOUSE_OUT,onMouseOut);
            delete this._objects[mc];
         }
      }
   }
}

class TooltipEntry
{
    
   
   private var _delay:int;
   
   private var _text:String;
   
   function TooltipEntry(text:String, delay:int)
   {
      super();
      _text = text;
      _delay = delay;
   }
   
   public function get delay() : int
   {
      return _delay;
   }
   
   public function get text() : String
   {
      return _text;
   }
}

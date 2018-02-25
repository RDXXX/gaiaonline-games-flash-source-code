package com.gaiaonline.battle.ui.components
{
   import com.gaiaonline.battle.ui.events.ScrollBarEvent;
   import com.gaiaonline.utils.DisplayObjectUtils;
   import flash.display.DisplayObject;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class ScrollBarVer extends Sprite
   {
       
      
      private var scrollRec:Rectangle;
      
      public var btnUp:SimpleButton;
      
      public var btnDown:SimpleButton;
      
      private var btnUpBounds:Rectangle = null;
      
      private var btnDownBoundsRelToSelf:Rectangle = null;
      
      private var scrollObjHeight:Number = 10;
      
      private var _isDragging:Boolean = false;
      
      public var bg:Sprite;
      
      private var _height:Number = 100;
      
      private var _width:Number = 20;
      
      private var viewArea:Rectangle;
      
      public var slider:Sprite;
      
      private var scrollObj:DisplayObject;
      
      public var bigStep:Number = 100;
      
      private var autohide:Boolean = false;
      
      public var smallStep:Number = 20;
      
      private var btnDownBoundsRelToThis:Rectangle = null;
      
      public function ScrollBarVer()
      {
         super();
         this.addEventListener(Event.ADDED_TO_STAGE,onAddedToStage);
         this._height = super.height;
         this._width = super.width;
      }
      
      private function onBgMouseClick(evt:MouseEvent) : void
      {
         if(this.bg.mouseY * this.bg.scaleY < this.slider.y)
         {
            this.scroll(-this.bigStep);
         }
         else
         {
            this.scroll(this.bigStep);
         }
      }
      
      private function onBtnDownClick(evt:MouseEvent) : void
      {
         this.scroll(this.smallStep);
      }
      
      public function scrollToTop() : void
      {
         setSliderToTop();
         this.updateObjPos();
      }
      
      public function init(scrollObj:DisplayObject, viewArea:Rectangle, autohide:Boolean = false, scrollTop:Boolean = true) : void
      {
         this.autohide = autohide;
         this.scrollObj = scrollObj;
         this.scrollObjHeight = this.scrollObj.height;
         this.viewArea = viewArea;
         this.resize(scrollTop);
      }
      
      private function updateObjPos(forceBottom:Boolean = false) : void
      {
         var y:Number = NaN;
         var p:Number = NaN;
         if(this.slider == null || this.scrollRec == null || this.viewArea == null)
         {
            return;
         }
         var oldScrollPos:Number = this.scrollObj.y;
         if(this.scrollObjHeight > this.viewArea.height)
         {
            y = this.slider.y - this.scrollRec.top;
            p = !!forceBottom?Number(1):Number(y / (this.scrollRec.height - this.slider.height));
            this.scrollObj.y = this.viewArea.y - p * (this.scrollObjHeight - this.viewArea.height);
         }
         else
         {
            this.scrollObj.y = this.viewArea.y;
         }
         if(oldScrollPos != this.scrollObj.y)
         {
            dispatchEvent(new ScrollBarEvent(ScrollBarEvent.SCROLL));
         }
      }
      
      private function setSliderToBottom() : void
      {
         this.slider.y = this.maxThumbPos;
      }
      
      public function get isDragging() : Boolean
      {
         return this._isDragging;
      }
      
      public function get minThumbPos() : Number
      {
         return this.scrollRec.top;
      }
      
      private function onAddedToStage(evt:Event) : void
      {
         this.slider.addEventListener(MouseEvent.MOUSE_DOWN,onSliderMouseDown,false,0,true);
         this.btnUp.addEventListener(MouseEvent.CLICK,onBtnUpClick,false,0,true);
         this.btnDown.addEventListener(MouseEvent.CLICK,onBtnDownClick,false,0,true);
         this.bg.addEventListener(MouseEvent.CLICK,onBgMouseClick,false,0,true);
      }
      
      public function get thumbPos() : Number
      {
         return this.slider.y;
      }
      
      private function onSliderMouseDown(evt:MouseEvent) : void
      {
         if(this.slider.height < this.scrollRec.height)
         {
            this.slider.startDrag(false,new Rectangle(this.slider.x,this.scrollRec.top,0,this.scrollRec.height - this.slider.height));
            this._isDragging = true;
            DisplayObjectUtils.addWeakListener(this.stage,MouseEvent.MOUSE_UP,onStageMouseUp);
            DisplayObjectUtils.addWeakListener(this.stage,MouseEvent.MOUSE_MOVE,onStageMouseMove);
         }
      }
      
      public function get maxThumbPos() : Number
      {
         return Math.floor(this.scrollRec.bottom - this.slider.height);
      }
      
      private function resize(scrollTop:Boolean = true) : void
      {
         var objH:Number = NaN;
         var sH:Number = NaN;
         var s:Number = NaN;
         this.bg.height = this._height;
         this.scaleY = 1;
         initButtonsBounds();
         this.btnDown.y = this._height - this.btnDownBoundsRelToThis.height - this.btnDownBoundsRelToSelf.y;
         var rDown:Rectangle = this.btnDownBoundsRelToThis;
         var rUp:Rectangle = this.btnUpBounds;
         this.scrollRec = new Rectangle(0,this.btnUp.height,this.width,this._height - rUp.height - rDown.height);
         this.resizeSlider();
         if(scrollTop)
         {
            this.slider.y = this.scrollRec.top;
         }
         else
         {
            objH = this.scrollObjHeight - this.viewArea.height;
            sH = this.maxThumbPos - this.minThumbPos;
            s = sH * -(this.scrollObj.y / objH) + this.minThumbPos;
            if(s > this.maxThumbPos)
            {
               s = this.maxThumbPos;
            }
            if(s < this.minThumbPos)
            {
               s = this.minThumbPos;
            }
            this.slider.y = s;
         }
      }
      
      private function resizeSlider() : void
      {
         this.slider.height = this.viewArea.height / this.scrollObjHeight * this.scrollRec.height;
         if(this.slider.height < 10)
         {
            this.slider.height = 10;
            this.visible = true;
         }
         else if(this.slider.height > this.scrollRec.height)
         {
            this.slider.height = this.scrollRec.height;
            this.slider.y = this.minThumbPos;
            this.visible = !this.autohide;
         }
         else
         {
            this.visible = true;
         }
      }
      
      override public function get height() : Number
      {
         return this._height;
      }
      
      private function setSliderToTop() : void
      {
         this.slider.y = this.minThumbPos;
      }
      
      private function onStageMouseUp(evt:MouseEvent) : void
      {
         this.slider.stopDrag();
         if(this.stage != null)
         {
            this.stage.removeEventListener(MouseEvent.MOUSE_UP,onStageMouseUp);
            this.stage.removeEventListener(MouseEvent.MOUSE_MOVE,onStageMouseMove);
         }
         this._isDragging = false;
      }
      
      public function update() : void
      {
         this.scrollObjHeight = this.scrollObj.height;
         this.resizeSlider();
         this.updateObjPos();
      }
      
      public function scroll(y:Number) : void
      {
         var s:Number = calculateStep(y);
         this.slider.y = this.slider.y + s;
         if(this.slider.y < this.minThumbPos)
         {
            setSliderToTop();
         }
         else if(this.slider.y > this.maxThumbPos)
         {
            setSliderToBottom();
         }
         this.updateObjPos();
      }
      
      override public function set height(v:Number) : void
      {
         this._height = v;
         if(this.scrollObj != null && this.viewArea != null)
         {
            this.resize();
         }
      }
      
      public function calculateStep(step:Number) : Number
      {
         return (this.scrollRec.height - this.slider.height) / ((this.scrollObjHeight - this.viewArea.height) / step);
      }
      
      private function initButtonsBounds() : void
      {
         if(this.btnDownBoundsRelToThis == null)
         {
            this.btnDownBoundsRelToThis = this.btnDown.getBounds(this);
         }
         if(this.btnDownBoundsRelToSelf == null)
         {
            this.btnDownBoundsRelToSelf = this.btnDown.getBounds(this.btnDown);
         }
         if(this.btnUpBounds == null)
         {
            this.btnUpBounds = this.btnUp.getBounds(this);
         }
      }
      
      private function onBtnUpClick(evt:MouseEvent) : void
      {
         this.scroll(-this.smallStep);
      }
      
      public function scrollToBottom() : void
      {
         setSliderToBottom();
         this.updateObjPos(true);
      }
      
      private function onStageMouseMove(evt:MouseEvent) : void
      {
         if(this._isDragging)
         {
            if(this.slider.y > this.maxThumbPos - 1)
            {
               this.slider.y = this.maxThumbPos;
            }
            else if(this.slider.y < this.minThumbPos + 1)
            {
               this.slider.y = this.minThumbPos;
            }
            this.updateObjPos();
         }
      }
   }
}

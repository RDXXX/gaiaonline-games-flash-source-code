package com.gaiaworld.towns.smartphone
{
   import com.gaiaworld.global.view.MaskClass;
   import fl.transitions.Tween;
   import fl.transitions.easing.Strong;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class BasePhoneList extends Sprite
   {
       
      
      protected var scrollClip:Sprite;
      
      protected var scrollMask:MaskClass;
      
      private var myTween:Tween;
      
      protected var vh:Number = 232;
      
      protected var _dataProvider:Array;
      
      protected var top:Number = 0;
      
      protected var btnNext:SimpleButton;
      
      protected var btnPrev:SimpleButton;
      
      public function BasePhoneList()
      {
         this.scrollClip = new Sprite();
         super();
         this.setMaskSize();
      }
      
      public function setMaskSize(param1:Number = 200, param2:Number = 240) : *
      {
         this.scrollMask = new MaskClass(param1,param2);
      }
      
      public function setUp() : *
      {
         this.addChild(this.scrollClip);
         this.addChild(this.scrollMask);
         this.scrollClip.mask = this.scrollMask;
         this.scrollMask.x = -100;
         this.scrollMask.y = -30;
         this.btnNext.visible = false;
         this.btnPrev.visible = false;
         this.btnNext.addEventListener(MouseEvent.MOUSE_DOWN,this.scrollNext);
         this.btnPrev.addEventListener(MouseEvent.MOUSE_DOWN,this.scrollPrev);
      }
      
      protected function scrollNext(param1:MouseEvent) : *
      {
         this.btnPrev.visible = true;
         if(this.scrollClip.y - this.vh > -this.scrollClip.height)
         {
            this.scroll(this.scrollClip.y - this.vh);
         }
         else
         {
            this.btnNext.visible = false;
         }
      }
      
      protected function scrollPrev(param1:MouseEvent) : *
      {
         this.btnNext.visible = true;
         if(this.scrollClip.y < this.top)
         {
            this.scroll(this.scrollClip.y + this.vh);
         }
         else
         {
            this.btnPrev.visible = false;
         }
      }
      
      protected function scroll(param1:Number) : *
      {
         if(param1 > this.top)
         {
            param1 = this.top;
            this.btnPrev.visible = false;
         }
         if(param1 < -this.scrollClip.height - 1)
         {
            param1 = -this.scrollClip.height + this.top;
            this.btnNext.visible = false;
         }
         param1 = param1 + this.top;
         this.myTween = new Tween(this.scrollClip,"y",Strong.easeOut,this.scrollClip.y,param1,1,true);
      }
      
      protected function removeAll() : *
      {
         while(this.scrollClip.numChildren > 0)
         {
            this.scrollClip.removeChildAt(0);
         }
      }
      
      public function get dataProvider() : Array
      {
         return this._dataProvider;
      }
      
      public function set dataProvider(param1:Array) : void
      {
      }
   }
}

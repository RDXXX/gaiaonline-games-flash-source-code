package com.gaiaworld.towns.smartphone
{
   import com.gaiaworld.global.view.MaskClass;
   import fl.transitions.Tween;
   import fl.transitions.easing.Strong;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class PhoneList extends Sprite
   {
      
      private static const SCROLL_VAL:Number = 200;
       
      
      public var btnNext:SimpleButton;
      
      public var btnPrev:SimpleButton;
      
      protected var _dataProvider:Array;
      
      protected var scrollClip:Sprite;
      
      protected var scrollMask:MaskClass;
      
      private var myTween:Tween;
      
      private var startX:Number = -96;
      
      private var startY:Number = 0;
      
      public function PhoneList()
      {
         this.scrollClip = new Sprite();
         this.scrollMask = new MaskClass(200,230);
         super();
         this.addChild(this.scrollClip);
         this.addChild(this.scrollMask);
         this.scrollClip.mask = this.scrollMask;
         this.scrollMask.x = this.startX;
         this.scrollMask.y = this.startY;
         this.scrollClip.y = this.startY;
         this.scrollClip.x = this.startX;
         this.btnNext.visible = false;
         this.btnPrev.visible = false;
         this.btnNext.addEventListener(MouseEvent.MOUSE_DOWN,this.scrollNext);
         this.btnPrev.addEventListener(MouseEvent.MOUSE_DOWN,this.scrollPrev);
         this.addEventListener(PhoneField.PHONE_FIELD_CLICKED,this.itemClicked);
      }
      
      public function get dataProvider() : Array
      {
         return this._dataProvider;
      }
      
      public function set dataProvider(param1:Array) : void
      {
         var _loc4_:PhoneField = null;
         this._dataProvider = param1;
         this.removeAll();
         var _loc2_:Number = this._dataProvider.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = new PhoneField();
            _loc4_.setText(this._dataProvider[_loc3_]);
            _loc4_.y = _loc3_ * _loc4_.height;
            _loc4_.setIndex(_loc3_);
            this.scrollClip.addChild(_loc4_);
            _loc3_++;
         }
         if(this._dataProvider.length < 10)
         {
            this.btnNext.visible = false;
         }
      }
      
      protected function removeAll() : *
      {
         while(this.scrollClip.numChildren > 0)
         {
            this.scrollClip.removeChildAt(0);
         }
      }
      
      private function scrollNext(param1:MouseEvent) : *
      {
         this.btnPrev.visible = true;
         this.scroll(this.scrollClip.y - SCROLL_VAL);
      }
      
      private function scrollPrev(param1:MouseEvent) : *
      {
         this.btnNext.visible = true;
         this.scroll(this.scrollClip.y + SCROLL_VAL);
      }
      
      private function scroll(param1:Number) : *
      {
         if(param1 >= 0)
         {
            this.btnPrev.visible = false;
         }
         if(param1 - SCROLL_VAL < -this.scrollClip.height - 1)
         {
            this.btnNext.visible = false;
         }
         this.myTween = new Tween(this.scrollClip,"y",Strong.easeOut,this.scrollClip.y,param1,1,true);
      }
      
      protected function itemClicked(param1:Event) : *
      {
         var _loc2_:PhoneField = param1.target as PhoneField;
      }
   }
}

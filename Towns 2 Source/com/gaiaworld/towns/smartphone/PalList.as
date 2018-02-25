package com.gaiaworld.towns.smartphone
{
   import com.gaiaworld.global.view.MaskClass;
   import com.gaiaworld.user.model.UserModel;
   import com.gaiaworld.user.vo.PalVo;
   import fl.transitions.Tween;
   import fl.transitions.easing.Strong;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.FocusEvent;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class PalList extends Sprite
   {
      
      private static const SCROLL_VAL:Number = 164;
       
      
      public var btnNext:SimpleButton;
      
      public var btnPrev:SimpleButton;
      
      public var searchText:TextField;
      
      private var _dataProvider:Array;
      
      private var scrollClip:Sprite;
      
      private var scrollMask:MaskClass;
      
      private var myTween:Tween;
      
      private var userModel:UserModel;
      
      public function PalList()
      {
         this.scrollClip = new Sprite();
         this.scrollMask = new MaskClass(200,160);
         this.userModel = UserModel.getInstance();
         super();
         this.addChild(this.scrollClip);
         this.addChild(this.scrollMask);
         this.scrollClip.mask = this.scrollMask;
         this.scrollMask.x = -100;
         this.scrollMask.y = 50;
         this.scrollMask.alpha = 0.5;
         this.scrollClip.y = 60;
         this.btnNext.visible = false;
         this.btnPrev.visible = false;
         this.btnNext.addEventListener(MouseEvent.MOUSE_DOWN,this.scrollNext);
         this.btnPrev.addEventListener(MouseEvent.MOUSE_DOWN,this.scrollPrev);
         TextField(this.searchText).addEventListener(Event.CHANGE,this.textChanged);
         TextField(this.searchText).addEventListener(FocusEvent.FOCUS_IN,this.focusIn);
      }
      
      private function textChanged(param1:Event) : void
      {
         this.search(this.searchText.text);
      }
      
      private function focusIn(param1:FocusEvent) : void
      {
         if(this.searchText.text == "Search")
         {
            this.searchText.text = "";
         }
      }
      
      private function handleKey(param1:KeyboardEvent) : void
      {
         if(param1.charCode == 13)
         {
            this.search(this.searchText.text);
         }
      }
      
      private function search(param1:String) : void
      {
         var _loc6_:PalVo = null;
         var _loc7_:Number = NaN;
         var _loc2_:Boolean = false;
         param1 = param1.toLowerCase();
         var _loc3_:Array = new Array();
         var _loc4_:Number = this.userModel.palArray.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            _loc6_ = this.userModel.palArray[_loc5_];
            _loc7_ = _loc6_.userName.toLowerCase().indexOf(param1);
            if(_loc6_.userName.substr(0,param1.length) == param1 || _loc7_ > -1)
            {
               _loc3_.push(_loc6_);
            }
            _loc5_++;
         }
         this.dataProvider = _loc3_;
      }
      
      private function scrollNext(param1:MouseEvent) : *
      {
         this.btnPrev.visible = true;
         if(this.scrollClip.y - SCROLL_VAL > -this.scrollClip.height)
         {
            this.scroll(this.scrollClip.y - SCROLL_VAL);
         }
         else
         {
            this.btnNext.visible = false;
         }
      }
      
      private function scrollPrev(param1:MouseEvent) : *
      {
         this.btnNext.visible = true;
         if(this.scrollClip.y < 0)
         {
            this.scroll(this.scrollClip.y + SCROLL_VAL);
         }
         else
         {
            this.btnPrev.visible = false;
         }
      }
      
      private function scroll(param1:Number) : *
      {
         if(param1 > 60)
         {
            param1 = 60;
            this.btnPrev.visible = false;
         }
         if(param1 < -this.scrollClip.height - 1)
         {
            param1 = -this.scrollClip.height;
            this.btnNext.visible = false;
         }
         this.myTween = new Tween(this.scrollClip,"y",Strong.easeOut,this.scrollClip.y,param1,1,true);
      }
      
      private function removeAll() : *
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
         var _loc4_:PalVo = null;
         var _loc5_:PalField = null;
         this._dataProvider = param1;
         this.clearList();
         if(this._dataProvider.length > 10)
         {
            this.btnNext.visible = true;
         }
         this.removeAll();
         this._dataProvider.sortOn("isOnline",Array.DESCENDING);
         var _loc2_:Number = this._dataProvider.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = this._dataProvider[_loc3_];
            _loc5_ = new PalField();
            _loc5_.dataProvider = _loc4_;
            _loc5_.y = _loc5_.height * _loc3_;
            this.scrollClip.addChild(_loc5_);
            _loc3_++;
         }
         this.scrollClip.y = 60;
      }
      
      private function clearList() : *
      {
         while(this.scrollClip.numChildren > 0)
         {
            this.scrollClip.removeChildAt(0);
         }
      }
   }
}

package com.gaiaworld.towns.view
{
   import com.gaiaworld.avatar.view.WorldItem;
   import com.gaiaworld.room.interfaces.ISurfaceObject;
   import com.gaiaworld.towns.collectables.bugs.model.CollectableModel;
   import com.gaiaworld.towns.collectables.constants.MarkerConstants;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class BackPackInventory extends WorldItem implements ISurfaceObject
   {
       
      
      public var bot:MovieClip;
      
      public var btnNext:SimpleButton;
      
      public var btnPrev:SimpleButton;
      
      public var inventoryMask:MovieClip;
      
      private var scrollClip:Sprite;
      
      private var colModel:CollectableModel;
      
      private var spacing:Number = 40;
      
      private var buffer:Number = 10;
      
      private var page:Number = 0;
      
      private var numPages:Number = 0;
      
      public function BackPackInventory()
      {
         this.scrollClip = new Sprite();
         this.colModel = CollectableModel.getInstance();
         super();
         this.addChild(this.scrollClip);
         this.colModel.addEventListener(MarkerConstants.COLLECTION_UPDATED,this.inventoryChanged);
         this.fillData();
         this.btnPrev.addEventListener(MouseEvent.MOUSE_DOWN,this.prevPage);
         this.btnNext.addEventListener(MouseEvent.MOUSE_DOWN,this.nextPage);
         this.scrollClip.mask = this.inventoryMask;
      }
      
      private function nextPage(param1:MouseEvent) : void
      {
         if(this.page < this.numPages + 1)
         {
            this.page++;
            this.scrollClip.x = this.scrollClip.x - this.spacing * 2;
            this.btnPrev.visible = true;
            if(this.page == this.numPages)
            {
               this.btnNext.visible = false;
            }
         }
      }
      
      private function prevPage(param1:MouseEvent) : void
      {
         if(this.page > 0)
         {
            this.page--;
            this.scrollClip.x = this.scrollClip.x + this.spacing * 2;
            if(this.page == 0)
            {
               this.btnPrev.visible = false;
            }
            this.btnNext.visible = true;
         }
      }
      
      override public function get depth2() : Number
      {
         return 100000;
      }
      
      private function inventoryChanged(param1:Event) : *
      {
         this.fillData();
      }
      
      private function fillData() : *
      {
         var _loc6_:BackPackItem = null;
         while(this.scrollClip.numChildren > 0)
         {
            this.scrollClip.removeChildAt(0);
         }
         var _loc1_:Number = -this.spacing;
         var _loc2_:Number = 20;
         var _loc3_:Number = 0;
         var _loc4_:Number = this.colModel.collected.length;
         if(_loc4_ < 12)
         {
            this.btnPrev.visible = false;
            this.btnNext.visible = false;
         }
         else
         {
            this.btnPrev.visible = true;
            this.btnNext.visible = true;
         }
         this.numPages = int(_loc4_ / 12);
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            _loc6_ = new BackPackItem();
            _loc6_.dataProvider = this.colModel.collected[_loc5_];
            _loc1_ = _loc1_ + this.spacing;
            if(_loc1_ > this.spacing)
            {
               _loc1_ = 0;
               _loc2_ = _loc2_ + 50;
               if(_loc2_ > 300)
               {
                  _loc3_ = _loc3_ + this.spacing * 2;
                  _loc2_ = 20;
               }
            }
            _loc6_.x = this.buffer + _loc3_ + _loc1_;
            _loc6_.y = _loc2_;
            this.scrollClip.addChild(_loc6_);
            _loc5_++;
         }
      }
   }
}

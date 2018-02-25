package com.gaiaworld.avatar.view.parts
{
   import com.gaiaworld.global.controller.EventController;
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class Legs extends Sprite
   {
       
      
      private var _dataProvider:Array;
      
      private var legArray:Array;
      
      private var walkIndex:Number = 0;
      
      private var currentBitmap:BodyPart;
      
      private var eventController:EventController;
      
      public function Legs()
      {
         this.legArray = new Array();
         this.eventController = new EventController();
         super();
      }
      
      public function walk() : *
      {
         this.eventController.addEventListener(this,Event.ENTER_FRAME,this.doWalk);
      }
      
      public function stopWalk() : *
      {
         this.eventController.removeEventListener(this,Event.ENTER_FRAME,this.doWalk);
      }
      
      public function get dataProvider() : Array
      {
         return this._dataProvider;
      }
      
      public function set dataProvider(param1:Array) : void
      {
         this._dataProvider = param1;
         this.makeLegs();
      }
      
      private function makeLegs() : void
      {
         var _loc4_:BodyPart = null;
         var _loc1_:Number = this._dataProvider.length;
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            _loc4_ = new BodyPart();
            _loc4_.setBitmapData(this._dataProvider[_loc2_]);
            this.legArray.push(_loc4_);
            this.addChild(_loc4_);
            _loc4_.visible = false;
            _loc2_++;
         }
         var _loc3_:Array = this.legArray.slice().reverse();
         this.legArray.push(_loc3_);
      }
      
      private function doWalk(param1:Event) : *
      {
         this.walkIndex++;
         if(this._dataProvider == null)
         {
            return;
         }
         if(this.walkIndex > this._dataProvider.length - 1)
         {
            this.walkIndex = 0;
         }
         if(this.currentBitmap != null)
         {
            this.currentBitmap.visible = false;
         }
         if(this.legArray[this.walkIndex] != null)
         {
            this.currentBitmap = this.legArray[this.walkIndex];
            this.currentBitmap.visible = true;
         }
      }
      
      public function destroy() : *
      {
         this.eventController.removeEventListener(this,Event.ENTER_FRAME,this.doWalk);
      }
   }
}

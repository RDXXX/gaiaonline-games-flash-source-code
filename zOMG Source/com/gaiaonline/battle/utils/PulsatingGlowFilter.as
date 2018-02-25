package com.gaiaonline.battle.utils
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.filters.GlowFilter;
   
   public class PulsatingGlowFilter
   {
      
      private static var s_emptyArray:Array = [];
       
      
      private var _strength:Number;
      
      private var _color:Number;
      
      private var _quality:Number;
      
      private var _blurX:Number;
      
      private var _blurY:Number;
      
      private var _mc:MovieClip;
      
      private var _inner:Boolean;
      
      private var _knockout:Boolean;
      
      private var _speed:Number;
      
      private var _alpha:Number;
      
      public function PulsatingGlowFilter(mc:MovieClip, color:Number, alpha:Number = 1, blurX:Number = 5, blurY:Number = 5, strength:Number = 5, quality:Number = 3, inner:Boolean = false, knockout:Boolean = false, speed:Number = 1)
      {
         super();
         this._mc = mc;
         this._color = color;
         this._alpha = alpha;
         this._blurX = blurX;
         this._blurY = blurY;
         this._strength = strength;
         this._speed = speed;
         this._quality = quality;
         this._inner = inner;
         this._knockout = knockout;
         _mc.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      public function stop() : void
      {
         _mc.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         _mc.filters = s_emptyArray;
      }
      
      private function onEnterFrame(e:Event) : void
      {
         _blurX = _blurX + _speed;
         _blurY = _blurY + _speed;
         if(_blurY > 25)
         {
            _speed = _speed * -1;
         }
         if(_blurY < 5)
         {
            _speed = _speed * -1;
         }
         var filter:GlowFilter = new GlowFilter(_color,_alpha,_blurX,_blurY,_strength,_quality,_inner,_knockout);
         var filterArray:Array = new Array();
         filterArray.push(filter);
         _mc.filters = filterArray;
      }
   }
}

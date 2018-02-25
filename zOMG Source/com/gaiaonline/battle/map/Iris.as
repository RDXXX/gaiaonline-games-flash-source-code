package com.gaiaonline.battle.map
{
   import com.gaiaonline.battle.ui.AlertTypes;
   import com.gaiaonline.flexModulesAPIs.globalevent.GlobalEvent;
   import com.gaiaonline.utils.FrameTimer;
   import flash.display.Graphics;
   import flash.display.Shape;
   
   public class Iris extends MapEffectBase implements IMapEffect
   {
       
      
      private var state:IrisState;
      
      private const _animTimer:FrameTimer = new FrameTimer(enterFrameListener);
      
      private var _map:IMap = null;
      
      private const _irisMask:Shape = new Shape();
      
      public function Iris(map:IMap)
      {
         state = IrisState.NONE;
         super();
         _map = map;
         var shapeGraphics:Graphics = _irisMask.graphics;
         shapeGraphics.lineStyle();
         shapeGraphics.beginFill(255);
         shapeGraphics.drawCircle(0,0,400);
         shapeGraphics.endFill();
      }
      
      private function startAnimation(x:Number, y:Number, scale:Number, state:IrisState) : void
      {
         this.state = state;
         _irisMask.x = x;
         _irisMask.y = y;
         _irisMask.scaleX = scale;
         _irisMask.scaleY = scale;
         this._animTimer.startPerFrame();
         _map.addMask(_irisMask);
      }
      
      public function out(x:Number, y:Number) : void
      {
         startAnimation(x,y,1,IrisState.OUT);
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.ALERT,{"type":AlertTypes.IRIS_CLOSE}));
      }
      
      public function int(x:Number, y:Number) : void
      {
         startAnimation(x,y,0,IrisState.IN);
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.ALERT,{"type":AlertTypes.IRIS_OPEN}));
      }
      
      private function enterFrameListener() : void
      {
         if(this.state == IrisState.OUT)
         {
            if(_irisMask.scaleX > 0)
            {
               _irisMask.scaleX = _irisMask.scaleX - 0.05;
               _irisMask.scaleY = _irisMask.scaleY - 0.05;
            }
            else
            {
               this._animTimer.stop();
               this.state = IrisState.NONE;
               runWarpOutComplete();
            }
         }
         else if(this.state == IrisState.IN)
         {
            if(_irisMask.scaleX < 1)
            {
               _irisMask.scaleX = _irisMask.scaleX + 0.05;
               _irisMask.scaleY = _irisMask.scaleY + 0.05;
            }
            else
            {
               this._animTimer.stop();
               this.state = IrisState.NONE;
               _map.removeMask(_irisMask);
               runWarpInComplete();
            }
         }
      }
   }
}

import com.gaiaonline.utils.Enumeration;

class IrisState extends Enumeration
{
   
   public static var IN:IrisState = new IrisState("IN");
   
   public static var NONE:IrisState = new IrisState("NONE");
   
   public static var OUT:IrisState = new IrisState("OUT");
    
   
   function IrisState(name:String)
   {
      super(name);
   }
}

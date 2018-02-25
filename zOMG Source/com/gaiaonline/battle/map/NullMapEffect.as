package com.gaiaonline.battle.map
{
   public class NullMapEffect extends MapEffectBase implements IMapEffect
   {
       
      
      public function NullMapEffect()
      {
         super();
      }
      
      public function out(x:Number, y:Number) : void
      {
         runWarpOutComplete();
      }
      
      public function int(x:Number, y:Number) : void
      {
         runWarpInComplete();
      }
   }
}

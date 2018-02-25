package com.gaiaonline.battle.Loot
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class Orbs extends EventDispatcher
   {
      
      public static const MAX_CHARGEORB_LEVEL:Number = 10;
      
      public static const ZERO:Orbs = new Orbs(0,0);
      
      public static const MAX_SHADOWORB_LEVEL:Number = 12;
      
      public static const SHADOWORB_PER_STEP:Number = 10;
       
      
      private var _chargeOrbs:uint;
      
      private var _darkOrbs:uint;
      
      public function Orbs(darkOrbs:uint, chargeOrbs:uint)
      {
         super();
         _darkOrbs = darkOrbs;
         _chargeOrbs = chargeOrbs;
      }
      
      public static function fromMap(orbs:Object) : Orbs
      {
         var dark:uint = uint(orbs["1001169"]) || uint(0);
         var charge:uint = uint(orbs["100257"]) || uint(0);
         return new Orbs(dark,charge);
      }
      
      public function increase(o:Orbs) : void
      {
         if(!o.equals(ZERO))
         {
            _darkOrbs = _darkOrbs + o._darkOrbs;
            _chargeOrbs = _chargeOrbs + o._chargeOrbs;
            dispatchEvent(new Event(Event.CHANGE));
         }
      }
      
      public function get chargeOrbs() : uint
      {
         return _chargeOrbs;
      }
      
      public function get darkOrbs() : uint
      {
         return _darkOrbs;
      }
      
      public function gt(o:Orbs) : Boolean
      {
         return darkOrbs > o.darkOrbs && chargeOrbs > o.chargeOrbs;
      }
      
      public function lt(o:Orbs) : Boolean
      {
         return darkOrbs < o.darkOrbs && chargeOrbs < o.chargeOrbs;
      }
      
      public function gte(o:Orbs) : Boolean
      {
         return darkOrbs >= o.darkOrbs && chargeOrbs >= o.chargeOrbs;
      }
      
      public function lte(o:Orbs) : Boolean
      {
         return darkOrbs <= o.darkOrbs && chargeOrbs <= o.chargeOrbs;
      }
      
      public function equals(o:Orbs) : Boolean
      {
         return darkOrbs == o.darkOrbs && chargeOrbs == o.chargeOrbs;
      }
   }
}

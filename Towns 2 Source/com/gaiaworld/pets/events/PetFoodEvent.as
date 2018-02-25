package com.gaiaworld.pets.events
{
   import com.gaiaworld.pets.vo.PetFoodVo;
   import flash.events.Event;
   
   public class PetFoodEvent extends Event
   {
      
      public static const FEED_PET:String = "feedPet";
       
      
      public var petFoodVo:PetFoodVo;
      
      public function PetFoodEvent(param1:String, param2:PetFoodVo, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.petFoodVo = param2;
      }
      
      override public function clone() : Event
      {
         return new PetFoodEvent(type,this.petFoodVo,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PetFoodEvent","type","petFoodVo","bubbles","cancelable","eventPhase");
      }
   }
}

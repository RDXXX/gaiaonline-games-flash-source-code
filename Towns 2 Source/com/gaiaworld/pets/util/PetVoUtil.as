package com.gaiaworld.pets.util
{
   import com.gaiaworld.avatar.interfaces.IAvatar;
   import com.gaiaworld.global.util.StringFunctions;
   import com.gaiaworld.pets.vo.PetVo;
   
   public class PetVoUtil
   {
       
      
      public function PetVoUtil()
      {
         super();
      }
      
      public static function makePetVo(param1:Object, param2:IAvatar) : PetVo
      {
         var _loc3_:Number = Number(param1.item_serial);
         var _loc4_:Number = Number(param1.item_id);
         var _loc5_:String = param1.name;
         var _loc6_:String = param1.created;
         var _loc7_:Boolean = StringFunctions.stringToBool(param1.deleted);
         var _loc8_:String = StringFunctions.findReplace("#",param1.coat_color,"0x");
         var _loc9_:Number = Number(_loc8_);
         var _loc10_:String = param1.genealogy;
         var _loc11_:String = param1.last_slept;
         var _loc12_:String = param1.last_bath;
         var _loc13_:String = StringFunctions.findReplace("#",param1.eye_color,"0x");
         var _loc14_:Number = Number(_loc13_);
         var _loc15_:Number = Number(param1.secondary_color);
         var _loc16_:String = param1.next_hungry;
         var _loc17_:Number = Number(param1.total_energy);
         var _loc18_:Number = Number(param1.life_stage);
         var _loc19_:Number = Number(param1.creator);
         var _loc20_:Number = Number(param1.owner);
         var _loc21_:String = param1.species;
         var _loc22_:Number = Number(param1.loyalty);
         var _loc23_:Number = Number(param1.total_health);
         var _loc24_:String = param1.eye_type;
         var _loc25_:Number = Number(param1.breed_count);
         var _loc26_:String = param1.breed;
         var _loc27_:String = param1.last_health;
         var _loc28_:String = param1.last_loyalty;
         var _loc29_:String = param1.run_away;
         var _loc30_:Number = Number(param1.health);
         var _loc31_:String = param1.recent_actions;
         var _loc32_:String = param1.coat_pattern;
         var _loc33_:Boolean = StringFunctions.stringToBool(param1.active);
         var _loc34_:Number = Number(param1.energy);
         var _loc35_:String = param1.tail_type;
         var _loc36_:String = param1.ear_type;
         var _loc37_:String = param1.head_type;
         var _loc38_:Number = Number(param1.cost_to_breed);
         var _loc39_:Number = Number(param1.happiness);
         var _loc40_:PetVo = new PetVo(_loc3_,_loc21_,_loc5_,_loc26_,_loc30_,_loc23_,_loc34_,_loc17_,_loc39_,_loc18_,_loc9_,_loc15_,_loc14_,_loc32_,_loc33_,_loc7_);
         _loc40_.avatar = param2;
         _loc40_.itemSerial = _loc3_;
         _loc40_.tail_type = _loc35_;
         _loc40_.coat_pattern = _loc32_;
         _loc40_.ear_type = _loc36_;
         _loc40_.head_type = _loc37_;
         _loc40_.costToBreed = _loc38_;
         if(param2 != null)
         {
            _loc40_.userID = param2.dataProvider.gaia_id;
         }
         return _loc40_;
      }
   }
}

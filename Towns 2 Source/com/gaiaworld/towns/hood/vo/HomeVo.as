package com.gaiaworld.towns.hood.vo
{
   import com.gaiaworld.user.vo.PalVo;
   
   public class HomeVo
   {
       
      
      public var community:int;
      
      public var plot:int;
      
      public var home_style:int;
      
      public var lock:int;
      
      public var user_id:Number;
      
      public var hood:int;
      
      private var delimter:String = "<h>";
      
      public var is_landlord:Boolean;
      
      public var houseName:String;
      
      public var userName:String;
      
      public var palVo:PalVo = null;
      
      public function HomeVo(param1:int = 0, param2:int = 0, param3:int = 0, param4:int = 0, param5:Number = -1, param6:int = 0, param7:String = "", param8:Boolean = false)
      {
         super();
         this.is_landlord = param8;
         this.community = param1;
         this.plot = param2;
         this.home_style = param3;
         this.lock = param4;
         this.user_id = param5;
         this.hood = param6;
         this.houseName = param7;
      }
      
      public function toString() : String
      {
         var _loc1_:String = "";
         _loc1_ = _loc1_ + (String(this.community) + this.delimter);
         _loc1_ = _loc1_ + (String(this.plot) + this.delimter);
         _loc1_ = _loc1_ + (String(this.home_style) + this.delimter);
         _loc1_ = _loc1_ + (String(this.lock) + this.delimter);
         _loc1_ = _loc1_ + (String(this.user_id) + this.delimter);
         _loc1_ = _loc1_ + (String(this.hood) + this.delimter);
         _loc1_ = _loc1_ + (this.houseName + this.delimter);
         _loc1_ = _loc1_ + (String(this.is_landlord) + this.delimter);
         return _loc1_;
      }
      
      public function fromString(param1:String) : void
      {
         var _loc2_:Array = param1.split(this.delimter);
         this.community = Number(_loc2_[0]);
         this.plot = Number(_loc2_[1]);
         this.home_style = Number(_loc2_[2]);
         this.lock = Number(_loc2_[3]);
         this.user_id = Number(_loc2_[4]);
         this.hood = Number(_loc2_[5]);
         this.houseName = _loc2_[6];
         this.is_landlord = _loc2_[7];
      }
   }
}

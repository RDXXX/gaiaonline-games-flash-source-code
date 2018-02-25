package com.gaiaworld.user.vo
{
   public class UserVo
   {
       
      
      public var gaia_id:Number;
      
      public var userName:String;
      
      public var avatar:String;
      
      public var user_level:Number;
      
      public var filter_level:Number;
      
      public var server_id:String;
      
      public var sushi_id:Number;
      
      public var room_id:Number;
      
      public var user_active:Number;
      
      public var user_pms:Number;
      
      public var towns_address:Number;
      
      public var avatar_url:String;
      
      public var account_age:Number;
      
      public var x:Number = -1;
      
      public var y:Number = -1;
      
      public var dir:String = "left";
      
      public var face:String = "front";
      
      public var isKneeling:Number = 0;
      
      public var followPrivacy:Number = 2;
      
      public var isIgnored:Boolean = false;
      
      public var team:Number = 0;
      
      public var visible:Boolean = true;
      
      public var pathFinding:Boolean = false;
      
      public var slot:int = -1;
      
      public var carSlot:Number = 0;
      
      public var speed:Number = 3;
      
      public var textColor:Number = 16777215;
      
      public var wasHereBeforeMe:Boolean = false;
      
      public var gender:String = "";
      
      public function UserVo(param1:Number = 0, param2:String = "", param3:String = "", param4:Number = 0, param5:Number = 0, param6:String = "", param7:Number = 0, param8:Number = 0, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:String = "", param13:Number = 0, param14:Number = 0, param15:Boolean = false)
      {
         super();
         this.gaia_id = param1;
         this.userName = param2;
         this.avatar = param3;
         this.user_level = param4;
         this.filter_level = param5;
         this.server_id = param6;
         this.sushi_id = param7;
         this.room_id = param8;
         this.user_active = param9;
         this.user_pms = param10;
         this.towns_address = param11;
         this.avatar_url = param12;
         this.account_age = param13;
         this.team = param14;
      }
      
      public function fromObj(param1:Object) : *
      {
         this.gaia_id = param1.gaia_id;
         this.userName = param1.username;
         this.avatar = param1.avatar;
         this.user_level = param1.user_level;
         this.filter_level = param1.filter_level;
         this.server_id = param1.server_id;
         this.sushi_id = param1.sushi_id;
         this.room_id = param1.room_id;
         this.user_active = param1.user_active;
         this.user_pms = param1.user_pms;
         this.towns_address = param1.towns_address;
         this.avatar_url = param1.avatar_url;
         this.account_age = param1.account_age;
         this.user_level = this.gaia_id == 31609365?Number(165):Number(this.user_level);
         this.gender = param1.gender;
      }
      
      public function toSaveObj(param1:String) : Object
      {
         var _loc2_:Object = new Object();
         _loc2_.user_level = this.user_level;
         _loc2_.username = this.userName;
         _loc2_.user_id = this.gaia_id;
         _loc2_.sid = param1;
         return _loc2_;
      }
   }
}

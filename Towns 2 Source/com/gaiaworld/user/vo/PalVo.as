package com.gaiaworld.user.vo
{
   public class PalVo
   {
       
      
      public var id:Number;
      
      public var userName:String;
      
      public var avatarPath:String;
      
      public var user_level:Number;
      
      public var server_id:Number;
      
      public var sushi_id:Number;
      
      public var session_id:Number;
      
      public var room_id:Number;
      
      public var avatarUrl:String;
      
      public var isOnline:Boolean;
      
      public function PalVo(param1:Number = 0, param2:String = "", param3:String = "", param4:Number = 0, param5:Number = -1, param6:Number = -1, param7:Number = -1, param8:Number = -1, param9:String = "", param10:Boolean = false)
      {
         super();
         this.id = param1;
         this.userName = param2;
         this.avatarPath = param3;
         this.user_level = param4;
         this.server_id = param5;
         this.sushi_id = param6;
         this.session_id = param7;
         this.room_id = param8;
         this.avatarUrl = param9;
         this.isOnline = param10;
      }
      
      public function fromObj(param1:Object) : *
      {
         this.id = param1.gaia_id;
         this.userName = param1.username;
         this.avatarPath = param1.avatar;
         this.user_level = param1.user_level;
         this.server_id = param1.server_id;
         this.sushi_id = param1.sushi_id;
         this.session_id = param1.session_id;
         this.room_id = param1.room_id;
         this.avatarUrl = param1.avatar_url;
      }
   }
}

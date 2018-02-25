package com.gaiaworld.pets.vo
{
   import com.gaiaworld.avatar.interfaces.IAvatar;
   import com.gaiaworld.user.vo.UserVo;
   
   public class PetVo
   {
       
      
      public var secondColor:Number;
      
      public var id:Number;
      
      public var myType:String;
      
      public var name:String;
      
      public var health:Number;
      
      public var totalHealth:Number;
      
      public var energy:Number;
      
      public var totalEnergy:Number;
      
      public var lifeStage:Number;
      
      public var color:Number;
      
      public var eyeColor:Number;
      
      public var pattern:String;
      
      public var active:Boolean;
      
      public var deleted:Boolean;
      
      public var avatar:IAvatar;
      
      public var userVo:UserVo;
      
      public var userID:Number;
      
      public var itemSerial:Number;
      
      public var creator:Number;
      
      public var dirty:Boolean = false;
      
      public var sleeping:Boolean = false;
      
      public var walking:Boolean = false;
      
      public var tired:Boolean = false;
      
      public var hungry:Boolean = false;
      
      public var eyeStyle:Number = 0;
      
      public var happiness:Number = 0;
      
      public var mouthColor:Number = 16711680;
      
      public var breed:String;
      
      public var tail_type:String;
      
      public var coat_pattern:String;
      
      public var ear_type:String;
      
      public var head_type:String;
      
      public var costToBreed:Number = 0;
      
      public function PetVo(param1:Number = -1, param2:String = "", param3:String = "", param4:String = "", param5:Number = 0, param6:Number = 0, param7:Number = 0, param8:Number = 0, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:String = "", param15:Boolean = false, param16:Boolean = false)
      {
         super();
         this.secondColor = param12;
         this.id = param1;
         this.myType = param2;
         this.name = param3;
         this.health = param5;
         this.totalHealth = param6;
         this.energy = param7;
         this.totalEnergy = param8;
         this.lifeStage = param10;
         this.color = param11;
         this.eyeColor = param13;
         this.pattern = param14;
         this.active = param15;
         this.deleted = param16;
         this.breed = param4;
         this.happiness = param9;
      }
   }
}

package com.gaiaworld.game.vo
{
   import com.gaiaworld.user.vo.UserVo;
   
   public class ChallengedVo
   {
       
      
      public var challenger:UserVo;
      
      public var cid:Number;
      
      public var game:Number;
      
      public var challenged:UserVo;
      
      public var mapNumber:Number;
      
      public function ChallengedVo(param1:UserVo, param2:UserVo, param3:Number, param4:Number, param5:Number = 0)
      {
         super();
         this.challenger = param1;
         this.cid = param4;
         this.game = param3;
         this.challenged = param2;
         this.mapNumber = param5;
      }
   }
}

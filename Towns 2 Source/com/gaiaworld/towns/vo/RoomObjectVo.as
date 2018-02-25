package com.gaiaworld.towns.vo
{
   public class RoomObjectVo
   {
       
      
      public var mobID:String;
      
      private var delimeter:String = "<ro>";
      
      public var targetY:Number;
      
      public var targetX:Number;
      
      public var name:String;
      
      public var x:Number;
      
      public var y:Number;
      
      public var yDir:Number;
      
      public var xDir:Number;
      
      public var speed:Number;
      
      public var owner:Number;
      
      public var timeStamp:Number = 0;
      
      public function RoomObjectVo(param1:String = "", param2:Number = 0, param3:Number = 0, param4:Number = 0, param5:Number = 0, param6:Number = 0, param7:Number = -1, param8:Number = 0, param9:Number = 0)
      {
         super();
         this.targetY = param9;
         this.targetX = param8;
         this.name = param1;
         this.x = param2;
         this.y = param3;
         this.xDir = param4;
         this.yDir = param5;
         this.speed = param6;
         this.owner = param7;
      }
      
      public function toArray() : Array
      {
         this.xDir = int(this.xDir * 10) / 10;
         this.yDir = int(this.yDir * 10) / 10;
         return [this.name,this.x,this.y,this.xDir,this.yDir,this.speed,this.owner,this.timeStamp,this.targetX,this.targetY];
      }
      
      public function fromArray(param1:Array) : *
      {
         this.name = param1[0];
         this.x = Number(param1[1]);
         this.y = Number(param1[2]);
         this.yDir = Number(param1[3]);
         this.xDir = Number(param1[4]);
         this.speed = Number(param1[5]);
         this.owner = Number(param1[6]);
         this.timeStamp = Number(param1[7]);
         if(isNaN(this.timeStamp))
         {
            this.timeStamp = 0;
         }
         if(param1[8] != null)
         {
            this.targetX = Number(param1[8]);
         }
         else
         {
            this.targetX = 0;
         }
         if(param1[9] != null)
         {
            this.targetY = Number(param1[9]);
         }
         else
         {
            this.targetY = 0;
         }
      }
      
      public function toString() : String
      {
         this.xDir = int(this.xDir * 10) / 10;
         this.yDir = int(this.yDir * 10) / 10;
         var _loc1_:String = "";
         _loc1_ = _loc1_ + (this.name + this.delimeter);
         _loc1_ = _loc1_ + (String(this.x) + this.delimeter);
         _loc1_ = _loc1_ + (String(this.y) + this.delimeter);
         _loc1_ = _loc1_ + (String(this.xDir) + this.delimeter);
         _loc1_ = _loc1_ + (String(this.yDir) + this.delimeter);
         _loc1_ = _loc1_ + (String(this.speed) + this.delimeter);
         _loc1_ = _loc1_ + (String(this.owner) + this.delimeter);
         _loc1_ = _loc1_ + (String(this.timeStamp) + this.delimeter);
         _loc1_ = _loc1_ + (String(this.targetX) + this.delimeter);
         _loc1_ = _loc1_ + (String(this.targetY) + this.delimeter);
         return _loc1_;
      }
      
      public function fromString(param1:String) : *
      {
         var _loc2_:Array = param1.split(this.delimeter);
         this.fromArray(_loc2_);
      }
   }
}

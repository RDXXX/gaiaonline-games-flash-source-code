package com.gaiaworld.towns.vo
{
   public class LocBookmarkVo
   {
       
      
      public var index:Number = 0;
      
      public var x:Number;
      
      public var y:Number;
      
      public var roomName:String;
      
      private var delimter:String = "<loc>";
      
      public var title:String;
      
      public function LocBookmarkVo(param1:String = "", param2:Number = 0, param3:Number = 0, param4:String = "")
      {
         super();
         this.title = param1;
         this.x = param2;
         this.y = param3;
         this.roomName = param4;
      }
      
      public function toString() : String
      {
         return this.title + this.delimter + String(this.x) + this.delimter + String(this.y) + this.delimter + this.roomName;
      }
      
      public function fromString(param1:String) : void
      {
         var _loc2_:Array = param1.split(this.delimter);
         this.title = _loc2_[0];
         this.x = _loc2_[1];
         this.y = _loc2_[2];
         this.roomName = _loc2_[3];
      }
      
      public function toHtml() : *
      {
         var _loc1_:* = "<li class=\'en\'><a href=\'event:fav-" + String(this.index) + "\'>" + this.title + "</a></li>";
         return _loc1_;
      }
   }
}

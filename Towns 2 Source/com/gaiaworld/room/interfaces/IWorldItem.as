package com.gaiaworld.room.interfaces
{
   import com.gaiaworld.house.vo.ItemDataVo;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public interface IWorldItem
   {
       
      
      function get h() : Number;
      
      function get w() : Number;
      
      function get l() : Number;
      
      function get numberOfRots() : Number;
      
      function get canSitOn() : Boolean;
      
      function get specialAction() : String;
      
      function get type() : String;
      
      function get hitBox() : MovieClip;
      
      function get itemID() : Number;
      
      function get itemTileVo() : ITileVo;
      
      function get itemDataVo() : ItemDataVo;
      
      function get xx() : Number;
      
      function get yy() : Number;
      
      function get zz() : Number;
      
      function get depth2() : Number;
      
      function get x() : Number;
      
      function get y() : Number;
      
      function set h(param1:Number) : void;
      
      function set w(param1:Number) : void;
      
      function set l(param1:Number) : void;
      
      function set numberOfRots(param1:Number) : void;
      
      function set type(param1:String) : void;
      
      function set itemID(param1:Number) : void;
      
      function set itemTileVo(param1:ITileVo) : void;
      
      function set itemDataVo(param1:ItemDataVo) : void;
      
      function set xx(param1:Number) : void;
      
      function set yy(param1:Number) : void;
      
      function set zz(param1:Number) : void;
      
      function set depth2(param1:Number) : void;
      
      function getRotation() : Number;
      
      function get clip() : Sprite;
   }
}

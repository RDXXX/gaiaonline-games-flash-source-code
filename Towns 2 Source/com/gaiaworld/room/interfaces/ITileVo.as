package com.gaiaworld.room.interfaces
{
   public interface ITileVo
   {
       
      
      function get x() : Number;
      
      function get y() : Number;
      
      function get z() : Number;
      
      function get depth() : Number;
      
      function get clip() : ITile;
      
      function get isObject() : Boolean;
      
      function set x(param1:Number) : void;
      
      function set y(param1:Number) : void;
      
      function set z(param1:Number) : void;
      
      function set depth(param1:Number) : void;
      
      function set clip(param1:ITile) : void;
      
      function set isObject(param1:Boolean) : void;
   }
}

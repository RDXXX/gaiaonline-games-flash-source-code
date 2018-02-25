package com.gaiaworld.towns.collectables.bugs.interfaces
{
   import com.gaiaworld.towns.collectables.bugs.vo.BugVo;
   import flash.display.Sprite;
   
   public interface IBug
   {
       
      
      function stopMove() : void;
      
      function startMove() : void;
      
      function getBugType() : String;
      
      function loadBug(param1:String) : void;
      
      function get clip() : Sprite;
      
      function get depth2() : Number;
      
      function set depth2(param1:Number) : void;
      
      function set isBlocked(param1:Boolean) : void;
      
      function get isBlocked() : Boolean;
      
      function init() : void;
      
      function set dataProvider(param1:BugVo) : void;
      
      function get dataProvider() : BugVo;
   }
}

package com.gaiaonline.platform.actors
{
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.geom.Point;
   
   public interface IDisplayObject
   {
       
      
      function localToGlobal(param1:Point) : Point;
      
      function hitTestObject(param1:DisplayObject) : Boolean;
      
      function get x() : Number;
      
      function get y() : Number;
      
      function get parent() : DisplayObjectContainer;
   }
}

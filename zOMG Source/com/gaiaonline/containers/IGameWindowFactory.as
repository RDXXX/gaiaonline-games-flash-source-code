package com.gaiaonline.containers
{
   import com.gaiaonline.utils.factories.ILoaderContextFactory;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public interface IGameWindowFactory
   {
       
      
      function createLegacyZomgWindow(param1:String, param2:DisplayObject, param3:Boolean = true, param4:Boolean = true, param5:Boolean = true, param6:Boolean = true, param7:uint = 0, param8:uint = 0, param9:uint = 0, param10:uint = 0, param11:Boolean = false, param12:Boolean = false, param13:ILoaderContextFactory = null) : *;
      
      function createWindow(param1:String, param2:Boolean, param3:String = "Regular") : DisplayObjectContainer;
      
      function createLegacyShim() : DisplayObjectContainer;
   }
}

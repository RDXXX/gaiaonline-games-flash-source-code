package com.gaiaonline.battle.ApplicationInterfaces
{
   import flash.system.ApplicationDomain;
   
   public interface IAssetFactory
   {
       
      
      function getClass(param1:String, param2:Boolean = true) : Class;
      
      function addAppDomain(param1:ApplicationDomain) : void;
      
      function checkOut(param1:String) : Object;
      
      function getInstance(param1:String, param2:Boolean = true) : Object;
      
      function checkIn(param1:Object) : Boolean;
   }
}

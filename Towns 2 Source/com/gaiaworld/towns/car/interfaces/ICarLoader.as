package com.gaiaworld.towns.car.interfaces
{
   public interface ICarLoader
   {
       
      
      function loadCar(param1:Number) : void;
      
      function setPos(param1:Number) : void;
      
      function setPos2(param1:Number) : void;
      
      function slideTo(param1:Number) : void;
      
      function get myName() : String;
      
      function get canCollide() : Boolean;
      
      function get depth2() : Number;
      
      function set depth2(param1:Number) : void;
      
      function setInParkingSpace() : void;
   }
}

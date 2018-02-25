package com.gaiaonline.platform.actors
{
   public interface ISubmersible extends IDisplayObject
   {
       
      
      function get depthEnabled() : Boolean;
      
      function setWaterDepth(param1:Number) : void;
   }
}

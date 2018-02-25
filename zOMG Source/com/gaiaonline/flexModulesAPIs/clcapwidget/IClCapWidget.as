package com.gaiaonline.flexModulesAPIs.clcapwidget
{
   public interface IClCapWidget
   {
       
      
      function set maximum(param1:Number) : void;
      
      function selectAllText() : void;
      
      function set minusEnable(param1:Boolean) : void;
      
      function get cl() : Number;
      
      function setText(param1:String) : void;
      
      function set cl(param1:Number) : void;
      
      function get minusEnable() : Boolean;
      
      function setEventHandler(param1:IClCapEventHandler) : void;
      
      function set plusEnable(param1:Boolean) : void;
      
      function set minimum(param1:Number) : void;
      
      function get plusEnable() : Boolean;
   }
}

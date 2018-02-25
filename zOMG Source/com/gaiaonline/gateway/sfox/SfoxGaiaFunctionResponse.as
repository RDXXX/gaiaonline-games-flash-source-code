package com.gaiaonline.gateway.sfox
{
   import com.gaiaonline.gateway.GaiaFunctionResponse;
   
   public class SfoxGaiaFunctionResponse extends GaiaFunctionResponse
   {
       
      
      public function SfoxGaiaFunctionResponse()
      {
         super(0);
      }
      
      override public function setInfo(cid:uint, name:String = null, result:* = null, error:int = 0) : void
      {
         super.setInfo(cid,name,result,error);
      }
   }
}

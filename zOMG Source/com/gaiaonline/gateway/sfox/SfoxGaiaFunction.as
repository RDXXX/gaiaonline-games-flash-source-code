package com.gaiaonline.gateway.sfox
{
   import com.gaiaonline.gateway.GaiaFunction;
   import com.gaiaonline.serializers.AMF3Base64Serializer;
   
   public class SfoxGaiaFunction extends GaiaFunction
   {
       
      
      public function SfoxGaiaFunction()
      {
         super();
      }
      
      override public function setInfo(name:String = null, ... arguments) : void
      {
         super.setInfo(name,arguments);
         this._name = name;
         if(arguments)
         {
            this._args = arguments.length > 1?arguments:arguments[0];
         }
      }
      
      public function fromString(raw:String) : void
      {
         return this.fromObject(AMF3Base64Serializer.unserialize(raw));
      }
      
      public function toString() : String
      {
         return AMF3Base64Serializer.serialize(this.toObject());
      }
   }
}

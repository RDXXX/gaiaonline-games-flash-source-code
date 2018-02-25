package com.afcomponents.common.graphics
{
   public dynamic class ReflectionStyle extends Style
   {
      
      public static const ENUM_PARAMS:Array = ["enabled","alpha","clipAlpha","distance","matrixRatio","matrixDropOff","useTransform","usePosition","refreshRate"];
       
      
      public var enabled:Boolean = true;
      
      public var alpha:Number = 1;
      
      public var clipAlpha:Number = 1;
      
      public var distance:Number = 0;
      
      public var matrixRatio:Number = 1;
      
      public var matrixDropOff:Number = 1;
      
      public var useTransform:Boolean = true;
      
      public var usePosition:Boolean = true;
      
      public var refreshRate:Number = 8;
      
      public function ReflectionStyle(param1:Object = null)
      {
         super(param1);
      }
   }
}

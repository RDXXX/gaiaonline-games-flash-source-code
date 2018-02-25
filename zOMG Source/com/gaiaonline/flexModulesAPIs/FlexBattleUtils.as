package com.gaiaonline.flexModulesAPIs
{
   import mx.containers.Canvas;
   import mx.core.Container;
   import mx.formatters.NumberFormatter;
   
   public class FlexBattleUtils
   {
      
      private static var _clFormatter:NumberFormatter = null;
       
      
      public function FlexBattleUtils()
      {
         super();
      }
      
      private static function get clFormatter() : NumberFormatter
      {
         if(!_clFormatter)
         {
            _clFormatter = new NumberFormatter();
            clFormatter.decimalSeparatorFrom = ".";
            clFormatter.decimalSeparatorTo = ".";
            clFormatter.precision = 1;
            clFormatter.rounding = "nearest";
            clFormatter.useNegativeSign = false;
            clFormatter.useThousandsSeparator = false;
         }
         return _clFormatter;
      }
      
      public static function createFlexLayer() : Container
      {
         var layer:Canvas = new Canvas();
         layer.percentHeight = 100;
         layer.percentWidth = 100;
         layer.horizontalScrollPolicy = "off";
         layer.verticalScrollPolicy = "off";
         layer.clipContent = false;
         return layer;
      }
      
      public static function formatConLevel(conLevel:Number) : String
      {
         return clFormatter.format(conLevel);
      }
   }
}

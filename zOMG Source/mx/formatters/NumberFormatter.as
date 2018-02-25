package mx.formatters
{
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public class NumberFormatter extends Formatter
   {
      
      mx_internal static const VERSION:String = "3.6.0.21751";
       
      
      private var roundingOverride:String;
      
      private var thousandsSeparatorFromOverride:String;
      
      private var _useNegativeSign:Object;
      
      private var decimalSeparatorFromOverride:String;
      
      private var _decimalSeparatorTo:String;
      
      private var useThousandsSeparatorOverride:Object;
      
      private var _thousandsSeparatorTo:String;
      
      private var useNegativeSignOverride:Object;
      
      private var thousandsSeparatorToOverride:String;
      
      private var decimalSeparatorToOverride:String;
      
      private var precisionOverride:Object;
      
      private var _rounding:String;
      
      private var _useThousandsSeparator:Object;
      
      private var _thousandsSeparatorFrom:String;
      
      private var _decimalSeparatorFrom:String;
      
      private var _precision:Object;
      
      public function NumberFormatter()
      {
         super();
      }
      
      public function set precision(value:Object) : void
      {
         precisionOverride = value;
         _precision = value != null?int(value):resourceManager.getInt("formatters","numberFormatterPrecision");
      }
      
      public function get useNegativeSign() : Object
      {
         return _useNegativeSign;
      }
      
      override protected function resourcesChanged() : void
      {
         super.resourcesChanged();
         decimalSeparatorFrom = decimalSeparatorFromOverride;
         decimalSeparatorTo = decimalSeparatorToOverride;
         precision = precisionOverride;
         rounding = roundingOverride;
         thousandsSeparatorFrom = thousandsSeparatorFromOverride;
         thousandsSeparatorTo = thousandsSeparatorToOverride;
         useNegativeSign = useNegativeSignOverride;
         useThousandsSeparator = useThousandsSeparatorOverride;
      }
      
      public function get rounding() : String
      {
         return _rounding;
      }
      
      public function set thousandsSeparatorTo(value:String) : void
      {
         thousandsSeparatorToOverride = value;
         _thousandsSeparatorTo = value != null?value:resourceManager.getString("SharedResources","thousandsSeparatorTo");
      }
      
      public function get thousandsSeparatorFrom() : String
      {
         return _thousandsSeparatorFrom;
      }
      
      public function set decimalSeparatorTo(value:String) : void
      {
         decimalSeparatorToOverride = value;
         _decimalSeparatorTo = value != null?value:resourceManager.getString("SharedResources","decimalSeparatorTo");
      }
      
      public function set useNegativeSign(value:Object) : void
      {
         useNegativeSignOverride = value;
         _useNegativeSign = value != null?Boolean(value):resourceManager.getBoolean("formatters","useNegativeSign");
      }
      
      override public function format(value:Object) : String
      {
         var front:String = null;
         var temp:Number = NaN;
         if(error)
         {
            error = null;
         }
         if(useThousandsSeparator && (decimalSeparatorFrom == thousandsSeparatorFrom || decimalSeparatorTo == thousandsSeparatorTo))
         {
            error = defaultInvalidFormatError;
            return "";
         }
         if(decimalSeparatorTo == "" || !isNaN(Number(decimalSeparatorTo)))
         {
            error = defaultInvalidFormatError;
            return "";
         }
         var dataFormatter:NumberBase = new NumberBase(decimalSeparatorFrom,thousandsSeparatorFrom,decimalSeparatorTo,thousandsSeparatorTo);
         if(value is String)
         {
            value = dataFormatter.parseNumberString(String(value));
         }
         if(value === null || isNaN(Number(value)))
         {
            error = defaultInvalidValueError;
            return "";
         }
         var isNegative:* = Number(value) < 0;
         var numStr:String = value.toString();
         numStr.toLowerCase();
         var e:int = numStr.indexOf("e");
         if(e != -1)
         {
            numStr = dataFormatter.expandExponents(numStr);
         }
         var numArrTemp:Array = numStr.split(".");
         var numFraction:int = !!numArrTemp[1]?int(String(numArrTemp[1]).length):0;
         if(precision <= numFraction)
         {
            if(rounding != NumberBaseRoundType.NONE)
            {
               numStr = dataFormatter.formatRoundingWithPrecision(numStr,rounding,int(precision));
            }
         }
         var numValue:Number = Number(numStr);
         if(Math.abs(numValue) >= 1)
         {
            numArrTemp = numStr.split(".");
            front = !!useThousandsSeparator?dataFormatter.formatThousands(String(numArrTemp[0])):String(numArrTemp[0]);
            if(numArrTemp[1] != null && numArrTemp[1] != "")
            {
               numStr = front + decimalSeparatorTo + numArrTemp[1];
            }
            else
            {
               numStr = front;
            }
         }
         else if(Math.abs(numValue) > 0)
         {
            if(numStr.indexOf("e") != -1)
            {
               temp = Math.abs(numValue) + 1;
               numStr = temp.toString();
            }
            numStr = decimalSeparatorTo + numStr.substring(numStr.indexOf(".") + 1);
         }
         numStr = dataFormatter.formatPrecision(numStr,int(precision));
         if(Number(numStr) == 0)
         {
            isNegative = false;
         }
         if(isNegative)
         {
            numStr = dataFormatter.formatNegative(numStr,useNegativeSign);
         }
         if(!dataFormatter.isValid)
         {
            error = defaultInvalidFormatError;
            return "";
         }
         return numStr;
      }
      
      public function get decimalSeparatorFrom() : String
      {
         return _decimalSeparatorFrom;
      }
      
      public function set rounding(value:String) : void
      {
         roundingOverride = value;
         _rounding = value != null?value:resourceManager.getString("formatters","rounding");
      }
      
      public function get thousandsSeparatorTo() : String
      {
         return _thousandsSeparatorTo;
      }
      
      public function get decimalSeparatorTo() : String
      {
         return _decimalSeparatorTo;
      }
      
      public function set thousandsSeparatorFrom(value:String) : void
      {
         thousandsSeparatorFromOverride = value;
         _thousandsSeparatorFrom = value != null?value:resourceManager.getString("SharedResources","thousandsSeparatorFrom");
      }
      
      public function set useThousandsSeparator(value:Object) : void
      {
         useThousandsSeparatorOverride = value;
         _useThousandsSeparator = value != null?Boolean(value):resourceManager.getBoolean("formatters","useThousandsSeparator");
      }
      
      public function get useThousandsSeparator() : Object
      {
         return _useThousandsSeparator;
      }
      
      public function set decimalSeparatorFrom(value:String) : void
      {
         decimalSeparatorFromOverride = value;
         _decimalSeparatorFrom = value != null?value:resourceManager.getString("SharedResources","decimalSeparatorFrom");
      }
      
      public function get precision() : Object
      {
         return _precision;
      }
   }
}

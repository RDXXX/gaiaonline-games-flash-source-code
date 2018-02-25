package mx.validators
{
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public class ValidationResult
   {
      
      mx_internal static const VERSION:String = "3.6.0.21751";
       
      
      public var subField:String;
      
      public var errorCode:String;
      
      public var isError:Boolean;
      
      public var errorMessage:String;
      
      public function ValidationResult(isError:Boolean, subField:String = "", errorCode:String = "", errorMessage:String = "")
      {
         super();
         this.isError = isError;
         this.subField = subField;
         this.errorMessage = errorMessage;
         this.errorCode = errorCode;
      }
   }
}

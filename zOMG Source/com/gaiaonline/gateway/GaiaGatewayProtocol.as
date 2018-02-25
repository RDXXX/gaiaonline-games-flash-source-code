package com.gaiaonline.gateway
{
   public class GaiaGatewayProtocol
   {
      
      public static const TYPE_FUNCTION_RESPONSE:int = 2;
      
      public static const ERROR_BUFFER_OVERFLOW:int = -15;
      
      public static const ERROR_USER_BLOCKED:int = -4;
      
      public static const ERROR_CHANNEL_LIMIT_EXCEEDED:int = -23;
      
      public static const ERROR_SESSION_NOT_LOGGED_IN:int = -3;
      
      public static const ERROR_LOGIN_COLLIDED:int = -2;
      
      public static const ERROR_FUNCTION_CORRUPTED:int = -13;
      
      public static const ERROR_CHANNEL_ALREADY_EXISTS:int = -21;
      
      public static const ERROR_CHANNEL_NOT_FOUND:int = -22;
      
      public static const ERROR_CHANNEL_INVALID_PASSWORD:int = -24;
      
      public static const ERROR_FUNCTION_NOT_FOUND:int = -11;
      
      public static const ERROR_LOGIN_FAILED:int = -1;
      
      public static const ERROR_FUNCTION_BAD_ARGUMENTS:int = -12;
      
      public static const TYPE_FUNCTION_ERROR:int = 3;
      
      public static const ERROR_CHANNEL_RESTRICTED:int = -25;
      
      public static const ERROR_INVALID_ADMIN:int = -5;
      
      public static const ERROR_CHANNEL_UNKNOWN:int = -29;
      
      public static const TYPE_FUNCTION:int = 1;
       
      
      public function GaiaGatewayProtocol()
      {
         super();
      }
      
      public static function isAdminFunction(funcName:String) : Boolean
      {
         return funcName.split(".")[0] == "admin";
      }
      
      public static function isCoreFunction(funcName:String) : Boolean
      {
         return funcName.split(".")[0] == "core";
      }
   }
}

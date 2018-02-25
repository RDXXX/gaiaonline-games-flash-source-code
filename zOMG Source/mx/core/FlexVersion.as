package mx.core
{
   import mx.resources.ResourceManager;
   
   use namespace mx_internal;
   
   public class FlexVersion
   {
      
      private static var compatibilityVersionChanged:Boolean = false;
      
      public static const VERSION_2_0_1:uint = 33554433;
      
      private static var _compatibilityErrorFunction:Function;
      
      public static const CURRENT_VERSION:uint = 50331648;
      
      public static const VERSION_3_0:uint = 50331648;
      
      public static const VERSION_2_0:uint = 33554432;
      
      private static var _compatibilityVersion:uint = CURRENT_VERSION;
      
      public static const VERSION_ALREADY_READ:String = "versionAlreadyRead";
      
      public static const VERSION_ALREADY_SET:String = "versionAlreadySet";
      
      mx_internal static const VERSION:String = "3.6.0.21751";
      
      private static var compatibilityVersionRead:Boolean = false;
       
      
      public function FlexVersion()
      {
         super();
      }
      
      mx_internal static function changeCompatibilityVersionString(value:String) : void
      {
         var pieces:Array = value.split(".");
         var major:uint = parseInt(pieces[0]);
         var minor:uint = parseInt(pieces[1]);
         var update:uint = parseInt(pieces[2]);
         _compatibilityVersion = (major << 24) + (minor << 16) + update;
      }
      
      public static function set compatibilityVersion(value:uint) : void
      {
         var s:String = null;
         if(value == _compatibilityVersion)
         {
            return;
         }
         if(compatibilityVersionChanged)
         {
            if(compatibilityErrorFunction == null)
            {
               s = ResourceManager.getInstance().getString("core",VERSION_ALREADY_SET);
               throw new Error(s);
            }
            compatibilityErrorFunction(value,VERSION_ALREADY_SET);
         }
         if(compatibilityVersionRead)
         {
            if(compatibilityErrorFunction == null)
            {
               s = ResourceManager.getInstance().getString("core",VERSION_ALREADY_READ);
               throw new Error(s);
            }
            compatibilityErrorFunction(value,VERSION_ALREADY_READ);
         }
         _compatibilityVersion = value;
         compatibilityVersionChanged = true;
      }
      
      public static function get compatibilityVersion() : uint
      {
         compatibilityVersionRead = true;
         return _compatibilityVersion;
      }
      
      public static function set compatibilityErrorFunction(value:Function) : void
      {
         _compatibilityErrorFunction = value;
      }
      
      public static function set compatibilityVersionString(value:String) : void
      {
         var pieces:Array = value.split(".");
         var major:uint = parseInt(pieces[0]);
         var minor:uint = parseInt(pieces[1]);
         var update:uint = parseInt(pieces[2]);
         compatibilityVersion = (major << 24) + (minor << 16) + update;
      }
      
      public static function get compatibilityErrorFunction() : Function
      {
         return _compatibilityErrorFunction;
      }
      
      public static function get compatibilityVersionString() : String
      {
         var major:uint = compatibilityVersion >> 24 & 255;
         var minor:uint = compatibilityVersion >> 16 & 255;
         var update:uint = compatibilityVersion & 65535;
         return major.toString() + "." + minor.toString() + "." + update.toString();
      }
   }
}

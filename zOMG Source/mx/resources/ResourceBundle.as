package mx.resources
{
   import flash.system.ApplicationDomain;
   import mx.core.mx_internal;
   import mx.utils.StringUtil;
   
   use namespace mx_internal;
   
   public class ResourceBundle implements IResourceBundle
   {
      
      mx_internal static const VERSION:String = "3.6.0.21751";
      
      mx_internal static var backupApplicationDomain:ApplicationDomain;
      
      mx_internal static var locale:String;
       
      
      mx_internal var _locale:String;
      
      private var _content:Object;
      
      mx_internal var _bundleName:String;
      
      public function ResourceBundle(locale:String = null, bundleName:String = null)
      {
         _content = {};
         super();
         mx_internal::_locale = locale;
         mx_internal::_bundleName = bundleName;
         _content = getContent();
      }
      
      private static function getClassByName(name:String, domain:ApplicationDomain) : Class
      {
         var c:Class = null;
         if(domain.hasDefinition(name))
         {
            c = domain.getDefinition(name) as Class;
         }
         return c;
      }
      
      public static function getResourceBundle(baseName:String, currentDomain:ApplicationDomain = null) : ResourceBundle
      {
         var className:* = null;
         var bundleClass:Class = null;
         var bundleObj:Object = null;
         var bundle:ResourceBundle = null;
         if(!currentDomain)
         {
            currentDomain = ApplicationDomain.currentDomain;
         }
         className = mx_internal::locale + "$" + baseName + "_properties";
         bundleClass = getClassByName(className,currentDomain);
         if(!bundleClass)
         {
            className = baseName + "_properties";
            bundleClass = getClassByName(className,currentDomain);
         }
         if(!bundleClass)
         {
            className = baseName;
            bundleClass = getClassByName(className,currentDomain);
         }
         if(!bundleClass && mx_internal::backupApplicationDomain)
         {
            className = baseName + "_properties";
            bundleClass = getClassByName(className,mx_internal::backupApplicationDomain);
            if(!bundleClass)
            {
               className = baseName;
               bundleClass = getClassByName(className,mx_internal::backupApplicationDomain);
            }
         }
         if(bundleClass)
         {
            bundleObj = new bundleClass();
            if(bundleObj is ResourceBundle)
            {
               bundle = ResourceBundle(bundleObj);
               return bundle;
            }
         }
         throw new Error("Could not find resource bundle " + baseName);
      }
      
      protected function getContent() : Object
      {
         return {};
      }
      
      public function getString(key:String) : String
      {
         return String(_getObject(key));
      }
      
      public function get content() : Object
      {
         return _content;
      }
      
      public function getBoolean(key:String, defaultValue:Boolean = true) : Boolean
      {
         var temp:String = _getObject(key).toLowerCase();
         if(temp == "false")
         {
            return false;
         }
         if(temp == "true")
         {
            return true;
         }
         return defaultValue;
      }
      
      public function getStringArray(key:String) : Array
      {
         var array:Array = _getObject(key).split(",");
         var n:int = array.length;
         for(var i:int = 0; i < n; i++)
         {
            array[i] = StringUtil.trim(array[i]);
         }
         return array;
      }
      
      public function getObject(key:String) : Object
      {
         return _getObject(key);
      }
      
      private function _getObject(key:String) : Object
      {
         var value:Object = content[key];
         if(!value)
         {
            throw new Error("Key " + key + " was not found in resource bundle " + bundleName);
         }
         return value;
      }
      
      public function get locale() : String
      {
         return mx_internal::_locale;
      }
      
      public function get bundleName() : String
      {
         return mx_internal::_bundleName;
      }
      
      public function getNumber(key:String) : Number
      {
         return Number(_getObject(key));
      }
   }
}

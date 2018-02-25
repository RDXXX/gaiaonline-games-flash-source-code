package mx.utils
{
   import flash.display.LoaderInfo;
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public class LoaderUtil
   {
      
      mx_internal static const VERSION:String = "3.6.0.21751";
      
      mx_internal static var urlFilters:Array = [{
         "searchString":"/[[DYNAMIC]]/",
         "filterFunction":dynamicURLFilter
      },{
         "searchString":"/[[IMPORT]]/",
         "filterFunction":importURLFilter
      }];
       
      
      public function LoaderUtil()
      {
         super();
      }
      
      private static function importURLFilter(url:String, index:int) : String
      {
         var protocolIndex:int = url.indexOf("://");
         return url.substring(0,protocolIndex + 3) + url.substring(index + 12);
      }
      
      public static function normalizeURL(loaderInfo:LoaderInfo) : String
      {
         var index:int = 0;
         var searchString:String = null;
         var urlFilter:Function = null;
         var url:String = loaderInfo.url;
         var n:uint = LoaderUtil.mx_internal::urlFilters.length;
         for(var i:uint = 0; i < n; i++)
         {
            searchString = LoaderUtil.mx_internal::urlFilters[i].searchString;
            if((index = url.indexOf(searchString)) != -1)
            {
               urlFilter = LoaderUtil.mx_internal::urlFilters[i].filterFunction;
               url = urlFilter(url,index);
            }
         }
         return url;
      }
      
      public static function createAbsoluteURL(rootURL:String, url:String) : String
      {
         var index:int = 0;
         var lastIndex:int = 0;
         var absoluteURL:String = url;
         if(rootURL && !(url.indexOf(":") > -1 || url.indexOf("/") == 0 || url.indexOf("\\") == 0))
         {
            if((index = rootURL.indexOf("?")) != -1)
            {
               rootURL = rootURL.substring(0,index);
            }
            if((index = rootURL.indexOf("#")) != -1)
            {
               rootURL = rootURL.substring(0,index);
            }
            lastIndex = Math.max(rootURL.lastIndexOf("\\"),rootURL.lastIndexOf("/"));
            if(url.indexOf("./") == 0)
            {
               url = url.substring(2);
            }
            else
            {
               while(url.indexOf("../") == 0)
               {
                  url = url.substring(3);
                  lastIndex = Math.max(rootURL.lastIndexOf("\\",lastIndex - 1),rootURL.lastIndexOf("/",lastIndex - 1));
               }
            }
            if(lastIndex != -1)
            {
               absoluteURL = rootURL.substr(0,lastIndex + 1) + url;
            }
         }
         return absoluteURL;
      }
      
      private static function dynamicURLFilter(url:String, index:int) : String
      {
         return url.substring(0,index);
      }
   }
}

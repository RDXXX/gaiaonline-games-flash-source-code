package com.gaiaonline.utils.factories
{
   import flash.system.LoaderContext;
   import flash.system.SecurityDomain;
   
   public class LoaderContextFactory implements ILoaderContextFactory
   {
      
      private static var instance:ILoaderContextFactory = null;
       
      
      private var _baseUrl:String = null;
      
      public function LoaderContextFactory(singletonEnforcer:SingletonEnforcer#89)
      {
         super();
         if(!singletonEnforcer)
         {
            throw new Error("LoaderContextFactory is a singleton.  Use getInstance().");
         }
      }
      
      public static function getInstance() : ILoaderContextFactory
      {
         if(!instance)
         {
            instance = new LoaderContextFactory(new SingletonEnforcer#89());
         }
         return instance;
      }
      
      public function getLoaderContext() : LoaderContext
      {
         var loaderContext:LoaderContext = new LoaderContext();
         if(this._baseUrl && this._baseUrl.indexOf("file://") == -1)
         {
            loaderContext.securityDomain = SecurityDomain.currentDomain;
         }
         return loaderContext;
      }
      
      public function set baseUrl(url:String) : void
      {
         this._baseUrl = url;
      }
   }
}

class SingletonEnforcer#89
{
    
   
   function SingletonEnforcer#89()
   {
      super();
   }
}

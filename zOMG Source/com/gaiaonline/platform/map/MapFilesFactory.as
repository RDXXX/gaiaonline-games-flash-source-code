package com.gaiaonline.platform.map
{
   public class MapFilesFactory
   {
      
      private static var _instance:MapFilesFactory = null;
       
      
      private var _mapFiles:IMapFiles = null;
      
      public function MapFilesFactory(singletonEnforcer:SingletonEnforcer#100)
      {
         super();
         if(!singletonEnforcer)
         {
            throw new Error("MapFilesFactory is a singleton.  Use getInstance().");
         }
      }
      
      public static function getInstance() : MapFilesFactory
      {
         if(!_instance)
         {
            _instance = new MapFilesFactory(new SingletonEnforcer#100());
         }
         return _instance;
      }
      
      public function get mapFiles() : IMapFiles
      {
         return _mapFiles;
      }
      
      public function set mapFiles(mapFiles:IMapFiles) : void
      {
         _mapFiles = mapFiles;
      }
   }
}

class SingletonEnforcer#100
{
    
   
   function SingletonEnforcer#100()
   {
      super();
   }
}

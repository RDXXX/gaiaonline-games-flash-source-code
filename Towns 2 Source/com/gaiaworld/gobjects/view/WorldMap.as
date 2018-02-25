package com.gaiaworld.gobjects.view
{
   import flash.display.Loader;
   import flash.net.URLRequest;
   
   public class WorldMap extends BaseScreen
   {
       
      
      private var loader:Loader;
      
      public function WorldMap()
      {
         this.loader = new Loader();
         super();
         this.addChild(this.loader);
         this.loader.load(new URLRequest("maps/worldMap.swf"));
      }
   }
}

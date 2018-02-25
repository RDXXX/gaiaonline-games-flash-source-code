package com.gaiaonline.battle.newcollectibles
{
   import com.gaiaonline.battle.ApplicationInterfaces.ILinkManager;
   import com.gaiaonline.battle.StepLoader;
   import com.gaiaonline.battle.newrings.RingIconFactory;
   import com.gaiaonline.objectPool.LoaderFactory;
   import com.gaiaonline.utils.factories.ILoaderContextFactory;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.display.LoaderInfo;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.net.URLRequest;
   
   public class CollectibleLoader extends EventDispatcher
   {
       
      
      private var _linkManager:ILinkManager = null;
      
      private var _collectible:Collectible = null;
      
      public function CollectibleLoader()
      {
         super();
      }
      
      private function onIconIOError(evt:IOErrorEvent) : void
      {
         _collectible.bitmap = RingIconFactory.getBitmap("missingicon.png");
         doneLoading();
      }
      
      public function load(loaderContextFactory:ILoaderContextFactory, linkManager:ILinkManager, collectible:Collectible) : void
      {
         this._collectible = collectible;
         this._linkManager = linkManager;
         var l:Loader = LoaderFactory.getInstance().checkOut();
         l.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,onIconIOError);
         l.contentLoaderInfo.addEventListener(Event.COMPLETE,onIconLoaded);
         StepLoader.add(l,new URLRequest(collectible.iconUrl),loaderContextFactory.getLoaderContext());
      }
      
      private function doneLoading() : void
      {
         _collectible.dispatchEvent(new Event(Collectible.LOADED));
      }
      
      private function onIconLoaded(evt:Event) : void
      {
         if(LoaderInfo(evt.target).content)
         {
            _collectible.bitmap = Bitmap(LoaderInfo(evt.target).content);
            LoaderInfo(evt.target).loader.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,onIconIOError);
            LoaderInfo(evt.target).loader.contentLoaderInfo.removeEventListener(Event.COMPLETE,onIconLoaded);
         }
         LoaderFactory.getInstance().checkIn(LoaderInfo(evt.target).loader);
         this.doneLoading();
      }
   }
}

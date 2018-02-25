package com.gaiaonline.battle.newrings
{
   import com.gaiaonline.utils.DisplayObjectUtils;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class RingIconFactory
   {
      
      private static var _eventDispatcher:EventDispatcher;
      
      private static var calledInit:Boolean = false;
      
      private static var embeddedClass:Class = RingIconFactory_embeddedClass;
      
      private static var loader:Loader;
      
      private static var _bitmapDatas:Object = {};
      
      {
         RingIconFactory.init();
      }
      
      public function RingIconFactory()
      {
         super();
      }
      
      public static function get eventDispatcher() : EventDispatcher
      {
         return _eventDispatcher;
      }
      
      public static function getBitmap(name:String) : Bitmap
      {
         var BitmapDataSubClass:Class = null;
         if(!_bitmapDatas[name])
         {
            BitmapDataSubClass = getDefinition(name);
            if(!BitmapDataSubClass)
            {
               BitmapDataSubClass = getDefinition("missingicon.png");
               trace("RingIconFactory asset not found:",name);
            }
            _bitmapDatas[name] = new BitmapDataSubClass(0,0);
         }
         return DisplayObjectUtils.createClearAllChildrensImmuneBitmap(BitmapData(_bitmapDatas[name]));
      }
      
      private static function handleLoaderInit(p_evt:Event) : void
      {
         loader.contentLoaderInfo.removeEventListener(Event.INIT,handleLoaderInit);
         _eventDispatcher.dispatchEvent(new Event(Event.INIT));
      }
      
      public static function get inited() : Boolean
      {
         return loader.content != null;
      }
      
      public static function init() : void
      {
         if(calledInit)
         {
            return;
         }
         loader = new Loader();
         loader.contentLoaderInfo.addEventListener(Event.INIT,handleLoaderInit);
         loader.loadBytes(new embeddedClass());
         _eventDispatcher = new EventDispatcher();
         calledInit = true;
      }
      
      private static function getDefinition(className:String) : Class
      {
         try
         {
            return !!inited?loader.contentLoaderInfo.applicationDomain.getDefinition(className) as Class:null;
         }
         catch(e:Error)
         {
         }
         return null;
      }
   }
}

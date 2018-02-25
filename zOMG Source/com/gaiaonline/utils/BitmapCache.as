package com.gaiaonline.utils
{
   import flash.display.Bitmap;
   import flash.utils.getTimer;
   
   public final class BitmapCache
   {
       
      
      private var _cache:Object;
      
      private var _timer:FrameTimer;
      
      private var _maxLifeMS:uint;
      
      private var _checkIntervalMS:uint;
      
      private var _num:uint;
      
      private var _cachedCleanupArray:Array;
      
      public function BitmapCache(checkIntervalMS:uint = 0, maxLifeMS:uint = 0)
      {
         _cache = {};
         _cachedCleanupArray = [];
         super();
         _checkIntervalMS = checkIntervalMS;
         _maxLifeMS = maxLifeMS;
         if(_checkIntervalMS)
         {
            _timer = new FrameTimer(cleanupCallback);
         }
      }
      
      public function add(key:String, bmp:Bitmap) : void
      {
         if(!_num)
         {
            _timer.start(_checkIntervalMS);
         }
         if(!_cache[key])
         {
            _cache[key] = new BitmapCacheEntry(bmp);
            _num++;
         }
         else
         {
            BitmapCacheEntry(_cache[key]).init(bmp);
         }
      }
      
      public function remove(key:String) : void
      {
         if(_cache[key])
         {
            delete _cache[key];
            _num--;
         }
         if(!_num)
         {
            _timer.stop();
         }
      }
      
      private function cleanupCallback() : void
      {
         var key:* = null;
         var expireeKey:String = null;
         var bitmapCacheInfo:BitmapCacheEntry = null;
         var now:uint = getTimer();
         for(key in _cache)
         {
            bitmapCacheInfo = _cache[key];
            if(now - bitmapCacheInfo.time > _maxLifeMS)
            {
               _cachedCleanupArray.push(key);
            }
         }
         for each(expireeKey in _cachedCleanupArray)
         {
            remove(expireeKey);
         }
         _cachedCleanupArray.length = 0;
      }
      
      public function lookup(key:String) : Bitmap
      {
         var entry:BitmapCacheEntry = _cache[key];
         return !!entry?entry.bitmap:null;
      }
   }
}

import flash.display.Bitmap;
import flash.utils.getTimer;

final class BitmapCacheEntry
{
    
   
   public var time:uint;
   
   public var bitmap:Bitmap;
   
   function BitmapCacheEntry(bitmap:Bitmap)
   {
      super();
      init(bitmap);
   }
   
   public function init(bitmap:Bitmap) : void
   {
      this.time = getTimer();
      this.bitmap = bitmap;
   }
}

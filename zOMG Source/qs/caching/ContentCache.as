package qs.caching
{
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.display.Loader;
   import flash.net.URLRequest;
   import flash.system.LoaderContext;
   import flash.utils.Dictionary;
   import qs.utils.DLinkedList;
   
   public class ContentCache
   {
      
      private static var defaultCache:ContentCache;
      
      private static var caches:Dictionary;
       
      
      private var _maximumSize:Number = 200;
      
      private var _mruList:DLinkedList;
      
      private var _caches:Dictionary;
      
      public function ContentCache()
      {
         super();
         _caches = new Dictionary();
         _mruList = new DLinkedList();
      }
      
      public static function getCache(name:String = null) : ContentCache
      {
         if(name == "" || name == null)
         {
            if(defaultCache == null)
            {
               defaultCache = new ContentCache();
            }
            return defaultCache;
         }
         if(caches == null)
         {
            caches = new Dictionary();
         }
         if(name in caches)
         {
            return caches[name];
         }
         var cache:ContentCache = new ContentCache();
         caches[name] = cache;
         return cache;
      }
      
      public function get maximumSize() : Number
      {
         return _maximumSize;
      }
      
      public function getContent(value:*, checkPolicyFile:Boolean = false) : DisplayObject
      {
         var request:URLRequest = null;
         var url:String = null;
         var cachedItems:Array = null;
         var cachedNode:ContentCacheNode = null;
         var cachedItem:DisplayObject = null;
         var result:DisplayObject = null;
         var loader:Loader = null;
         var bitmap:Bitmap = null;
         var loaderContext:LoaderContext = null;
         if(value is String)
         {
            url = value;
            request = new URLRequest(url);
         }
         else if(value is URLRequest)
         {
            request = value;
            url = request.url;
         }
         cachedNode = _caches[url];
         if(cachedNode == null)
         {
            _caches[url] = cachedNode = new ContentCacheNode(url);
            _mruList.unshift(cachedNode);
         }
         else
         {
            _mruList.remove(cachedNode);
            _mruList.unshift(cachedNode);
         }
         cachedItems = cachedNode.value;
         for(var i:int = 0; i < cachedItems.length; i++)
         {
            cachedItem = cachedItems[i];
            if(cachedItem.parent == null)
            {
               result = cachedItem;
               break;
            }
            if(bitmap == null && cachedItem is Bitmap)
            {
               bitmap = Bitmap(cachedItem);
            }
            if(loader == null && cachedItem is Loader)
            {
               loader = Loader(cachedItem);
            }
         }
         if(result == null)
         {
            if(bitmap != null)
            {
               result = new Bitmap(bitmap.bitmapData,bitmap.pixelSnapping,bitmap.smoothing);
               cachedItems.push(result);
            }
            else if(loader != null)
            {
               try
               {
                  if(loader.contentLoaderInfo.childAllowsParent)
                  {
                     if(loader.content is Bitmap)
                     {
                        bitmap = Bitmap(loader.content);
                        result = new Bitmap(bitmap.bitmapData,bitmap.pixelSnapping,bitmap.smoothing);
                        cachedItems.push(bitmap);
                     }
                  }
               }
               catch(e:Error)
               {
               }
            }
            if(result == null)
            {
               loader = new Loader();
               loaderContext = null;
               if(checkPolicyFile)
               {
                  loaderContext = new LoaderContext(true);
               }
               loader.load(request,loaderContext);
               cachedItems.push(loader);
               result = loader;
            }
         }
         checkLimit();
         return result;
      }
      
      public function returnContentInstance(instance:DisplayObject, url:*) : void
      {
         if(!(instance is Loader))
         {
            return;
         }
         var loader:Loader = Loader(instance);
         if(loader.contentLoaderInfo.bytesLoaded == 0 || loader.contentLoaderInfo.bytesLoaded < loader.contentLoaderInfo.bytesTotal)
         {
            try
            {
               loader.close();
            }
            catch(e:Error)
            {
            }
            removeInstance(instance,url);
         }
      }
      
      public function set maximumSize(value:Number) : void
      {
         _maximumSize = value;
         checkLimit();
      }
      
      public function clear() : void
      {
         _caches = new Dictionary();
         _mruList = new DLinkedList();
      }
      
      public function removeContent(value:*) : Array
      {
         var request:URLRequest = null;
         var url:String = null;
         var cachedItems:Array = null;
         var cachedNode:ContentCacheNode = null;
         if(value is String)
         {
            url = value;
         }
         else if(value is URLRequest)
         {
            request = value;
            url = request.url;
         }
         cachedNode = _caches[url];
         if(cachedNode != null)
         {
            cachedItems = cachedNode.value;
            delete _caches[url];
            _mruList.remove(cachedNode);
         }
         return cachedItems;
      }
      
      public function preloadContent(value:*) : void
      {
         getContent(value);
      }
      
      public function removeInstance(instance:DisplayObject, urlValue:*) : void
      {
         var request:URLRequest = null;
         var url:String = null;
         var cachedNode:ContentCacheNode = null;
         if(urlValue is String)
         {
            url = urlValue;
         }
         else if(urlValue is URLRequest)
         {
            request = urlValue;
            url = request.url;
         }
         cachedNode = _caches[url];
         if(cachedNode == null)
         {
            return;
         }
         var instances:Array = cachedNode.value;
         for(var i:int = 0; i < instances.length; i++)
         {
            if(instances[i] == instance)
            {
               instances.splice(i,1);
               break;
            }
         }
         if(instances.length == 0)
         {
            delete _caches[url];
            _mruList.remove(cachedNode);
         }
      }
      
      private function checkLimit() : void
      {
         var node:ContentCacheNode = null;
         if(_maximumSize <= 0 || _mruList.length <= _maximumSize)
         {
            return;
         }
         for(var i:int = _mruList.length; i > _maximumSize; i--)
         {
            node = ContentCacheNode(_mruList.pop());
            delete _caches[node.url];
         }
      }
      
      public function hasContent(value:*) : Boolean
      {
         var request:URLRequest = null;
         var url:String = null;
         var cachedNode:ContentCacheNode = null;
         if(value is String)
         {
            url = value;
         }
         else if(value is URLRequest)
         {
            request = value;
            url = request.url;
         }
         cachedNode = _caches[url];
         return cachedNode != null && cachedNode.value.length > 0;
      }
   }
}

import qs.utils.DLinkedListNode;

class ContentCacheNode extends DLinkedListNode
{
    
   
   public var url:String;
   
   function ContentCacheNode(url:String)
   {
      super([]);
      this.url = url;
   }
}

package com.gaiaonline.battle.ApplicationImplementations
{
   import com.gaiaonline.battle.ApplicationInterfaces.IAssetFactory;
   import com.gaiaonline.objectPool.ObjectPool;
   import flash.system.ApplicationDomain;
   import flash.utils.Dictionary;
   
   public class AssetFactory implements IAssetFactory
   {
       
      
      private var _cachedClasses:Object;
      
      private var _appDomains:Array;
      
      private var _poolList:Dictionary;
      
      public function AssetFactory()
      {
         _poolList = new Dictionary(true);
         _cachedClasses = {};
         _appDomains = [];
         super();
      }
      
      public function addAppDomain(appDomain:ApplicationDomain) : void
      {
         _appDomains.push(appDomain);
      }
      
      public function checkOut(className:String) : Object
      {
         var cl:Class = this.getClass(className,true);
         if(this._poolList[cl] == null)
         {
            this._poolList[cl] = new ObjectPool(new AssetPoolFactory(cl));
         }
         return ObjectPool(this._poolList[cl]).checkOut();
      }
      
      public function getClass(name:String, caching:Boolean = true) : Class
      {
         if(caching && this._cachedClasses[name])
         {
            return this._cachedClasses[name];
         }
         var c:Class = findClass(name);
         if(c && caching)
         {
            this._cachedClasses[name] = c;
         }
         return c;
      }
      
      public function getInstance(name:String, caching:Boolean = true) : Object
      {
         var c:Class = getClass(name,caching);
         return !!c?new c():null;
      }
      
      public function checkIn(obj:Object) : Boolean
      {
         var cl:Class = obj["constructor"];
         if(this._poolList[cl] != null)
         {
            return ObjectPool(this._poolList[cl]).checkIn(obj);
         }
         return false;
      }
      
      private function findClass(name:String) : Class
      {
         var index:String = null;
         var c:Class = null;
         for(index in _appDomains)
         {
            try
            {
               c = _appDomains[index].getDefinition(name) as Class;
               if(c)
               {
                  return c;
               }
            }
            catch(e:Error)
            {
               continue;
            }
         }
         return null;
      }
   }
}

import com.gaiaonline.objectPool.IObjectPoolFactory;

class AssetPoolFactory implements IObjectPoolFactory
{
    
   
   private var _class:Class;
   
   function AssetPoolFactory(cl:Class)
   {
      super();
      this._class = cl;
   }
   
   public function create() : *
   {
      return new _class();
   }
}

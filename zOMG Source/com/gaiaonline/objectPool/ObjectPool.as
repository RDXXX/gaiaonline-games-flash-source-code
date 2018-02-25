package com.gaiaonline.objectPool
{
   import flash.utils.Dictionary;
   
   public class ObjectPool
   {
       
      
      private var _usedObject:Dictionary;
      
      private var _cleanUp:IObjectPoolCleanUp;
      
      private var _factory:IObjectPoolFactory;
      
      private var _usedCount:uint = 0;
      
      private var _unUsedObject:Array;
      
      private var _deconstructor:IObjectPoolDeconstructor;
      
      private var _maxUnUsed:int = -1;
      
      public function ObjectPool(objectPoolFactory:IObjectPoolFactory, objectPoolDeconstructor:IObjectPoolDeconstructor = null, objectPoolCleanUp:IObjectPoolCleanUp = null, maxUnUsed:int = -1)
      {
         _usedObject = new Dictionary(true);
         _unUsedObject = new Array();
         super();
         this._factory = objectPoolFactory;
         this._cleanUp = objectPoolCleanUp;
         this._deconstructor = objectPoolDeconstructor;
         this._maxUnUsed = maxUnUsed;
      }
      
      public function get unUsedCount() : int
      {
         return this._unUsedObject.length;
      }
      
      public function checkOut(initializer:IObjectPoolInitializer = null, args:Array = null) : *
      {
         var obj:* = undefined;
         if(this._unUsedObject.length > 0)
         {
            obj = this._unUsedObject.shift();
         }
         else
         {
            obj = this._factory.create();
         }
         this._usedObject[obj] = true;
         this._usedCount++;
         if(initializer != null)
         {
            initializer.initializeObjectPool(obj,args);
         }
         return obj;
      }
      
      private function disposeHelper(objs:Array, deconstuctor:IObjectPoolDeconstructor = null) : void
      {
         var l:int = objs.length;
         for(var i:int = 0; i < l; i++)
         {
            if(deconstuctor != null)
            {
               deconstuctor.deconstruct(objs[i]);
               objs[i] = null;
            }
         }
      }
      
      public function get objectCount() : int
      {
         return this._unUsedObject.length + this._usedCount;
      }
      
      public function getAllObject() : Array
      {
         var obj:* = null;
         var result:Array = new Array();
         if(this._usedObject != null && this._unUsedObject != null)
         {
            result = this._unUsedObject.concat();
            for(obj in this._usedObject)
            {
               result.push(obj);
            }
         }
         return result;
      }
      
      public function get usedCount() : int
      {
         return this._usedCount;
      }
      
      private function doCleanUp(o:*, cleanup:IObjectPoolCleanUp) : Boolean
      {
         try
         {
            cleanup.objectPoolCleanUp(o);
         }
         catch(error:Error)
         {
            return false;
         }
         return true;
      }
      
      public function checkIn(o:*, cleanup:IObjectPoolCleanUp = null) : Boolean
      {
         if(cleanup == null)
         {
            cleanup = this._cleanUp;
         }
         if(this._usedObject[o] != null)
         {
            delete this._usedObject[o];
            this._usedCount--;
            if(this._unUsedObject.length < this._maxUnUsed || this._maxUnUsed < 0)
            {
               if(cleanup != null)
               {
                  if(!doCleanUp(o,cleanup))
                  {
                     return false;
                  }
               }
               this._unUsedObject.push(o);
            }
            else if(this._deconstructor != null)
            {
               this._deconstructor.deconstruct(o);
            }
            return true;
         }
         return false;
      }
      
      public function dispose(deconstuctor:IObjectPoolDeconstructor = null) : void
      {
         if(deconstuctor == null)
         {
            deconstuctor = this._deconstructor;
         }
         disposeHelper(this._unUsedObject,deconstuctor);
         this._usedObject = null;
         this._unUsedObject = null;
      }
   }
}

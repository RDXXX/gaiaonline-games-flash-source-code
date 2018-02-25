package com.gaiaonline.battle.sounds
{
   import com.gaiaonline.objectPool.ObjectPool;
   import flash.utils.Dictionary;
   
   public class SoundPoolManager implements ISoundPoolManager
   {
       
      
      private var _poolDictionary:Dictionary = null;
      
      private var _maxUnUsed:int = 1;
      
      private var _soundFile:Object = null;
      
      public function SoundPoolManager(soundFile:Object, maxUnUsed:int = 1)
      {
         super();
         _soundFile = soundFile;
         _poolDictionary = new Dictionary(true);
         _maxUnUsed = maxUnUsed;
      }
      
      public function getSoundPool(soundId:String) : ObjectPool
      {
         var factory:SoundFactory = null;
         if(!_poolDictionary[soundId])
         {
            factory = new SoundFactory(_soundFile,soundId);
            _poolDictionary[soundId] = new ObjectPool(factory,factory,factory,_maxUnUsed);
         }
         return _poolDictionary[soundId] as ObjectPool;
      }
      
      public function dispose() : void
      {
         var pool:* = null;
         for(pool in this._poolDictionary)
         {
            ObjectPool(this._poolDictionary[pool]).dispose();
         }
         this._poolDictionary = null;
         this._soundFile = null;
      }
   }
}

import com.gaiaonline.objectPool.IObjectPoolCleanUp;
import com.gaiaonline.objectPool.IObjectPoolDeconstructor;
import com.gaiaonline.objectPool.IObjectPoolFactory;
import com.gaiaonline.objectPool.IObjectPoolInitializer;
import flash.media.Sound;

class SoundFactory implements IObjectPoolFactory, IObjectPoolDeconstructor, IObjectPoolCleanUp, IObjectPoolInitializer
{
    
   
   private var _soundFile:Object = null;
   
   private var _soundId:String = null;
   
   function SoundFactory(soundFile:Object, soundId:String)
   {
      super();
      _soundFile = soundFile;
      _soundId = soundId;
   }
   
   public function deconstruct(obj:*) : void
   {
   }
   
   public function initializeObjectPool(obj:*, args:Array = null) : void
   {
   }
   
   public function objectPoolCleanUp(obj:*) : void
   {
   }
   
   public function create() : *
   {
      var s:Sound = _soundFile.getSound(_soundId);
      return s;
   }
}

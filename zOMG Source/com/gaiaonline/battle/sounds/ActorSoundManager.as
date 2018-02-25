package com.gaiaonline.battle.sounds
{
   import com.gaiaonline.objectPool.ObjectPool;
   import flash.media.Sound;
   import flash.utils.Dictionary;
   
   public class ActorSoundManager
   {
      
      private static var _instance:ActorSoundManager;
       
      
      private var _soundPoolManagers:Dictionary;
      
      public function ActorSoundManager(se:SingletonEnforcer#126)
      {
         _soundPoolManagers = new Dictionary(true);
         super();
         if(_instance || !se)
         {
            throw new Error("ActorSoundManager is a singleton.  Use getInstance.");
         }
      }
      
      public static function getInstance() : ActorSoundManager
      {
         if(!_instance)
         {
            _instance = new ActorSoundManager(new SingletonEnforcer#126());
         }
         return _instance;
      }
      
      public function clearAll(soundRef:Object) : void
      {
         if(this._soundPoolManagers[soundRef] != null)
         {
            SoundPoolManager(this._soundPoolManagers[soundRef]).dispose();
            this._soundPoolManagers[soundRef] = null;
            delete this._soundPoolManagers[soundRef];
         }
      }
      
      public function checkin(soundRef:Object, soundId:String, sound:Sound) : Boolean
      {
         var pool:ObjectPool = null;
         var r:Boolean = false;
         if(this._soundPoolManagers[soundRef] != null)
         {
            pool = SoundPoolManager(this._soundPoolManagers[soundRef]).getSoundPool(soundId);
            r = pool.checkIn(sound);
            return r;
         }
         return false;
      }
      
      public function checkout(soundRef:Object, soundId:String) : Sound
      {
         if(this._soundPoolManagers[soundRef] == null)
         {
            this._soundPoolManagers[soundRef] = new SoundPoolManager(soundRef,4);
         }
         var pool:ObjectPool = SoundPoolManager(this._soundPoolManagers[soundRef]).getSoundPool(soundId);
         var s:Sound = pool.checkOut() as Sound;
         return s;
      }
   }
}

class SingletonEnforcer#126
{
    
   
   function SingletonEnforcer#126()
   {
      super();
   }
}

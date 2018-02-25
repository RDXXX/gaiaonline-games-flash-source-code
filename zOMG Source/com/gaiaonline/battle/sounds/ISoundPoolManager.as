package com.gaiaonline.battle.sounds
{
   import com.gaiaonline.objectPool.ObjectPool;
   
   public interface ISoundPoolManager
   {
       
      
      function getSoundPool(param1:String) : ObjectPool;
   }
}

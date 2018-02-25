package com.gaiaworld.monsters.util
{
   import flash.events.EventDispatcher;
   
   public class MonsterBridge extends EventDispatcher
   {
      
      private static var instance;
       
      
      public function MonsterBridge()
      {
         super();
      }
      
      public static function getInstance() : MonsterBridge
      {
         if(instance == null)
         {
            instance = new MonsterBridge();
         }
         return instance;
      }
   }
}

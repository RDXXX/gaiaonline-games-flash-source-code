package com.gaiaworld.monsters.model
{
   public class MonsterModel
   {
      
      private static var instance:MonsterModel;
       
      
      public function MonsterModel()
      {
         super();
      }
      
      public static function getInstance() : MonsterModel
      {
         if(instance == null)
         {
            instance = new MonsterModel();
         }
         return instance;
      }
   }
}

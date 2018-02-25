package org.igniterealtime.xiff.data.id
{
   public class IncrementalGenerator implements IIDGenerator
   {
      
      private static var instance:IIDGenerator;
       
      
      private var myCounter:int = 0;
      
      public function IncrementalGenerator()
      {
         super();
      }
      
      public static function getInstance() : IIDGenerator
      {
         if(instance == null)
         {
            instance = new IncrementalGenerator();
         }
         return instance;
      }
      
      public function getID(prefix:String) : String
      {
         var id:String = null;
         myCounter++;
         if(prefix != null)
         {
            id = prefix + myCounter;
         }
         else
         {
            id = myCounter.toString();
         }
         return id;
      }
   }
}

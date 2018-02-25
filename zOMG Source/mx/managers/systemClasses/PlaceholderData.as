package mx.managers.systemClasses
{
   import flash.events.IEventDispatcher;
   
   public class PlaceholderData
   {
       
      
      public var bridge:IEventDispatcher;
      
      public var data:Object;
      
      public var id:String;
      
      public function PlaceholderData(id:String, bridge:IEventDispatcher, data:Object)
      {
         super();
         this.id = id;
         this.bridge = bridge;
         this.data = data;
      }
   }
}

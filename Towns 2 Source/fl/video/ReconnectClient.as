package fl.video
{
   use namespace flvplayback_internal;
   
   public class ReconnectClient
   {
       
      
      public var owner:NCManager;
      
      public function ReconnectClient(param1:NCManager)
      {
         super();
         this.owner = param1;
      }
      
      public function close() : void
      {
      }
      
      public function onBWDone(... rest) : void
      {
         this.owner.onReconnected();
      }
   }
}

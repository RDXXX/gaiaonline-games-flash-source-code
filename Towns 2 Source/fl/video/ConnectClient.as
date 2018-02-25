package fl.video
{
   import flash.net.NetConnection;
   
   use namespace flvplayback_internal;
   
   public class ConnectClient
   {
       
      
      public var owner:NCManager;
      
      public var nc:NetConnection;
      
      public var connIndex:uint;
      
      public var pending:Boolean;
      
      public function ConnectClient(param1:NCManager, param2:NetConnection, param3:uint = 0)
      {
         super();
         this.owner = param1;
         this.nc = param2;
         this.connIndex = param3;
         this.pending = false;
      }
      
      public function close() : void
      {
      }
      
      public function onBWDone(... rest) : void
      {
         var _loc2_:Number = NaN;
         if(rest.length > 0)
         {
            _loc2_ = rest[0];
         }
         this.owner.onConnected(this.nc,_loc2_);
      }
      
      public function onBWCheck(... rest) : Number
      {
         return ++this.owner._payload;
      }
      
      public function onDVRSubscribe(... rest) : void
      {
      }
      
      public function onFCSubscribe(... rest) : void
      {
      }
   }
}

package fl.video
{
   import flash.net.NetConnection;
   
   use namespace flvplayback_internal;
   
   public class ConnectClientDynamicStream extends ConnectClient
   {
       
      
      public function ConnectClientDynamicStream(param1:NCManager, param2:NetConnection, param3:uint = 0)
      {
         super(param1,param2,param3);
      }
      
      override public function onBWDone(... rest) : void
      {
         var _loc2_:Number = NaN;
         if(rest.length > 1)
         {
            _loc2_ = rest[0];
         }
      }
      
      override public function onBWCheck(... rest) : Number
      {
         return 0;
      }
   }
}

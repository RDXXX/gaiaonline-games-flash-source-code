package fl.video
{
   import flash.net.NetConnection;
   
   use namespace flvplayback_internal;
   
   public class ConnectClientNative extends ConnectClient
   {
       
      
      public function ConnectClientNative(param1:NCManager, param2:NetConnection, param3:uint = 0)
      {
         super(param1,param2,param3);
      }
      
      public function _onbwdone(... rest) : void
      {
         var _loc2_:Number = NaN;
         if(rest.length > 1)
         {
            _loc2_ = rest[1];
         }
         owner.onConnected(nc,_loc2_);
      }
      
      public function _onbwcheck(... rest) : *
      {
         return rest.length > 1?rest[1]:0;
      }
   }
}

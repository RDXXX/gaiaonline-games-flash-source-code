package mx.collections
{
   import mx.core.mx_internal;
   import mx.rpc.IResponder;
   
   use namespace mx_internal;
   
   public class ItemResponder implements IResponder
   {
      
      mx_internal static const VERSION:String = "3.6.0.21751";
       
      
      private var _faultHandler:Function;
      
      private var _token:Object;
      
      private var _resultHandler:Function;
      
      public function ItemResponder(result:Function, fault:Function, token:Object = null)
      {
         super();
         _resultHandler = result;
         _faultHandler = fault;
         _token = token;
      }
      
      public function result(data:Object) : void
      {
         _resultHandler(data,_token);
      }
      
      public function fault(info:Object) : void
      {
         _faultHandler(info,_token);
      }
   }
}

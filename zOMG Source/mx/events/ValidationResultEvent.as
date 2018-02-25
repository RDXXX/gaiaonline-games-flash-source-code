package mx.events
{
   import flash.events.Event;
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public class ValidationResultEvent extends Event
   {
      
      public static const INVALID:String = "invalid";
      
      mx_internal static const VERSION:String = "3.6.0.21751";
      
      public static const VALID:String = "valid";
       
      
      public var results:Array;
      
      public var field:String;
      
      public function ValidationResultEvent(type:String, bubbles:Boolean = false, cancelable:Boolean = false, field:String = null, results:Array = null)
      {
         super(type,bubbles,cancelable);
         this.field = field;
         this.results = results;
      }
      
      public function get message() : String
      {
         var msg:String = "";
         var n:int = results.length;
         for(var i:int = 0; i < n; i++)
         {
            if(results[i].isError)
            {
               msg = msg + (msg == ""?"":"\n");
               msg = msg + results[i].errorMessage;
            }
         }
         return msg;
      }
      
      override public function clone() : Event
      {
         return new ValidationResultEvent(type,bubbles,cancelable,field,results);
      }
   }
}

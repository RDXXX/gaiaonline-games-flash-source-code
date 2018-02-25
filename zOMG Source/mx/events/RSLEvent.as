package mx.events
{
   import flash.display.LoaderInfo;
   import flash.events.Event;
   import flash.events.ProgressEvent;
   import flash.net.URLRequest;
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public class RSLEvent extends ProgressEvent
   {
      
      public static const RSL_PROGRESS:String = "rslProgress";
      
      public static const RSL_ERROR:String = "rslError";
      
      mx_internal static const VERSION:String = "3.6.0.21751";
      
      public static const RSL_COMPLETE:String = "rslComplete";
       
      
      public var loaderInfo:LoaderInfo;
      
      public var errorText:String;
      
      public var rslIndex:int;
      
      public var rslTotal:int;
      
      public var url:URLRequest;
      
      public function RSLEvent(type:String, bubbles:Boolean = false, cancelable:Boolean = false, bytesLoaded:int = -1, bytesTotal:int = -1, rslIndex:int = -1, rslTotal:int = -1, url:URLRequest = null, errorText:String = null)
      {
         super(type,bubbles,cancelable,bytesLoaded,bytesTotal);
         this.rslIndex = rslIndex;
         this.rslTotal = rslTotal;
         this.url = url;
         this.errorText = errorText;
      }
      
      override public function clone() : Event
      {
         return new RSLEvent(type,bubbles,cancelable,bytesLoaded,bytesTotal,rslIndex,rslTotal,url,errorText);
      }
   }
}

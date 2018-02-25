package mx.events
{
   import flash.events.Event;
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public class BrowserChangeEvent extends Event
   {
      
      public static const BROWSER_URL_CHANGE:String = "browserURLChange";
      
      mx_internal static const VERSION:String = "3.6.0.21751";
      
      public static const URL_CHANGE:String = "urlChange";
      
      public static const APPLICATION_URL_CHANGE:String = "applicationURLChange";
       
      
      public var lastURL:String;
      
      public var url:String;
      
      public function BrowserChangeEvent(type:String, bubbles:Boolean = false, cancelable:Boolean = false, url:String = null, lastURL:String = null)
      {
         super(type,bubbles,cancelable);
         this.url = url;
         this.lastURL = lastURL;
      }
      
      override public function clone() : Event
      {
         return new BrowserChangeEvent(type,bubbles,cancelable,url,lastURL);
      }
   }
}

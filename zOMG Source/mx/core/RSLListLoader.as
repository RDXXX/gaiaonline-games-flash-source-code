package mx.core
{
   import flash.events.Event;
   
   use namespace mx_internal;
   
   public class RSLListLoader
   {
      
      mx_internal static const VERSION:String = "3.6.0.21751";
       
      
      private var chainedSecurityErrorHandler:Function;
      
      private var chainedIOErrorHandler:Function;
      
      private var rslList:Array;
      
      private var chainedRSLErrorHandler:Function;
      
      private var chainedCompleteHandler:Function;
      
      private var currentIndex:int = 0;
      
      private var chainedProgressHandler:Function;
      
      public function RSLListLoader(rslList:Array)
      {
         rslList = [];
         super();
         this.rslList = rslList;
      }
      
      private function loadNext() : void
      {
         if(!isDone())
         {
            currentIndex++;
            if(currentIndex < rslList.length)
            {
               rslList[currentIndex].load(chainedProgressHandler,listCompleteHandler,listIOErrorHandler,listSecurityErrorHandler,chainedRSLErrorHandler);
            }
         }
      }
      
      public function getIndex() : int
      {
         return currentIndex;
      }
      
      public function load(progressHandler:Function, completeHandler:Function, ioErrorHandler:Function, securityErrorHandler:Function, rslErrorHandler:Function) : void
      {
         chainedProgressHandler = progressHandler;
         chainedCompleteHandler = completeHandler;
         chainedIOErrorHandler = ioErrorHandler;
         chainedSecurityErrorHandler = securityErrorHandler;
         chainedRSLErrorHandler = rslErrorHandler;
         currentIndex = -1;
         loadNext();
      }
      
      private function listCompleteHandler(event:Event) : void
      {
         if(chainedCompleteHandler != null)
         {
            chainedCompleteHandler(event);
         }
         loadNext();
      }
      
      public function isDone() : Boolean
      {
         return currentIndex >= rslList.length;
      }
      
      private function listSecurityErrorHandler(event:Event) : void
      {
         if(chainedSecurityErrorHandler != null)
         {
            chainedSecurityErrorHandler(event);
         }
      }
      
      public function getItemCount() : int
      {
         return rslList.length;
      }
      
      public function getItem(index:int) : RSLItem
      {
         if(index < 0 || index >= rslList.length)
         {
            return null;
         }
         return rslList[index];
      }
      
      private function listIOErrorHandler(event:Event) : void
      {
         if(chainedIOErrorHandler != null)
         {
            chainedIOErrorHandler(event);
         }
      }
   }
}

package mx.core
{
   import flash.events.IEventDispatcher;
   import flash.events.IOErrorEvent;
   import mx.events.ResourceEvent;
   import mx.resources.IResourceManager;
   import mx.resources.ResourceManager;
   
   use namespace mx_internal;
   
   public class ResourceModuleRSLItem extends RSLItem
   {
      
      mx_internal static const VERSION:String = "3.6.0.21751";
       
      
      public function ResourceModuleRSLItem(url:String)
      {
         super(url);
      }
      
      private function resourceErrorHandler(event:ResourceEvent) : void
      {
         var errorEvent:IOErrorEvent = new IOErrorEvent(IOErrorEvent.IO_ERROR);
         errorEvent.text = event.errorText;
         super.itemErrorHandler(errorEvent);
      }
      
      override public function load(progressHandler:Function, completeHandler:Function, ioErrorHandler:Function, securityErrorHandler:Function, rslErrorHandler:Function) : void
      {
         chainedProgressHandler = progressHandler;
         chainedCompleteHandler = completeHandler;
         chainedIOErrorHandler = ioErrorHandler;
         chainedSecurityErrorHandler = securityErrorHandler;
         chainedRSLErrorHandler = rslErrorHandler;
         var resourceManager:IResourceManager = ResourceManager.getInstance();
         var eventDispatcher:IEventDispatcher = resourceManager.loadResourceModule(url);
         eventDispatcher.addEventListener(ResourceEvent.PROGRESS,itemProgressHandler);
         eventDispatcher.addEventListener(ResourceEvent.COMPLETE,itemCompleteHandler);
         eventDispatcher.addEventListener(ResourceEvent.ERROR,resourceErrorHandler);
      }
   }
}

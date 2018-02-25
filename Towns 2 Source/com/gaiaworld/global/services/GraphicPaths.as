package com.gaiaworld.global.services
{
   import com.gaiaonline.gsi.GSICompleteEvent;
   import com.gaiaonline.gsi.GSIGateway;
   import com.gaiaonline.serializers.JSONSerializer;
   import com.gaiaworld.global.constants.GsiConstants;
   import com.gaiaworld.global.controller.GlobalController;
   import com.gaiaworld.global.model.GlobalModel;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class GraphicPaths extends EventDispatcher
   {
      
      public static const PATHS_LOADED:String = "pathsLoaded";
       
      
      private var globalModel:GlobalModel;
      
      private var gateway:GSIGateway;
      
      private var globalController:GlobalController;
      
      public function GraphicPaths()
      {
         this.globalModel = GlobalModel.getInstance();
         this.globalController = new GlobalController();
         super();
      }
      
      public function getPaths() : void
      {
         this.gateway = new GSIGateway(this.globalModel.gsiSubdomain);
         this.gateway.serializerClass = JSONSerializer;
         this.gateway.addEventListener(GSICompleteEvent.COMPLETE,this.pathsLoaded);
         this.gateway.queue(GsiConstants.GET_PATHS);
         this.gateway.send();
      }
      
      private function pathsLoaded(param1:GSICompleteEvent) : void
      {
         this.gateway.removeEventListener(GSICompleteEvent.COMPLETE,this.pathsLoaded);
         var _loc2_:Number = param1.methods.length;
         this.globalController.setPaths(param1.methods[0].data.thumbnailpath,param1.methods[0].data.imagespath,param1.methods[0].data.roomimagepath,param1.methods[0].data.avatarpath);
         this.gateway.reset();
         this.dispatchEvent(new Event(PATHS_LOADED,true));
      }
   }
}

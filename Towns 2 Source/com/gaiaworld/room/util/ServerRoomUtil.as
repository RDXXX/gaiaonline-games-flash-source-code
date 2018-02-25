package com.gaiaworld.room.util
{
   import com.gaiaonline.gsi.GSICompleteEvent;
   import com.gaiaonline.gsi.GSIGateway;
   import com.gaiaonline.serializers.JSONSerializer;
   import com.gaiaworld.global.constants.GsiConstants;
   import com.gaiaworld.global.model.GlobalModel;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class ServerRoomUtil extends EventDispatcher
   {
      
      public static const GOT_SERVER_ROOM:String = "gotServerRoom";
       
      
      private var gateway:GSIGateway;
      
      private var globalModel:GlobalModel;
      
      public var serverRoom:String;
      
      public function ServerRoomUtil()
      {
         this.globalModel = GlobalModel.getInstance();
         super();
         this.gateway = new GSIGateway(this.globalModel.gsiSubdomain);
         this.gateway.serializerClass = JSONSerializer;
      }
      
      public function getRoomFromServer(param1:Number) : *
      {
         this.gateway.addEventListener(GSICompleteEvent.COMPLETE,this.roomSelected);
         this.gateway.queue(GsiConstants.GET_ROOM_NAME_FROM_SERVER,"instance",param1);
         this.gateway.send();
      }
      
      private function roomSelected(param1:GSICompleteEvent) : void
      {
         var _loc2_:Number = param1.methods[0].data.server.id;
         var _loc3_:String = param1.methods[0].data.server.ip;
         var _loc4_:Number = param1.methods[0].data.server.port;
         var _loc5_:String = param1.methods[0].data.room;
         this.serverRoom = _loc5_;
         this.dispatchEvent(new Event(GOT_SERVER_ROOM,true));
      }
   }
}

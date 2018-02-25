package com.gaiaworld.sushi.services
{
   import com.gaiaonline.gsi.GSICompleteEvent;
   import com.gaiaonline.gsi.GSIGateway;
   import com.gaiaonline.serializers.JSONSerializer;
   import com.gaiaworld.global.controller.GlobalController;
   import com.gaiaworld.global.model.GlobalModel;
   import com.gaiaworld.global.util.StringFunctions;
   import com.gaiaworld.global.vo.ColorVo;
   import com.gaiaworld.house.controller.DebugController;
   import com.gaiaworld.sushi.constants.ChatConstants;
   import com.gaiaworld.sushi.controller.ChatController;
   import com.gaiaworld.sushi.model.ChatModel;
   import com.gaiaworld.sushi.vo.ServerVo;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class ChatInit extends EventDispatcher
   {
       
      
      private var gateway:GSIGateway;
      
      private var chatModel:ChatModel;
      
      private var chatController:ChatController;
      
      private var debugController:DebugController;
      
      private var globalModel:GlobalModel;
      
      private var _gameID:Number = 10;
      
      private var globalController:GlobalController;
      
      public function ChatInit()
      {
         this.chatModel = ChatModel.getInstance();
         this.chatController = new ChatController();
         this.debugController = new DebugController();
         this.globalModel = GlobalModel.getInstance();
         this.globalController = new GlobalController();
         super();
         this.gateway = new GSIGateway(this.globalModel.gsiSubdomain);
         this.gateway.serializerClass = JSONSerializer;
      }
      
      public function getServerList() : *
      {
         this.gateway.addEventListener(GSICompleteEvent.COMPLETE,this.gotServerList);
         this.gateway.queue(50,this.gameID);
         this.gateway.send();
      }
      
      private function gotServerList(param1:GSICompleteEvent) : *
      {
         var _loc5_:ServerVo = null;
         var _loc2_:Array = new Array();
         this.gateway.removeEventListener(GSICompleteEvent.COMPLETE,this.gotServerList);
         var _loc3_:Number = param1.methods[0].data.length;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = new ServerVo();
            _loc5_.fromObj(param1.methods[0].data[_loc4_]);
            _loc2_.push(_loc5_);
            _loc4_++;
         }
         this.chatController.setServers(_loc2_);
         this.getColors();
      }
      
      private function getColors() : *
      {
         this.gateway.addEventListener(GSICompleteEvent.COMPLETE,this.gotColors);
         this.gateway.queue(115);
         this.gateway.send();
      }
      
      private function gotColors(param1:GSICompleteEvent) : *
      {
         var _loc4_:* = undefined;
         var _loc5_:String = null;
         var _loc6_:Number = NaN;
         this.gateway.removeEventListener(GSICompleteEvent.COMPLETE,this.gotColors);
         var _loc2_:Number = param1.methods[0].data.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.methods[0].data[_loc3_].id;
            _loc5_ = param1.methods[0].data[_loc3_].color;
            if(_loc5_ != null)
            {
               _loc5_ = StringFunctions.findReplace("#",_loc5_,"0x");
               _loc6_ = Number(_loc5_);
               this.chatController.addColor(new ColorVo(Number(_loc4_),_loc6_));
            }
            _loc3_++;
         }
         this.chatController.colorsReady();
         this.dispatchEvent(new Event(ChatConstants.INIT_DONE,true));
      }
      
      public function get gameID() : Number
      {
         return this._gameID;
      }
      
      public function set gameID(param1:Number) : void
      {
         this._gameID = param1;
         this.globalController.setGameID(this.gameID);
      }
   }
}

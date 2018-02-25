package com.gaiaworld.user.services
{
   import com.gaiaonline.gsi.GSICompleteEvent;
   import com.gaiaonline.gsi.GSIGateway;
   import com.gaiaonline.serializers.JSONSerializer;
   import com.gaiaworld.global.constants.GsiConstants;
   import com.gaiaworld.global.model.GlobalModel;
   import com.gaiaworld.global.util.StringFunctions;
   import com.gaiaworld.user.controller.UserController;
   import com.gaiaworld.user.vo.PalVo;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class NonPalDataLoader extends EventDispatcher
   {
      
      public static const NON_PALS_DONE:String = "nonPalsDone";
       
      
      private var userController:UserController;
      
      private var globalModel:GlobalModel;
      
      private var index:Number = 0;
      
      private var idArray:Array;
      
      private var gateway:GSIGateway;
      
      public var palVo:PalVo;
      
      public function NonPalDataLoader()
      {
         this.userController = new UserController();
         this.globalModel = GlobalModel.getInstance();
         super();
         this.gateway = new GSIGateway(this.globalModel.gsiSubdomain);
         this.gateway.serializerClass = JSONSerializer;
      }
      
      public function getUserInfo(param1:Number) : *
      {
         this.gateway.addEventListener(GSICompleteEvent.COMPLETE,this.gotUserInfo);
         this.gateway.queue(GsiConstants.GET_USER_INFO,param1);
         this.gateway.send();
      }
      
      private function gotUserInfo(param1:GSICompleteEvent) : void
      {
         this.gateway.removeEventListener(GSICompleteEvent.COMPLETE,this.gotUserInfo);
         this.palVo = new PalVo();
         this.palVo.fromObj(param1.methods[0].data);
         this.palVo.userName = unescape(this.palVo.userName);
         this.palVo.userName = StringFunctions.findReplace("+",this.palVo.userName," ");
         this.userController.setNonPal(this.palVo);
         this.dispatchEvent(new Event(NON_PALS_DONE,true));
      }
      
      public function getNonPals(param1:Array) : *
      {
         this.idArray = param1;
         this.index = -1;
         this.getNextNonPal();
      }
      
      private function getNextNonPal() : *
      {
         this.index++;
         if(this.index < this.idArray.length)
         {
            this.gateway.addEventListener(GSICompleteEvent.COMPLETE,this.gotUserInfo2);
            this.gateway.invoke(GsiConstants.GET_USER_INFO,this.idArray[this.index]);
         }
         else
         {
            this.dispatchEvent(new Event(NON_PALS_DONE,true));
         }
      }
      
      private function gotUserInfo2(param1:GSICompleteEvent) : void
      {
         var _loc2_:PalVo = new PalVo();
         _loc2_.fromObj(param1.methods[0].data);
         _loc2_.userName = unescape(_loc2_.userName);
         _loc2_.userName = StringFunctions.findReplace("+",_loc2_.userName," ");
         this.userController.setNonPal(_loc2_);
         this.getNextNonPal();
      }
   }
}

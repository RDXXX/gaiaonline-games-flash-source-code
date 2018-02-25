package com.gaiaworld.avatar.services
{
   import com.gaiaonline.gsi.GSICompleteEvent;
   import com.gaiaonline.gsi.GSIGateway;
   import com.gaiaonline.serializers.JSONSerializer;
   import com.gaiaworld.global.constants.GsiConstants;
   import com.gaiaworld.global.model.GlobalModel;
   import com.gaiaworld.global.util.StringFunctions;
   import com.gaiaworld.user.model.UserModel;
   import com.gaiaworld.user.vo.UserVo;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class OtherAvDataLoader extends EventDispatcher
   {
      
      public static const AV_DATA_COMPLETE:String = "av_data_complete";
       
      
      private var gateway:GSIGateway;
      
      public var userVo:UserVo;
      
      private var globalModel:GlobalModel;
      
      private var userModel:UserModel;
      
      public var avPath:String = "";
      
      public var avPath2:String = "";
      
      public function OtherAvDataLoader()
      {
         this.globalModel = GlobalModel.getInstance();
         this.userModel = UserModel.getInstance();
         super();
         this.gateway = new GSIGateway(this.globalModel.gsiSubdomain);
         this.gateway.serializerClass = JSONSerializer;
      }
      
      public function getUserInfo(param1:Number) : *
      {
         if(isNaN(param1))
         {
            return;
         }
         this.gateway.addEventListener(GSICompleteEvent.COMPLETE,this.gotUserInfo);
         this.gateway.queue(GsiConstants.GET_USER_INFO,param1);
         this.gateway.send();
      }
      
      private function gotUserInfo(param1:GSICompleteEvent) : *
      {
         this.gateway.removeEventListener(GSICompleteEvent.COMPLETE,this.gotUserInfo);
         this.userVo = new UserVo();
         this.userVo.fromObj(param1.methods[0].data);
         this.avPath2 = this.userVo.avatar;
         this.avPath = this.userVo.avatar_url;
         if(this.avPath == null)
         {
            this.avPath = "http://a2.cdn.gaiaonline.com/dress-up/avatar/" + this.avPath2;
         }
         if(this.avPath != null)
         {
            this.avPath = StringFunctions.findReplace("flip",this.avPath,"strip");
            this.dispatchEvent(new Event(AV_DATA_COMPLETE,true));
         }
      }
   }
}

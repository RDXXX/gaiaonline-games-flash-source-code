package com.gaiaworld.global.util
{
   import com.gaiaonline.gsi.GSICompleteEvent;
   import com.gaiaonline.gsi.GSIGateway;
   import com.gaiaonline.serializers.JSONSerializer;
   import com.gaiaworld.avatar.controller.OthersController;
   import com.gaiaworld.avatar.interfaces.IAvatar;
   import com.gaiaworld.avatar.model.OthersModel;
   import com.gaiaworld.global.model.GlobalModel;
   import com.gaiaworld.global.vo.StrikeVo;
   import com.gaiaworld.sushi.controller.ChatController;
   import com.gaiaworld.sushi.controller.events.ChatEvent;
   import com.gaiaworld.sushi.model.ChatModel;
   import com.gaiaworld.towns.smites.Explosion;
   import com.gaiaworld.user.model.UserModel;
   import com.gaiaworld.user.vo.UserVo;
   import flash.events.Event;
   
   public class AutoMod
   {
       
      
      private var cArray:Vector.<String>;
      
      private var chatModel:ChatModel;
      
      private var othersController:OthersController;
      
      private var chatController:ChatController;
      
      private var strikeArray:Array;
      
      private var userModel:UserModel;
      
      private var othersModel:OthersModel;
      
      private var gsi:GSIGateway;
      
      private var globalModel:GlobalModel;
      
      public function AutoMod()
      {
         this.cArray = new Vector.<String>();
         this.chatModel = ChatModel.getInstance();
         this.othersController = new OthersController();
         this.chatController = new ChatController();
         this.strikeArray = new Array();
         this.userModel = UserModel.getInstance();
         this.othersModel = OthersModel.getInstance();
         this.globalModel = GlobalModel.getInstance();
         super();
         this.gsi = new GSIGateway(this.globalModel.gsiSubdomain);
         this.gsi.serializerClass = JSONSerializer;
         this.getWords();
      }
      
      private function getWords() : *
      {
         this.gsi.addEventListener(GSICompleteEvent.COMPLETE,this.gotWords);
         this.gsi.invoke(11027);
      }
      
      private function gotWords(param1:GSICompleteEvent) : void
      {
         this.gsi.removeEventListener(GSICompleteEvent.COMPLETE,this.gotWords);
         DebugTool.pr(param1.methods[0].data);
         var _loc2_:Array = param1.methods[0].data.words;
         var _loc3_:Number = _loc2_.length;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            this.cArray.push(_loc2_[_loc4_]);
            _loc4_++;
         }
         this.chatModel.addEventListener(ChatEvent.CHAT_MESSAGE_RECEIVED,this.newMessage);
      }
      
      private function newMessage(param1:ChatEvent) : void
      {
         if(this.parse(param1.param) == true)
         {
            this.countStrike(param1.userVo);
         }
      }
      
      private function countStrike(param1:UserVo) : *
      {
         var _loc4_:Number = NaN;
         var _loc5_:IAvatar = null;
         var _loc2_:StrikeVo = this.strikeArray[param1.gaia_id];
         if(_loc2_ == null)
         {
            _loc2_ = new StrikeVo(param1,0);
            this.strikeArray[param1.gaia_id] = _loc2_;
         }
         var _loc3_:Number = new Date().getTime() / 10;
         _loc2_.count++;
         _loc2_.addTime(_loc3_);
         if(_loc2_.count > 1)
         {
            _loc4_ = _loc2_.getElapsed();
            if(_loc4_ < 30000)
            {
               _loc5_ = this.othersModel.getAvatar(param1);
               if(_loc5_ != null)
               {
                  if(_loc5_.clip)
                  {
                     if(_loc5_.clip.alpha == 1)
                     {
                        this.attachExplosion(param1);
                     }
                  }
               }
            }
         }
      }
      
      private function remove(param1:UserVo) : *
      {
         this.othersController.muteUser(param1);
         this.othersModel.getAvatar(param1).clip.alpha = 0.5;
      }
      
      private function attachExplosion(param1:UserVo) : *
      {
         var _loc2_:Explosion = new Explosion();
         _loc2_.userVo = param1;
         _loc2_.addEventListener(Explosion.ANI_DONE,this.explosionDone);
         var _loc3_:IAvatar = this.othersModel.getAvatar(param1);
         _loc3_.attachItem(30,-30,_loc2_);
      }
      
      private function explosionDone(param1:Event) : *
      {
         var _loc2_:Explosion = param1.target as Explosion;
         _loc2_.removeEventListener(Explosion.ANI_DONE,this.explosionDone);
         var _loc3_:UserVo = _loc2_.userVo;
         this.remove(_loc3_);
      }
      
      public function parse(param1:String) : Boolean
      {
         param1 = StringFunctions.findReplace(" ",param1,"");
         var _loc2_:RegExp = /[^A-Za-z0-9]/g;
         param1 = param1.replace(_loc2_,"");
         var _loc3_:Number = this.cArray.length;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            if(StringFunctions.contains(param1.toLowerCase(),this.cArray[_loc4_]) == true)
            {
               return true;
            }
            _loc4_++;
         }
         return false;
      }
      
      private function setUpData() : *
      {
         this.cArray.push("gaiahq");
         this.cArray.push("logicalgamer");
         this.cArray.push("lvmmo");
         this.cArray.push("mmook");
         this.cArray.push("okaygoods");
         this.cArray.push("0kaygoods");
         this.cArray.push("0kaygo0ds");
         this.cArray.push("0kayg0ods");
         this.cArray.push("0kayg00ds");
         this.cArray.push("okayg00ds");
         this.cArray.push("okaygo0ds");
         this.cArray.push("goods");
         this.cArray.push("g00ds");
         this.cArray.push("go0ds");
         this.cArray.push("g0ods");
         this.cArray.push("gameim");
         this.cArray.push("http://");
      }
   }
}

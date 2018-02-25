package com.gaiaworld.user.util
{
   import com.gaiaworld.user.model.UserModel;
   import com.gaiaworld.user.services.NonPalDataLoader;
   import com.gaiaworld.user.vo.PalVo;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class LLUserInfo extends EventDispatcher
   {
      
      public static const LL_USER_INFO_READY:String = "lluserInfoReady";
       
      
      private var pals:Array;
      
      private var nonPals:Array;
      
      public var users:Array;
      
      private var nonPalData:NonPalDataLoader;
      
      private var userModel:UserModel;
      
      public function LLUserInfo()
      {
         this.pals = new Array();
         this.nonPals = new Array();
         this.users = new Array();
         this.nonPalData = new NonPalDataLoader();
         this.userModel = UserModel.getInstance();
         super();
      }
      
      public function getUsersData(param1:Array) : *
      {
         var _loc4_:PalVo = null;
         this.nonPalData.addEventListener(NonPalDataLoader.NON_PALS_DONE,this.dataLoaded);
         var _loc2_:Number = param1.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = this.userModel.getPalByID(param1[_loc3_]);
            if(_loc4_ != null)
            {
               this.users.push(_loc4_);
            }
            else
            {
               this.nonPals.push(param1[_loc3_]);
            }
            _loc3_++;
         }
         this.nonPalData.getNonPals(this.nonPals);
      }
      
      private function dataLoaded(param1:Event) : void
      {
         var _loc4_:PalVo = null;
         var _loc2_:Number = this.nonPals.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = this.userModel.getNonPalByID(this.nonPals[_loc3_]);
            if(_loc4_ != null)
            {
               this.users.push(_loc4_);
            }
            _loc3_++;
         }
         this.dispatchEvent(new Event(LL_USER_INFO_READY,true));
      }
   }
}

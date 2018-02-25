package com.gaiaworld.towns.services
{
   import com.adobe.serialization.json.JSONEncoder;
   import com.gaiaonline.gsi.GSICompleteEvent;
   import com.gaiaonline.gsi.GSIGateway;
   import com.gaiaonline.serializers.JSONSerializer;
   import com.gaiaworld.global.constants.GlobalConstants;
   import com.gaiaworld.global.constants.GsiConstants;
   import com.gaiaworld.global.model.GlobalModel;
   import com.gaiaworld.global.util.StringFunctions;
   import com.gaiaworld.room.controller.GpsController;
   import com.gaiaworld.room.model.GpsModel;
   import com.gaiaworld.towns.vo.LocBookmarkVo;
   import com.gaiaworld.user.model.UserModel;
   import com.gaiaworld.user.vo.PSettingVo;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class LocBookmark extends EventDispatcher
   {
       
      
      private var gsi:GSIGateway;
      
      private var globalModel:GlobalModel;
      
      private var gpsModel:GpsModel;
      
      private var gpsController:GpsController;
      
      private var bookmarkArray:Array;
      
      public function LocBookmark()
      {
         this.globalModel = GlobalModel.getInstance();
         this.gpsModel = GpsModel.getInstance();
         this.gpsController = new GpsController();
         super();
         this.globalModel.addEventListener(GlobalConstants.SUBDOMAIN_SET,this.subdomainSet);
      }
      
      private function subdomainSet(param1:Event) : *
      {
         this.gsi = new GSIGateway(this.globalModel.gsiSubdomain);
         this.gsi.serializerClass = JSONSerializer;
         this.getBookmarks();
      }
      
      public function saveBookmark(param1:String, param2:Number, param3:Number, param4:String) : *
      {
         var _loc5_:Number = NaN;
         var _loc6_:String = null;
         var _loc7_:int = 0;
         var _loc8_:UserModel = null;
         var _loc9_:PSettingVo = null;
         var _loc10_:JSONEncoder = null;
         var _loc11_:LocBookmarkVo = null;
         if(this.gsi != null)
         {
            this.bookmarkArray = this.gpsModel.bookmarkArray;
            _loc5_ = this.bookmarkArray.length;
            if(_loc5_ < 10)
            {
               this.bookmarkArray.push(new LocBookmarkVo(param1,param2,param3,param4));
               _loc6_ = "";
               _loc5_++;
               _loc7_ = 0;
               while(_loc7_ < _loc5_)
               {
                  _loc11_ = this.bookmarkArray[_loc7_];
                  _loc6_ = _loc6_ + (_loc11_.toString() + "<bm>");
                  _loc7_++;
               }
               _loc8_ = UserModel.getInstance();
               _loc9_ = new PSettingVo(_loc6_ + " ",_loc8_.pSetting);
               _loc10_ = new JSONEncoder(_loc9_);
               this.gsi.addEventListener(GSICompleteEvent.COMPLETE,this.bookmarkSaved);
               this.gsi.queue(GsiConstants.BOOKMARK_LOCATION,_loc9_);
               this.gsi.send();
            }
         }
      }
      
      private function bookmarkSaved(param1:GSICompleteEvent) : *
      {
         this.gsi.removeEventListener(GSICompleteEvent.COMPLETE,this.bookmarkSaved);
      }
      
      public function getBookmarks() : *
      {
         this.gsi.addEventListener(GSICompleteEvent.COMPLETE,this.gotBookmarks);
         this.gsi.queue(GsiConstants.GET_LOCATION_BOOKMARKS);
         this.gsi.send();
      }
      
      public function saveBookmarks() : void
      {
         var _loc7_:LocBookmarkVo = null;
         this.bookmarkArray = this.gpsModel.bookmarkArray;
         var _loc1_:String = "";
         var _loc2_:Number = this.bookmarkArray.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc7_ = this.bookmarkArray[_loc3_];
            _loc1_ = _loc1_ + (_loc7_.toString() + "<bm>");
            _loc3_++;
         }
         var _loc4_:UserModel = UserModel.getInstance();
         var _loc5_:PSettingVo = new PSettingVo(_loc1_ + " ",_loc4_.pSetting);
         var _loc6_:JSONEncoder = new JSONEncoder(_loc5_);
         this.gsi.addEventListener(GSICompleteEvent.COMPLETE,this.bookmarkSaved);
         this.gsi.queue(GsiConstants.BOOKMARK_LOCATION,_loc5_);
         this.gsi.send();
      }
      
      private function gotBookmarks(param1:GSICompleteEvent) : *
      {
         var _loc3_:PSettingVo = null;
         var _loc4_:Array = null;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:LocBookmarkVo = null;
         this.gsi.removeEventListener(GSICompleteEvent.COMPLETE,this.gotBookmarks);
         var _loc2_:Array = new Array();
         if(param1.methods == null)
         {
            return;
         }
         if(param1.methods[0] == null)
         {
            return;
         }
         if(StringFunctions.contains(param1.methods[0].data,"Unable to authenticate the user session."))
         {
            return;
         }
         if(param1.methods[0].data == "true" || param1.methods[0].data == "false")
         {
            this.gpsController.setBookmarks(new Array());
            return;
         }
         if(param1.methods[0].data != null && param1.methods[0].data != true && param1.methods[0].data != false)
         {
            _loc3_ = new PSettingVo(param1.methods[0].data.bookmarks);
            _loc4_ = _loc3_.bookmarks.split("<bm>");
            _loc4_.pop();
            _loc5_ = _loc4_.length;
            _loc6_ = 0;
            while(_loc6_ < _loc5_)
            {
               _loc7_ = new LocBookmarkVo();
               _loc7_.fromString(_loc4_[_loc6_]);
               _loc7_.index = _loc6_;
               _loc2_.push(_loc7_);
               _loc6_++;
            }
         }
         this.gpsController.setBookmarks(_loc2_);
      }
   }
}

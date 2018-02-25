package com.gaiaworld.towns.smartphone
{
   import com.gaiaworld.room.controller.GpsController;
   import com.gaiaworld.room.model.GpsModel;
   import com.gaiaworld.towns.vo.LocBookmarkVo;
   import flash.events.Event;
   
   public class BookMarkScreen extends PhoneList
   {
       
      
      private var gpsModel:GpsModel;
      
      private var gpsController:GpsController;
      
      private var bookmarkOptions:BookmarkOptions;
      
      public var fav:Number;
      
      public function BookMarkScreen()
      {
         this.gpsModel = GpsModel.getInstance();
         this.gpsController = new GpsController();
         this.bookmarkOptions = new BookmarkOptions();
         super();
         this.dataProvider = this.gpsModel.bookmarkArray;
         this.addChild(this.bookmarkOptions);
         this.bookmarkOptions.y = 40;
      }
      
      override public function set dataProvider(param1:Array) : void
      {
         var _loc4_:PhoneField = null;
         var _loc5_:LocBookmarkVo = null;
         this.bookmarkOptions.visible = false;
         _dataProvider = param1;
         removeAll();
         if(_dataProvider.length > 9)
         {
            btnNext.visible = true;
         }
         else
         {
            btnNext.visible = false;
         }
         var _loc2_:Number = _dataProvider.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = new PhoneField();
            _loc5_ = _dataProvider[_loc3_];
            _loc4_.setText(_loc5_.title);
            _loc4_.y = _loc3_ * _loc4_.height;
            _loc4_.setIndex(_loc3_);
            scrollClip.addChild(_loc4_);
            _loc3_++;
         }
         scrollClip.visible = true;
      }
      
      override protected function itemClicked(param1:Event) : *
      {
         var _loc2_:PhoneField = param1.target as PhoneField;
         this.showLocOptions(_loc2_.index);
      }
      
      private function showLocOptions(param1:Number) : *
      {
         this.fav = param1;
         scrollClip.visible = false;
         this.gpsController.setFavFlag(true);
         this.gpsController.setHotSpots(false);
         var _loc2_:LocBookmarkVo = this.gpsModel.bookmarkArray[param1];
         this.bookmarkOptions.dataProvider = _loc2_;
         this.bookmarkOptions.visible = true;
      }
   }
}

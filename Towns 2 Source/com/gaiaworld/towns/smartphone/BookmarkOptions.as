package com.gaiaworld.towns.smartphone
{
   import com.gaiaworld.avatar.controller.AvatarController;
   import com.gaiaworld.global.controller.GlobalController;
   import com.gaiaworld.house.controller.HousingController;
   import com.gaiaworld.room.controller.GpsController;
   import com.gaiaworld.room.controller.RoomController;
   import com.gaiaworld.room.data.RoomNumberData;
   import com.gaiaworld.room.model.RoomModel;
   import com.gaiaworld.room.util.ServerRoomUtil;
   import com.gaiaworld.room.util.TransportUtil;
   import com.gaiaworld.sushi.model.ChatModel;
   import com.gaiaworld.towns.constants.PhoneConstants;
   import com.gaiaworld.towns.vo.LocBookmarkVo;
   import com.gaiaworld.user.vo.PalTrackVo;
   import com.gaiaworld.user.vo.PalVo;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class BookmarkOptions extends Sprite
   {
       
      
      public var btnDel:PhoneItemButton;
      
      public var btnFollow:PhoneItemButton;
      
      public var btnTransport:PhoneItemButton;
      
      public var uText:TextField;
      
      private var _dataProvider:LocBookmarkVo;
      
      private var gpsController:GpsController;
      
      private var roomModel:RoomModel;
      
      private var roomController:RoomController;
      
      private var avatarController:AvatarController;
      
      private var globalController:GlobalController;
      
      private var chatModel:ChatModel;
      
      private var serverRoomUtil:ServerRoomUtil;
      
      private var housingController:HousingController;
      
      public function BookmarkOptions()
      {
         this.gpsController = new GpsController();
         this.roomModel = RoomModel.getInstance();
         this.roomController = new RoomController();
         this.avatarController = new AvatarController();
         this.globalController = new GlobalController();
         this.chatModel = ChatModel.getInstance();
         this.housingController = new HousingController();
         super();
         PhoneItemButton(this.btnFollow).addEventListener(MouseEvent.MOUSE_DOWN,this.follow);
         PhoneItemButton(this.btnTransport).addEventListener(MouseEvent.MOUSE_DOWN,this.transport);
         PhoneItemButton(this.btnDel).addEventListener(MouseEvent.MOUSE_DOWN,this.deleteBookmark);
         PhoneItemButton(this.btnFollow).text = "Navigate ";
         PhoneItemButton(this.btnTransport).text = "Transport";
         PhoneItemButton(this.btnDel).text = "Delete Bookmark ";
         PhoneItemButton(this.btnFollow).visible = false;
      }
      
      private function follow(param1:MouseEvent) : void
      {
         var _loc2_:RoomNumberData = null;
         var _loc3_:* = undefined;
         this.gpsController.setFinal(this._dataProvider.roomName);
         if(this.roomModel.inSpecialRoom() == true)
         {
            _loc2_ = new RoomNumberData();
            _loc3_ = _loc2_.nameToNumber(this._dataProvider.roomName);
            if(_loc3_ != -1)
            {
               this.serverRoomUtil = new ServerRoomUtil();
               this.serverRoomUtil.addEventListener(ServerRoomUtil.GOT_SERVER_ROOM,this.gotServerRoom);
               this.serverRoomUtil.getRoomFromServer(_loc3_);
            }
         }
         else
         {
            this.gpsController.setNavState(true);
            this.gpsController.setFavCord(this._dataProvider.x,this._dataProvider.y);
            this.gpsController.getDirectons(this.roomModel.roomID,this._dataProvider.roomName);
            this.dispatchEvent(new Event(PhoneConstants.SHOW_START_SCREEN,true));
            this.dispatchEvent(new Event(PhoneConstants.HIDE_PHONE,true));
            this.dispatchEvent(new Event(PhoneConstants.SHOW_COMPASS,true));
         }
      }
      
      private function gotServerRoom(param1:Event) : *
      {
         var _loc2_:PalTrackVo = new PalTrackVo(0,this.chatModel.ip,this.chatModel.port,0,this.serverRoomUtil.serverRoom);
         this.gpsController.setTrackVo(_loc2_);
         this.gpsController.setPalToFollow(new PalVo(-1));
         this.gpsController.setNavState(true);
         this.gpsController.setTrackVo(_loc2_);
         this.dispatchEvent(new Event(PhoneConstants.SHOW_COMPASS,true));
         this.dispatchEvent(new Event(PhoneConstants.SHOW_START_SCREEN,true));
         this.dispatchEvent(new Event(PhoneConstants.HIDE_PHONE,true));
      }
      
      private function transport(param1:MouseEvent) : *
      {
         var _loc2_:PalTrackVo = null;
         var _loc3_:TransportUtil = null;
         this.avatarController.setUserControl(true);
         this.housingController.isInHouse(false);
         if(this.roomModel.isSpecialRoom(this._dataProvider.roomName) == true)
         {
            _loc2_ = new PalTrackVo(0,this.chatModel.ip,this.chatModel.port,0,this._dataProvider.roomName);
            _loc3_ = new TransportUtil();
            this.gpsController.setTrackVo(_loc2_);
            this.avatarController.setPos(this._dataProvider.x,this._dataProvider.y);
            _loc3_.bookmarkFlag = true;
            _loc3_.getAutoDest();
         }
         else
         {
            this.avatarController.setPos(this._dataProvider.x,this._dataProvider.y);
            if(this.roomModel.surfaceToLoad != this._dataProvider.roomName)
            {
               this.roomController.changeRoom(this._dataProvider.roomName);
            }
            else
            {
               this.roomController.adjustScroll();
            }
         }
      }
      
      private function deleteBookmark(param1:MouseEvent) : void
      {
         this.dispatchEvent(new Event(PhoneConstants.DELETE_BOOKMARK,true));
      }
      
      public function get dataProvider() : LocBookmarkVo
      {
         return this._dataProvider;
      }
      
      public function set dataProvider(param1:LocBookmarkVo) : void
      {
         this._dataProvider = param1;
         this.uText.text = this._dataProvider.title;
      }
   }
}

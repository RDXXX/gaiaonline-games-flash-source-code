package com.gaiaworld.towns.smartphone
{
   import com.gaiaworld.room.controller.RoomController;
   import com.gaiaworld.room.model.RoomModel;
   import com.gaiaworld.sushi.vo.SRoomVo;
   import com.gaiaworld.towns.constants.PhoneConstants;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class RoomField extends Sprite
   {
       
      
      public var back:MovieClip;
      
      public var fText:TextField;
      
      public var pText:TextField;
      
      private var _dataProvider:SRoomVo;
      
      private var roomController:RoomController;
      
      private var roomModel:RoomModel;
      
      public function RoomField()
      {
         this.roomController = new RoomController();
         this.roomModel = RoomModel.getInstance();
         super();
         this.addEventListener(MouseEvent.MOUSE_DOWN,this.changeRoom);
         this.addEventListener(Event.REMOVED_FROM_STAGE,this.destroy);
      }
      
      private function destroy(param1:Event) : void
      {
         this.removeEventListener(Event.REMOVED_FROM_STAGE,this.destroy);
         this.removeEventListener(MouseEvent.MOUSE_DOWN,this.changeRoom);
      }
      
      public function get dataProvider() : SRoomVo
      {
         return this._dataProvider;
      }
      
      public function set dataProvider(param1:SRoomVo) : void
      {
         this._dataProvider = param1;
         TextField(this.fText).text = this._dataProvider.publicName;
         TextField(this.pText).text = String(this._dataProvider.players);
      }
      
      private function changeRoom(param1:MouseEvent) : *
      {
         this.roomController.setRoomInstance(this._dataProvider.name);
         this.roomController.changeRoom(this.roomModel.surfaceToLoad);
         this.dispatchEvent(new Event(PhoneConstants.SHOW_START_SCREEN,true));
      }
   }
}

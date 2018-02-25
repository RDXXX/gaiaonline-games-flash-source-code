package com.gaiaworld.towns.smartphone
{
   import com.gaiaworld.sushi.vo.ServerVo;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class ServerField extends Sprite
   {
      
      public static const SELECT_SERVER:String = "selectServer";
       
      
      public var back:MovieClip;
      
      public var fText:TextField;
      
      public var pText:TextField;
      
      private var _dataProvider:ServerVo;
      
      public var index:Number;
      
      public function ServerField()
      {
         super();
         this.addEventListener(MouseEvent.MOUSE_DOWN,this.changeServer);
         this.addEventListener(Event.REMOVED_FROM_STAGE,this.destroy);
      }
      
      private function destroy(param1:Event) : void
      {
         this.removeEventListener(Event.REMOVED_FROM_STAGE,this.destroy);
         this.removeEventListener(MouseEvent.MOUSE_DOWN,this.changeServer);
      }
      
      private function changeServer(param1:MouseEvent) : void
      {
         this.dispatchEvent(new Event(SELECT_SERVER,true));
      }
      
      public function get dataProvider() : ServerVo
      {
         return this._dataProvider;
      }
      
      public function set dataProvider(param1:ServerVo) : void
      {
         this._dataProvider = param1;
         TextField(this.fText).text = this._dataProvider.ip;
      }
   }
}

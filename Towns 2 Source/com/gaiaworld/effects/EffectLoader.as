package com.gaiaworld.effects
{
   import com.gaiaworld.global.model.GlobalModel;
   import com.gaiaworld.room.constants.RoomConstants;
   import com.gaiaworld.room.interfaces.IAnimatedObject;
   import com.gaiaworld.room.interfaces.ISurfaceObject;
   import com.gaiaworld.room.model.RoomModel;
   import com.gaiaworld.room.view.AnimatedObject;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   
   public class EffectLoader extends AnimatedObject implements IAnimatedObject, ISurfaceObject
   {
       
      
      private var loader:Loader;
      
      private var roomModel:RoomModel;
      
      private var globalModel:GlobalModel;
      
      public function EffectLoader()
      {
         this.loader = new Loader();
         this.roomModel = RoomModel.getInstance();
         this.globalModel = GlobalModel.getInstance();
         super();
         this.addChild(this.loader);
         this.roomModel.addEventListener(RoomConstants.LOAD_WEATHER,this.weatherChanged);
         this.addEventListener(Event.REMOVED_FROM_STAGE,this.destroy);
      }
      
      private function destroy(param1:Event) : void
      {
         removeEventListener(Event.REMOVED_FROM_STAGE,this.destroy);
         this.roomModel.removeEventListener(RoomConstants.LOAD_WEATHER,this.weatherChanged);
      }
      
      public function loadEffect(param1:String) : *
      {
         param1 = param1 + ("?ver=" + String(this.globalModel.version));
         this.loader.load(new URLRequest(param1));
      }
      
      private function weatherChanged(param1:Event) : *
      {
         this.loadEffect(this.roomModel.weather + ".swf");
      }
      
      override protected function pressed(param1:MouseEvent) : void
      {
      }
      
      override public function get depth2() : Number
      {
         return 1000000;
      }
   }
}

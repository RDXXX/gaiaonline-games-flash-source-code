package com.gaiaworld.avatar.view
{
   import com.gaiaworld.global.controller.EventController;
   import com.gaiaworld.global.model.GlobalModel;
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLRequest;
   
   public class AnimationLoader extends Sprite
   {
      
      public static const ANI_ITEM_LOADED:String = "aniItemLoaded";
       
      
      public var animLoader:Loader;
      
      private var globalModel:GlobalModel;
      
      private var xOffSet:int = 10;
      
      private var yOffSet:int = 30;
      
      private var param:Object;
      
      public var mcBack:MovieClip;
      
      public var mcFront:MovieClip;
      
      public var mcDist:MovieClip;
      
      private var eventController:EventController;
      
      public function AnimationLoader()
      {
         this.animLoader = new Loader();
         this.globalModel = GlobalModel.getInstance();
         this.eventController = new EventController();
         super();
      }
      
      public function setAnimation(param1:Number) : *
      {
         var _loc2_:* = this.globalModel.imagePath2 + "funcitems/animated/" + String(param1) + ".swf";
         this.eventController.addEventListener(this.animLoader.contentLoaderInfo,Event.COMPLETE,this.animationLoaded);
         this.animLoader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.couldNotLoad);
         this.animLoader.load(new URLRequest(_loc2_));
      }
      
      private function couldNotLoad(param1:IOErrorEvent) : void
      {
      }
      
      public function setParam(param1:Object) : *
      {
         this.param = param1;
      }
      
      private function animationLoaded(param1:Event) : void
      {
         this.eventController.removeEventListener(this.animLoader.contentLoaderInfo,Event.COMPLETE,this.animationLoaded);
         var _loc2_:MovieClip = param1.target.content as MovieClip;
         this.mcDist = _loc2_.getChildByName("mcDist") as MovieClip;
         this.mcFront = _loc2_.getChildByName("mcFront") as MovieClip;
         this.mcBack = _loc2_.getChildByName("mcBack") as MovieClip;
         if(this.mcBack != null)
         {
            this.mcBack.x = this.xOffSet;
            this.mcBack.y = this.yOffSet;
            this.mcBack.playParam(this.param);
         }
         if(this.mcFront != null)
         {
            this.mcFront.x = this.xOffSet;
            this.mcFront.y = this.yOffSet;
            this.mcFront.playParam(this.param);
         }
         if(this.mcDist != null)
         {
            this.mcDist.width = 120;
            this.mcDist.height = 150;
            this.mcDist.x = this.xOffSet * this.mcDist.scaleX;
            this.mcDist.y = this.yOffSet * this.mcDist.scaleY;
            this.mcDist.playParam(this.param);
         }
         this.dispatchEvent(new Event(ANI_ITEM_LOADED,true));
      }
   }
}

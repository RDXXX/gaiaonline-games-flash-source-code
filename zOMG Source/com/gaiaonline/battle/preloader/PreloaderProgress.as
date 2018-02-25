package com.gaiaonline.battle.preloader
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Rectangle;
   
   public class PreloaderProgress extends MovieClip
   {
       
      
      private var PreloaderCLS:Class;
      
      private var preloaderAssets = null;
      
      public function PreloaderProgress()
      {
         PreloaderCLS = PreloaderProgress_PreloaderCLS;
         super();
         this.preloaderAssets = new this.PreloaderCLS();
         preloaderAssets.addEventListener(Event.ADDED_TO_STAGE,onAddedToStage,false,0,true);
         preloaderAssets.addEventListener(Event.REMOVED_FROM_STAGE,onRemoveFromStage,false,0,true);
         this.addChild(preloaderAssets);
         var rec:Rectangle = Sprite(this.preloaderAssets).getBounds(this.preloaderAssets);
         this.preloaderAssets.x = -rec.left;
         this.preloaderAssets.y = -rec.top;
         setPer(0);
         this.addEventListener(Event.ADDED_TO_STAGE,onAddedToStage,false,0,true);
         this.addEventListener(Event.REMOVED_FROM_STAGE,onRemoveFromStage,false,0,true);
         this.alpha = 0.8;
      }
      
      private function onRemoveFromStage(evt:Event) : void
      {
         this.stage.removeEventListener(Event.RESIZE,onStageResize);
      }
      
      private function onAddedToStage(evt:Event) : void
      {
         this.resize();
         this.stage.addEventListener(Event.RESIZE,onStageResize,false,0,true);
      }
      
      private function onStageResize(evt:Event) : void
      {
         this.resize();
      }
      
      private function resize() : void
      {
         this.x = this.stage.stageWidth - this.preloaderAssets.width - 5;
         this.y = this.stage.stageHeight - this.preloaderAssets.height - 5;
      }
      
      public function setPer(per:int) : void
      {
         this.preloaderAssets.bar.scaleX = per / 100;
      }
      
      public function setText(txt:String) : void
      {
         if(this.preloaderAssets.info.text != txt)
         {
            this.preloaderAssets.info.text = txt;
         }
      }
   }
}

package com.gaiaonline.battle.ui.musicplayer
{
   import com.gaiaonline.objectPool.LoaderFactory;
   import com.gaiaonline.utils.DisplayObjectUtils;
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLRequest;
   import flash.system.LoaderContext;
   
   public class PetManager extends MovieClip
   {
       
      
      private var _currentPuppy:MovieClip = null;
      
      private var _deferredLoadParams:Object = null;
      
      private var _puppyList:Array = null;
      
      private var _petLoader:Loader = null;
      
      public function PetManager()
      {
         super();
      }
      
      private function onIOError(e:IOErrorEvent) : void
      {
         trace("PetManager.IOErrorEvent!",e);
      }
      
      private function onAddedToStage(e:Event) : void
      {
         if(_deferredLoadParams)
         {
            this._petLoader = LoaderFactory.getInstance().checkOut();
            this._petLoader.name = "loadContainer";
            this._petLoader.load(new URLRequest(_deferredLoadParams.petAnimation),_deferredLoadParams.loaderContext);
            DisplayObjectUtils.addWeakListener(this._petLoader.contentLoaderInfo,Event.COMPLETE,onLoadedPet);
            DisplayObjectUtils.addWeakListener(this._petLoader.contentLoaderInfo,IOErrorEvent.IO_ERROR,onIOError);
            _deferredLoadParams = null;
         }
         else
         {
            startRandomAnimation();
         }
      }
      
      private function onRemovedFromStage(e:Event) : void
      {
         stopAnimation();
      }
      
      public function initPet(petAnimation:String, loaderContext:LoaderContext) : void
      {
         DisplayObjectUtils.addWeakListener(this,Event.ADDED_TO_STAGE,onAddedToStage);
         DisplayObjectUtils.addWeakListener(this,Event.REMOVED_FROM_STAGE,onRemovedFromStage);
         _deferredLoadParams = {
            "petAnimation":petAnimation,
            "loaderContext":loaderContext
         };
      }
      
      private function stopAnimation() : void
      {
         if(this._currentPuppy)
         {
            DisplayObjectUtils.stopAllMovieClips(this._currentPuppy);
            if(this.contains(this._currentPuppy))
            {
               this.removeChild(this._currentPuppy);
               this._currentPuppy.removeEventListener(Event.ENTER_FRAME,checkForAnimationOver);
               this._currentPuppy = null;
            }
         }
      }
      
      private function checkForAnimationOver(evt:Event) : void
      {
         var puppyTrgt:MovieClip = MovieClip(evt.target);
         if(puppyTrgt.totalFrames == puppyTrgt.currentFrame)
         {
            startRandomAnimation();
         }
      }
      
      private function onLoadedPet(_unused_:Event) : void
      {
         var puppyContainer:MovieClip = null;
         var p:int = 0;
         var puppyAnim:MovieClip = null;
         if(this._petLoader.numChildren == 1)
         {
            this._puppyList = [];
            puppyContainer = MovieClip(this._petLoader.getChildAt(0));
            DisplayObjectUtils.stopAllMovieClips(puppyContainer);
            for(p = 0; p < puppyContainer.numChildren; p++)
            {
               puppyAnim = MovieClip(puppyContainer.getChildAt(p));
               this._puppyList.push(puppyAnim);
            }
            _petLoader.contentLoaderInfo.removeEventListener(Event.COMPLETE,onLoadedPet);
            _petLoader.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,onIOError);
            LoaderFactory.getInstance().checkIn(_petLoader);
            this._petLoader = null;
            startRandomAnimation();
         }
      }
      
      private function startRandomAnimation() : void
      {
         var i:int = 0;
         stopAnimation();
         if(this._puppyList && this._puppyList.length)
         {
            i = Math.floor(Math.random() * this._puppyList.length);
            this._currentPuppy = this._puppyList[i];
            this._currentPuppy.addEventListener(Event.ENTER_FRAME,checkForAnimationOver,false,0,true);
            this._currentPuppy.x = 99 - Math.floor(this._currentPuppy.width / 2);
            this._currentPuppy.y = 68 - Math.floor(this._currentPuppy.height / 2);
            this._currentPuppy.gotoAndPlay(1);
            this.addChild(this._currentPuppy);
         }
      }
   }
}

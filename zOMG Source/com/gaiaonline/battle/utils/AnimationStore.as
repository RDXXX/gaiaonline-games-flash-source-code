package com.gaiaonline.battle.utils
{
   import com.gaiaonline.utils.DisplayObjectUtils;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.utils.Dictionary;
   
   public class AnimationStore
   {
       
      
      private var _size:int = 0;
      
      private var _animations:Dictionary;
      
      public function AnimationStore(parent:DisplayObject)
      {
         _animations = new Dictionary(true);
         super();
         var functor:Object = {
            "animations":_animations,
            "onObject":storeTimelinedMovieClipsFunctor,
            "count":0
         };
         DisplayObjectUtils.recurse(functor,parent);
         _size = functor.count;
      }
      
      private static function storeTimelinedMovieClipsFunctor(functor:Object, parent:DisplayObject, child:DisplayObject) : Boolean
      {
         var mc:MovieClip = child as MovieClip;
         if(mc && mc.totalFrames > 1)
         {
            functor.animations[mc] = true;
            functor.count++;
         }
         return true;
      }
      
      public function get size() : int
      {
         return _size;
      }
      
      public function playAll() : void
      {
         var mc:* = null;
         for(mc in _animations)
         {
            DisplayObjectUtils.playAssetMovieClip(MovieClip(mc));
         }
      }
      
      public function stopAll() : void
      {
         var mc:* = null;
         for(mc in _animations)
         {
            DisplayObjectUtils.stopAssetMovieClip(MovieClip(mc));
         }
      }
   }
}

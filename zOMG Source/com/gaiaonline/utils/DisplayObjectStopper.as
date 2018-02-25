package com.gaiaonline.utils
{
   import com.gskinner.utils.WeakReference;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.system.Capabilities;
   import flash.utils.Dictionary;
   
   public class DisplayObjectStopper
   {
      
      private static var s_stage:Stage = null;
       
      
      private var _excludesArray:Array;
      
      private var _mode:DisplayObjectStopperModes;
      
      private var ignoreKnownsList:Array;
      
      private var knownObjectHash:Dictionary;
      
      private var releasedObjectHash:Dictionary;
      
      private var _stopClipsOnRemove:Boolean = true;
      
      private var _topLevelObjects:Dictionary;
      
      private var _excludes:Dictionary = null;
      
      private var _signature:String = null;
      
      private var _removeTracking:RemoveStats;
      
      public function DisplayObjectStopper(mode:DisplayObjectStopperModes, stopClipsOnRemove:Boolean)
      {
         _mode = DisplayObjectStopperModes.SHOW_NO_ANIM;
         _removeTracking = new RemoveStats();
         knownObjectHash = new Dictionary(true);
         releasedObjectHash = new Dictionary(true);
         _topLevelObjects = new Dictionary(true);
         _excludesArray = [];
         ignoreKnownsList = [];
         super();
         if(Capabilities.isDebugger)
         {
            _mode = mode;
         }
         _stopClipsOnRemove = stopClipsOnRemove;
      }
      
      private function isTopLevel(target:Object) : Boolean
      {
         return _topLevelObjects[target];
      }
      
      private function onRemovedHelper(sprite:DisplayObjectContainer) : void
      {
         if(sprite)
         {
            if(DisplayObjectStopperModes.SHOW_GC_ANIM == _mode)
            {
               recordObjectFrame(sprite);
            }
            if(knownObjectHash[sprite])
            {
               delete knownObjectHash[sprite];
            }
            if(_stopClipsOnRemove)
            {
               DisplayObjectUtils.stopAllMovieClips(sprite,null,_excludes);
            }
         }
      }
      
      private function onRemoved(evt:Event) : void
      {
         var currentTarget:DisplayObject = null;
         var i:int = 0;
         var child:DisplayObjectContainer = null;
         var sprite:DisplayObjectContainer = evt.target as DisplayObjectContainer;
         var displayObject:DisplayObject = evt.target as DisplayObject;
         if(displayObject && DisplayObjectStopperModes.SHOW_TOTAL_ANIM == _mode)
         {
            _removeTracking.trackRemoveStats(displayObject);
         }
         if(!sprite)
         {
            return;
         }
         if(!s_stage && (DisplayObjectStopperModes.SHOW_ALL_ANIM == _mode || DisplayObjectStopperModes.SHOW_GC_ANIM == _mode))
         {
            currentTarget = evt.currentTarget as DisplayObject;
            if(!s_stage && currentTarget.stage)
            {
               s_stage = currentTarget.stage;
            }
            if(s_stage)
            {
               s_stage.addEventListener(Event.ENTER_FRAME,onAddedEnterFrame,false,0,true);
            }
         }
         if(!isExcluded(sprite))
         {
            if(!isTopLevel(sprite))
            {
               onRemovedHelper(sprite);
            }
            for(i = 0; i < sprite.numChildren; i++)
            {
               child = sprite.getChildAt(i) as DisplayObjectContainer;
               if(child && !isExcluded(child))
               {
                  onRemovedHelper(child);
               }
            }
         }
      }
      
      private function isExcluded(target:DisplayObject) : Boolean
      {
         var excludedRef:WeakReference = null;
         var excluded:DisplayObjectContainer = null;
         if(null == _excludes)
         {
            return false;
         }
         if(_excludes[target] == true)
         {
            return true;
         }
         for each(excludedRef in _excludesArray)
         {
            excluded = excludedRef.get() as DisplayObjectContainer;
            if(excluded != null && excluded.contains(target))
            {
               return true;
            }
         }
         return false;
      }
      
      private function innerGarbageStopper(sprite:DisplayObjectContainer) : void
      {
         var index:Number = NaN;
         var movieClip:MovieClip = null;
         var child:DisplayObjectContainer = null;
         if(sprite)
         {
            if(!isTopLevel(sprite))
            {
               if(DisplayObjectStopperModes.SHOW_ALL_ANIM == _mode || DisplayObjectStopperModes.SHOW_GC_ANIM == _mode)
               {
                  movieClip = sprite as MovieClip;
                  if(movieClip && movieClip.totalFrames > 1)
                  {
                     knownObjectHash[movieClip] = movieClip.currentFrame;
                  }
                  sprite.addEventListener(Event.ADDED,onAdded,false,0,true);
               }
            }
            for(index = 0; index < sprite.numChildren; index++)
            {
               child = sprite.getChildAt(index) as DisplayObjectContainer;
               if(child)
               {
                  if(!isExcluded(child))
                  {
                     innerGarbageStopper(child);
                  }
               }
            }
         }
      }
      
      public function recordObjectFrame(sprite:DisplayObjectContainer) : void
      {
         var index:Number = NaN;
         var child:DisplayObjectContainer = null;
         if(sprite)
         {
            if(!isExcluded(sprite) && !isTopLevel(sprite))
            {
               if(sprite is MovieClip)
               {
                  releasedObjectHash[MovieClip(sprite)] = MovieClip(sprite).currentFrame;
               }
               for(index = 0; index < sprite.numChildren; index++)
               {
                  child = sprite.getChildAt(index) as DisplayObjectContainer;
                  if(child)
                  {
                     recordObjectFrame(child);
                  }
               }
            }
         }
      }
      
      private function onAdded(evt:Event) : void
      {
         var i:int = 0;
         var child:DisplayObjectContainer = null;
         var target:DisplayObjectContainer = evt.target as DisplayObjectContainer;
         if(target)
         {
            innerGarbageStopper(target);
            if(this._stopClipsOnRemove)
            {
               for(i = 0; i < target.numChildren; i++)
               {
                  child = target.getChildAt(i) as DisplayObjectContainer;
                  if(child && !isExcluded(child))
                  {
                     DisplayObjectUtils.startAllMovieClips(child,_excludesArray);
                  }
               }
            }
         }
      }
      
      public function addGarbageStopper(sprite:DisplayObjectContainer, excludes:Array = null) : void
      {
         var obj:Object = null;
         var doc:DisplayObjectContainer = null;
         if(this._mode != DisplayObjectStopperModes.SHOW_NO_ANIM && null == _signature)
         {
            _signature = DisplayObjectUtils.toPathString(sprite);
         }
         _topLevelObjects[sprite] = true;
         if(excludes)
         {
            if(this._excludes == null)
            {
               _excludes = new Dictionary(true);
            }
            for each(obj in excludes)
            {
               doc = obj as DisplayObjectContainer;
               if(doc)
               {
                  _excludes[doc] = true;
                  _excludesArray.push(new WeakReference(doc));
               }
            }
         }
         sprite.addEventListener(Event.REMOVED,onRemoved,false,0,true);
         if(DisplayObjectStopperModes.SHOW_ALL_ANIM == _mode)
         {
            sprite.addEventListener(Event.ADDED,onAdded,false,0,true);
            innerGarbageStopper(sprite);
         }
      }
      
      private function onAddedEnterFrame(evt:Event) : void
      {
         var knownTargetKey:* = null;
         var releasedTargetKey:* = null;
         var knownTarget:MovieClip = null;
         var constructor:String = null;
         var ignoreItem:Boolean = false;
         var key:String = null;
         var releasedTarget:MovieClip = null;
         for(knownTargetKey in knownObjectHash)
         {
            knownTarget = knownTargetKey as MovieClip;
            if(knownObjectHash[knownTarget] != knownTarget.currentFrame)
            {
               knownObjectHash[knownTarget] = knownTarget.currentFrame;
               constructor = knownTarget["constructor"];
               ignoreItem = false;
               for each(key in this.ignoreKnownsList)
               {
                  if(constructor.indexOf(key) > -1)
                  {
                     ignoreItem = true;
                     break;
                  }
               }
               if(!ignoreItem)
               {
                  if(0)
                  {
                  }
                  trace("KNOWN enter frame: ",knownTarget.currentFrame,"PATH:",DisplayObjectUtils.toPathString(knownTarget),"SIG:",_signature);
               }
            }
         }
         for(releasedTargetKey in releasedObjectHash)
         {
            releasedTarget = releasedTargetKey as MovieClip;
            if(releasedObjectHash[releasedTarget] != releasedTarget.currentFrame)
            {
               releasedObjectHash[releasedTarget] = releasedTarget.currentFrame;
               trace("LEAKED! enter frame: ",releasedTarget.currentFrame,"PATH:",DisplayObjectUtils.toPathString(releasedTarget),"SIG:",_signature);
            }
         }
      }
      
      public function setRemoveStatsSettings(lowerbound:uint, frequency:uint) : void
      {
         _removeTracking._removeStatsLowerBound = lowerbound;
         _removeTracking._removeStatsFrequency = frequency;
      }
   }
}

import com.gaiaonline.utils.DisplayObjectUtils;
import flash.display.DisplayObject;

class RemoveStats
{
    
   
   public var _removeStatsFrequency:uint = 2500;
   
   private var _removeStatsTracking:Object;
   
   public var _removeStatsLowerBound:uint = 30;
   
   private var _removeStatsPrintTick:uint = 0;
   
   function RemoveStats()
   {
      _removeStatsTracking = {};
      super();
   }
   
   private function printStats() : void
   {
      var path:* = null;
      var sortedArray:Array = null;
      var elm:Object = null;
      var count:uint = 0;
      var obj:Object = null;
      var statsArray:Array = [];
      for(path in _removeStatsTracking)
      {
         count = _removeStatsTracking[path];
         if(count > _removeStatsLowerBound)
         {
            obj = {
               "path":path,
               "count":count
            };
            statsArray.push(obj);
         }
      }
      sortedArray = statsArray.sortOn(["count"],Array.NUMERIC);
      for each(elm in sortedArray)
      {
         trace("CALL DUMP: ",elm.count," PATH:",elm.path);
      }
   }
   
   public function trackRemoveStats(sprite:DisplayObject) : void
   {
      var pathId:String = DisplayObjectUtils.toPathString(sprite);
      if(_removeStatsTracking[pathId])
      {
         _removeStatsTracking[pathId]++;
         _removeStatsPrintTick++;
         if(_removeStatsPrintTick % _removeStatsFrequency == 0)
         {
            printStats();
         }
      }
      else
      {
         _removeStatsTracking[pathId] = 1;
      }
   }
}

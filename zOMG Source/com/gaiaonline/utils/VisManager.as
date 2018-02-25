package com.gaiaonline.utils
{
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.utils.Dictionary;
   
   public class VisManager
   {
       
      
      private var _autoStopAllMovieClips:Boolean;
      
      private var _childIndices:Dictionary;
      
      public function VisManager(strongReferences:Boolean = false, autoStopAllMovieClips:Boolean = false)
      {
         super();
         _childIndices = new Dictionary(!strongReferences);
         _autoStopAllMovieClips = autoStopAllMovieClips;
      }
      
      private function lookupChildIndex(parent:DisplayObjectContainer, child:DisplayObject) : int
      {
         var sibling:DisplayObject = null;
         var originalIndex:Object = null;
         var targetIndex:Object = _childIndices[child];
         if(!(targetIndex is int))
         {
            throw "VisManager doesn\'t recognize this child";
         }
         var currentNC:int = parent.numChildren;
         for(var i:int = 0; i < currentNC; i++)
         {
            sibling = parent.getChildAt(i);
            originalIndex = _childIndices[sibling];
            if(originalIndex == null || originalIndex > targetIndex)
            {
               return i;
            }
         }
         return currentNC;
      }
      
      public function registerSingleChild(parent:DisplayObjectContainer, child:DisplayObject) : void
      {
         this._childIndices[child] = parent.getChildIndex(child);
      }
      
      public function registerChildren(parent:DisplayObjectContainer) : void
      {
         var nc:int = parent.numChildren;
         for(var i:int = 0; i < nc; i++)
         {
            _childIndices[parent.getChildAt(i)] = i;
         }
      }
      
      public function isVisible(child:DisplayObject) : Boolean
      {
         return child.parent != null;
      }
      
      public function setVisible(parent:DisplayObjectContainer, child:DisplayObject, visible:Boolean) : void
      {
         if(visible && child.parent == null)
         {
            parent.addChildAt(child,lookupChildIndex(parent,child));
         }
         else if(!visible && child.parent == parent)
         {
            parent.removeChild(child);
            if(_autoStopAllMovieClips)
            {
               DisplayObjectUtils.stopAllMovieClips(child,0);
            }
         }
         child.visible = visible;
      }
      
      public function forEach(functor:Function) : void
      {
         var child:* = null;
         for(child in _childIndices)
         {
            functor(DisplayObject(child),_childIndices[child]);
         }
      }
      
      public function childStored(child:DisplayObject) : Boolean
      {
         return _childIndices[child] != null;
      }
   }
}

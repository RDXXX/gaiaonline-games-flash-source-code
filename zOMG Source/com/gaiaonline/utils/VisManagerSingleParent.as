package com.gaiaonline.utils
{
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   
   public class VisManagerSingleParent
   {
       
      
      private var _parent:DisplayObjectContainer;
      
      private var _zMgr:VisManager = null;
      
      public function VisManagerSingleParent(parent:DisplayObjectContainer, strongReferences:Boolean = false, autoStopAllMovieClips:Boolean = false)
      {
         super();
         _zMgr = new VisManager(strongReferences,autoStopAllMovieClips);
         _parent = parent;
         if(_parent)
         {
            _zMgr.registerChildren(_parent);
         }
      }
      
      public function setVisible(child:DisplayObject, visible:Boolean) : void
      {
         _zMgr.setVisible(_parent,child,visible);
      }
      
      public function registerSingleChild(child:DisplayObject) : void
      {
         var parent:DisplayObjectContainer = child.parent;
         if(parent)
         {
            this._parent = parent;
            _zMgr.registerSingleChild(parent,child);
         }
         else
         {
            child.addEventListener(Event.ADDED,onChildAddedToParent,false,0,true);
         }
      }
      
      private function onChildAddedToParent(e:Event) : void
      {
         var child:DisplayObject = null;
         var parent:DisplayObjectContainer = null;
         if(e.target == e.currentTarget)
         {
            child = DisplayObject(e.target);
            parent = child.parent;
            if(parent)
            {
               if(this._parent && this._parent != parent)
               {
                  throw new Error("Mismatched parents for VisManagerSingleParent.  Should you be using VisManager?");
               }
               _zMgr.registerSingleChild(parent,child);
            }
            child.removeEventListener(Event.ADDED,onChildAddedToParent);
         }
      }
      
      public function forEach(functor:Function) : void
      {
         _zMgr.forEach(functor);
      }
      
      public function isVisible(child:DisplayObject) : Boolean
      {
         return _zMgr.isVisible(child);
      }
   }
}

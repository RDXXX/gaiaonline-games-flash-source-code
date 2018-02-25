package com.gaiaonline.containers
{
   import com.gaiaonline.usersettings.UserSettings;
   import com.gaiaonline.utils.DisplayObjectUtils;
   import flash.display.DisplayObject;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   
   public class GameWindowManager extends EventDispatcher
   {
      
      private static const EPSILON:Number = 0.1;
      
      private static const SNAP_THRESHHOLD:Number = 12;
      
      private static var s_toLocalHelper:Point = new Point(NaN,NaN);
       
      
      private var _settings:UserSettings;
      
      private var _current:DisplayObject;
      
      private var _objects:Dictionary;
      
      private var _stage:Stage;
      
      public function GameWindowManager(stage:Stage = null, settings:UserSettings = null)
      {
         _objects = new Dictionary(true);
         super();
         _settings = settings;
         _stage = stage;
         _stage.addEventListener(Event.RESIZE,onStageResize,false,0,true);
      }
      
      private static function findNearbyEdgeX(objects:Dictionary, target:DisplayObject, targetX:Number) : Number
      {
         var sobj:* = null;
         var sibling:DisplayObject = null;
         var siblingRight:Number = NaN;
         if(targetX < 0 || willSnap(targetX,0))
         {
            return 0;
         }
         if(targetX > target.parent.width || willSnap(targetX,target.parent.width))
         {
            return target.parent.width;
         }
         for(sobj in objects)
         {
            sibling = DisplayObject(sobj);
            if(sibling.parent && sibling != target && (overlapsVert(target,sibling) || overlapsVert(sibling,target)))
            {
               siblingRight = sibling.x + sibling.width;
               if(willSnap(targetX,siblingRight))
               {
                  return siblingRight;
               }
               if(willSnap(targetX,sibling.x))
               {
                  return sibling.x;
               }
            }
         }
         return NaN;
      }
      
      private static function findNearbyEdgeY(objects:Dictionary, target:DisplayObject, targetY:Number) : Number
      {
         var sobj:* = null;
         var sibling:DisplayObject = null;
         var siblingBottom:Number = NaN;
         if(targetY < 0 || willSnap(targetY,0))
         {
            return 0;
         }
         if(targetY > target.parent.height || willSnap(targetY,target.parent.height))
         {
            return target.parent.height;
         }
         for(sobj in objects)
         {
            sibling = DisplayObject(sobj);
            if(sibling.parent && sibling != target && (overlapsHorz(target,sibling) || overlapsHorz(sibling,target)))
            {
               siblingBottom = sibling.y + sibling.height;
               if(willSnap(targetY,siblingBottom))
               {
                  return siblingBottom;
               }
               if(willSnap(targetY,sibling.y))
               {
                  return sibling.y;
               }
            }
         }
         return NaN;
      }
      
      public static function toSnapEvent(root:DisplayObject, source:MouseEvent, event:String) : Event
      {
         s_toLocalHelper.x = source.localX;
         s_toLocalHelper.y = source.localY;
         s_toLocalHelper = root.globalToLocal(DisplayObject(source.target).localToGlobal(s_toLocalHelper));
         var evt:GameWindowManagerEvent = new GameWindowManagerEvent(event);
         evt.localX = s_toLocalHelper.x;
         evt.localY = s_toLocalHelper.y;
         return evt;
      }
      
      private static function wrapToBounds(dobj:DisplayObject, windowEntry:WindowEntry, width:Number, height:Number) : void
      {
         var nWidth:Number = NaN;
         var nHeight:Number = NaN;
         var rightEdge:Number = dobj.x + dobj.width;
         var newX:Number = NaN;
         if(rightEdge > width)
         {
            newX = width - dobj.width;
         }
         var bottomEdge:Number = dobj.y + dobj.height;
         var newY:Number = NaN;
         if(bottomEdge > height)
         {
            newY = height - dobj.height;
         }
         if(!isNaN(newX) || !isNaN(newY))
         {
            newX = !!isNaN(newX)?Number(dobj.x):Number(newX);
            newY = !!isNaN(newY)?Number(dobj.y):Number(newY);
            dobj.x = Math.max(0,newX);
            dobj.y = Math.max(0,newY);
            windowEntry.updatePos(Math.max(0,newX),Math.max(0,newY));
         }
         if(dobj.width != 0 && dobj.height != 0 && windowEntry.resizable)
         {
            nWidth = dobj.width;
            nHeight = dobj.height;
            if(nWidth > windowEntry.maxSize.x)
            {
               nWidth = windowEntry.maxSize.x;
            }
            if(nHeight > windowEntry.maxSize.y)
            {
               nHeight = windowEntry.maxSize.y;
            }
            if(nWidth > width)
            {
               nWidth = width;
            }
            if(nHeight > height)
            {
               nHeight = height;
            }
            if(nWidth < windowEntry.minSize.x)
            {
               nWidth = windowEntry.minSize.x;
            }
            if(nHeight < windowEntry.minSize.y)
            {
               nHeight = windowEntry.minSize.y;
            }
            if(dobj.width != nWidth)
            {
               dobj.width = nWidth;
            }
            if(dobj.height != nHeight)
            {
               dobj.height = nHeight;
            }
         }
      }
      
      private static function overlapsHorz(child1:DisplayObject, child2:DisplayObject) : Boolean
      {
         return child1.x >= child2.x && child1.x <= child2.x + child2.width + EPSILON;
      }
      
      private static function willSnap(pos1:Number, pos2:Number) : Boolean
      {
         return Math.abs(pos1 - pos2) <= SNAP_THRESHHOLD;
      }
      
      private static function overlapsVert(child1:DisplayObject, child2:DisplayObject) : Boolean
      {
         return child1.y >= child2.y && child1.y <= child2.y + child2.height + EPSILON;
      }
      
      private function onStageResize(e:Event) : void
      {
         var sobj:* = null;
         for(sobj in _objects)
         {
            wrapToBounds(DisplayObject(sobj),WindowEntry(_objects[sobj]),_stage.stageWidth,_stage.stageHeight);
         }
      }
      
      public function add(obj:DisplayObject, defaultSettings:GameWindowSettings = null) : void
      {
         var newWindowEntry:WindowEntry = null;
         if(!_objects[obj])
         {
            newWindowEntry = new WindowEntry(defaultSettings);
            _objects[obj] = newWindowEntry;
            if(defaultSettings)
            {
               _settings.addSetting(defaultSettings.name,newWindowEntry);
               newWindowEntry.applySettings(obj);
            }
            obj.addEventListener(GameWindowManagerEvent.DRAG_START,onDragStart,false,0,true);
            obj.addEventListener(GameWindowManagerEvent.RESIZE_START,onDragStart,false,0,true);
            obj.addEventListener(MouseEvent.MOUSE_DOWN,onMouseDown,false,0,true);
            obj.addEventListener(Event.ADDED_TO_STAGE,onAddedToStage,false,0,true);
            obj.addEventListener(Event.REMOVED_FROM_STAGE,onRemovedFromStage,false,0,true);
            obj.addEventListener(Event.RESIZE,onObjectResizedExternally,false,0,true);
         }
      }
      
      private function removeDragListeners(stage:Stage, onMouseMove:Function, onMouseUp:Function) : void
      {
         stage.removeEventListener(MouseEvent.MOUSE_MOVE,onMouseMove);
         stage.removeEventListener(MouseEvent.MOUSE_UP,onMouseUp);
         stage.removeEventListener(Event.MOUSE_LEAVE,onMouseUp);
      }
      
      private function onMouseDown(e:MouseEvent) : void
      {
         var target:DisplayObject = DisplayObject(e.currentTarget);
         DisplayObjectUtils.bringToFront(target);
      }
      
      private function onAddedToStage(e:Event) : void
      {
         if(_objects[e.target])
         {
            wrapToBounds(DisplayObject(e.target),WindowEntry(_objects[e.target]),_stage.stageWidth,_stage.stageHeight);
         }
      }
      
      public function remove(obj:DisplayObject) : void
      {
      }
      
      private function onDrag(e:MouseEvent) : void
      {
         var di:DragInfo = null;
         var rightEdge:Number = NaN;
         var bottomEdge:Number = NaN;
         di = WindowEntry(_objects[_current]).dragInfo;
         s_toLocalHelper.x = e.stageX;
         s_toLocalHelper.y = e.stageY;
         var enableLock:* = !e.ctrlKey;
         var newUpperLeft:Point = _current.parent.globalToLocal(s_toLocalHelper).subtract(di.offset);
         if(!isNaN(di.lockedX) && !willSnap(di.lockedX,newUpperLeft.x))
         {
            di.lockedX = NaN;
         }
         if(enableLock)
         {
            di.lockedX = findNearbyEdgeX(_objects,_current,newUpperLeft.x);
            if(isNaN(di.lockedX) || di.lockedX + _current.width > _current.parent.width)
            {
               rightEdge = findNearbyEdgeX(_objects,_current,newUpperLeft.x + _current.width);
               if(!isNaN(rightEdge))
               {
                  di.lockedX = rightEdge - _current.width;
               }
            }
         }
         _current.x = !!isNaN(di.lockedX)?Number(newUpperLeft.x):Number(di.lockedX);
         if(!isNaN(di.lockedY) && !willSnap(di.lockedY,newUpperLeft.y))
         {
            di.lockedY = NaN;
         }
         if(enableLock)
         {
            di.lockedY = findNearbyEdgeY(_objects,_current,newUpperLeft.y);
            if(isNaN(di.lockedY) || di.lockedY + _current.height > _current.parent.height)
            {
               bottomEdge = findNearbyEdgeY(_objects,_current,newUpperLeft.y + _current.height);
               if(!isNaN(bottomEdge))
               {
                  di.lockedY = bottomEdge - _current.height;
               }
            }
         }
         _current.y = !!isNaN(di.lockedY)?Number(newUpperLeft.y):Number(di.lockedY);
      }
      
      private function onResizeEnd(e:Event) : void
      {
         var we:WindowEntry = null;
         if(_current)
         {
            we = WindowEntry(_objects[_current]);
            we.dragInfo.clear();
            we.updateSize(_current.width,_current.height);
            _current.alpha = 1;
            _current = null;
            removeDragListeners(e.target.stage,onResize,onResizeEnd);
         }
      }
      
      private function onDragStart(e:GameWindowManagerEvent) : void
      {
         _current = DisplayObject(e.target);
         _current.alpha = 0.66;
         if(!_objects[_current])
         {
            throw "Receiving drag event for unknown snappee";
         }
         var di:DragInfo = WindowEntry(_objects[_current]).dragInfo;
         di.offset = _current.globalToLocal(new Point(e.stageX,e.stageY));
         if(e.type == GameWindowManagerEvent.DRAG_START)
         {
            addDragListeners(_stage,onDrag,onDragEnd);
         }
         else
         {
            di.startWidth = _current.width;
            di.startHeight = _current.height;
            addDragListeners(_stage,onResize,onResizeEnd);
         }
      }
      
      private function onObjectResizedExternally(e:Event) : void
      {
         if(e.target != _current && _objects[e.target])
         {
            wrapToBounds(DisplayObject(e.target),WindowEntry(_objects[e.target]),_stage.stageWidth,_stage.stageHeight);
         }
      }
      
      private function onRemovedFromStage(e:Event) : void
      {
         var dobj:DisplayObject = DisplayObject(e.target);
         if(dobj == _current)
         {
            onDragEnd(null);
         }
         remove(dobj);
      }
      
      private function onResize(e:MouseEvent) : void
      {
         var di:DragInfo = null;
         var currentPoint:Point = null;
         var distanceFromStart:Point = null;
         var we:WindowEntry = WindowEntry(_objects[_current]);
         di = we.dragInfo;
         var enableLock:* = !e.ctrlKey;
         s_toLocalHelper.x = e.stageX;
         s_toLocalHelper.y = e.stageY;
         currentPoint = _current.globalToLocal(s_toLocalHelper);
         distanceFromStart = currentPoint.subtract(di.offset);
         var newRightEdge:Number = _current.x + di.startWidth + distanceFromStart.x;
         if(!isNaN(di.lockedX) && !willSnap(di.lockedX,newRightEdge))
         {
            di.lockedX = NaN;
         }
         if(enableLock)
         {
            di.lockedX = findNearbyEdgeX(_objects,_current,newRightEdge);
         }
         _current.width = Math.max(we.minSize.x,Math.min(we.maxSize.x,(!!isNaN(di.lockedX)?newRightEdge:di.lockedX) - _current.x));
         var newBottomEdge:Number = _current.y + di.startHeight + distanceFromStart.y;
         if(!isNaN(di.lockedY) && !willSnap(di.lockedY,newBottomEdge))
         {
            di.lockedY = NaN;
         }
         if(enableLock)
         {
            di.lockedY = findNearbyEdgeY(_objects,_current,newBottomEdge);
         }
         _current.height = Math.max(we.minSize.y,Math.min(we.maxSize.y,(!!isNaN(di.lockedY)?newBottomEdge:di.lockedY) - _current.y));
      }
      
      private function onDragEnd(_unused:Event) : void
      {
         var evt:GameWindowManagerEvent = new GameWindowManagerEvent(GameWindowManagerEvent.SNAP_DONE,_current);
         var we:WindowEntry = WindowEntry(_objects[_current]);
         we.dragInfo.clear();
         we.updatePos(_current.x,_current.y);
         _current.alpha = 1;
         _current = null;
         removeDragListeners(_stage,onDrag,onDragEnd);
         dispatchEvent(evt);
      }
      
      private function addDragListeners(stage:Stage, onMouseMove:Function, onMouseUp:Function) : void
      {
         stage.addEventListener(MouseEvent.MOUSE_MOVE,onMouseMove,false,0,true);
         stage.addEventListener(MouseEvent.MOUSE_UP,onMouseUp,false,0,true);
         stage.addEventListener(Event.MOUSE_LEAVE,onMouseUp,false,0,true);
      }
   }
}

import flash.geom.Point;

class DragInfo
{
    
   
   public var startWidth:Number;
   
   public var startHeight:Number;
   
   public var lockedX:Number;
   
   public var lockedY:Number;
   
   public var offset:Point;
   
   function DragInfo()
   {
      super();
   }
   
   public function clear() : void
   {
      offset = null;
      lockedY = NaN;
      lockedX = NaN;
      startWidth = NaN;
      startHeight = NaN;
   }
}

import com.gaiaonline.containers.GameWindowSettings;
import com.gaiaonline.usersettings.ISettings;
import com.gaiaonline.usersettings.Settings#54;
import com.gaiaonline.utils.FrameTimer;
import flash.display.DisplayObject;
import flash.events.Event;
import flash.events.EventDispatcher;
import flash.geom.Point;

class WindowEntry extends EventDispatcher implements ISettings
{
    
   
   private var _maxSize:Point;
   
   private var _dirtySettingsTimer:FrameTimer;
   
   private var _pos:Point;
   
   private var _size:Point;
   
   private var _dragInfo:DragInfo;
   
   private var _resizable:Boolean = true;
   
   private var _minSize:Point;
   
   function WindowEntry(settings:GameWindowSettings)
   {
      _dragInfo = new DragInfo();
      _pos = new Point();
      _size = new Point();
      _minSize = new Point(10,10);
      _maxSize = new Point(100000,100000);
      _dirtySettingsTimer = new FrameTimer(saveSettings);
      super();
      if(settings)
      {
         _pos.x = settings.x;
         _pos.y = settings.y;
         _size.x = settings.width;
         _size.y = settings.height;
         this._resizable = settings.resizable;
         if(!isNaN(settings.minWidth))
         {
            _minSize.x = settings.minWidth;
         }
         if(!isNaN(settings.minHeight))
         {
            _minSize.y = settings.minHeight;
         }
         if(!isNaN(settings.maxWidth))
         {
            _maxSize.x = settings.maxWidth;
         }
         if(!isNaN(settings.maxHeight))
         {
            _maxSize.y = settings.maxHeight;
         }
      }
   }
   
   public function getDefaultFull() : Object
   {
      return null;
   }
   
   public function get maxSize() : Point
   {
      return _maxSize;
   }
   
   private function saveSettings() : void
   {
      dispatchEvent(new Event(Settings#54.SETTING_CHANGED_EVENT));
   }
   
   public function get dragInfo() : DragInfo
   {
      return _dragInfo;
   }
   
   public function updatePos(x:Number, y:Number) : void
   {
      if(_pos.x != x && _pos.y != y)
      {
         _pos.x = x;
         _pos.y = y;
         dirtySettings();
      }
   }
   
   public function getDefaultNormal() : Object
   {
      return null;
   }
   
   public function getSettings() : Object
   {
      var retval:Object = {
         "x":_pos.x,
         "y":_pos.y
      };
      if(!isNaN(_size.x))
      {
         retval.width = _size.x;
      }
      if(!isNaN(_size.y))
      {
         retval.height = _size.y;
      }
      return retval;
   }
   
   private function dirtySettings() : void
   {
      _dirtySettingsTimer.start(2500,1);
   }
   
   public function get resizable() : Boolean
   {
      return this._resizable;
   }
   
   public function updateSize(width:Number, height:Number) : void
   {
      if(_size.x != width && _size.y != height)
      {
         _size.x = width;
         _size.y = height;
         dirtySettings();
      }
   }
   
   public function get minSize() : Point
   {
      return _minSize;
   }
   
   public function applySettings(dobj:DisplayObject) : void
   {
      dobj.x = _pos.x;
      dobj.y = _pos.y;
      if(!isNaN(_size.x))
      {
         dobj.width = _size.x;
      }
      if(!isNaN(_size.y))
      {
         dobj.height = _size.y;
      }
   }
   
   public function setSettings(obj:Object) : void
   {
      _pos.x = obj.x;
      _pos.y = obj.y;
      if(obj.width != undefined)
      {
         _size.x = obj.width;
      }
      if(obj.height != undefined)
      {
         _size.y = obj.height;
      }
   }
}

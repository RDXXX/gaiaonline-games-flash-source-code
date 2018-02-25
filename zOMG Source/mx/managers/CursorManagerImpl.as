package mx.managers
{
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.InteractiveObject;
   import flash.display.Sprite;
   import flash.events.ContextMenuEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.ProgressEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldType;
   import flash.ui.Mouse;
   import mx.core.ApplicationGlobals;
   import mx.core.EventPriority;
   import mx.core.FlexSprite;
   import mx.core.mx_internal;
   import mx.events.InterManagerRequest;
   import mx.events.SWFBridgeRequest;
   import mx.events.SandboxMouseEvent;
   import mx.styles.CSSStyleDeclaration;
   import mx.styles.StyleManager;
   
   use namespace mx_internal;
   
   public class CursorManagerImpl implements ICursorManager
   {
      
      mx_internal static const VERSION:String = "3.6.0.21751";
      
      private static var instance:ICursorManager;
       
      
      private var showSystemCursor:Boolean = false;
      
      private var nextCursorID:int = 1;
      
      private var systemManager:ISystemManager = null;
      
      private var cursorList:Array;
      
      private var _currentCursorYOffset:Number = 0;
      
      private var cursorHolder:Sprite;
      
      private var currentCursor:DisplayObject;
      
      private var sandboxRoot:IEventDispatcher = null;
      
      private var showCustomCursor:Boolean = false;
      
      private var listenForContextMenu:Boolean = false;
      
      private var customCursorLeftStage:Boolean = false;
      
      private var _currentCursorID:int = 0;
      
      private var initialized:Boolean = false;
      
      private var overTextField:Boolean = false;
      
      private var _currentCursorXOffset:Number = 0;
      
      private var busyCursorList:Array;
      
      private var overLink:Boolean = false;
      
      private var sourceArray:Array;
      
      public function CursorManagerImpl(systemManager:ISystemManager = null)
      {
         cursorList = [];
         busyCursorList = [];
         sourceArray = [];
         super();
         if(instance && !systemManager)
         {
            throw new Error("Instance already exists.");
         }
         if(systemManager)
         {
            this.systemManager = systemManager as ISystemManager;
         }
         else
         {
            this.systemManager = SystemManagerGlobals.topLevelSystemManagers[0] as ISystemManager;
         }
         sandboxRoot = this.systemManager.getSandboxRoot();
         sandboxRoot.addEventListener(InterManagerRequest.CURSOR_MANAGER_REQUEST,marshalCursorManagerHandler,false,0,true);
         var me:InterManagerRequest = new InterManagerRequest(InterManagerRequest.CURSOR_MANAGER_REQUEST);
         me.name = "update";
         sandboxRoot.dispatchEvent(me);
      }
      
      public static function getInstance() : ICursorManager
      {
         if(!instance)
         {
            instance = new CursorManagerImpl();
         }
         return instance;
      }
      
      private function mouseOverHandler(event:MouseEvent) : void
      {
         sandboxRoot.removeEventListener(MouseEvent.MOUSE_OVER,mouseOverHandler);
         mouseMoveHandler(event);
      }
      
      public function set currentCursorYOffset(value:Number) : void
      {
         var me:InterManagerRequest = null;
         _currentCursorYOffset = value;
         if(!cursorHolder)
         {
            me = new InterManagerRequest(InterManagerRequest.CURSOR_MANAGER_REQUEST);
            me.name = "currentCursorYOffset";
            me.value = currentCursorYOffset;
            sandboxRoot.dispatchEvent(me);
         }
      }
      
      public function get currentCursorXOffset() : Number
      {
         return _currentCursorXOffset;
      }
      
      public function removeCursor(cursorID:int) : void
      {
         var i:* = null;
         var me:InterManagerRequest = null;
         var item:CursorQueueItem = null;
         if(initialized && !cursorHolder)
         {
            me = new InterManagerRequest(InterManagerRequest.CURSOR_MANAGER_REQUEST);
            me.name = "removeCursor";
            me.value = cursorID;
            sandboxRoot.dispatchEvent(me);
            return;
         }
         for(i in cursorList)
         {
            item = cursorList[i];
            if(item.cursorID == cursorID)
            {
               cursorList.splice(i,1);
               showCurrentCursor();
               break;
            }
         }
      }
      
      public function get currentCursorID() : int
      {
         return _currentCursorID;
      }
      
      private function removeContextMenuHandlers() : void
      {
         var app:InteractiveObject = null;
         var sm:InteractiveObject = null;
         if(listenForContextMenu)
         {
            app = systemManager.document as InteractiveObject;
            sm = systemManager as InteractiveObject;
            if(app && app.contextMenu)
            {
               app.contextMenu.removeEventListener(ContextMenuEvent.MENU_SELECT,contextMenu_menuSelectHandler,true);
            }
            if(sm && sm.contextMenu)
            {
               sm.contextMenu.removeEventListener(ContextMenuEvent.MENU_SELECT,contextMenu_menuSelectHandler,true);
            }
            listenForContextMenu = false;
         }
      }
      
      private function marshalMouseMoveHandler(event:Event) : void
      {
         var cursorRequest:SWFBridgeRequest = null;
         var bridge:IEventDispatcher = null;
         if(cursorHolder.visible)
         {
            cursorHolder.visible = false;
            cursorRequest = new SWFBridgeRequest(SWFBridgeRequest.SHOW_MOUSE_CURSOR_REQUEST);
            if(systemManager.useSWFBridge())
            {
               bridge = systemManager.swfBridgeGroup.parentBridge;
            }
            else
            {
               bridge = systemManager;
            }
            cursorRequest.requestor = bridge;
            bridge.dispatchEvent(cursorRequest);
            if(cursorRequest.data)
            {
               Mouse.show();
            }
         }
      }
      
      public function set currentCursorID(value:int) : void
      {
         var me:InterManagerRequest = null;
         _currentCursorID = value;
         if(!cursorHolder)
         {
            me = new InterManagerRequest(InterManagerRequest.CURSOR_MANAGER_REQUEST);
            me.name = "currentCursorID";
            me.value = currentCursorID;
            sandboxRoot.dispatchEvent(me);
         }
      }
      
      private function priorityCompare(a:CursorQueueItem, b:CursorQueueItem) : int
      {
         if(a.priority < b.priority)
         {
            return -1;
         }
         if(a.priority == b.priority)
         {
            return 0;
         }
         return 1;
      }
      
      private function mouseOutHandler(event:MouseEvent) : void
      {
         if(event.relatedObject == null && cursorList.length > 0)
         {
            customCursorLeftStage = true;
            hideCursor();
            Mouse.show();
         }
      }
      
      public function setBusyCursor() : void
      {
         var me:InterManagerRequest = null;
         if(initialized && !cursorHolder)
         {
            me = new InterManagerRequest(InterManagerRequest.CURSOR_MANAGER_REQUEST);
            me.name = "setBusyCursor";
            sandboxRoot.dispatchEvent(me);
            return;
         }
         var cursorManagerStyleDeclaration:CSSStyleDeclaration = StyleManager.getStyleDeclaration("CursorManager");
         var busyCursorClass:Class = cursorManagerStyleDeclaration.getStyle("busyCursor");
         busyCursorList.push(setCursor(busyCursorClass,CursorManagerPriority.LOW));
      }
      
      private function findSource(target:Object) : int
      {
         var n:int = sourceArray.length;
         for(var i:int = 0; i < n; i++)
         {
            if(sourceArray[i] === target)
            {
               return i;
            }
         }
         return -1;
      }
      
      private function showCurrentCursor() : void
      {
         var item:CursorQueueItem = null;
         var me:InterManagerRequest = null;
         var pt:Point = null;
         if(cursorList.length > 0)
         {
            if(!initialized)
            {
               cursorHolder = new FlexSprite();
               cursorHolder.name = "cursorHolder";
               cursorHolder.mouseEnabled = false;
               cursorHolder.mouseChildren = false;
               systemManager.addChildToSandboxRoot("cursorChildren",cursorHolder);
               initialized = true;
               me = new InterManagerRequest(InterManagerRequest.CURSOR_MANAGER_REQUEST);
               me.name = "initialized";
               sandboxRoot.dispatchEvent(me);
            }
            item = cursorList[0];
            if(currentCursorID == CursorManager.NO_CURSOR)
            {
               Mouse.hide();
            }
            if(item.cursorID != currentCursorID)
            {
               if(cursorHolder.numChildren > 0)
               {
                  cursorHolder.removeChildAt(0);
               }
               currentCursor = new item.cursorClass();
               if(currentCursor)
               {
                  if(currentCursor is InteractiveObject)
                  {
                     InteractiveObject(currentCursor).mouseEnabled = false;
                  }
                  if(currentCursor is DisplayObjectContainer)
                  {
                     DisplayObjectContainer(currentCursor).mouseChildren = false;
                  }
                  cursorHolder.addChild(currentCursor);
                  addContextMenuHandlers();
                  if(systemManager is SystemManager)
                  {
                     pt = new Point(SystemManager(systemManager).mouseX + item.x,SystemManager(systemManager).mouseY + item.y);
                     pt = SystemManager(systemManager).localToGlobal(pt);
                     pt = cursorHolder.parent.globalToLocal(pt);
                     cursorHolder.x = pt.x;
                     cursorHolder.y = pt.y;
                  }
                  else if(systemManager is DisplayObject)
                  {
                     pt = new Point(DisplayObject(systemManager).mouseX + item.x,DisplayObject(systemManager).mouseY + item.y);
                     pt = DisplayObject(systemManager).localToGlobal(pt);
                     pt = cursorHolder.parent.globalToLocal(pt);
                     cursorHolder.x = DisplayObject(systemManager).mouseX + item.x;
                     cursorHolder.y = DisplayObject(systemManager).mouseY + item.y;
                  }
                  else
                  {
                     cursorHolder.x = item.x;
                     cursorHolder.y = item.y;
                  }
                  if(systemManager.useSWFBridge())
                  {
                     sandboxRoot.addEventListener(MouseEvent.MOUSE_MOVE,mouseMoveHandler,true,EventPriority.CURSOR_MANAGEMENT);
                  }
                  else
                  {
                     systemManager.stage.addEventListener(MouseEvent.MOUSE_MOVE,mouseMoveHandler,true,EventPriority.CURSOR_MANAGEMENT);
                  }
                  sandboxRoot.addEventListener(SandboxMouseEvent.MOUSE_MOVE_SOMEWHERE,marshalMouseMoveHandler,false,EventPriority.CURSOR_MANAGEMENT);
                  if(systemManager.useSWFBridge())
                  {
                     sandboxRoot.addEventListener(MouseEvent.MOUSE_OUT,mouseOutHandler,true,EventPriority.CURSOR_MANAGEMENT);
                  }
                  else
                  {
                     systemManager.stage.addEventListener(MouseEvent.MOUSE_OUT,mouseOutHandler,true,EventPriority.CURSOR_MANAGEMENT);
                  }
               }
               currentCursorID = item.cursorID;
               currentCursorXOffset = item.x;
               currentCursorYOffset = item.y;
            }
         }
         else
         {
            showCustomCursor = false;
            if(currentCursorID != CursorManager.NO_CURSOR)
            {
               currentCursorID = CursorManager.NO_CURSOR;
               currentCursorXOffset = 0;
               currentCursorYOffset = 0;
               cursorHolder.removeChild(currentCursor);
               removeSystemManagerHandlers();
               removeContextMenuHandlers();
            }
            Mouse.show();
         }
      }
      
      public function get currentCursorYOffset() : Number
      {
         return _currentCursorYOffset;
      }
      
      private function contextMenu_menuSelectHandler(event:ContextMenuEvent) : void
      {
         showCustomCursor = true;
         sandboxRoot.addEventListener(MouseEvent.MOUSE_OVER,mouseOverHandler);
      }
      
      public function hideCursor() : void
      {
         var me:InterManagerRequest = null;
         if(cursorHolder)
         {
            cursorHolder.visible = false;
         }
         else
         {
            me = new InterManagerRequest(InterManagerRequest.CURSOR_MANAGER_REQUEST);
            me.name = "hideCursor";
            sandboxRoot.dispatchEvent(me);
         }
      }
      
      public function showCursor() : void
      {
         var me:InterManagerRequest = null;
         if(cursorHolder)
         {
            cursorHolder.visible = true;
         }
         else
         {
            me = new InterManagerRequest(InterManagerRequest.CURSOR_MANAGER_REQUEST);
            me.name = "showCursor";
            sandboxRoot.dispatchEvent(me);
         }
      }
      
      private function marshalCursorManagerHandler(event:Event) : void
      {
         var me:InterManagerRequest = null;
         if(event is InterManagerRequest)
         {
            return;
         }
         var marshalEvent:Object = event;
         switch(marshalEvent.name)
         {
            case "initialized":
               initialized = marshalEvent.value;
               break;
            case "currentCursorID":
               _currentCursorID = marshalEvent.value;
               break;
            case "currentCursorXOffset":
               _currentCursorXOffset = marshalEvent.value;
               break;
            case "currentCursorYOffset":
               _currentCursorYOffset = marshalEvent.value;
               break;
            case "showCursor":
               if(cursorHolder)
               {
                  cursorHolder.visible = true;
               }
               break;
            case "hideCursor":
               if(cursorHolder)
               {
                  cursorHolder.visible = false;
               }
               break;
            case "setCursor":
               if(cursorHolder)
               {
                  marshalEvent.value = setCursor.apply(this,marshalEvent.value);
               }
               break;
            case "removeCursor":
               if(cursorHolder)
               {
                  removeCursor.apply(this,[marshalEvent.value]);
               }
               break;
            case "removeAllCursors":
               if(cursorHolder)
               {
                  removeAllCursors();
               }
               break;
            case "setBusyCursor":
               if(cursorHolder)
               {
                  setBusyCursor();
               }
               break;
            case "removeBusyCursor":
               if(cursorHolder)
               {
                  removeBusyCursor();
               }
               break;
            case "registerToUseBusyCursor":
               if(cursorHolder)
               {
                  registerToUseBusyCursor.apply(this,marshalEvent.value);
               }
               break;
            case "unRegisterToUseBusyCursor":
               if(cursorHolder)
               {
                  unRegisterToUseBusyCursor.apply(this,marshalEvent.value);
               }
               break;
            case "update":
               if(cursorHolder)
               {
                  me = new InterManagerRequest(InterManagerRequest.CURSOR_MANAGER_REQUEST);
                  me.name = "initialized";
                  me.value = true;
                  sandboxRoot.dispatchEvent(me);
                  me = new InterManagerRequest(InterManagerRequest.CURSOR_MANAGER_REQUEST);
                  me.name = "currentCursorID";
                  me.value = currentCursorID;
                  sandboxRoot.dispatchEvent(me);
                  me = new InterManagerRequest(InterManagerRequest.CURSOR_MANAGER_REQUEST);
                  me.name = "currentCursorXOffset";
                  me.value = currentCursorXOffset;
                  sandboxRoot.dispatchEvent(me);
                  me = new InterManagerRequest(InterManagerRequest.CURSOR_MANAGER_REQUEST);
                  me.name = "currentCursorYOffset";
                  me.value = currentCursorYOffset;
                  sandboxRoot.dispatchEvent(me);
               }
         }
      }
      
      public function removeAllCursors() : void
      {
         var me:InterManagerRequest = null;
         if(initialized && !cursorHolder)
         {
            me = new InterManagerRequest(InterManagerRequest.CURSOR_MANAGER_REQUEST);
            me.name = "removeAllCursors";
            sandboxRoot.dispatchEvent(me);
            return;
         }
         cursorList.splice(0);
         showCurrentCursor();
      }
      
      private function completeHandler(event:Event) : void
      {
         var sourceIndex:int = findSource(event.target);
         if(sourceIndex != -1)
         {
            sourceArray.splice(sourceIndex,1);
            removeBusyCursor();
         }
      }
      
      public function removeBusyCursor() : void
      {
         var me:InterManagerRequest = null;
         if(initialized && !cursorHolder)
         {
            me = new InterManagerRequest(InterManagerRequest.CURSOR_MANAGER_REQUEST);
            me.name = "removeBusyCursor";
            sandboxRoot.dispatchEvent(me);
            return;
         }
         if(busyCursorList.length > 0)
         {
            removeCursor(int(busyCursorList.pop()));
         }
      }
      
      private function addContextMenuHandlers() : void
      {
         var app:InteractiveObject = null;
         var sm:InteractiveObject = null;
         if(!listenForContextMenu)
         {
            app = systemManager.document as InteractiveObject;
            sm = systemManager as InteractiveObject;
            if(app && app.contextMenu)
            {
               app.contextMenu.addEventListener(ContextMenuEvent.MENU_SELECT,contextMenu_menuSelectHandler,true,EventPriority.CURSOR_MANAGEMENT);
               listenForContextMenu = true;
            }
            if(sm && sm.contextMenu)
            {
               sm.contextMenu.addEventListener(ContextMenuEvent.MENU_SELECT,contextMenu_menuSelectHandler,true,EventPriority.CURSOR_MANAGEMENT);
               listenForContextMenu = true;
            }
         }
      }
      
      public function setCursor(cursorClass:Class, priority:int = 2, xOffset:Number = 0, yOffset:Number = 0) : int
      {
         var me:InterManagerRequest = null;
         if(initialized && !cursorHolder)
         {
            me = new InterManagerRequest(InterManagerRequest.CURSOR_MANAGER_REQUEST);
            me.name = "setCursor";
            me.value = [cursorClass,priority,xOffset,yOffset];
            sandboxRoot.dispatchEvent(me);
            return me.value as int;
         }
         var cursorID:int = nextCursorID++;
         var item:CursorQueueItem = new CursorQueueItem();
         item.cursorID = cursorID;
         item.cursorClass = cursorClass;
         item.priority = priority;
         item.x = xOffset;
         item.y = yOffset;
         if(systemManager)
         {
            item.systemManager = systemManager;
         }
         else
         {
            item.systemManager = ApplicationGlobals.application.systemManager;
         }
         cursorList.push(item);
         cursorList.sort(priorityCompare);
         showCurrentCursor();
         return cursorID;
      }
      
      private function progressHandler(event:ProgressEvent) : void
      {
         var sourceIndex:int = findSource(event.target);
         if(sourceIndex == -1)
         {
            sourceArray.push(event.target);
            setBusyCursor();
         }
      }
      
      private function removeSystemManagerHandlers() : void
      {
         if(systemManager.useSWFBridge())
         {
            sandboxRoot.removeEventListener(MouseEvent.MOUSE_MOVE,mouseMoveHandler,true);
         }
         else
         {
            systemManager.stage.removeEventListener(MouseEvent.MOUSE_MOVE,mouseMoveHandler,true);
         }
         sandboxRoot.removeEventListener(SandboxMouseEvent.MOUSE_MOVE_SOMEWHERE,marshalMouseMoveHandler,false);
         if(systemManager.useSWFBridge())
         {
            sandboxRoot.removeEventListener(MouseEvent.MOUSE_OUT,mouseMoveHandler,true);
         }
         else
         {
            systemManager.stage.removeEventListener(MouseEvent.MOUSE_OUT,mouseOutHandler,true);
         }
      }
      
      public function registerToUseBusyCursor(source:Object) : void
      {
         var me:InterManagerRequest = null;
         if(initialized && !cursorHolder)
         {
            me = new InterManagerRequest(InterManagerRequest.CURSOR_MANAGER_REQUEST);
            me.name = "registerToUseBusyCursor";
            me.value = source;
            sandboxRoot.dispatchEvent(me);
            return;
         }
         if(source && source is EventDispatcher)
         {
            source.addEventListener(ProgressEvent.PROGRESS,progressHandler);
            source.addEventListener(Event.COMPLETE,completeHandler);
            source.addEventListener(IOErrorEvent.IO_ERROR,completeHandler);
         }
      }
      
      private function mouseMoveHandler(event:MouseEvent) : void
      {
         var cursorRequest:SWFBridgeRequest = null;
         var bridge:IEventDispatcher = null;
         var pt:Point = new Point(event.stageX,event.stageY);
         pt = cursorHolder.parent.globalToLocal(pt);
         pt.x = pt.x + currentCursorXOffset;
         pt.y = pt.y + currentCursorYOffset;
         cursorHolder.x = pt.x;
         cursorHolder.y = pt.y;
         var target:Object = event.target;
         if(!overTextField && target is TextField && target.type == TextFieldType.INPUT)
         {
            overTextField = true;
            showSystemCursor = true;
         }
         else if(overTextField && !(target is TextField && target.type == TextFieldType.INPUT))
         {
            overTextField = false;
            showCustomCursor = true;
         }
         else
         {
            showCustomCursor = true;
         }
         if(showSystemCursor)
         {
            showSystemCursor = false;
            cursorHolder.visible = false;
            Mouse.show();
         }
         if(showCustomCursor)
         {
            showCustomCursor = false;
            cursorHolder.visible = true;
            Mouse.hide();
            cursorRequest = new SWFBridgeRequest(SWFBridgeRequest.HIDE_MOUSE_CURSOR_REQUEST);
            if(systemManager.useSWFBridge())
            {
               bridge = systemManager.swfBridgeGroup.parentBridge;
            }
            else
            {
               bridge = systemManager;
            }
            cursorRequest.requestor = bridge;
            bridge.dispatchEvent(cursorRequest);
         }
      }
      
      public function unRegisterToUseBusyCursor(source:Object) : void
      {
         var me:InterManagerRequest = null;
         if(initialized && !cursorHolder)
         {
            me = new InterManagerRequest(InterManagerRequest.CURSOR_MANAGER_REQUEST);
            me.name = "unRegisterToUseBusyCursor";
            me.value = source;
            sandboxRoot.dispatchEvent(me);
            return;
         }
         if(source && source is EventDispatcher)
         {
            source.removeEventListener(ProgressEvent.PROGRESS,progressHandler);
            source.removeEventListener(Event.COMPLETE,completeHandler);
            source.removeEventListener(IOErrorEvent.IO_ERROR,completeHandler);
         }
      }
      
      public function set currentCursorXOffset(value:Number) : void
      {
         var me:InterManagerRequest = null;
         _currentCursorXOffset = value;
         if(!cursorHolder)
         {
            me = new InterManagerRequest(InterManagerRequest.CURSOR_MANAGER_REQUEST);
            me.name = "currentCursorXOffset";
            me.value = currentCursorXOffset;
            sandboxRoot.dispatchEvent(me);
         }
      }
   }
}

import mx.core.mx_internal;
import mx.managers.ISystemManager;

use namespace mx_internal;

class CursorQueueItem
{
   
   mx_internal static const VERSION:String = "3.6.0.21751";
    
   
   public var priority:int = 2;
   
   public var cursorClass:Class = null;
   
   public var cursorID:int = 0;
   
   public var x:Number;
   
   public var y:Number;
   
   public var systemManager:ISystemManager;
   
   function CursorQueueItem()
   {
      super();
   }
}

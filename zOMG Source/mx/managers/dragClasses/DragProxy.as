package mx.managers.dragClasses
{
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.InteractiveObject;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import mx.core.DragSource;
   import mx.core.IUIComponent;
   import mx.core.UIComponent;
   import mx.core.mx_internal;
   import mx.effects.Move;
   import mx.effects.Zoom;
   import mx.events.DragEvent;
   import mx.events.EffectEvent;
   import mx.events.InterDragManagerEvent;
   import mx.events.InterManagerRequest;
   import mx.events.SandboxMouseEvent;
   import mx.managers.CursorManager;
   import mx.managers.DragManager;
   import mx.managers.ISystemManager;
   import mx.managers.SystemManager;
   import mx.styles.CSSStyleDeclaration;
   import mx.styles.StyleManager;
   
   use namespace mx_internal;
   
   public class DragProxy extends UIComponent
   {
      
      mx_internal static const VERSION:String = "3.6.0.21751";
       
      
      public var allowMove:Boolean = true;
      
      private var cursorClass:Class = null;
      
      public var action:String;
      
      private var sandboxRoot:IEventDispatcher;
      
      public var target:DisplayObject = null;
      
      public var dragInitiator:IUIComponent;
      
      public var xOffset:Number;
      
      public var yOffset:Number;
      
      public var dragSource:DragSource;
      
      private var cursorID:int = 0;
      
      private var lastMouseEvent:MouseEvent;
      
      public var startX:Number;
      
      public var startY:Number;
      
      private var lastKeyEvent:KeyboardEvent;
      
      public function DragProxy(dragInitiator:IUIComponent, dragSource:DragSource)
      {
         super();
         this.dragInitiator = dragInitiator;
         this.dragSource = dragSource;
         var sm:ISystemManager = dragInitiator.systemManager.topLevelSystemManager as ISystemManager;
         var ed:IEventDispatcher = sandboxRoot = sm.getSandboxRoot();
         ed.addEventListener(MouseEvent.MOUSE_MOVE,mouseMoveHandler,true);
         ed.addEventListener(MouseEvent.MOUSE_UP,mouseUpHandler,true);
         ed.addEventListener(KeyboardEvent.KEY_DOWN,keyDownHandler);
         ed.addEventListener(KeyboardEvent.KEY_UP,keyUpHandler);
      }
      
      private static function getObjectsUnderPoint(obj:DisplayObject, pt:Point, arr:Array) : void
      {
         var doc:DisplayObjectContainer = null;
         var rc:Object = null;
         var n:int = 0;
         var i:int = 0;
         var child:DisplayObject = null;
         if(!obj.visible)
         {
            return;
         }
         if(obj is UIComponent && !UIComponent(obj).$visible)
         {
            return;
         }
         if(obj.hitTestPoint(pt.x,pt.y,true))
         {
            if(obj is InteractiveObject && InteractiveObject(obj).mouseEnabled)
            {
               arr.push(obj);
            }
            if(obj is DisplayObjectContainer)
            {
               doc = obj as DisplayObjectContainer;
               if(doc.mouseChildren)
               {
                  if("rawChildren" in doc)
                  {
                     rc = doc["rawChildren"];
                     n = rc.numChildren;
                     for(i = 0; i < n; i++)
                     {
                        try
                        {
                           getObjectsUnderPoint(rc.getChildAt(i),pt,arr);
                        }
                        catch(e:Error)
                        {
                        }
                     }
                  }
                  else if(doc.numChildren)
                  {
                     n = doc.numChildren;
                     for(i = 0; i < n; i++)
                     {
                        try
                        {
                           child = doc.getChildAt(i);
                           getObjectsUnderPoint(child,pt,arr);
                        }
                        catch(e:Error)
                        {
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function mouseUpHandler(event:MouseEvent) : void
      {
         var dragEvent:DragEvent = null;
         var pt:Point = null;
         var m1:Move = null;
         var e:Zoom = null;
         var m:Move = null;
         var sm:ISystemManager = dragInitiator.systemManager.topLevelSystemManager as ISystemManager;
         var ed:IEventDispatcher = sandboxRoot;
         ed.removeEventListener(MouseEvent.MOUSE_MOVE,mouseMoveHandler,true);
         ed.removeEventListener(MouseEvent.MOUSE_UP,mouseUpHandler,true);
         ed.removeEventListener(KeyboardEvent.KEY_DOWN,keyDownHandler);
         ed.removeEventListener(SandboxMouseEvent.MOUSE_UP_SOMEWHERE,mouseLeaveHandler);
         ed.removeEventListener(KeyboardEvent.KEY_UP,keyUpHandler);
         var delegate:Object = automationDelegate;
         if(target && action != DragManager.NONE)
         {
            dragEvent = new DragEvent(DragEvent.DRAG_DROP);
            dragEvent.dragInitiator = dragInitiator;
            dragEvent.dragSource = dragSource;
            dragEvent.action = action;
            dragEvent.ctrlKey = event.ctrlKey;
            dragEvent.altKey = event.altKey;
            dragEvent.shiftKey = event.shiftKey;
            pt = new Point();
            pt.x = lastMouseEvent.localX;
            pt.y = lastMouseEvent.localY;
            pt = DisplayObject(lastMouseEvent.target).localToGlobal(pt);
            pt = DisplayObject(target).globalToLocal(pt);
            dragEvent.localX = pt.x;
            dragEvent.localY = pt.y;
            if(delegate)
            {
               delegate.recordAutomatableDragDrop(target,dragEvent);
            }
            _dispatchDragEvent(target,dragEvent);
         }
         else
         {
            action = DragManager.NONE;
         }
         if(action == DragManager.NONE)
         {
            m1 = new Move(this);
            m1.addEventListener(EffectEvent.EFFECT_END,effectEndHandler);
            m1.xFrom = x;
            m1.yFrom = y;
            m1.xTo = startX;
            m1.yTo = startY;
            m1.duration = 200;
            m1.play();
         }
         else
         {
            e = new Zoom(this);
            e.zoomWidthFrom = e.zoomHeightFrom = 1;
            e.zoomWidthTo = e.zoomHeightTo = 0;
            e.duration = 200;
            e.play();
            m = new Move(this);
            m.addEventListener(EffectEvent.EFFECT_END,effectEndHandler);
            m.xFrom = x;
            m.yFrom = this.y;
            m.xTo = parent.mouseX;
            m.yTo = parent.mouseY;
            m.duration = 200;
            m.play();
         }
         dragEvent = new DragEvent(DragEvent.DRAG_COMPLETE);
         dragEvent.dragInitiator = dragInitiator;
         dragEvent.dragSource = dragSource;
         dragEvent.relatedObject = InteractiveObject(target);
         dragEvent.action = action;
         dragEvent.ctrlKey = event.ctrlKey;
         dragEvent.altKey = event.altKey;
         dragEvent.shiftKey = event.shiftKey;
         dragInitiator.dispatchEvent(dragEvent);
         if(delegate && action == DragManager.NONE)
         {
            delegate.recordAutomatableDragCancel(dragInitiator,dragEvent);
         }
         cursorManager.removeCursor(cursorID);
         cursorID = CursorManager.NO_CURSOR;
         this.lastMouseEvent = null;
      }
      
      private function isSameOrChildApplicationDomain(target:Object) : Boolean
      {
         var swfRoot:DisplayObject = SystemManager.getSWFRoot(target);
         if(swfRoot)
         {
            return true;
         }
         var me:InterManagerRequest = new InterManagerRequest(InterManagerRequest.SYSTEM_MANAGER_REQUEST);
         me.name = "hasSWFBridges";
         sandboxRoot.dispatchEvent(me);
         if(!me.value)
         {
            return true;
         }
         return false;
      }
      
      public function showFeedback() : void
      {
         var newCursorClass:Class = cursorClass;
         var styleSheet:CSSStyleDeclaration = StyleManager.getStyleDeclaration("DragManager");
         if(action == DragManager.COPY)
         {
            newCursorClass = styleSheet.getStyle("copyCursor");
         }
         else if(action == DragManager.LINK)
         {
            newCursorClass = styleSheet.getStyle("linkCursor");
         }
         else if(action == DragManager.NONE)
         {
            newCursorClass = styleSheet.getStyle("rejectCursor");
         }
         else
         {
            newCursorClass = styleSheet.getStyle("moveCursor");
         }
         if(newCursorClass != cursorClass)
         {
            cursorClass = newCursorClass;
            if(cursorID != CursorManager.NO_CURSOR)
            {
               cursorManager.removeCursor(cursorID);
            }
            cursorID = cursorManager.setCursor(cursorClass,2,0,0);
         }
      }
      
      override public function initialize() : void
      {
         super.initialize();
         dragInitiator.systemManager.getSandboxRoot().addEventListener(SandboxMouseEvent.MOUSE_UP_SOMEWHERE,mouseLeaveHandler);
         if(!getFocus())
         {
            setFocus();
         }
      }
      
      public function mouseMoveHandler(event:MouseEvent) : void
      {
         var dragEvent:DragEvent = null;
         var dropTarget:DisplayObject = null;
         var i:int = 0;
         var targetList:Array = null;
         var foundIt:Boolean = false;
         var oldTarget:DisplayObject = null;
         lastMouseEvent = event;
         var pt:Point = new Point();
         var point:Point = new Point(event.localX,event.localY);
         var stagePoint:Point = DisplayObject(event.target).localToGlobal(point);
         point = DisplayObject(sandboxRoot).globalToLocal(stagePoint);
         var mouseX:Number = point.x;
         var mouseY:Number = point.y;
         x = mouseX - xOffset;
         y = mouseY - yOffset;
         if(!event)
         {
            return;
         }
         var tlr:IEventDispatcher = systemManager.getTopLevelRoot();
         targetList = [];
         DragProxy.getObjectsUnderPoint(DisplayObject(sandboxRoot),stagePoint,targetList);
         var newTarget:DisplayObject = null;
         var targetIndex:int = targetList.length - 1;
         while(targetIndex >= 0)
         {
            newTarget = targetList[targetIndex];
            if(newTarget != this && !contains(newTarget))
            {
               break;
            }
            targetIndex--;
         }
         if(target)
         {
            foundIt = false;
            oldTarget = target;
            dropTarget = newTarget;
            while(dropTarget)
            {
               if(dropTarget == target)
               {
                  dispatchDragEvent(DragEvent.DRAG_OVER,event,dropTarget);
                  foundIt = true;
                  break;
               }
               dispatchDragEvent(DragEvent.DRAG_ENTER,event,dropTarget);
               if(target == dropTarget)
               {
                  foundIt = false;
                  break;
               }
               dropTarget = dropTarget.parent;
            }
            if(!foundIt)
            {
               dispatchDragEvent(DragEvent.DRAG_EXIT,event,oldTarget);
               if(target == oldTarget)
               {
                  target = null;
               }
            }
         }
         if(!target)
         {
            action = DragManager.MOVE;
            dropTarget = newTarget;
            while(dropTarget)
            {
               if(dropTarget != this)
               {
                  dispatchDragEvent(DragEvent.DRAG_ENTER,event,dropTarget);
                  if(target)
                  {
                     break;
                  }
               }
               dropTarget = dropTarget.parent;
            }
            if(!target)
            {
               action = DragManager.NONE;
            }
         }
         showFeedback();
      }
      
      private function dispatchDragEvent(type:String, mouseEvent:MouseEvent, eventTarget:Object) : void
      {
         var dragEvent:DragEvent = new DragEvent(type);
         var pt:Point = new Point();
         dragEvent.dragInitiator = dragInitiator;
         dragEvent.dragSource = dragSource;
         dragEvent.action = action;
         dragEvent.ctrlKey = mouseEvent.ctrlKey;
         dragEvent.altKey = mouseEvent.altKey;
         dragEvent.shiftKey = mouseEvent.shiftKey;
         pt.x = lastMouseEvent.localX;
         pt.y = lastMouseEvent.localY;
         pt = DisplayObject(lastMouseEvent.target).localToGlobal(pt);
         pt = DisplayObject(eventTarget).globalToLocal(pt);
         dragEvent.localX = pt.x;
         dragEvent.localY = pt.y;
         _dispatchDragEvent(DisplayObject(eventTarget),dragEvent);
      }
      
      override protected function keyUpHandler(event:KeyboardEvent) : void
      {
         checkKeyEvent(event);
      }
      
      private function effectEndHandler(event:EffectEvent) : void
      {
         DragManager.endDrag();
      }
      
      public function checkKeyEvent(event:KeyboardEvent) : void
      {
         var dragEvent:DragEvent = null;
         var pt:Point = null;
         if(target)
         {
            if(lastKeyEvent && event.type == lastKeyEvent.type && event.keyCode == lastKeyEvent.keyCode)
            {
               return;
            }
            lastKeyEvent = event;
            dragEvent = new DragEvent(DragEvent.DRAG_OVER);
            dragEvent.dragInitiator = dragInitiator;
            dragEvent.dragSource = dragSource;
            dragEvent.action = action;
            dragEvent.ctrlKey = event.ctrlKey;
            dragEvent.altKey = event.altKey;
            dragEvent.shiftKey = event.shiftKey;
            pt = new Point();
            pt.x = lastMouseEvent.localX;
            pt.y = lastMouseEvent.localY;
            pt = DisplayObject(lastMouseEvent.target).localToGlobal(pt);
            pt = DisplayObject(target).globalToLocal(pt);
            dragEvent.localX = pt.x;
            dragEvent.localY = pt.y;
            _dispatchDragEvent(target,dragEvent);
            showFeedback();
         }
      }
      
      public function mouseLeaveHandler(event:Event) : void
      {
         mouseUpHandler(lastMouseEvent);
      }
      
      private function _dispatchDragEvent(target:DisplayObject, event:DragEvent) : void
      {
         var me:InterManagerRequest = null;
         var mde:InterDragManagerEvent = null;
         if(isSameOrChildApplicationDomain(target))
         {
            target.dispatchEvent(event);
         }
         else
         {
            me = new InterManagerRequest(InterManagerRequest.INIT_MANAGER_REQUEST);
            me.name = "mx.managers::IDragManager";
            sandboxRoot.dispatchEvent(me);
            mde = new InterDragManagerEvent(InterDragManagerEvent.DISPATCH_DRAG_EVENT,false,false,event.localX,event.localY,event.relatedObject,event.ctrlKey,event.altKey,event.shiftKey,event.buttonDown,event.delta,target,event.type,event.dragInitiator,event.dragSource,event.action,event.draggedItem);
            sandboxRoot.dispatchEvent(mde);
         }
      }
      
      override protected function keyDownHandler(event:KeyboardEvent) : void
      {
         checkKeyEvent(event);
      }
      
      public function stage_mouseMoveHandler(event:MouseEvent) : void
      {
         if(event.target != stage)
         {
            return;
         }
         mouseMoveHandler(event);
      }
   }
}

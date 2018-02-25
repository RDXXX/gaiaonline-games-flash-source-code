package mx.managers
{
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import mx.core.DragSource;
   import mx.core.IFlexDisplayObject;
   import mx.core.IUIComponent;
   import mx.core.UIComponentGlobals;
   import mx.core.mx_internal;
   import mx.events.DragEvent;
   import mx.events.InterDragManagerEvent;
   import mx.events.InterManagerRequest;
   import mx.managers.dragClasses.DragProxy;
   import mx.styles.CSSStyleDeclaration;
   import mx.styles.StyleManager;
   
   use namespace mx_internal;
   
   public class DragManagerImpl implements IDragManager
   {
      
      private static var instance:IDragManager;
      
      mx_internal static const VERSION:String = "3.6.0.21751";
      
      private static var sm:ISystemManager;
       
      
      private var bDoingDrag:Boolean = false;
      
      private var sandboxRoot:IEventDispatcher;
      
      public var dragProxy:DragProxy;
      
      private var dragInitiator:IUIComponent;
      
      private var mouseIsDown:Boolean = false;
      
      public function DragManagerImpl()
      {
         var ed:IEventDispatcher = null;
         super();
         if(instance)
         {
            throw new Error("Instance already exists.");
         }
         if(!sm.isTopLevelRoot())
         {
            sandboxRoot = sm.getSandboxRoot();
            sandboxRoot.addEventListener(InterDragManagerEvent.DISPATCH_DRAG_EVENT,marshalDispatchEventHandler,false,0,true);
         }
         else
         {
            ed = sm;
            ed.addEventListener(MouseEvent.MOUSE_DOWN,sm_mouseDownHandler,false,0,true);
            ed.addEventListener(MouseEvent.MOUSE_UP,sm_mouseUpHandler,false,0,true);
            sandboxRoot = sm;
            sandboxRoot.addEventListener(InterDragManagerEvent.DISPATCH_DRAG_EVENT,marshalDispatchEventHandler,false,0,true);
         }
         sandboxRoot.addEventListener(InterManagerRequest.DRAG_MANAGER_REQUEST,marshalDragManagerHandler,false,0,true);
         var me:InterManagerRequest = new InterManagerRequest(InterManagerRequest.DRAG_MANAGER_REQUEST);
         me.name = "update";
         sandboxRoot.dispatchEvent(me);
      }
      
      public static function getInstance() : IDragManager
      {
         if(!instance)
         {
            sm = SystemManagerGlobals.topLevelSystemManagers[0];
            instance = new DragManagerImpl();
         }
         return instance;
      }
      
      private function marshalDragManagerHandler(event:Event) : void
      {
         var me:InterManagerRequest = null;
         if(event is InterManagerRequest)
         {
            return;
         }
         var marshalEvent:Object = event;
         switch(marshalEvent.name)
         {
            case "isDragging":
               bDoingDrag = marshalEvent.value;
               break;
            case "acceptDragDrop":
               if(dragProxy)
               {
                  dragProxy.target = marshalEvent.value;
               }
               break;
            case "showFeedback":
               if(dragProxy)
               {
                  showFeedback(marshalEvent.value);
               }
               break;
            case "getFeedback":
               if(dragProxy)
               {
                  marshalEvent.value = getFeedback();
               }
               break;
            case "endDrag":
               endDrag();
               break;
            case "update":
               if(dragProxy && isDragging)
               {
                  me = new InterManagerRequest(InterManagerRequest.DRAG_MANAGER_REQUEST);
                  me.name = "isDragging";
                  me.value = true;
                  sandboxRoot.dispatchEvent(me);
               }
         }
      }
      
      private function sm_mouseUpHandler(event:MouseEvent) : void
      {
         mouseIsDown = false;
      }
      
      public function get isDragging() : Boolean
      {
         return bDoingDrag;
      }
      
      public function doDrag(dragInitiator:IUIComponent, dragSource:DragSource, mouseEvent:MouseEvent, dragImage:IFlexDisplayObject = null, xOffset:Number = 0, yOffset:Number = 0, imageAlpha:Number = 0.5, allowMove:Boolean = true) : void
      {
         var proxyWidth:Number = NaN;
         var proxyHeight:Number = NaN;
         var dragManagerStyleDeclaration:CSSStyleDeclaration = null;
         var dragImageClass:Class = null;
         if(bDoingDrag)
         {
            return;
         }
         if(!(mouseEvent.type == MouseEvent.MOUSE_DOWN || mouseEvent.type == MouseEvent.CLICK || mouseIsDown || mouseEvent.buttonDown))
         {
            return;
         }
         bDoingDrag = true;
         var me:InterManagerRequest = new InterManagerRequest(InterManagerRequest.DRAG_MANAGER_REQUEST);
         me.name = "isDragging";
         me.value = true;
         sandboxRoot.dispatchEvent(me);
         me = new InterManagerRequest(InterManagerRequest.DRAG_MANAGER_REQUEST);
         me.name = "mouseShield";
         me.value = true;
         sandboxRoot.dispatchEvent(me);
         this.dragInitiator = dragInitiator;
         dragProxy = new DragProxy(dragInitiator,dragSource);
         sm.addChildToSandboxRoot("popUpChildren",dragProxy);
         if(!dragImage)
         {
            dragManagerStyleDeclaration = StyleManager.getStyleDeclaration("DragManager");
            dragImageClass = dragManagerStyleDeclaration.getStyle("defaultDragImageSkin");
            dragImage = new dragImageClass();
            dragProxy.addChild(DisplayObject(dragImage));
            proxyWidth = dragInitiator.width;
            proxyHeight = dragInitiator.height;
         }
         else
         {
            dragProxy.addChild(DisplayObject(dragImage));
            if(dragImage is ILayoutManagerClient)
            {
               UIComponentGlobals.layoutManager.validateClient(ILayoutManagerClient(dragImage),true);
            }
            if(dragImage is IUIComponent)
            {
               proxyWidth = (dragImage as IUIComponent).getExplicitOrMeasuredWidth();
               proxyHeight = (dragImage as IUIComponent).getExplicitOrMeasuredHeight();
            }
            else
            {
               proxyWidth = dragImage.measuredWidth;
               proxyHeight = dragImage.measuredHeight;
            }
         }
         dragImage.setActualSize(proxyWidth,proxyHeight);
         dragProxy.setActualSize(proxyWidth,proxyHeight);
         dragProxy.alpha = imageAlpha;
         dragProxy.allowMove = allowMove;
         var nonNullTarget:Object = mouseEvent.target;
         if(nonNullTarget == null)
         {
            nonNullTarget = dragInitiator;
         }
         var point:Point = new Point(mouseEvent.localX,mouseEvent.localY);
         point = DisplayObject(nonNullTarget).localToGlobal(point);
         point = DisplayObject(sandboxRoot).globalToLocal(point);
         var mouseX:Number = point.x;
         var mouseY:Number = point.y;
         var proxyOrigin:Point = DisplayObject(nonNullTarget).localToGlobal(new Point(mouseEvent.localX,mouseEvent.localY));
         proxyOrigin = DisplayObject(dragInitiator).globalToLocal(proxyOrigin);
         dragProxy.xOffset = proxyOrigin.x + xOffset;
         dragProxy.yOffset = proxyOrigin.y + yOffset;
         dragProxy.x = mouseX - dragProxy.xOffset;
         dragProxy.y = mouseY - dragProxy.yOffset;
         dragProxy.startX = dragProxy.x;
         dragProxy.startY = dragProxy.y;
         if(dragImage is DisplayObject)
         {
            DisplayObject(dragImage).cacheAsBitmap = true;
         }
         var delegate:Object = dragProxy.automationDelegate;
         if(delegate)
         {
            delegate.recordAutomatableDragStart(dragInitiator,mouseEvent);
         }
      }
      
      private function sm_mouseDownHandler(event:MouseEvent) : void
      {
         mouseIsDown = true;
      }
      
      public function showFeedback(feedback:String) : void
      {
         var me:InterManagerRequest = null;
         if(dragProxy)
         {
            if(feedback == DragManager.MOVE && !dragProxy.allowMove)
            {
               feedback = DragManager.COPY;
            }
            dragProxy.action = feedback;
         }
         else if(isDragging)
         {
            me = new InterManagerRequest(InterManagerRequest.DRAG_MANAGER_REQUEST);
            me.name = "showFeedback";
            me.value = feedback;
            sandboxRoot.dispatchEvent(me);
         }
      }
      
      public function acceptDragDrop(target:IUIComponent) : void
      {
         var me:InterManagerRequest = null;
         if(dragProxy)
         {
            dragProxy.target = target as DisplayObject;
         }
         else if(isDragging)
         {
            me = new InterManagerRequest(InterManagerRequest.DRAG_MANAGER_REQUEST);
            me.name = "acceptDragDrop";
            me.value = target;
            sandboxRoot.dispatchEvent(me);
         }
      }
      
      private function marshalDispatchEventHandler(event:Event) : void
      {
         if(event is InterDragManagerEvent)
         {
            return;
         }
         var marshalEvent:Object = event;
         var swfRoot:DisplayObject = SystemManager.getSWFRoot(marshalEvent.dropTarget);
         if(!swfRoot)
         {
            return;
         }
         var dragEvent:DragEvent = new DragEvent(marshalEvent.dragEventType,marshalEvent.bubbles,marshalEvent.cancelable);
         dragEvent.localX = marshalEvent.localX;
         dragEvent.localY = marshalEvent.localY;
         dragEvent.action = marshalEvent.action;
         dragEvent.ctrlKey = marshalEvent.ctrlKey;
         dragEvent.altKey = marshalEvent.altKey;
         dragEvent.shiftKey = marshalEvent.shiftKey;
         dragEvent.draggedItem = marshalEvent.draggedItem;
         dragEvent.dragSource = new DragSource();
         var formats:Array = marshalEvent.dragSource.formats;
         var n:int = formats.length;
         for(var i:int = 0; i < n; i++)
         {
            dragEvent.dragSource.addData(marshalEvent.dragSource.dataForFormat(formats[i]),formats[i]);
         }
         if(!marshalEvent.dropTarget.dispatchEvent(dragEvent))
         {
            event.preventDefault();
         }
      }
      
      public function getFeedback() : String
      {
         var me:InterManagerRequest = null;
         if(!dragProxy && isDragging)
         {
            me = new InterManagerRequest(InterManagerRequest.DRAG_MANAGER_REQUEST);
            me.name = "getFeedback";
            sandboxRoot.dispatchEvent(me);
            return me.value as String;
         }
         return !!dragProxy?dragProxy.action:DragManager.NONE;
      }
      
      public function endDrag() : void
      {
         var me:InterManagerRequest = null;
         if(dragProxy)
         {
            sm.removeChildFromSandboxRoot("popUpChildren",dragProxy);
            dragProxy.removeChildAt(0);
            dragProxy = null;
         }
         else if(isDragging)
         {
            me = new InterManagerRequest(InterManagerRequest.DRAG_MANAGER_REQUEST);
            me.name = "endDrag";
            sandboxRoot.dispatchEvent(me);
         }
         me = new InterManagerRequest(InterManagerRequest.DRAG_MANAGER_REQUEST);
         me.name = "mouseShield";
         me.value = false;
         sandboxRoot.dispatchEvent(me);
         dragInitiator = null;
         bDoingDrag = false;
         me = new InterManagerRequest(InterManagerRequest.DRAG_MANAGER_REQUEST);
         me.name = "isDragging";
         me.value = false;
         sandboxRoot.dispatchEvent(me);
      }
   }
}

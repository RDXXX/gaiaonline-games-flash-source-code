package mx.managers
{
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.InteractiveObject;
   import flash.display.Sprite;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import mx.automation.IAutomationObject;
   import mx.core.ApplicationGlobals;
   import mx.core.FlexSprite;
   import mx.core.IChildList;
   import mx.core.IFlexDisplayObject;
   import mx.core.IFlexModule;
   import mx.core.IInvalidating;
   import mx.core.ISWFLoader;
   import mx.core.IUIComponent;
   import mx.core.UIComponent;
   import mx.core.UIComponentGlobals;
   import mx.core.mx_internal;
   import mx.effects.Blur;
   import mx.effects.Fade;
   import mx.effects.IEffect;
   import mx.events.EffectEvent;
   import mx.events.FlexEvent;
   import mx.events.FlexMouseEvent;
   import mx.events.InterManagerRequest;
   import mx.events.MoveEvent;
   import mx.events.SWFBridgeRequest;
   import mx.events.SandboxMouseEvent;
   import mx.styles.IStyleClient;
   import mx.utils.NameUtil;
   
   use namespace mx_internal;
   
   public class PopUpManagerImpl implements IPopUpManager
   {
      
      private static var instance:IPopUpManager;
      
      mx_internal static const VERSION:String = "3.6.0.21751";
       
      
      private var popupInfo:Array;
      
      mx_internal var modalWindowClass:Class;
      
      public function PopUpManagerImpl()
      {
         super();
         var sm:ISystemManager = ISystemManager(SystemManagerGlobals.topLevelSystemManagers[0]);
         sm.addEventListener(SWFBridgeRequest.CREATE_MODAL_WINDOW_REQUEST,createModalWindowRequestHandler,false,0,true);
         sm.addEventListener(SWFBridgeRequest.SHOW_MODAL_WINDOW_REQUEST,showModalWindowRequest,false,0,true);
         sm.addEventListener(SWFBridgeRequest.HIDE_MODAL_WINDOW_REQUEST,hideModalWindowRequest,false,0,true);
      }
      
      private static function nonmodalMouseWheelOutsideHandler(owner:DisplayObject, evt:MouseEvent) : void
      {
         if(!owner.hitTestPoint(evt.stageX,evt.stageY,true))
         {
            if(owner is IUIComponent)
            {
               if(IUIComponent(owner).owns(DisplayObject(evt.target)))
               {
                  return;
               }
            }
            dispatchMouseWheelOutsideEvent(owner,evt);
         }
      }
      
      private static function dispatchMouseWheelOutsideEvent(owner:DisplayObject, evt:MouseEvent) : void
      {
         if(!owner)
         {
            return;
         }
         var event:MouseEvent = new FlexMouseEvent(FlexMouseEvent.MOUSE_WHEEL_OUTSIDE);
         var pt:Point = owner.globalToLocal(new Point(evt.stageX,evt.stageY));
         event.localX = pt.x;
         event.localY = pt.y;
         event.buttonDown = evt.buttonDown;
         event.shiftKey = evt.shiftKey;
         event.altKey = evt.altKey;
         event.ctrlKey = evt.ctrlKey;
         event.delta = evt.delta;
         event.relatedObject = InteractiveObject(evt.target);
         owner.dispatchEvent(event);
      }
      
      mx_internal static function updateModalMask(sm:ISystemManager, modalWindow:DisplayObject, exclude:IUIComponent, excludeRect:Rectangle, mask:Sprite) : void
      {
         var excludeBounds:Rectangle = null;
         var pt:Point = null;
         var rect:Rectangle = null;
         var modalBounds:Rectangle = modalWindow.getBounds(DisplayObject(sm));
         if(exclude is ISWFLoader)
         {
            excludeBounds = ISWFLoader(exclude).getVisibleApplicationRect();
            pt = new Point(excludeBounds.x,excludeBounds.y);
            pt = DisplayObject(sm).globalToLocal(pt);
            excludeBounds.x = pt.x;
            excludeBounds.y = pt.y;
         }
         else if(!exclude)
         {
            excludeBounds = modalBounds.clone();
         }
         else
         {
            excludeBounds = DisplayObject(exclude).getBounds(DisplayObject(sm));
         }
         if(excludeRect)
         {
            pt = new Point(excludeRect.x,excludeRect.y);
            pt = DisplayObject(sm).globalToLocal(pt);
            rect = new Rectangle(pt.x,pt.y,excludeRect.width,excludeRect.height);
            excludeBounds = excludeBounds.intersection(rect);
         }
         mask.graphics.clear();
         mask.graphics.beginFill(0);
         if(excludeBounds.y > modalBounds.y)
         {
            mask.graphics.drawRect(modalBounds.x,modalBounds.y,modalBounds.width,excludeBounds.y - modalBounds.y);
         }
         if(modalBounds.x < excludeBounds.x)
         {
            mask.graphics.drawRect(modalBounds.x,excludeBounds.y,excludeBounds.x - modalBounds.x,excludeBounds.height);
         }
         if(modalBounds.x + modalBounds.width > excludeBounds.x + excludeBounds.width)
         {
            mask.graphics.drawRect(excludeBounds.x + excludeBounds.width,excludeBounds.y,modalBounds.x + modalBounds.width - excludeBounds.x - excludeBounds.width,excludeBounds.height);
         }
         if(excludeBounds.y + excludeBounds.height < modalBounds.y + modalBounds.height)
         {
            mask.graphics.drawRect(modalBounds.x,excludeBounds.y + excludeBounds.height,modalBounds.width,modalBounds.y + modalBounds.height - excludeBounds.y - excludeBounds.height);
         }
         mask.graphics.endFill();
      }
      
      private static function dispatchMouseDownOutsideEvent(owner:DisplayObject, evt:MouseEvent) : void
      {
         if(!owner)
         {
            return;
         }
         var event:MouseEvent = new FlexMouseEvent(FlexMouseEvent.MOUSE_DOWN_OUTSIDE);
         var pt:Point = owner.globalToLocal(new Point(evt.stageX,evt.stageY));
         event.localX = pt.x;
         event.localY = pt.y;
         event.buttonDown = evt.buttonDown;
         event.shiftKey = evt.shiftKey;
         event.altKey = evt.altKey;
         event.ctrlKey = evt.ctrlKey;
         event.delta = evt.delta;
         event.relatedObject = InteractiveObject(evt.target);
         owner.dispatchEvent(event);
      }
      
      public static function getInstance() : IPopUpManager
      {
         if(!instance)
         {
            instance = new PopUpManagerImpl();
         }
         return instance;
      }
      
      private static function nonmodalMouseDownOutsideHandler(owner:DisplayObject, evt:MouseEvent) : void
      {
         if(!owner.hitTestPoint(evt.stageX,evt.stageY,true))
         {
            if(owner is IUIComponent)
            {
               if(IUIComponent(owner).owns(DisplayObject(evt.target)))
               {
                  return;
               }
            }
            dispatchMouseDownOutsideEvent(owner,evt);
         }
      }
      
      private function showModalWindow(o:PopUpData, sm:ISystemManager, sendRequest:Boolean = true) : void
      {
         var popUpStyleClient:IStyleClient = o.owner as IStyleClient;
         var duration:Number = 0;
         var alpha:Number = 0;
         if(!isNaN(o.modalTransparencyDuration))
         {
            duration = o.modalTransparencyDuration;
         }
         else if(popUpStyleClient)
         {
            duration = popUpStyleClient.getStyle("modalTransparencyDuration");
            o.modalTransparencyDuration = duration;
         }
         if(!isNaN(o.modalTransparency))
         {
            alpha = o.modalTransparency;
         }
         else if(popUpStyleClient)
         {
            alpha = popUpStyleClient.getStyle("modalTransparency");
            o.modalTransparency = alpha;
         }
         o.modalWindow.alpha = alpha;
         var blurAmount:Number = 0;
         if(!isNaN(o.modalTransparencyBlur))
         {
            blurAmount = o.modalTransparencyBlur;
         }
         else if(popUpStyleClient)
         {
            blurAmount = popUpStyleClient.getStyle("modalTransparencyBlur");
            o.modalTransparencyBlur = blurAmount;
         }
         var transparencyColor:Number = 16777215;
         if(!isNaN(o.modalTransparencyColor))
         {
            transparencyColor = o.modalTransparencyColor;
         }
         else if(popUpStyleClient)
         {
            transparencyColor = popUpStyleClient.getStyle("modalTransparencyColor");
            o.modalTransparencyColor = transparencyColor;
         }
         if(sm is SystemManagerProxy)
         {
            sm = SystemManagerProxy(sm).systemManager;
         }
         var sbRoot:DisplayObject = sm.getSandboxRoot();
         showModalWindowInternal(o,duration,alpha,transparencyColor,blurAmount,sm,sbRoot);
         if(sendRequest && sm.useSWFBridge())
         {
            dispatchModalWindowRequest(SWFBridgeRequest.SHOW_MODAL_WINDOW_REQUEST,sm,sbRoot,o,true);
         }
      }
      
      private function popupShowHandler(event:FlexEvent) : void
      {
         var o:PopUpData = findPopupInfoByOwner(event.target);
         if(o)
         {
            showModalWindow(o,getTopLevelSystemManager(o.parent));
         }
      }
      
      public function bringToFront(popUp:IFlexDisplayObject) : void
      {
         var o:PopUpData = null;
         var sm:ISystemManager = null;
         var request:InterManagerRequest = null;
         if(popUp && popUp.parent)
         {
            o = findPopupInfoByOwner(popUp);
            if(o)
            {
               sm = ISystemManager(popUp.parent);
               if(sm is SystemManagerProxy)
               {
                  request = new InterManagerRequest(InterManagerRequest.SYSTEM_MANAGER_REQUEST,false,false,"bringToFront",{
                     "topMost":o.topMost,
                     "popUp":sm
                  });
                  sm.getSandboxRoot().dispatchEvent(request);
               }
               else if(o.topMost)
               {
                  sm.popUpChildren.setChildIndex(DisplayObject(popUp),sm.popUpChildren.numChildren - 1);
               }
               else
               {
                  sm.setChildIndex(DisplayObject(popUp),sm.numChildren - 1);
               }
            }
         }
      }
      
      public function centerPopUp(popUp:IFlexDisplayObject) : void
      {
         var systemManager:ISystemManager = null;
         var x:Number = NaN;
         var y:Number = NaN;
         var appWidth:Number = NaN;
         var appHeight:Number = NaN;
         var parentWidth:Number = NaN;
         var parentHeight:Number = NaN;
         var s:Rectangle = null;
         var rect:Rectangle = null;
         var clippingOffset:Point = null;
         var pt:Point = null;
         var isTopLevelRoot:Boolean = false;
         var sbRoot:DisplayObject = null;
         var request:InterManagerRequest = null;
         var offset:Point = null;
         if(popUp is IInvalidating)
         {
            IInvalidating(popUp).validateNow();
         }
         var o:PopUpData = findPopupInfoByOwner(popUp);
         var popUpParent:DisplayObject = o && o.parent && o.parent.stage?o.parent:popUp.parent;
         if(popUpParent)
         {
            systemManager = o.systemManager;
            clippingOffset = new Point();
            sbRoot = systemManager.getSandboxRoot();
            if(systemManager != sbRoot)
            {
               request = new InterManagerRequest(InterManagerRequest.SYSTEM_MANAGER_REQUEST,false,false,"isTopLevelRoot");
               sbRoot.dispatchEvent(request);
               isTopLevelRoot = Boolean(request.value);
            }
            else
            {
               isTopLevelRoot = systemManager.isTopLevelRoot();
            }
            if(isTopLevelRoot)
            {
               s = systemManager.screen;
               appWidth = s.width;
               appHeight = s.height;
            }
            else
            {
               if(systemManager != sbRoot)
               {
                  request = new InterManagerRequest(InterManagerRequest.SYSTEM_MANAGER_REQUEST,false,false,"getVisibleApplicationRect");
                  sbRoot.dispatchEvent(request);
                  rect = Rectangle(request.value);
               }
               else
               {
                  rect = systemManager.getVisibleApplicationRect();
               }
               clippingOffset = new Point(rect.x,rect.y);
               clippingOffset = DisplayObject(systemManager).globalToLocal(clippingOffset);
               appWidth = rect.width;
               appHeight = rect.height;
            }
            if(popUpParent is UIComponent)
            {
               rect = UIComponent(popUpParent).getVisibleRect();
               offset = popUpParent.globalToLocal(rect.topLeft);
               clippingOffset.x = clippingOffset.x + offset.x;
               clippingOffset.y = clippingOffset.y + offset.y;
               parentWidth = rect.width;
               parentHeight = rect.height;
            }
            else
            {
               parentWidth = popUpParent.width;
               parentHeight = popUpParent.height;
            }
            x = Math.max(0,(Math.min(appWidth,parentWidth) - popUp.width) / 2);
            y = Math.max(0,(Math.min(appHeight,parentHeight) - popUp.height) / 2);
            pt = new Point(clippingOffset.x,clippingOffset.y);
            pt = popUpParent.localToGlobal(pt);
            pt = popUp.parent.globalToLocal(pt);
            popUp.move(Math.round(x) + pt.x,Math.round(y) + pt.y);
         }
      }
      
      private function showModalWindowRequest(event:Event) : void
      {
         var request:SWFBridgeRequest = SWFBridgeRequest.marshal(event);
         if(event is SWFBridgeRequest)
         {
            request = SWFBridgeRequest(event);
         }
         else
         {
            request = SWFBridgeRequest.marshal(event);
         }
         var sm:ISystemManager = getTopLevelSystemManager(DisplayObject(ApplicationGlobals.application));
         var sbRoot:DisplayObject = sm.getSandboxRoot();
         var popUpData:PopUpData = findHighestRemoteModalPopupInfo();
         popUpData.excludeRect = Rectangle(request.data);
         popUpData.modalTransparency = request.data.transparency;
         popUpData.modalTransparencyBlur = 0;
         popUpData.modalTransparencyColor = request.data.transparencyColor;
         popUpData.modalTransparencyDuration = request.data.transparencyDuration;
         if(popUpData.owner || popUpData.parent)
         {
            throw new Error();
         }
         showModalWindow(popUpData,sm);
      }
      
      private function hideOwnerHandler(event:FlexEvent) : void
      {
         var o:PopUpData = findPopupInfoByOwner(event.target);
         if(o)
         {
            removeMouseOutEventListeners(o);
         }
      }
      
      private function fadeOutDestroyEffectEndHandler(event:EffectEvent) : void
      {
         var sm:ISystemManager = null;
         effectEndHandler(event);
         var obj:DisplayObject = DisplayObject(event.effectInstance.target);
         var modalMask:DisplayObject = obj.mask;
         if(modalMask)
         {
            obj.mask = null;
            sm.popUpChildren.removeChild(modalMask);
         }
         if(obj.parent is ISystemManager)
         {
            sm = ISystemManager(obj.parent);
            if(sm.popUpChildren.contains(obj))
            {
               sm.popUpChildren.removeChild(obj);
            }
            else
            {
               sm.removeChild(obj);
            }
         }
         else if(obj.parent)
         {
            obj.parent.removeChild(obj);
         }
      }
      
      private function createModalWindowRequestHandler(event:Event) : void
      {
         var request:SWFBridgeRequest = null;
         if(event is SWFBridgeRequest)
         {
            request = SWFBridgeRequest(event);
         }
         else
         {
            request = SWFBridgeRequest.marshal(event);
         }
         var sm:ISystemManager = getTopLevelSystemManager(DisplayObject(ApplicationGlobals.application));
         var sbRoot:DisplayObject = sm.getSandboxRoot();
         var popUpData:PopUpData = new PopUpData();
         popUpData.isRemoteModalWindow = true;
         popUpData.systemManager = sm;
         popUpData.modalTransparency = request.data.transparency;
         popUpData.modalTransparencyBlur = 0;
         popUpData.modalTransparencyColor = request.data.transparencyColor;
         popUpData.modalTransparencyDuration = request.data.transparencyDuration;
         popUpData.exclude = sm.swfBridgeGroup.getChildBridgeProvider(request.requestor) as IUIComponent;
         popUpData.useExclude = request.data.useExclude;
         popUpData.excludeRect = Rectangle(request.data.excludeRect);
         if(!popupInfo)
         {
            popupInfo = [];
         }
         popupInfo.push(popUpData);
         createModalWindow(null,popUpData,sm.popUpChildren,request.data.show,sm,sbRoot);
      }
      
      private function showOwnerHandler(event:FlexEvent) : void
      {
         var o:PopUpData = findPopupInfoByOwner(event.target);
         if(o)
         {
            addMouseOutEventListeners(o);
         }
      }
      
      private function addMouseOutEventListeners(o:PopUpData) : void
      {
         var sbRoot:DisplayObject = o.systemManager.getSandboxRoot();
         if(o.modalWindow)
         {
            o.modalWindow.addEventListener(MouseEvent.MOUSE_DOWN,o.mouseDownOutsideHandler);
            o.modalWindow.addEventListener(MouseEvent.MOUSE_WHEEL,o.mouseWheelOutsideHandler,true);
         }
         else
         {
            sbRoot.addEventListener(MouseEvent.MOUSE_DOWN,o.mouseDownOutsideHandler);
            sbRoot.addEventListener(MouseEvent.MOUSE_WHEEL,o.mouseWheelOutsideHandler,true);
         }
         sbRoot.addEventListener(SandboxMouseEvent.MOUSE_DOWN_SOMEWHERE,o.marshalMouseOutsideHandler);
         sbRoot.addEventListener(SandboxMouseEvent.MOUSE_WHEEL_SOMEWHERE,o.marshalMouseOutsideHandler,true);
      }
      
      private function fadeInEffectEndHandler(event:EffectEvent) : void
      {
         var o:PopUpData = null;
         effectEndHandler(event);
         var n:int = popupInfo.length;
         for(var i:int = 0; i < n; i++)
         {
            o = popupInfo[i];
            if(o.owner && o.modalWindow == event.effectInstance.target)
            {
               IUIComponent(o.owner).setVisible(true,true);
               break;
            }
         }
      }
      
      private function hideModalWindowRequest(event:Event) : void
      {
         var request:SWFBridgeRequest = null;
         if(event is SWFBridgeRequest)
         {
            request = SWFBridgeRequest(event);
         }
         else
         {
            request = SWFBridgeRequest.marshal(event);
         }
         var sm:ISystemManager = getTopLevelSystemManager(DisplayObject(ApplicationGlobals.application));
         var sbRoot:DisplayObject = sm.getSandboxRoot();
         var popUpData:PopUpData = findHighestRemoteModalPopupInfo();
         if(!popUpData || popUpData.owner || popUpData.parent)
         {
            throw new Error();
         }
         hideModalWindow(popUpData,request.data.remove);
         if(request.data.remove)
         {
            popupInfo.splice(popupInfo.indexOf(popUpData),1);
            sm.numModalWindows--;
         }
      }
      
      private function getTopLevelSystemManager(parent:DisplayObject) : ISystemManager
      {
         var localRoot:DisplayObjectContainer = null;
         var sm:ISystemManager = null;
         if(parent.parent is SystemManagerProxy)
         {
            localRoot = DisplayObjectContainer(SystemManagerProxy(parent.parent).systemManager);
         }
         else if(parent is IUIComponent && IUIComponent(parent).systemManager is SystemManagerProxy)
         {
            localRoot = DisplayObjectContainer(SystemManagerProxy(IUIComponent(parent).systemManager).systemManager);
         }
         else
         {
            localRoot = DisplayObjectContainer(parent.root);
         }
         if((!localRoot || localRoot is Stage) && parent is IUIComponent)
         {
            localRoot = DisplayObjectContainer(IUIComponent(parent).systemManager);
         }
         if(localRoot is ISystemManager)
         {
            sm = ISystemManager(localRoot);
            if(!sm.isTopLevel())
            {
               sm = sm.topLevelSystemManager;
            }
         }
         return sm;
      }
      
      private function hideModalWindow(o:PopUpData, destroy:Boolean = false) : void
      {
         var fade:Fade = null;
         var blurAmount:Number = NaN;
         var blur:Blur = null;
         var sbRoot:DisplayObject = null;
         var modalRequest:SWFBridgeRequest = null;
         var bridge:IEventDispatcher = null;
         var target:IEventDispatcher = null;
         var request:InterManagerRequest = null;
         if(destroy && o.exclude)
         {
            o.exclude.removeEventListener(Event.RESIZE,o.resizeHandler);
            o.exclude.removeEventListener(MoveEvent.MOVE,o.resizeHandler);
         }
         var popUpStyleClient:IStyleClient = o.owner as IStyleClient;
         var duration:Number = 0;
         if(popUpStyleClient)
         {
            duration = popUpStyleClient.getStyle("modalTransparencyDuration");
         }
         endEffects(o);
         if(duration)
         {
            fade = new Fade(o.modalWindow);
            fade.alphaFrom = o.modalWindow.alpha;
            fade.alphaTo = 0;
            fade.duration = duration;
            fade.addEventListener(EffectEvent.EFFECT_END,!!destroy?fadeOutDestroyEffectEndHandler:fadeOutCloseEffectEndHandler);
            o.modalWindow.visible = true;
            o.fade = fade;
            fade.play();
            blurAmount = popUpStyleClient.getStyle("modalTransparencyBlur");
            if(blurAmount)
            {
               blur = new Blur(o.blurTarget);
               blur.blurXFrom = blur.blurYFrom = blurAmount;
               blur.blurXTo = blur.blurYTo = 0;
               blur.duration = duration;
               blur.addEventListener(EffectEvent.EFFECT_END,effectEndHandler);
               o.blur = blur;
               blur.play();
            }
         }
         else
         {
            o.modalWindow.visible = false;
         }
         var sm:ISystemManager = ISystemManager(ApplicationGlobals.application.systemManager);
         if(sm.useSWFBridge())
         {
            sbRoot = sm.getSandboxRoot();
            if(!o.isRemoteModalWindow && sm != sbRoot)
            {
               request = new InterManagerRequest(InterManagerRequest.SYSTEM_MANAGER_REQUEST,false,false,"isTopLevelRoot");
               sbRoot.dispatchEvent(request);
               if(Boolean(request.value))
               {
                  return;
               }
            }
            modalRequest = new SWFBridgeRequest(SWFBridgeRequest.HIDE_MODAL_WINDOW_REQUEST,false,false,null,{
               "skip":!o.isRemoteModalWindow && sm != sbRoot,
               "show":false,
               "remove":destroy
            });
            bridge = sm.swfBridgeGroup.parentBridge;
            modalRequest.requestor = bridge;
            bridge.dispatchEvent(modalRequest);
         }
      }
      
      private function popupHideHandler(event:FlexEvent) : void
      {
         var o:PopUpData = findPopupInfoByOwner(event.target);
         if(o)
         {
            hideModalWindow(o);
         }
      }
      
      private function showModalWindowInternal(o:PopUpData, transparencyDuration:Number, transparency:Number, transparencyColor:Number, transparencyBlur:Number, sm:ISystemManager, sbRoot:DisplayObject) : void
      {
         var fade:Fade = null;
         var blurAmount:Number = NaN;
         var blur:Blur = null;
         var sbRootApp:Object = null;
         var applicationRequest:InterManagerRequest = null;
         endEffects(o);
         if(transparencyDuration)
         {
            fade = new Fade(o.modalWindow);
            fade.alphaFrom = 0;
            fade.alphaTo = transparency;
            fade.duration = transparencyDuration;
            fade.addEventListener(EffectEvent.EFFECT_END,fadeInEffectEndHandler);
            o.modalWindow.alpha = 0;
            o.modalWindow.visible = true;
            o.fade = fade;
            if(o.owner)
            {
               IUIComponent(o.owner).setVisible(false,true);
            }
            fade.play();
            blurAmount = transparencyBlur;
            if(blurAmount)
            {
               if(DisplayObject(sm).parent is Stage)
               {
                  o.blurTarget = sm.document;
               }
               else if(sm != sbRoot)
               {
                  applicationRequest = new InterManagerRequest(InterManagerRequest.SYSTEM_MANAGER_REQUEST,false,false,"application",sbRootApp);
                  sbRoot.dispatchEvent(applicationRequest);
                  o.blurTarget = applicationRequest.value;
               }
               else
               {
                  o.blurTarget = ApplicationGlobals.application;
               }
               blur = new Blur(o.blurTarget);
               blur.blurXFrom = blur.blurYFrom = 0;
               blur.blurXTo = blur.blurYTo = blurAmount;
               blur.duration = transparencyDuration;
               blur.addEventListener(EffectEvent.EFFECT_END,effectEndHandler);
               o.blur = blur;
               blur.play();
            }
         }
         else
         {
            if(o.owner)
            {
               IUIComponent(o.owner).setVisible(true,true);
            }
            o.modalWindow.visible = true;
         }
      }
      
      private function effectEndHandler(event:EffectEvent) : void
      {
         var o:PopUpData = null;
         var e:IEffect = null;
         var n:int = popupInfo.length;
         for(var i:int = 0; i < n; i++)
         {
            o = popupInfo[i];
            e = event.effectInstance.effect;
            if(e == o.fade)
            {
               o.fade = null;
            }
            else if(e == o.blur)
            {
               o.blur = null;
            }
         }
      }
      
      private function createModalWindow(parentReference:DisplayObject, o:PopUpData, childrenList:IChildList, visibleFlag:Boolean, sm:ISystemManager, sbRoot:DisplayObject) : void
      {
         var popup:IFlexDisplayObject = null;
         var modalWindow:Sprite = null;
         var smp:SystemManagerProxy = null;
         var realSm:ISystemManager = null;
         popup = IFlexDisplayObject(o.owner);
         var popupStyleClient:IStyleClient = popup as IStyleClient;
         var duration:Number = 0;
         if(modalWindowClass)
         {
            modalWindow = new modalWindowClass();
         }
         else
         {
            modalWindow = new FlexSprite();
            modalWindow.name = "modalWindow";
         }
         if(!sm && parentReference)
         {
            sm = IUIComponent(parentReference).systemManager;
         }
         if(sm is SystemManagerProxy)
         {
            smp = SystemManagerProxy(sm);
            realSm = smp.systemManager;
         }
         else
         {
            realSm = sm;
         }
         realSm.numModalWindows++;
         if(popup)
         {
            childrenList.addChildAt(modalWindow,childrenList.getChildIndex(DisplayObject(popup)));
         }
         else
         {
            childrenList.addChild(modalWindow);
         }
         if(popup is IAutomationObject)
         {
            IAutomationObject(popup).showInAutomationHierarchy = true;
         }
         if(!isNaN(o.modalTransparency))
         {
            modalWindow.alpha = o.modalTransparency;
         }
         else if(popupStyleClient)
         {
            modalWindow.alpha = popupStyleClient.getStyle("modalTransparency");
         }
         else
         {
            modalWindow.alpha = 0;
         }
         o.modalTransparency = modalWindow.alpha;
         modalWindow.tabEnabled = false;
         var s:Rectangle = realSm.screen;
         var g:Graphics = modalWindow.graphics;
         var c:Number = 16777215;
         if(!isNaN(o.modalTransparencyColor))
         {
            c = o.modalTransparencyColor;
         }
         else if(popupStyleClient)
         {
            c = popupStyleClient.getStyle("modalTransparencyColor");
            o.modalTransparencyColor = c;
         }
         g.clear();
         g.beginFill(c,100);
         g.drawRect(s.x,s.y,s.width,s.height);
         g.endFill();
         o.modalWindow = modalWindow;
         if(o.exclude)
         {
            o.modalMask = new Sprite();
            updateModalMask(realSm,modalWindow,!!o.useExclude?o.exclude:null,o.excludeRect,o.modalMask);
            modalWindow.mask = o.modalMask;
            childrenList.addChild(o.modalMask);
            o.exclude.addEventListener(Event.RESIZE,o.resizeHandler);
            o.exclude.addEventListener(MoveEvent.MOVE,o.resizeHandler);
         }
         o._mouseDownOutsideHandler = dispatchMouseDownOutsideEvent;
         o._mouseWheelOutsideHandler = dispatchMouseWheelOutsideEvent;
         realSm.addEventListener(Event.RESIZE,o.resizeHandler);
         if(popup)
         {
            popup.addEventListener(FlexEvent.SHOW,popupShowHandler);
            popup.addEventListener(FlexEvent.HIDE,popupHideHandler);
         }
         if(visibleFlag)
         {
            showModalWindow(o,sm,false);
         }
         else
         {
            popup.visible = visibleFlag;
         }
         if(realSm.useSWFBridge())
         {
            if(popupStyleClient)
            {
               o.modalTransparencyDuration = popupStyleClient.getStyle("modalTransparencyDuration");
               o.modalTransparencyBlur = popupStyleClient.getStyle("modalTransparencyBlur");
            }
            dispatchModalWindowRequest(SWFBridgeRequest.CREATE_MODAL_WINDOW_REQUEST,realSm,sbRoot,o,visibleFlag);
         }
      }
      
      private function findPopupInfoByOwner(owner:Object) : PopUpData
      {
         var o:PopUpData = null;
         var n:int = popupInfo.length;
         for(var i:int = 0; i < n; i++)
         {
            o = popupInfo[i];
            if(o.owner == owner)
            {
               return o;
            }
         }
         return null;
      }
      
      private function popupRemovedHandler(event:Event) : void
      {
         var o:PopUpData = null;
         var popUp:DisplayObject = null;
         var popUpParent:DisplayObject = null;
         var modalWindow:DisplayObject = null;
         var sm:ISystemManager = null;
         var realSm:ISystemManager = null;
         var parentBridge:IEventDispatcher = null;
         var request:SWFBridgeRequest = null;
         var n:int = popupInfo.length;
         for(var i:int = 0; i < n; i++)
         {
            o = popupInfo[i];
            popUp = o.owner;
            if(popUp == event.target)
            {
               popUpParent = o.parent;
               modalWindow = o.modalWindow;
               sm = o.systemManager;
               if(sm is SystemManagerProxy)
               {
                  realSm = SystemManagerProxy(sm).systemManager;
               }
               else
               {
                  realSm = sm;
               }
               if(!sm.isTopLevel())
               {
                  sm = sm.topLevelSystemManager;
               }
               if(popUp is IUIComponent)
               {
                  IUIComponent(popUp).isPopUp = false;
               }
               if(popUp is IFocusManagerContainer)
               {
                  sm.removeFocusManager(IFocusManagerContainer(popUp));
               }
               popUp.removeEventListener(Event.REMOVED,popupRemovedHandler);
               if(sm is SystemManagerProxy)
               {
                  parentBridge = realSm.swfBridgeGroup.parentBridge;
                  request = new SWFBridgeRequest(SWFBridgeRequest.REMOVE_POP_UP_REQUEST,false,false,parentBridge,{
                     "window":DisplayObject(sm),
                     "parent":o.parent,
                     "modal":o.modalWindow != null
                  });
                  realSm.getSandboxRoot().dispatchEvent(request);
               }
               else if(sm.useSWFBridge())
               {
                  request = new SWFBridgeRequest(SWFBridgeRequest.REMOVE_POP_UP_PLACE_HOLDER_REQUEST,false,false,null,{"window":DisplayObject(popUp)});
                  request.requestor = sm.swfBridgeGroup.parentBridge;
                  request.data.placeHolderId = NameUtil.displayObjectToString(DisplayObject(popUp));
                  sm.dispatchEvent(request);
               }
               if(o.owner)
               {
                  o.owner.removeEventListener(FlexEvent.SHOW,showOwnerHandler);
                  o.owner.removeEventListener(FlexEvent.HIDE,hideOwnerHandler);
               }
               removeMouseOutEventListeners(o);
               if(modalWindow)
               {
                  realSm.removeEventListener(Event.RESIZE,o.resizeHandler);
                  popUp.removeEventListener(FlexEvent.SHOW,popupShowHandler);
                  popUp.removeEventListener(FlexEvent.HIDE,popupHideHandler);
                  hideModalWindow(o,true);
                  realSm.numModalWindows--;
               }
               popupInfo.splice(i,1);
               break;
            }
         }
      }
      
      private function fadeOutCloseEffectEndHandler(event:EffectEvent) : void
      {
         effectEndHandler(event);
         DisplayObject(event.effectInstance.target).visible = false;
      }
      
      private function endEffects(o:PopUpData) : void
      {
         if(o.fade)
         {
            o.fade.end();
            o.fade = null;
         }
         if(o.blur)
         {
            o.blur.end();
            o.blur = null;
         }
      }
      
      public function removePopUp(popUp:IFlexDisplayObject) : void
      {
         var o:PopUpData = null;
         var sm:ISystemManager = null;
         var iui:IUIComponent = null;
         if(popUp && popUp.parent)
         {
            o = findPopupInfoByOwner(popUp);
            if(o)
            {
               sm = o.systemManager;
               if(!sm)
               {
                  iui = popUp as IUIComponent;
                  if(iui)
                  {
                     sm = ISystemManager(iui.systemManager);
                  }
                  else
                  {
                     return;
                  }
               }
               if(o.topMost)
               {
                  sm.popUpChildren.removeChild(DisplayObject(popUp));
               }
               else
               {
                  sm.removeChild(DisplayObject(popUp));
               }
            }
         }
      }
      
      public function addPopUp(window:IFlexDisplayObject, parent:DisplayObject, modal:Boolean = false, childList:String = null) : void
      {
         var children:IChildList = null;
         var topMost:* = false;
         var visibleFlag:Boolean = window.visible;
         if(parent is IUIComponent && window is IUIComponent && IUIComponent(window).document == null)
         {
            IUIComponent(window).document = IUIComponent(parent).document;
         }
         if(parent is IUIComponent && IUIComponent(parent).document is IFlexModule && window is UIComponent && UIComponent(window).moduleFactory == null)
         {
            UIComponent(window).moduleFactory = IFlexModule(IUIComponent(parent).document).moduleFactory;
         }
         var sm:ISystemManager = getTopLevelSystemManager(parent);
         if(!sm)
         {
            sm = ISystemManager(SystemManagerGlobals.topLevelSystemManagers[0]);
            if(sm.getSandboxRoot() != parent)
            {
               return;
            }
         }
         var smp:ISystemManager = sm;
         var sbRoot:DisplayObject = sm.getSandboxRoot();
         var request:SWFBridgeRequest = null;
         if(sm.useSWFBridge())
         {
            if(sbRoot != sm)
            {
               smp = new SystemManagerProxy(sm);
               request = new SWFBridgeRequest(SWFBridgeRequest.ADD_POP_UP_REQUEST,false,false,sm.swfBridgeGroup.parentBridge,{
                  "window":DisplayObject(smp),
                  "parent":parent,
                  "modal":modal,
                  "childList":childList
               });
               sbRoot.dispatchEvent(request);
            }
            else
            {
               smp = sm;
            }
         }
         if(window is IUIComponent)
         {
            IUIComponent(window).isPopUp = true;
         }
         if(!childList || childList == PopUpManagerChildList.PARENT)
         {
            topMost = Boolean(smp.popUpChildren.contains(parent));
         }
         else
         {
            topMost = childList == PopUpManagerChildList.POPUP;
         }
         children = !!topMost?smp.popUpChildren:smp;
         children.addChild(DisplayObject(window));
         window.visible = false;
         if(!popupInfo)
         {
            popupInfo = [];
         }
         var o:PopUpData = new PopUpData();
         o.owner = DisplayObject(window);
         o.topMost = topMost;
         o.systemManager = smp;
         popupInfo.push(o);
         if(window is IFocusManagerContainer)
         {
            if(IFocusManagerContainer(window).focusManager)
            {
               smp.addFocusManager(IFocusManagerContainer(window));
            }
            else
            {
               IFocusManagerContainer(window).focusManager = new FocusManager(IFocusManagerContainer(window),true);
            }
         }
         if(!sm.isTopLevelRoot() && sbRoot && sm == sbRoot)
         {
            request = new SWFBridgeRequest(SWFBridgeRequest.ADD_POP_UP_PLACE_HOLDER_REQUEST,false,false,null,{"window":DisplayObject(window)});
            request.requestor = sm.swfBridgeGroup.parentBridge;
            request.data.placeHolderId = NameUtil.displayObjectToString(DisplayObject(window));
            sm.dispatchEvent(request);
         }
         if(window is IAutomationObject)
         {
            IAutomationObject(window).showInAutomationHierarchy = true;
         }
         if(window is ILayoutManagerClient)
         {
            UIComponentGlobals.layoutManager.validateClient(ILayoutManagerClient(window),true);
         }
         o.parent = parent;
         if(window is IUIComponent)
         {
            IUIComponent(window).setActualSize(IUIComponent(window).getExplicitOrMeasuredWidth(),IUIComponent(window).getExplicitOrMeasuredHeight());
         }
         if(modal)
         {
            createModalWindow(parent,o,children,visibleFlag,smp,sbRoot);
         }
         else
         {
            o._mouseDownOutsideHandler = nonmodalMouseDownOutsideHandler;
            o._mouseWheelOutsideHandler = nonmodalMouseWheelOutsideHandler;
            window.visible = visibleFlag;
         }
         o.owner.addEventListener(FlexEvent.SHOW,showOwnerHandler);
         o.owner.addEventListener(FlexEvent.HIDE,hideOwnerHandler);
         addMouseOutEventListeners(o);
         window.addEventListener(Event.REMOVED,popupRemovedHandler);
         if(window is IFocusManagerContainer && visibleFlag)
         {
            if(!(smp is SystemManagerProxy) && smp.useSWFBridge())
            {
               SystemManager(smp).dispatchActivatedWindowEvent(DisplayObject(window));
            }
            else
            {
               smp.activate(IFocusManagerContainer(window));
            }
         }
      }
      
      private function dispatchModalWindowRequest(type:String, sm:ISystemManager, sbRoot:DisplayObject, o:PopUpData, visibleFlag:Boolean) : void
      {
         var request:InterManagerRequest = null;
         if(!o.isRemoteModalWindow && sm != sbRoot)
         {
            request = new InterManagerRequest(InterManagerRequest.SYSTEM_MANAGER_REQUEST,false,false,"isTopLevelRoot");
            sbRoot.dispatchEvent(request);
            if(Boolean(request.value))
            {
               return;
            }
         }
         var modalRequest:SWFBridgeRequest = new SWFBridgeRequest(type,false,false,null,{
            "skip":!o.isRemoteModalWindow && sm != sbRoot,
            "useExclude":o.useExclude,
            "show":visibleFlag,
            "remove":false,
            "transparencyDuration":o.modalTransparencyDuration,
            "transparency":o.modalTransparency,
            "transparencyColor":o.modalTransparencyColor,
            "transparencyBlur":o.modalTransparencyBlur
         });
         var bridge:IEventDispatcher = sm.swfBridgeGroup.parentBridge;
         modalRequest.requestor = bridge;
         bridge.dispatchEvent(modalRequest);
      }
      
      public function createPopUp(parent:DisplayObject, className:Class, modal:Boolean = false, childList:String = null) : IFlexDisplayObject
      {
         var window:IUIComponent = new className();
         addPopUp(window,parent,modal,childList);
         return window;
      }
      
      private function removeMouseOutEventListeners(o:PopUpData) : void
      {
         var sbRoot:DisplayObject = o.systemManager.getSandboxRoot();
         if(o.modalWindow)
         {
            o.modalWindow.removeEventListener(MouseEvent.MOUSE_DOWN,o.mouseDownOutsideHandler);
            o.modalWindow.removeEventListener(MouseEvent.MOUSE_WHEEL,o.mouseWheelOutsideHandler,true);
         }
         else
         {
            sbRoot.removeEventListener(MouseEvent.MOUSE_DOWN,o.mouseDownOutsideHandler);
            sbRoot.removeEventListener(MouseEvent.MOUSE_WHEEL,o.mouseWheelOutsideHandler,true);
         }
         sbRoot.removeEventListener(SandboxMouseEvent.MOUSE_DOWN_SOMEWHERE,o.marshalMouseOutsideHandler);
         sbRoot.removeEventListener(SandboxMouseEvent.MOUSE_WHEEL_SOMEWHERE,o.marshalMouseOutsideHandler,true);
      }
      
      private function findHighestRemoteModalPopupInfo() : PopUpData
      {
         var o:PopUpData = null;
         var n:int = popupInfo.length - 1;
         for(var i:int = n; i >= 0; i--)
         {
            o = popupInfo[i];
            if(o.isRemoteModalWindow)
            {
               return o;
            }
         }
         return null;
      }
   }
}

import flash.display.DisplayObject;
import flash.display.Sprite;
import flash.events.Event;
import flash.events.MouseEvent;
import flash.geom.Rectangle;
import mx.core.IUIComponent;
import mx.core.mx_internal;
import mx.effects.Effect;
import mx.events.SandboxMouseEvent;
import mx.managers.ISystemManager;
import mx.managers.PopUpManagerImpl;

use namespace mx_internal;

class PopUpData
{
    
   
   public var fade:Effect;
   
   public var modalTransparencyColor:Number;
   
   public var exclude:IUIComponent;
   
   public var isRemoteModalWindow:Boolean;
   
   public var useExclude:Boolean;
   
   public var blurTarget:Object;
   
   public var modalTransparencyDuration:Number;
   
   public var _mouseWheelOutsideHandler:Function;
   
   public var excludeRect:Rectangle;
   
   public var modalTransparency:Number;
   
   public var blur:Effect;
   
   public var parent:DisplayObject;
   
   public var modalTransparencyBlur:Number;
   
   public var _mouseDownOutsideHandler:Function;
   
   public var owner:DisplayObject;
   
   public var topMost:Boolean;
   
   public var modalMask:Sprite;
   
   public var modalWindow:DisplayObject;
   
   public var systemManager:ISystemManager;
   
   function PopUpData()
   {
      super();
      useExclude = true;
   }
   
   public function marshalMouseOutsideHandler(event:Event) : void
   {
      if(!(event is SandboxMouseEvent))
      {
         event = SandboxMouseEvent.marshal(event);
      }
      if(owner)
      {
         owner.dispatchEvent(event);
      }
   }
   
   public function mouseDownOutsideHandler(event:MouseEvent) : void
   {
      _mouseDownOutsideHandler(owner,event);
   }
   
   public function mouseWheelOutsideHandler(event:MouseEvent) : void
   {
      _mouseWheelOutsideHandler(owner,event);
   }
   
   public function resizeHandler(event:Event) : void
   {
      var s:Rectangle = null;
      if(owner && owner.stage == DisplayObject(event.target).stage || modalWindow && modalWindow.stage == DisplayObject(event.target).stage)
      {
         s = systemManager.screen;
         modalWindow.width = s.width;
         modalWindow.height = s.height;
         modalWindow.x = s.x;
         modalWindow.y = s.y;
         if(modalMask)
         {
            PopUpManagerImpl.updateModalMask(systemManager,modalWindow,exclude,excludeRect,modalMask);
         }
      }
   }
}

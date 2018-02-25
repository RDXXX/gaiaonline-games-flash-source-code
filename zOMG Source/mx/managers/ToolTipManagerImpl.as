package mx.managers
{
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Timer;
   import mx.controls.ToolTip;
   import mx.core.ApplicationGlobals;
   import mx.core.IInvalidating;
   import mx.core.IToolTip;
   import mx.core.IUIComponent;
   import mx.core.mx_internal;
   import mx.effects.EffectManager;
   import mx.effects.IAbstractEffect;
   import mx.events.EffectEvent;
   import mx.events.InterManagerRequest;
   import mx.events.ToolTipEvent;
   import mx.styles.IStyleClient;
   import mx.validators.IValidatorListener;
   
   use namespace mx_internal;
   
   public class ToolTipManagerImpl extends EventDispatcher implements IToolTipManager2
   {
      
      mx_internal static const VERSION:String = "3.6.0.21751";
      
      private static var instance:IToolTipManager2;
       
      
      private var _enabled:Boolean = true;
      
      private var _showDelay:Number = 500;
      
      private var _hideEffect:IAbstractEffect;
      
      mx_internal var hideTimer:Timer;
      
      private var _scrubDelay:Number = 100;
      
      private var _toolTipClass:Class;
      
      mx_internal var showTimer:Timer;
      
      private var sandboxRoot:IEventDispatcher = null;
      
      mx_internal var currentText:String;
      
      private var _currentToolTip:DisplayObject;
      
      mx_internal var scrubTimer:Timer;
      
      mx_internal var previousTarget:DisplayObject;
      
      private var _currentTarget:DisplayObject;
      
      private var systemManager:ISystemManager = null;
      
      private var _showEffect:IAbstractEffect;
      
      private var _hideDelay:Number = 10000;
      
      mx_internal var initialized:Boolean = false;
      
      mx_internal var isError:Boolean;
      
      public function ToolTipManagerImpl()
      {
         _toolTipClass = ToolTip;
         super();
         if(instance)
         {
            throw new Error("Instance already exists.");
         }
         this.systemManager = SystemManagerGlobals.topLevelSystemManagers[0] as ISystemManager;
         sandboxRoot = this.systemManager.getSandboxRoot();
         sandboxRoot.addEventListener(InterManagerRequest.TOOLTIP_MANAGER_REQUEST,marshalToolTipManagerHandler,false,0,true);
         var me:InterManagerRequest = new InterManagerRequest(InterManagerRequest.TOOLTIP_MANAGER_REQUEST);
         me.name = "update";
         sandboxRoot.dispatchEvent(me);
      }
      
      public static function getInstance() : IToolTipManager2
      {
         if(!instance)
         {
            instance = new ToolTipManagerImpl();
         }
         return instance;
      }
      
      mx_internal function systemManager_mouseDownHandler(event:MouseEvent) : void
      {
         reset();
      }
      
      public function set showDelay(value:Number) : void
      {
         _showDelay = value;
      }
      
      mx_internal function showTimer_timerHandler(event:TimerEvent) : void
      {
         if(currentTarget)
         {
            createTip();
            initializeTip();
            positionTip();
            showTip();
         }
      }
      
      mx_internal function hideEffectEnded() : void
      {
         var event:ToolTipEvent = null;
         reset();
         if(previousTarget)
         {
            event = new ToolTipEvent(ToolTipEvent.TOOL_TIP_END);
            event.toolTip = currentToolTip;
            previousTarget.dispatchEvent(event);
         }
      }
      
      public function set scrubDelay(value:Number) : void
      {
         _scrubDelay = value;
      }
      
      public function get currentToolTip() : IToolTip
      {
         return _currentToolTip as IToolTip;
      }
      
      private function mouseIsOver(target:DisplayObject) : Boolean
      {
         if(!target || !target.stage)
         {
            return false;
         }
         if(target.stage.mouseX == 0 && target.stage.mouseY == 0)
         {
            return false;
         }
         return target.hitTestPoint(target.stage.mouseX,target.stage.mouseY,true);
      }
      
      mx_internal function toolTipMouseOutHandler(event:MouseEvent) : void
      {
         checkIfTargetChanged(event.relatedObject);
      }
      
      public function get enabled() : Boolean
      {
         return _enabled;
      }
      
      public function createToolTip(text:String, x:Number, y:Number, errorTipBorderStyle:String = null, context:IUIComponent = null) : IToolTip
      {
         var toolTip:ToolTip = new ToolTip();
         var sm:ISystemManager = !!context?context.systemManager as ISystemManager:ApplicationGlobals.application.systemManager as ISystemManager;
         sm.topLevelSystemManager.addChildToSandboxRoot("toolTipChildren",toolTip as DisplayObject);
         if(errorTipBorderStyle)
         {
            toolTip.setStyle("styleName","errorTip");
            toolTip.setStyle("borderStyle",errorTipBorderStyle);
         }
         toolTip.text = text;
         sizeTip(toolTip);
         toolTip.move(x,y);
         return toolTip as IToolTip;
      }
      
      mx_internal function reset() : void
      {
         var sm:ISystemManager = null;
         showTimer.reset();
         hideTimer.reset();
         if(currentToolTip)
         {
            if(showEffect || hideEffect)
            {
               currentToolTip.removeEventListener(EffectEvent.EFFECT_END,effectEndHandler);
            }
            EffectManager.endEffectsForTarget(currentToolTip);
            sm = currentToolTip.systemManager as ISystemManager;
            sm.topLevelSystemManager.removeChildFromSandboxRoot("toolTipChildren",currentToolTip as DisplayObject);
            currentToolTip = null;
            scrubTimer.delay = scrubDelay;
            scrubTimer.reset();
            if(scrubDelay > 0)
            {
               scrubTimer.delay = scrubDelay;
               scrubTimer.start();
            }
         }
      }
      
      public function set currentToolTip(value:IToolTip) : void
      {
         _currentToolTip = value as DisplayObject;
         var me:InterManagerRequest = new InterManagerRequest(InterManagerRequest.TOOLTIP_MANAGER_REQUEST);
         me.name = "currentToolTip";
         me.value = value;
         sandboxRoot.dispatchEvent(me);
      }
      
      public function get toolTipClass() : Class
      {
         return _toolTipClass;
      }
      
      private function hideImmediately(target:DisplayObject) : void
      {
         checkIfTargetChanged(null);
      }
      
      mx_internal function showTip() : void
      {
         var sm:ISystemManager = null;
         var event:ToolTipEvent = new ToolTipEvent(ToolTipEvent.TOOL_TIP_SHOW);
         event.toolTip = currentToolTip;
         currentTarget.dispatchEvent(event);
         if(isError)
         {
            currentTarget.addEventListener("change",changeHandler);
         }
         else
         {
            sm = getSystemManager(currentTarget);
            sm.addEventListener(MouseEvent.MOUSE_DOWN,systemManager_mouseDownHandler);
         }
         currentToolTip.visible = true;
         if(!showEffect)
         {
            showEffectEnded();
         }
      }
      
      mx_internal function effectEndHandler(event:EffectEvent) : void
      {
         if(event.effectInstance.effect == showEffect)
         {
            showEffectEnded();
         }
         else if(event.effectInstance.effect == hideEffect)
         {
            hideEffectEnded();
         }
      }
      
      public function get hideDelay() : Number
      {
         return _hideDelay;
      }
      
      public function get currentTarget() : DisplayObject
      {
         return _currentTarget;
      }
      
      mx_internal function showEffectEnded() : void
      {
         var event:ToolTipEvent = null;
         if(hideDelay == 0)
         {
            hideTip();
         }
         else if(hideDelay < Infinity)
         {
            hideTimer.delay = hideDelay;
            hideTimer.start();
         }
         if(currentTarget)
         {
            event = new ToolTipEvent(ToolTipEvent.TOOL_TIP_SHOWN);
            event.toolTip = currentToolTip;
            currentTarget.dispatchEvent(event);
         }
      }
      
      public function get hideEffect() : IAbstractEffect
      {
         return _hideEffect;
      }
      
      mx_internal function changeHandler(event:Event) : void
      {
         reset();
      }
      
      public function set enabled(value:Boolean) : void
      {
         _enabled = value;
      }
      
      mx_internal function errorTipMouseOverHandler(event:MouseEvent) : void
      {
         checkIfTargetChanged(DisplayObject(event.target));
      }
      
      public function get showDelay() : Number
      {
         return _showDelay;
      }
      
      public function get scrubDelay() : Number
      {
         return _scrubDelay;
      }
      
      public function registerErrorString(target:DisplayObject, oldErrorString:String, newErrorString:String) : void
      {
         if(!oldErrorString && newErrorString)
         {
            target.addEventListener(MouseEvent.MOUSE_OVER,errorTipMouseOverHandler);
            target.addEventListener(MouseEvent.MOUSE_OUT,errorTipMouseOutHandler);
            if(mouseIsOver(target))
            {
               showImmediately(target);
            }
         }
         else if(oldErrorString && !newErrorString)
         {
            target.removeEventListener(MouseEvent.MOUSE_OVER,errorTipMouseOverHandler);
            target.removeEventListener(MouseEvent.MOUSE_OUT,errorTipMouseOutHandler);
            if(mouseIsOver(target))
            {
               hideImmediately(target);
            }
         }
      }
      
      mx_internal function initialize() : void
      {
         if(!showTimer)
         {
            showTimer = new Timer(0,1);
            showTimer.addEventListener(TimerEvent.TIMER,showTimer_timerHandler);
         }
         if(!hideTimer)
         {
            hideTimer = new Timer(0,1);
            hideTimer.addEventListener(TimerEvent.TIMER,hideTimer_timerHandler);
         }
         if(!scrubTimer)
         {
            scrubTimer = new Timer(0,1);
         }
         initialized = true;
      }
      
      public function destroyToolTip(toolTip:IToolTip) : void
      {
         var sm:ISystemManager = toolTip.systemManager as ISystemManager;
         sm.topLevelSystemManager.removeChildFromSandboxRoot("toolTipChildren",DisplayObject(toolTip));
      }
      
      mx_internal function checkIfTargetChanged(displayObject:DisplayObject) : void
      {
         if(!enabled)
         {
            return;
         }
         findTarget(displayObject);
         if(currentTarget != previousTarget)
         {
            targetChanged();
            previousTarget = currentTarget;
         }
      }
      
      private function marshalToolTipManagerHandler(event:Event) : void
      {
         var me:InterManagerRequest = null;
         if(event is InterManagerRequest)
         {
            return;
         }
         var marshalEvent:Object = event;
         switch(marshalEvent.name)
         {
            case "currentToolTip":
               _currentToolTip = marshalEvent.value;
               break;
            case ToolTipEvent.TOOL_TIP_HIDE:
               if(_currentToolTip is IToolTip)
               {
                  hideTip();
               }
               break;
            case "update":
               event.stopImmediatePropagation();
               me = new InterManagerRequest(InterManagerRequest.TOOLTIP_MANAGER_REQUEST);
               me.name = "currentToolTip";
               me.value = _currentToolTip;
               sandboxRoot.dispatchEvent(me);
         }
      }
      
      public function set toolTipClass(value:Class) : void
      {
         _toolTipClass = value;
      }
      
      private function getGlobalBounds(obj:DisplayObject, parent:DisplayObject) : Rectangle
      {
         var upperLeft:Point = new Point(0,0);
         upperLeft = obj.localToGlobal(upperLeft);
         upperLeft = parent.globalToLocal(upperLeft);
         return new Rectangle(upperLeft.x,upperLeft.y,obj.width,obj.height);
      }
      
      mx_internal function positionTip() : void
      {
         var x:Number = NaN;
         var y:Number = NaN;
         var targetGlobalBounds:Rectangle = null;
         var newWidth:Number = NaN;
         var oldWidth:Number = NaN;
         var sm:ISystemManager = null;
         var toolTipWidth:Number = NaN;
         var toolTipHeight:Number = NaN;
         var pos:Point = null;
         var screenWidth:Number = currentToolTip.screen.width;
         var screenHeight:Number = currentToolTip.screen.height;
         if(isError)
         {
            targetGlobalBounds = getGlobalBounds(currentTarget,currentToolTip.root);
            x = targetGlobalBounds.right + 4;
            y = targetGlobalBounds.top - 1;
            if(x + currentToolTip.width > screenWidth)
            {
               newWidth = NaN;
               oldWidth = NaN;
               x = targetGlobalBounds.left - 2;
               if(x + currentToolTip.width + 4 > screenWidth)
               {
                  newWidth = screenWidth - x - 4;
                  oldWidth = Object(toolTipClass).maxWidth;
                  Object(toolTipClass).maxWidth = newWidth;
                  if(currentToolTip is IStyleClient)
                  {
                     IStyleClient(currentToolTip).setStyle("borderStyle","errorTipAbove");
                  }
                  currentToolTip["text"] = currentToolTip["text"];
               }
               else
               {
                  if(currentToolTip is IStyleClient)
                  {
                     IStyleClient(currentToolTip).setStyle("borderStyle","errorTipAbove");
                  }
                  currentToolTip["text"] = currentToolTip["text"];
               }
               if(currentToolTip.height + 2 < targetGlobalBounds.top)
               {
                  y = targetGlobalBounds.top - (currentToolTip.height + 2);
               }
               else
               {
                  y = targetGlobalBounds.bottom + 2;
                  if(!isNaN(newWidth))
                  {
                     Object(toolTipClass).maxWidth = newWidth;
                  }
                  if(currentToolTip is IStyleClient)
                  {
                     IStyleClient(currentToolTip).setStyle("borderStyle","errorTipBelow");
                  }
                  currentToolTip["text"] = currentToolTip["text"];
               }
            }
            sizeTip(currentToolTip);
            if(!isNaN(oldWidth))
            {
               Object(toolTipClass).maxWidth = oldWidth;
            }
         }
         else
         {
            sm = getSystemManager(currentTarget);
            x = DisplayObject(sm).mouseX + 11;
            y = DisplayObject(sm).mouseY + 22;
            toolTipWidth = currentToolTip.width;
            if(x + toolTipWidth > screenWidth)
            {
               x = screenWidth - toolTipWidth;
            }
            toolTipHeight = currentToolTip.height;
            if(y + toolTipHeight > screenHeight)
            {
               y = screenHeight - toolTipHeight;
            }
            pos = new Point(x,y);
            pos = DisplayObject(sm).localToGlobal(pos);
            pos = DisplayObject(sandboxRoot).globalToLocal(pos);
            x = pos.x;
            y = pos.y;
         }
         currentToolTip.move(x,y);
      }
      
      mx_internal function errorTipMouseOutHandler(event:MouseEvent) : void
      {
         checkIfTargetChanged(event.relatedObject);
      }
      
      mx_internal function findTarget(displayObject:DisplayObject) : void
      {
         while(displayObject)
         {
            if(displayObject is IValidatorListener)
            {
               currentText = IValidatorListener(displayObject).errorString;
               if(currentText != null && currentText != "")
               {
                  currentTarget = displayObject;
                  isError = true;
                  return;
               }
            }
            if(displayObject is IToolTipManagerClient)
            {
               currentText = IToolTipManagerClient(displayObject).toolTip;
               if(currentText != null)
               {
                  currentTarget = displayObject;
                  isError = false;
                  return;
               }
            }
            displayObject = displayObject.parent;
         }
         currentText = null;
         currentTarget = null;
      }
      
      public function registerToolTip(target:DisplayObject, oldToolTip:String, newToolTip:String) : void
      {
         if(!oldToolTip && newToolTip)
         {
            target.addEventListener(MouseEvent.MOUSE_OVER,toolTipMouseOverHandler);
            target.addEventListener(MouseEvent.MOUSE_OUT,toolTipMouseOutHandler);
            if(mouseIsOver(target))
            {
               showImmediately(target);
            }
         }
         else if(oldToolTip && !newToolTip)
         {
            target.removeEventListener(MouseEvent.MOUSE_OVER,toolTipMouseOverHandler);
            target.removeEventListener(MouseEvent.MOUSE_OUT,toolTipMouseOutHandler);
            if(mouseIsOver(target))
            {
               hideImmediately(target);
            }
         }
      }
      
      private function showImmediately(target:DisplayObject) : void
      {
         var oldShowDelay:Number = ToolTipManager.showDelay;
         ToolTipManager.showDelay = 0;
         checkIfTargetChanged(target);
         ToolTipManager.showDelay = oldShowDelay;
      }
      
      public function set hideDelay(value:Number) : void
      {
         _hideDelay = value;
      }
      
      private function getSystemManager(target:DisplayObject) : ISystemManager
      {
         return target is IUIComponent?IUIComponent(target).systemManager:null;
      }
      
      public function set currentTarget(value:DisplayObject) : void
      {
         _currentTarget = value;
      }
      
      public function sizeTip(toolTip:IToolTip) : void
      {
         if(toolTip is IInvalidating)
         {
            IInvalidating(toolTip).validateNow();
         }
         toolTip.setActualSize(toolTip.getExplicitOrMeasuredWidth(),toolTip.getExplicitOrMeasuredHeight());
      }
      
      public function set showEffect(value:IAbstractEffect) : void
      {
         _showEffect = value as IAbstractEffect;
      }
      
      mx_internal function targetChanged() : void
      {
         var event:ToolTipEvent = null;
         var me:InterManagerRequest = null;
         if(!initialized)
         {
            initialize();
         }
         if(previousTarget && currentToolTip)
         {
            if(currentToolTip is IToolTip)
            {
               event = new ToolTipEvent(ToolTipEvent.TOOL_TIP_HIDE);
               event.toolTip = currentToolTip;
               previousTarget.dispatchEvent(event);
            }
            else
            {
               me = new InterManagerRequest(InterManagerRequest.TOOLTIP_MANAGER_REQUEST);
               me.name = ToolTipEvent.TOOL_TIP_HIDE;
               sandboxRoot.dispatchEvent(me);
            }
         }
         reset();
         if(currentTarget)
         {
            if(currentText == "")
            {
               return;
            }
            event = new ToolTipEvent(ToolTipEvent.TOOL_TIP_START);
            currentTarget.dispatchEvent(event);
            if(showDelay == 0 || scrubTimer.running)
            {
               createTip();
               initializeTip();
               positionTip();
               showTip();
            }
            else
            {
               showTimer.delay = showDelay;
               showTimer.start();
            }
         }
      }
      
      public function set hideEffect(value:IAbstractEffect) : void
      {
         _hideEffect = value as IAbstractEffect;
      }
      
      mx_internal function hideTimer_timerHandler(event:TimerEvent) : void
      {
         hideTip();
      }
      
      mx_internal function initializeTip() : void
      {
         if(currentToolTip is IToolTip)
         {
            IToolTip(currentToolTip).text = currentText;
         }
         if(isError && currentToolTip is IStyleClient)
         {
            IStyleClient(currentToolTip).setStyle("styleName","errorTip");
         }
         sizeTip(currentToolTip);
         if(currentToolTip is IStyleClient)
         {
            if(showEffect)
            {
               IStyleClient(currentToolTip).setStyle("showEffect",showEffect);
            }
            if(hideEffect)
            {
               IStyleClient(currentToolTip).setStyle("hideEffect",hideEffect);
            }
         }
         if(showEffect || hideEffect)
         {
            currentToolTip.addEventListener(EffectEvent.EFFECT_END,effectEndHandler);
         }
      }
      
      public function get showEffect() : IAbstractEffect
      {
         return _showEffect;
      }
      
      mx_internal function toolTipMouseOverHandler(event:MouseEvent) : void
      {
         checkIfTargetChanged(DisplayObject(event.target));
      }
      
      mx_internal function hideTip() : void
      {
         var event:ToolTipEvent = null;
         var sm:ISystemManager = null;
         if(previousTarget)
         {
            event = new ToolTipEvent(ToolTipEvent.TOOL_TIP_HIDE);
            event.toolTip = currentToolTip;
            previousTarget.dispatchEvent(event);
         }
         if(currentToolTip)
         {
            currentToolTip.visible = false;
         }
         if(isError)
         {
            if(currentTarget)
            {
               currentTarget.removeEventListener("change",changeHandler);
            }
         }
         else if(previousTarget)
         {
            sm = getSystemManager(previousTarget);
            sm.removeEventListener(MouseEvent.MOUSE_DOWN,systemManager_mouseDownHandler);
         }
         if(!hideEffect)
         {
            hideEffectEnded();
         }
      }
      
      mx_internal function createTip() : void
      {
         var event:ToolTipEvent = new ToolTipEvent(ToolTipEvent.TOOL_TIP_CREATE);
         currentTarget.dispatchEvent(event);
         if(event.toolTip)
         {
            currentToolTip = event.toolTip;
         }
         else
         {
            currentToolTip = new toolTipClass();
         }
         currentToolTip.visible = false;
         var sm:ISystemManager = getSystemManager(currentTarget) as ISystemManager;
         sm.topLevelSystemManager.addChildToSandboxRoot("toolTipChildren",currentToolTip as DisplayObject);
      }
   }
}

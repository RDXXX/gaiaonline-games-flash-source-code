package mx.effects
{
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.FocusEvent;
   import flash.utils.Dictionary;
   import mx.core.ApplicationGlobals;
   import mx.core.EventPriority;
   import mx.core.IDeferredInstantiationUIComponent;
   import mx.core.IFlexDisplayObject;
   import mx.core.IUIComponent;
   import mx.core.UIComponent;
   import mx.core.UIComponentCachePolicy;
   import mx.core.mx_internal;
   import mx.events.EffectEvent;
   import mx.events.FlexEvent;
   import mx.events.MoveEvent;
   import mx.events.ResizeEvent;
   import mx.resources.IResourceManager;
   import mx.resources.ResourceManager;
   
   use namespace mx_internal;
   
   public class EffectManager extends EventDispatcher
   {
      
      private static var _resourceManager:IResourceManager;
      
      private static var effects:Dictionary = new Dictionary(true);
      
      mx_internal static var effectsPlaying:Array = [];
      
      private static var targetsInfo:Array = [];
      
      mx_internal static const VERSION:String = "3.6.0.21751";
      
      private static var effectTriggersForEvent:Object = {};
      
      mx_internal static var lastEffectCreated:Effect;
      
      private static var eventHandlingSuspendCount:Number = 0;
      
      private static var eventsForEffectTriggers:Object = {};
       
      
      public function EffectManager()
      {
         super();
      }
      
      public static function suspendEventHandling() : void
      {
         eventHandlingSuspendCount++;
      }
      
      mx_internal static function registerEffectTrigger(name:String, event:String) : void
      {
         var strLen:Number = NaN;
         if(name != "")
         {
            if(event == "")
            {
               strLen = name.length;
               if(strLen > 6 && name.substring(strLen - 6) == "Effect")
               {
                  event = name.substring(0,strLen - 6);
               }
            }
            if(event != "")
            {
               effectTriggersForEvent[event] = name;
               eventsForEffectTriggers[name] = event;
            }
         }
      }
      
      private static function removedEffectHandler(target:DisplayObject, parent:DisplayObjectContainer, index:int, eventObj:Event) : void
      {
         suspendEventHandling();
         parent.addChildAt(target,index);
         resumeEventHandling();
         createAndPlayEffect(eventObj,target);
      }
      
      private static function createAndPlayEffect(eventObj:Event, target:Object) : void
      {
         var n:int = 0;
         var i:int = 0;
         var m:int = 0;
         var j:int = 0;
         var message:String = null;
         var type:String = null;
         var tweeningProperties:Array = null;
         var effectProperties:Array = null;
         var affectedProps:Array = null;
         var runningInstances:Array = null;
         var otherInst:EffectInstance = null;
         var effectInst:Effect = createEffectForType(target,eventObj.type);
         if(!effectInst)
         {
            return;
         }
         if(effectInst is Zoom && eventObj.type == MoveEvent.MOVE)
         {
            message = resourceManager.getString("effects","incorrectTrigger");
            throw new Error(message);
         }
         if(target.initialized == false)
         {
            type = eventObj.type;
            if(type == MoveEvent.MOVE || type == ResizeEvent.RESIZE || type == FlexEvent.SHOW || type == FlexEvent.HIDE || type == Event.CHANGE)
            {
               effectInst = null;
               return;
            }
         }
         if(effectInst.target is IUIComponent)
         {
            tweeningProperties = IUIComponent(effectInst.target).tweeningProperties;
            if(tweeningProperties && tweeningProperties.length > 0)
            {
               effectProperties = effectInst.getAffectedProperties();
               n = tweeningProperties.length;
               m = effectProperties.length;
               for(i = 0; i < n; i++)
               {
                  for(j = 0; j < m; j++)
                  {
                     if(tweeningProperties[i] == effectProperties[j])
                     {
                        effectInst = null;
                        return;
                     }
                  }
               }
            }
         }
         if(effectInst.target is UIComponent && UIComponent(effectInst.target).isEffectStarted)
         {
            affectedProps = effectInst.getAffectedProperties();
            for(i = 0; i < affectedProps.length; i++)
            {
               runningInstances = effectInst.target.getEffectsForProperty(affectedProps[i]);
               if(runningInstances.length > 0)
               {
                  if(eventObj.type == ResizeEvent.RESIZE)
                  {
                     return;
                  }
                  for(j = 0; j < runningInstances.length; j++)
                  {
                     otherInst = runningInstances[j];
                     if(eventObj.type == FlexEvent.SHOW && otherInst.hideOnEffectEnd)
                     {
                        otherInst.target.removeEventListener(FlexEvent.SHOW,otherInst.eventHandler);
                        otherInst.hideOnEffectEnd = false;
                     }
                     otherInst.end();
                  }
               }
            }
         }
         effectInst.triggerEvent = eventObj;
         effectInst.addEventListener(EffectEvent.EFFECT_END,EffectManager.effectEndHandler);
         lastEffectCreated = effectInst;
         var instances:Array = effectInst.play();
         n = instances.length;
         for(i = 0; i < n; i++)
         {
            effectsPlaying.push(new EffectNode(effectInst,instances[i]));
         }
         if(effectInst.suspendBackgroundProcessing)
         {
            UIComponent.suspendBackgroundProcessing();
         }
      }
      
      public static function endEffectsForTarget(target:IUIComponent) : void
      {
         var otherInst:EffectInstance = null;
         var n:int = effectsPlaying.length;
         for(var i:int = n - 1; i >= 0; i--)
         {
            otherInst = effectsPlaying[i].instance;
            if(otherInst.target == target)
            {
               otherInst.end();
            }
         }
      }
      
      private static function cacheOrUncacheTargetAsBitmap(target:IUIComponent, effectStart:Boolean = true, bitmapEffect:Boolean = true) : void
      {
         var n:int = 0;
         var i:int = 0;
         var info:Object = null;
         n = targetsInfo.length;
         for(i = 0; i < n; i++)
         {
            if(targetsInfo[i].target == target)
            {
               info = targetsInfo[i];
               break;
            }
         }
         if(!info)
         {
            info = {
               "target":target,
               "bitmapEffectsCount":0,
               "vectorEffectsCount":0
            };
            targetsInfo.push(info);
         }
         if(effectStart)
         {
            if(bitmapEffect)
            {
               info.bitmapEffectsCount++;
               if(info.vectorEffectsCount == 0 && target is IDeferredInstantiationUIComponent)
               {
                  IDeferredInstantiationUIComponent(target).cacheHeuristic = true;
               }
            }
            else if(info.vectorEffectsCount++ == 0 && target is IDeferredInstantiationUIComponent && IDeferredInstantiationUIComponent(target).cachePolicy == UIComponentCachePolicy.AUTO)
            {
               target.cacheAsBitmap = false;
            }
         }
         else
         {
            if(bitmapEffect)
            {
               if(info.bitmapEffectsCount != 0)
               {
                  info.bitmapEffectsCount--;
               }
               if(target is IDeferredInstantiationUIComponent)
               {
                  IDeferredInstantiationUIComponent(target).cacheHeuristic = false;
               }
            }
            else if(info.vectorEffectsCount != 0)
            {
               if(--info.vectorEffectsCount == 0 && info.bitmapEffectsCount != 0)
               {
                  n = info.bitmapEffectsCount;
                  for(i = 0; i < n; i++)
                  {
                     if(target is IDeferredInstantiationUIComponent)
                     {
                        IDeferredInstantiationUIComponent(target).cacheHeuristic = true;
                     }
                  }
               }
            }
            if(info.bitmapEffectsCount == 0 && info.vectorEffectsCount == 0)
            {
               n = targetsInfo.length;
               for(i = 0; i < n; i++)
               {
                  if(targetsInfo[i].target == target)
                  {
                     targetsInfo.splice(i,1);
                     break;
                  }
               }
            }
         }
      }
      
      mx_internal static function eventHandler(eventObj:Event) : void
      {
         var focusEventObj:FocusEvent = null;
         var targ:DisplayObject = null;
         var i:int = 0;
         var parent:DisplayObjectContainer = null;
         var index:int = 0;
         if(!(eventObj.currentTarget is IFlexDisplayObject))
         {
            return;
         }
         if(eventHandlingSuspendCount > 0)
         {
            return;
         }
         if(eventObj is FocusEvent && (eventObj.type == FocusEvent.FOCUS_OUT || eventObj.type == FocusEvent.FOCUS_IN))
         {
            focusEventObj = FocusEvent(eventObj);
            if(focusEventObj.relatedObject && (focusEventObj.currentTarget.contains(focusEventObj.relatedObject) || focusEventObj.currentTarget == focusEventObj.relatedObject))
            {
               return;
            }
         }
         if((eventObj.type == Event.ADDED || eventObj.type == Event.REMOVED) && eventObj.target != eventObj.currentTarget)
         {
            return;
         }
         if(eventObj.type == Event.REMOVED)
         {
            if(eventObj.target is UIComponent)
            {
               if(UIComponent(eventObj.target).initialized == false)
               {
                  return;
               }
               if(UIComponent(eventObj.target).isEffectStarted)
               {
                  for(i = 0; i < UIComponent(eventObj.target)._effectsStarted.length; i++)
                  {
                     if(UIComponent(eventObj.target)._effectsStarted[i].triggerEvent.type == Event.REMOVED)
                     {
                        return;
                     }
                  }
               }
            }
            targ = eventObj.target as DisplayObject;
            if(targ != null)
            {
               parent = targ.parent as DisplayObjectContainer;
               if(parent != null)
               {
                  index = parent.getChildIndex(targ);
                  if(index >= 0)
                  {
                     if(targ is UIComponent)
                     {
                        UIComponent(targ).callLater(removedEffectHandler,[targ,parent,index,eventObj]);
                     }
                  }
               }
            }
         }
         else
         {
            createAndPlayEffect(eventObj,eventObj.currentTarget);
         }
      }
      
      mx_internal static function endBitmapEffect(target:IUIComponent) : void
      {
         cacheOrUncacheTargetAsBitmap(target,false,true);
      }
      
      private static function animateSameProperty(a:Effect, b:Effect, c:EffectInstance) : Boolean
      {
         var aProps:Array = null;
         var bProps:Array = null;
         var n:int = 0;
         var m:int = 0;
         var i:int = 0;
         var j:int = 0;
         if(a.target == c.target)
         {
            aProps = a.getAffectedProperties();
            bProps = b.getAffectedProperties();
            n = aProps.length;
            m = bProps.length;
            for(i = 0; i < n; i++)
            {
               for(j = 0; j < m; j++)
               {
                  if(aProps[i] == bProps[j])
                  {
                     return true;
                  }
               }
            }
         }
         return false;
      }
      
      mx_internal static function effectFinished(effect:EffectInstance) : void
      {
         delete effects[effect];
      }
      
      mx_internal static function effectsInEffect() : Boolean
      {
         var i:* = undefined;
         for(i in effects)
         {
            return true;
         }
         return false;
      }
      
      mx_internal static function effectEndHandler(event:EffectEvent) : void
      {
         var targ:DisplayObject = null;
         var parent:DisplayObjectContainer = null;
         var effectInst:IEffectInstance = event.effectInstance;
         var n:int = effectsPlaying.length;
         for(var i:int = n - 1; i >= 0; i--)
         {
            if(effectsPlaying[i].instance == effectInst)
            {
               effectsPlaying.splice(i,1);
               break;
            }
         }
         if(Object(effectInst).hideOnEffectEnd == true)
         {
            effectInst.target.removeEventListener(FlexEvent.SHOW,Object(effectInst).eventHandler);
            effectInst.target.setVisible(false,true);
         }
         if(effectInst.triggerEvent && effectInst.triggerEvent.type == Event.REMOVED)
         {
            targ = effectInst.target as DisplayObject;
            if(targ != null)
            {
               parent = targ.parent as DisplayObjectContainer;
               if(parent != null)
               {
                  suspendEventHandling();
                  parent.removeChild(targ);
                  resumeEventHandling();
               }
            }
         }
         if(effectInst.suspendBackgroundProcessing)
         {
            UIComponent.resumeBackgroundProcessing();
         }
      }
      
      mx_internal static function startBitmapEffect(target:IUIComponent) : void
      {
         cacheOrUncacheTargetAsBitmap(target,true,true);
      }
      
      mx_internal static function setStyle(styleProp:String, target:*) : void
      {
         var eventName:String = eventsForEffectTriggers[styleProp];
         if(eventName != null && eventName != "")
         {
            target.addEventListener(eventName,EffectManager.eventHandler,false,EventPriority.EFFECT);
         }
      }
      
      mx_internal static function getEventForEffectTrigger(effectTrigger:String) : String
      {
         if(eventsForEffectTriggers)
         {
            try
            {
               return eventsForEffectTriggers[effectTrigger];
            }
            catch(e:Error)
            {
               return "";
            }
            return "";
         }
         return "";
      }
      
      mx_internal static function createEffectForType(target:Object, type:String) : Effect
      {
         var cls:Class = null;
         var effectObj:Effect = null;
         var doc:Object = null;
         var trigger:String = effectTriggersForEvent[type];
         if(trigger == "")
         {
            trigger = type + "Effect";
         }
         var value:Object = target.getStyle(trigger);
         if(!value)
         {
            return null;
         }
         if(value is Class)
         {
            cls = Class(value);
            return new cls(target);
         }
         try
         {
            if(value is String)
            {
               doc = target.parentDocument;
               if(!doc)
               {
                  doc = ApplicationGlobals.application;
               }
               effectObj = doc[value];
            }
            else if(value is Effect)
            {
               effectObj = Effect(value);
            }
            if(effectObj)
            {
               effectObj.target = target;
               return effectObj;
            }
         }
         catch(e:Error)
         {
         }
         var effectClass:Class = Class(target.systemManager.getDefinitionByName("mx.effects." + value));
         if(effectClass)
         {
            return new effectClass(target);
         }
         return null;
      }
      
      mx_internal static function effectStarted(effect:EffectInstance) : void
      {
         effects[effect] = 1;
      }
      
      public static function resumeEventHandling() : void
      {
         eventHandlingSuspendCount--;
      }
      
      mx_internal static function startVectorEffect(target:IUIComponent) : void
      {
         cacheOrUncacheTargetAsBitmap(target,true,false);
      }
      
      mx_internal static function endVectorEffect(target:IUIComponent) : void
      {
         cacheOrUncacheTargetAsBitmap(target,false,false);
      }
      
      private static function get resourceManager() : IResourceManager
      {
         if(!_resourceManager)
         {
            _resourceManager = ResourceManager.getInstance();
         }
         return _resourceManager;
      }
   }
}

import mx.effects.Effect;
import mx.effects.EffectInstance;

class EffectNode
{
    
   
   public var factory:Effect;
   
   public var instance:EffectInstance;
   
   function EffectNode(factory:Effect, instance:EffectInstance)
   {
      super();
      this.factory = factory;
      this.instance = instance;
   }
}

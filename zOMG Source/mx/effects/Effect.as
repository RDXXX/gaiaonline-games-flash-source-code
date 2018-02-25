package mx.effects
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.utils.getQualifiedClassName;
   import mx.core.IFlexDisplayObject;
   import mx.core.mx_internal;
   import mx.effects.effectClasses.AddRemoveEffectTargetFilter;
   import mx.effects.effectClasses.HideShowEffectTargetFilter;
   import mx.effects.effectClasses.PropertyChanges;
   import mx.events.EffectEvent;
   import mx.managers.LayoutManager;
   
   use namespace mx_internal;
   
   public class Effect extends EventDispatcher implements IEffect
   {
      
      mx_internal static const VERSION:String = "3.6.0.21751";
       
      
      private var _perElementOffset:Number = 0;
      
      private var _hideFocusRing:Boolean = false;
      
      private var _customFilter:EffectTargetFilter;
      
      public var repeatCount:int = 1;
      
      public var suspendBackgroundProcessing:Boolean = false;
      
      public var startDelay:int = 0;
      
      private var _relevantProperties:Array;
      
      private var _callValidateNow:Boolean = false;
      
      mx_internal var applyActualDimensions:Boolean = true;
      
      private var _filter:String;
      
      private var _triggerEvent:Event;
      
      private var _effectTargetHost:IEffectTargetHost;
      
      mx_internal var durationExplicitlySet:Boolean = false;
      
      public var repeatDelay:int = 0;
      
      private var _targets:Array;
      
      mx_internal var propertyChangesArray:Array;
      
      mx_internal var filterObject:EffectTargetFilter;
      
      protected var endValuesCaptured:Boolean = false;
      
      public var instanceClass:Class;
      
      private var _duration:Number = 500;
      
      private var isPaused:Boolean = false;
      
      private var _relevantStyles:Array;
      
      private var _instances:Array;
      
      public function Effect(target:Object = null)
      {
         _instances = [];
         instanceClass = IEffectInstance;
         _relevantStyles = [];
         _targets = [];
         super();
         this.target = target;
      }
      
      private static function mergeArrays(a1:Array, a2:Array) : Array
      {
         var i2:int = 0;
         var addIt:Boolean = false;
         var i1:int = 0;
         if(a2)
         {
            for(i2 = 0; i2 < a2.length; i2++)
            {
               addIt = true;
               for(i1 = 0; i1 < a1.length; i1++)
               {
                  if(a1[i1] == a2[i2])
                  {
                     addIt = false;
                     break;
                  }
               }
               if(addIt)
               {
                  a1.push(a2[i2]);
               }
            }
         }
         return a1;
      }
      
      private static function stripUnchangedValues(propChanges:Array) : Array
      {
         var prop:* = null;
         for(var i:int = 0; i < propChanges.length; i++)
         {
            for(prop in propChanges[i].start)
            {
               if(propChanges[i].start[prop] == propChanges[i].end[prop] || typeof propChanges[i].start[prop] == "number" && typeof propChanges[i].end[prop] == "number" && isNaN(propChanges[i].start[prop]) && isNaN(propChanges[i].end[prop]))
               {
                  delete propChanges[i].start[prop];
                  delete propChanges[i].end[prop];
               }
            }
         }
         return propChanges;
      }
      
      public function get targets() : Array
      {
         return _targets;
      }
      
      public function set targets(value:Array) : void
      {
         var n:int = value.length;
         for(var i:int = n - 1; i > 0; i--)
         {
            if(value[i] == null)
            {
               value.splice(i,1);
            }
         }
         _targets = value;
      }
      
      public function set hideFocusRing(value:Boolean) : void
      {
         _hideFocusRing = value;
      }
      
      public function get hideFocusRing() : Boolean
      {
         return _hideFocusRing;
      }
      
      public function stop() : void
      {
         var instance:IEffectInstance = null;
         var n:int = _instances.length;
         for(var i:int = n; i >= 0; i--)
         {
            instance = IEffectInstance(_instances[i]);
            if(instance)
            {
               instance.stop();
            }
         }
      }
      
      public function captureStartValues() : void
      {
         if(targets.length > 0)
         {
            propertyChangesArray = captureValues(null,true);
            _callValidateNow = true;
         }
         endValuesCaptured = false;
      }
      
      mx_internal function captureValues(propChanges:Array, setStartValues:Boolean) : Array
      {
         var n:int = 0;
         var i:int = 0;
         var valueMap:Object = null;
         var target:Object = null;
         var m:int = 0;
         var j:int = 0;
         if(!propChanges)
         {
            propChanges = [];
            n = targets.length;
            for(i = 0; i < n; i++)
            {
               propChanges.push(new PropertyChanges(targets[i]));
            }
         }
         var effectProps:Array = !filterObject?relevantProperties:mergeArrays(relevantProperties,filterObject.filterProperties);
         if(effectProps && effectProps.length > 0)
         {
            n = propChanges.length;
            for(i = 0; i < n; i++)
            {
               target = propChanges[i].target;
               valueMap = !!setStartValues?propChanges[i].start:propChanges[i].end;
               m = effectProps.length;
               for(j = 0; j < m; j++)
               {
                  valueMap[effectProps[j]] = getValueFromTarget(target,effectProps[j]);
               }
            }
         }
         var styles:Array = !filterObject?relevantStyles:mergeArrays(relevantStyles,filterObject.filterStyles);
         if(styles && styles.length > 0)
         {
            n = propChanges.length;
            for(i = 0; i < n; i++)
            {
               target = propChanges[i].target;
               valueMap = !!setStartValues?propChanges[i].start:propChanges[i].end;
               m = styles.length;
               for(j = 0; j < m; j++)
               {
                  valueMap[styles[j]] = target.getStyle(styles[j]);
               }
            }
         }
         return propChanges;
      }
      
      protected function getValueFromTarget(target:Object, property:String) : *
      {
         if(property in target)
         {
            return target[property];
         }
         return undefined;
      }
      
      public function set target(value:Object) : void
      {
         _targets.splice(0);
         if(value)
         {
            _targets[0] = value;
         }
      }
      
      public function get className() : String
      {
         var name:String = getQualifiedClassName(this);
         var index:int = name.indexOf("::");
         if(index != -1)
         {
            name = name.substr(index + 2);
         }
         return name;
      }
      
      public function set perElementOffset(value:Number) : void
      {
         _perElementOffset = value;
      }
      
      public function resume() : void
      {
         var n:int = 0;
         var i:int = 0;
         if(isPlaying && isPaused)
         {
            isPaused = false;
            n = _instances.length;
            for(i = 0; i < n; i++)
            {
               IEffectInstance(_instances[i]).resume();
            }
         }
      }
      
      public function set duration(value:Number) : void
      {
         durationExplicitlySet = true;
         _duration = value;
      }
      
      public function play(targets:Array = null, playReversedFromEnd:Boolean = false) : Array
      {
         var newInstance:IEffectInstance = null;
         if(targets == null && propertyChangesArray != null)
         {
            if(_callValidateNow)
            {
               LayoutManager.getInstance().validateNow();
            }
            if(!endValuesCaptured)
            {
               propertyChangesArray = captureValues(propertyChangesArray,false);
            }
            propertyChangesArray = stripUnchangedValues(propertyChangesArray);
            applyStartValues(propertyChangesArray,this.targets);
         }
         var newInstances:Array = createInstances(targets);
         var n:int = newInstances.length;
         for(var i:int = 0; i < n; i++)
         {
            newInstance = IEffectInstance(newInstances[i]);
            Object(newInstance).playReversed = playReversedFromEnd;
            newInstance.startEffect();
         }
         return newInstances;
      }
      
      public function captureEndValues() : void
      {
         propertyChangesArray = captureValues(propertyChangesArray,false);
         endValuesCaptured = true;
      }
      
      protected function filterInstance(propChanges:Array, target:Object) : Boolean
      {
         if(filterObject)
         {
            return filterObject.filterInstance(propChanges,effectTargetHost,target);
         }
         return true;
      }
      
      public function get customFilter() : EffectTargetFilter
      {
         return _customFilter;
      }
      
      public function get effectTargetHost() : IEffectTargetHost
      {
         return _effectTargetHost;
      }
      
      public function set relevantProperties(value:Array) : void
      {
         _relevantProperties = value;
      }
      
      public function captureMoreStartValues(targets:Array) : void
      {
         var additionalPropertyChangesArray:Array = null;
         if(targets.length > 0)
         {
            additionalPropertyChangesArray = captureValues(null,true);
            propertyChangesArray = propertyChangesArray.concat(additionalPropertyChangesArray);
         }
      }
      
      public function deleteInstance(instance:IEffectInstance) : void
      {
         EventDispatcher(instance).removeEventListener(EffectEvent.EFFECT_START,effectStartHandler);
         EventDispatcher(instance).removeEventListener(EffectEvent.EFFECT_END,effectEndHandler);
         var n:int = _instances.length;
         for(var i:int = 0; i < n; i++)
         {
            if(_instances[i] === instance)
            {
               _instances.splice(i,1);
            }
         }
      }
      
      public function get filter() : String
      {
         return _filter;
      }
      
      public function set triggerEvent(value:Event) : void
      {
         _triggerEvent = value;
      }
      
      public function get target() : Object
      {
         if(_targets.length > 0)
         {
            return _targets[0];
         }
         return null;
      }
      
      public function get duration() : Number
      {
         return _duration;
      }
      
      public function set customFilter(value:EffectTargetFilter) : void
      {
         _customFilter = value;
         filterObject = value;
      }
      
      public function get perElementOffset() : Number
      {
         return _perElementOffset;
      }
      
      public function set effectTargetHost(value:IEffectTargetHost) : void
      {
         _effectTargetHost = value;
      }
      
      public function get isPlaying() : Boolean
      {
         return _instances && _instances.length > 0;
      }
      
      protected function effectEndHandler(event:EffectEvent) : void
      {
         var instance:IEffectInstance = IEffectInstance(event.effectInstance);
         deleteInstance(instance);
         dispatchEvent(event);
      }
      
      public function get relevantProperties() : Array
      {
         if(_relevantProperties)
         {
            return _relevantProperties;
         }
         return getAffectedProperties();
      }
      
      public function createInstance(target:Object = null) : IEffectInstance
      {
         var n:int = 0;
         var i:int = 0;
         if(!target)
         {
            target = this.target;
         }
         var newInstance:IEffectInstance = null;
         var props:PropertyChanges = null;
         var create:Boolean = true;
         var setPropsArray:Boolean = false;
         if(propertyChangesArray)
         {
            setPropsArray = true;
            create = filterInstance(propertyChangesArray,target);
         }
         if(create)
         {
            newInstance = IEffectInstance(new instanceClass(target));
            initInstance(newInstance);
            if(setPropsArray)
            {
               n = propertyChangesArray.length;
               for(i = 0; i < n; i++)
               {
                  if(propertyChangesArray[i].target == target)
                  {
                     newInstance.propertyChanges = propertyChangesArray[i];
                  }
               }
            }
            EventDispatcher(newInstance).addEventListener(EffectEvent.EFFECT_START,effectStartHandler);
            EventDispatcher(newInstance).addEventListener(EffectEvent.EFFECT_END,effectEndHandler);
            _instances.push(newInstance);
            if(triggerEvent)
            {
               newInstance.initEffect(triggerEvent);
            }
         }
         return newInstance;
      }
      
      protected function effectStartHandler(event:EffectEvent) : void
      {
         dispatchEvent(event);
      }
      
      public function getAffectedProperties() : Array
      {
         return [];
      }
      
      public function set relevantStyles(value:Array) : void
      {
         _relevantStyles = value;
      }
      
      public function get triggerEvent() : Event
      {
         return _triggerEvent;
      }
      
      protected function applyValueToTarget(target:Object, property:String, value:*, props:Object) : void
      {
         if(property in target)
         {
            try
            {
               if(applyActualDimensions && target is IFlexDisplayObject && property == "height")
               {
                  target.setActualSize(target.width,value);
               }
               else if(applyActualDimensions && target is IFlexDisplayObject && property == "width")
               {
                  target.setActualSize(value,target.height);
               }
               else
               {
                  target[property] = value;
               }
            }
            catch(e:Error)
            {
            }
         }
      }
      
      protected function initInstance(instance:IEffectInstance) : void
      {
         instance.duration = duration;
         Object(instance).durationExplicitlySet = durationExplicitlySet;
         instance.effect = this;
         instance.effectTargetHost = effectTargetHost;
         instance.hideFocusRing = hideFocusRing;
         instance.repeatCount = repeatCount;
         instance.repeatDelay = repeatDelay;
         instance.startDelay = startDelay;
         instance.suspendBackgroundProcessing = suspendBackgroundProcessing;
      }
      
      mx_internal function applyStartValues(propChanges:Array, targets:Array) : void
      {
         var m:int = 0;
         var j:int = 0;
         var target:Object = null;
         var apply:Boolean = false;
         var effectProps:Array = relevantProperties;
         var n:int = propChanges.length;
         for(var i:int = 0; i < n; i++)
         {
            target = propChanges[i].target;
            apply = false;
            m = targets.length;
            for(j = 0; j < m; j++)
            {
               if(targets[j] == target)
               {
                  apply = filterInstance(propChanges,target);
                  break;
               }
            }
            if(apply)
            {
               m = effectProps.length;
               for(j = 0; j < m; j++)
               {
                  if(effectProps[j] in propChanges[i].start && effectProps[j] in target)
                  {
                     applyValueToTarget(target,effectProps[j],propChanges[i].start[effectProps[j]],propChanges[i].start);
                  }
               }
               m = relevantStyles.length;
               for(j = 0; j < m; j++)
               {
                  if(relevantStyles[j] in propChanges[i].start)
                  {
                     target.setStyle(relevantStyles[j],propChanges[i].start[relevantStyles[j]]);
                  }
               }
            }
         }
      }
      
      public function end(effectInstance:IEffectInstance = null) : void
      {
         var n:int = 0;
         var i:int = 0;
         var instance:IEffectInstance = null;
         if(effectInstance)
         {
            effectInstance.end();
         }
         else
         {
            n = _instances.length;
            for(i = n; i >= 0; i--)
            {
               instance = IEffectInstance(_instances[i]);
               if(instance)
               {
                  instance.end();
               }
            }
         }
      }
      
      public function get relevantStyles() : Array
      {
         return _relevantStyles;
      }
      
      public function createInstances(targets:Array = null) : Array
      {
         var newInstance:IEffectInstance = null;
         if(!targets)
         {
            targets = this.targets;
         }
         var newInstances:Array = [];
         var n:int = targets.length;
         var offsetDelay:Number = 0;
         for(var i:int = 0; i < n; i++)
         {
            newInstance = createInstance(targets[i]);
            if(newInstance)
            {
               newInstance.startDelay = newInstance.startDelay + offsetDelay;
               offsetDelay = offsetDelay + perElementOffset;
               newInstances.push(newInstance);
            }
         }
         triggerEvent = null;
         return newInstances;
      }
      
      public function pause() : void
      {
         var n:int = 0;
         var i:int = 0;
         if(isPlaying && !isPaused)
         {
            isPaused = true;
            n = _instances.length;
            for(i = 0; i < n; i++)
            {
               IEffectInstance(_instances[i]).pause();
            }
         }
      }
      
      public function set filter(value:String) : void
      {
         if(!customFilter)
         {
            _filter = value;
            switch(value)
            {
               case "add":
               case "remove":
                  filterObject = new AddRemoveEffectTargetFilter();
                  AddRemoveEffectTargetFilter(filterObject).add = value == "add";
                  break;
               case "hide":
               case "show":
                  filterObject = new HideShowEffectTargetFilter();
                  HideShowEffectTargetFilter(filterObject).show = value == "show";
                  break;
               case "move":
                  filterObject = new EffectTargetFilter();
                  filterObject.filterProperties = ["x","y"];
                  break;
               case "resize":
                  filterObject = new EffectTargetFilter();
                  filterObject.filterProperties = ["width","height"];
                  break;
               case "addItem":
                  filterObject = new EffectTargetFilter();
                  filterObject.requiredSemantics = {"added":true};
                  break;
               case "removeItem":
                  filterObject = new EffectTargetFilter();
                  filterObject.requiredSemantics = {"removed":true};
                  break;
               case "replacedItem":
                  filterObject = new EffectTargetFilter();
                  filterObject.requiredSemantics = {"replaced":true};
                  break;
               case "replacementItem":
                  filterObject = new EffectTargetFilter();
                  filterObject.requiredSemantics = {"replacement":true};
                  break;
               default:
                  filterObject = null;
            }
         }
      }
      
      public function reverse() : void
      {
         var n:int = 0;
         var i:int = 0;
         if(isPlaying)
         {
            n = _instances.length;
            for(i = 0; i < n; i++)
            {
               IEffectInstance(_instances[i]).reverse();
            }
         }
      }
   }
}

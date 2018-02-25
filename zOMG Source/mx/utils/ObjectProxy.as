package mx.utils
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.IExternalizable;
   import flash.utils.Proxy;
   import flash.utils.flash_proxy;
   import flash.utils.getQualifiedClassName;
   import mx.core.IPropertyChangeNotifier;
   import mx.events.PropertyChangeEvent;
   import mx.events.PropertyChangeEventKind;
   
   use namespace object_proxy;
   use namespace flash_proxy;
   
   [Bindable("propertyChange")]
   public dynamic class ObjectProxy extends Proxy implements IExternalizable, IPropertyChangeNotifier
   {
       
      
      private var _id:String;
      
      protected var notifiers:Object;
      
      protected var propertyList:Array;
      
      private var _proxyLevel:int;
      
      private var _type:QName;
      
      protected var dispatcher:EventDispatcher;
      
      protected var proxyClass:Class;
      
      private var _item:Object;
      
      public function ObjectProxy(item:Object = null, uid:String = null, proxyDepth:int = -1)
      {
         proxyClass = ObjectProxy;
         super();
         if(!item)
         {
            item = {};
         }
         _item = item;
         _proxyLevel = proxyDepth;
         notifiers = {};
         dispatcher = new EventDispatcher(this);
         if(uid)
         {
            _id = uid;
         }
      }
      
      public function dispatchEvent(event:Event) : Boolean
      {
         return dispatcher.dispatchEvent(event);
      }
      
      public function hasEventListener(type:String) : Boolean
      {
         return dispatcher.hasEventListener(type);
      }
      
      override flash_proxy function setProperty(name:*, value:*) : void
      {
         var notifier:IPropertyChangeNotifier = null;
         var event:PropertyChangeEvent = null;
         var oldVal:* = _item[name];
         if(oldVal !== value)
         {
            _item[name] = value;
            notifier = IPropertyChangeNotifier(notifiers[name]);
            if(notifier)
            {
               notifier.removeEventListener(PropertyChangeEvent.PROPERTY_CHANGE,propertyChangeHandler);
               delete notifiers[name];
            }
            if(dispatcher.hasEventListener(PropertyChangeEvent.PROPERTY_CHANGE))
            {
               if(name is QName)
               {
                  name = QName(name).localName;
               }
               event = PropertyChangeEvent.createUpdateEvent(this,name.toString(),oldVal,value);
               dispatcher.dispatchEvent(event);
            }
         }
      }
      
      public function willTrigger(type:String) : Boolean
      {
         return dispatcher.willTrigger(type);
      }
      
      public function readExternal(input:IDataInput) : void
      {
         var value:Object = input.readObject();
         _item = value;
      }
      
      public function writeExternal(output:IDataOutput) : void
      {
         output.writeObject(_item);
      }
      
      override flash_proxy function getProperty(name:*) : *
      {
         var result:* = undefined;
         if(notifiers[name.toString()])
         {
            return notifiers[name];
         }
         result = _item[name];
         if(result)
         {
            if(_proxyLevel == 0 || ObjectUtil.isSimple(result))
            {
               return result;
            }
            result = getComplexProperty(name,result);
         }
         return result;
      }
      
      override flash_proxy function hasProperty(name:*) : Boolean
      {
         return name in _item;
      }
      
      public function get uid() : String
      {
         if(_id === null)
         {
            _id = UIDUtil.createUID();
         }
         return _id;
      }
      
      override flash_proxy function nextNameIndex(index:int) : int
      {
         if(index == 0)
         {
            setupPropertyList();
         }
         if(index < propertyList.length)
         {
            return index + 1;
         }
         return 0;
      }
      
      public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, useWeakReference:Boolean = false) : void
      {
         dispatcher.addEventListener(type,listener,useCapture,priority,useWeakReference);
      }
      
      override flash_proxy function nextName(index:int) : String
      {
         return propertyList[index - 1];
      }
      
      public function set uid(value:String) : void
      {
         _id = value;
      }
      
      override flash_proxy function callProperty(name:*, ... rest) : *
      {
         return _item[name].apply(_item,rest);
      }
      
      public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false) : void
      {
         dispatcher.removeEventListener(type,listener,useCapture);
      }
      
      protected function setupPropertyList() : void
      {
         var prop:* = null;
         if(getQualifiedClassName(_item) == "Object")
         {
            propertyList = [];
            for(prop in _item)
            {
               propertyList.push(prop);
            }
         }
         else
         {
            propertyList = ObjectUtil.getClassInfo(_item,null,{
               "includeReadOnly":true,
               "uris":["*"]
            }).properties;
         }
      }
      
      object_proxy function getComplexProperty(name:*, value:*) : *
      {
         if(value is IPropertyChangeNotifier)
         {
            value.addEventListener(PropertyChangeEvent.PROPERTY_CHANGE,propertyChangeHandler);
            notifiers[name] = value;
            return value;
         }
         if(getQualifiedClassName(value) == "Object")
         {
            value = new proxyClass(_item[name],null,_proxyLevel > 0?_proxyLevel - 1:_proxyLevel);
            value.addEventListener(PropertyChangeEvent.PROPERTY_CHANGE,propertyChangeHandler);
            notifiers[name] = value;
            return value;
         }
         return value;
      }
      
      override flash_proxy function deleteProperty(name:*) : Boolean
      {
         var event:PropertyChangeEvent = null;
         var notifier:IPropertyChangeNotifier = IPropertyChangeNotifier(notifiers[name]);
         if(notifier)
         {
            notifier.removeEventListener(PropertyChangeEvent.PROPERTY_CHANGE,propertyChangeHandler);
            delete notifiers[name];
         }
         var oldVal:* = _item[name];
         var deleted:* = delete _item[name];
         if(dispatcher.hasEventListener(PropertyChangeEvent.PROPERTY_CHANGE))
         {
            event = new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_CHANGE);
            event.kind = PropertyChangeEventKind.DELETE;
            event.property = name;
            event.oldValue = oldVal;
            event.source = this;
            dispatcher.dispatchEvent(event);
         }
         return deleted;
      }
      
      object_proxy function get type() : QName
      {
         return _type;
      }
      
      object_proxy function set type(value:QName) : void
      {
         _type = value;
      }
      
      public function propertyChangeHandler(event:PropertyChangeEvent) : void
      {
         dispatcher.dispatchEvent(event);
      }
      
      override flash_proxy function nextValue(index:int) : *
      {
         return _item[propertyList[index - 1]];
      }
      
      object_proxy function get object() : Object
      {
         return _item;
      }
   }
}

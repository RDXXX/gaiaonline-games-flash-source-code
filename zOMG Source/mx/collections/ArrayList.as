package mx.collections
{
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.IExternalizable;
   import flash.utils.getQualifiedClassName;
   import mx.core.IPropertyChangeNotifier;
   import mx.core.mx_internal;
   import mx.events.CollectionEvent;
   import mx.events.CollectionEventKind;
   import mx.events.PropertyChangeEvent;
   import mx.events.PropertyChangeEventKind;
   import mx.resources.IResourceManager;
   import mx.resources.ResourceManager;
   import mx.utils.ArrayUtil;
   import mx.utils.UIDUtil;
   
   use namespace mx_internal;
   
   public class ArrayList extends EventDispatcher implements IList, IExternalizable, IPropertyChangeNotifier
   {
      
      mx_internal static const VERSION:String = "3.6.0.21751";
       
      
      private var _source:Array;
      
      private var _dispatchEvents:int = 0;
      
      private var _uid:String;
      
      private var resourceManager:IResourceManager;
      
      public function ArrayList(source:Array = null)
      {
         resourceManager = ResourceManager.getInstance();
         super();
         disableEvents();
         this.source = source;
         enableEvents();
         _uid = UIDUtil.createUID();
      }
      
      public function addAll(addList:IList) : void
      {
         addAllAt(addList,length);
      }
      
      public function readExternal(input:IDataInput) : void
      {
         source = input.readObject();
      }
      
      private function internalDispatchEvent(kind:String, item:Object = null, location:int = -1) : void
      {
         var event:CollectionEvent = null;
         var objEvent:PropertyChangeEvent = null;
         if(_dispatchEvents == 0)
         {
            if(hasEventListener(CollectionEvent.COLLECTION_CHANGE))
            {
               event = new CollectionEvent(CollectionEvent.COLLECTION_CHANGE);
               event.kind = kind;
               event.items.push(item);
               event.location = location;
               dispatchEvent(event);
            }
            if(hasEventListener(PropertyChangeEvent.PROPERTY_CHANGE) && (kind == CollectionEventKind.ADD || kind == CollectionEventKind.REMOVE))
            {
               objEvent = new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_CHANGE);
               objEvent.property = location;
               if(kind == CollectionEventKind.ADD)
               {
                  objEvent.newValue = item;
               }
               else
               {
                  objEvent.oldValue = item;
               }
               dispatchEvent(objEvent);
            }
         }
      }
      
      public function removeAll() : void
      {
         var len:int = 0;
         var i:int = 0;
         if(length > 0)
         {
            len = length;
            for(i = 0; i < len; i++)
            {
               stopTrackUpdates(source[i]);
            }
            source.splice(0,length);
            internalDispatchEvent(CollectionEventKind.RESET);
         }
      }
      
      public function getItemIndex(item:Object) : int
      {
         return ArrayUtil.getItemIndex(item,source);
      }
      
      public function removeItemAt(index:int) : Object
      {
         var message:String = null;
         if(index < 0 || index >= length)
         {
            message = resourceManager.getString("collections","outOfBounds",[index]);
            throw new RangeError(message);
         }
         var removed:Object = source.splice(index,1)[0];
         stopTrackUpdates(removed);
         internalDispatchEvent(CollectionEventKind.REMOVE,removed,index);
         return removed;
      }
      
      public function addAllAt(addList:IList, index:int) : void
      {
         var length:int = addList.length;
         for(var i:int = 0; i < length; i++)
         {
            this.addItemAt(addList.getItemAt(i),i + index);
         }
      }
      
      public function itemUpdated(item:Object, property:Object = null, oldValue:Object = null, newValue:Object = null) : void
      {
         var event:PropertyChangeEvent = new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_CHANGE);
         event.kind = PropertyChangeEventKind.UPDATE;
         event.source = item;
         event.property = property;
         event.oldValue = oldValue;
         event.newValue = newValue;
         itemUpdateHandler(event);
      }
      
      public function get uid() : String
      {
         return _uid;
      }
      
      public function writeExternal(output:IDataOutput) : void
      {
         output.writeObject(_source);
      }
      
      public function addItem(item:Object) : void
      {
         addItemAt(item,length);
      }
      
      public function toArray() : Array
      {
         return source.concat();
      }
      
      public function get source() : Array
      {
         return _source;
      }
      
      public function getItemAt(index:int, prefetch:int = 0) : Object
      {
         var message:String = null;
         if(index < 0 || index >= length)
         {
            message = resourceManager.getString("collections","outOfBounds",[index]);
            throw new RangeError(message);
         }
         return source[index];
      }
      
      public function set uid(value:String) : void
      {
         _uid = value;
      }
      
      public function setItemAt(item:Object, index:int) : Object
      {
         var message:String = null;
         var hasCollectionListener:Boolean = false;
         var hasPropertyListener:Boolean = false;
         var updateInfo:PropertyChangeEvent = null;
         var event:CollectionEvent = null;
         if(index < 0 || index >= length)
         {
            message = resourceManager.getString("collections","outOfBounds",[index]);
            throw new RangeError(message);
         }
         var oldItem:Object = source[index];
         source[index] = item;
         stopTrackUpdates(oldItem);
         startTrackUpdates(item);
         if(_dispatchEvents == 0)
         {
            hasCollectionListener = hasEventListener(CollectionEvent.COLLECTION_CHANGE);
            hasPropertyListener = hasEventListener(PropertyChangeEvent.PROPERTY_CHANGE);
            if(hasCollectionListener || hasPropertyListener)
            {
               updateInfo = new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_CHANGE);
               updateInfo.kind = PropertyChangeEventKind.UPDATE;
               updateInfo.oldValue = oldItem;
               updateInfo.newValue = item;
               updateInfo.property = index;
            }
            if(hasCollectionListener)
            {
               event = new CollectionEvent(CollectionEvent.COLLECTION_CHANGE);
               event.kind = CollectionEventKind.REPLACE;
               event.location = index;
               event.items.push(updateInfo);
               dispatchEvent(event);
            }
            if(hasPropertyListener)
            {
               dispatchEvent(updateInfo);
            }
         }
         return oldItem;
      }
      
      public function get length() : int
      {
         if(source)
         {
            return source.length;
         }
         return 0;
      }
      
      private function disableEvents() : void
      {
         _dispatchEvents--;
      }
      
      protected function itemUpdateHandler(event:PropertyChangeEvent) : void
      {
         var objEvent:PropertyChangeEvent = null;
         var index:uint = 0;
         internalDispatchEvent(CollectionEventKind.UPDATE,event);
         if(_dispatchEvents == 0 && hasEventListener(PropertyChangeEvent.PROPERTY_CHANGE))
         {
            objEvent = PropertyChangeEvent(event.clone());
            index = getItemIndex(event.target);
            objEvent.property = index.toString() + "." + event.property;
            dispatchEvent(objEvent);
         }
      }
      
      public function addItemAt(item:Object, index:int) : void
      {
         var message:String = null;
         if(index < 0 || index > length)
         {
            message = resourceManager.getString("collections","outOfBounds",[index]);
            throw new RangeError(message);
         }
         source.splice(index,0,item);
         startTrackUpdates(item);
         internalDispatchEvent(CollectionEventKind.ADD,item,index);
      }
      
      public function removeItem(item:Object) : Boolean
      {
         var index:int = getItemIndex(item);
         var result:* = index >= 0;
         if(result)
         {
            removeItemAt(index);
         }
         return result;
      }
      
      protected function stopTrackUpdates(item:Object) : void
      {
         if(item && item is IEventDispatcher)
         {
            IEventDispatcher(item).removeEventListener(PropertyChangeEvent.PROPERTY_CHANGE,itemUpdateHandler);
         }
      }
      
      protected function startTrackUpdates(item:Object) : void
      {
         if(item && item is IEventDispatcher)
         {
            IEventDispatcher(item).addEventListener(PropertyChangeEvent.PROPERTY_CHANGE,itemUpdateHandler,false,0,true);
         }
      }
      
      override public function toString() : String
      {
         if(source)
         {
            return source.toString();
         }
         return getQualifiedClassName(this);
      }
      
      private function enableEvents() : void
      {
         _dispatchEvents++;
         if(_dispatchEvents > 0)
         {
            _dispatchEvents = 0;
         }
      }
      
      public function set source(s:Array) : void
      {
         var i:int = 0;
         var len:int = 0;
         var event:CollectionEvent = null;
         if(_source && _source.length)
         {
            len = _source.length;
            for(i = 0; i < len; i++)
            {
               stopTrackUpdates(_source[i]);
            }
         }
         _source = !!s?s:[];
         len = _source.length;
         for(i = 0; i < len; i++)
         {
            startTrackUpdates(_source[i]);
         }
         if(_dispatchEvents == 0)
         {
            event = new CollectionEvent(CollectionEvent.COLLECTION_CHANGE);
            event.kind = CollectionEventKind.RESET;
            dispatchEvent(event);
         }
      }
   }
}

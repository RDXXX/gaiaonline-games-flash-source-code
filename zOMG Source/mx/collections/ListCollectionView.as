package mx.collections
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.utils.Proxy;
   import flash.utils.flash_proxy;
   import flash.utils.getQualifiedClassName;
   import mx.collections.errors.CollectionViewError;
   import mx.collections.errors.ItemPendingError;
   import mx.collections.errors.SortError;
   import mx.core.IMXMLObject;
   import mx.core.mx_internal;
   import mx.events.CollectionEvent;
   import mx.events.CollectionEventKind;
   import mx.events.PropertyChangeEvent;
   import mx.resources.IResourceManager;
   import mx.resources.ResourceManager;
   import mx.utils.ObjectUtil;
   
   use namespace mx_internal;
   
   public class ListCollectionView extends Proxy implements ICollectionView, IList, IMXMLObject
   {
      
      mx_internal static const VERSION:String = "3.6.0.21751";
       
      
      private var autoUpdateCounter:int;
      
      private var _list:IList;
      
      private var _filterFunction:Function;
      
      protected var localIndex:Array;
      
      mx_internal var dispatchResetEvent:Boolean = true;
      
      private var pendingUpdates:Array;
      
      private var resourceManager:IResourceManager;
      
      private var eventDispatcher:EventDispatcher;
      
      private var revision:int;
      
      private var _sort:Sort;
      
      public function ListCollectionView(list:IList = null)
      {
         resourceManager = ResourceManager.getInstance();
         super();
         eventDispatcher = new EventDispatcher(this);
         this.list = list;
      }
      
      private function handlePendingUpdates() : void
      {
         var pu:Array = null;
         var singleUpdateEvent:CollectionEvent = null;
         var i:int = 0;
         var event:CollectionEvent = null;
         var j:int = 0;
         if(pendingUpdates)
         {
            pu = pendingUpdates;
            pendingUpdates = null;
            for(i = 0; i < pu.length; i++)
            {
               event = pu[i];
               if(event.kind == CollectionEventKind.UPDATE)
               {
                  if(!singleUpdateEvent)
                  {
                     singleUpdateEvent = event;
                  }
                  else
                  {
                     for(j = 0; j < event.items.length; j++)
                     {
                        singleUpdateEvent.items.push(event.items[j]);
                     }
                  }
               }
               else
               {
                  listChangeHandler(event);
               }
            }
            if(singleUpdateEvent)
            {
               listChangeHandler(singleUpdateEvent);
            }
         }
      }
      
      private function replaceItemsInView(items:Array, location:int, dispatch:Boolean = true) : void
      {
         var len:int = 0;
         var oldItems:Array = null;
         var newItems:Array = null;
         var i:int = 0;
         var propertyEvent:PropertyChangeEvent = null;
         var event:CollectionEvent = null;
         if(localIndex)
         {
            len = items.length;
            oldItems = [];
            newItems = [];
            for(i = 0; i < len; i++)
            {
               propertyEvent = items[i];
               oldItems.push(propertyEvent.oldValue);
               newItems.push(propertyEvent.newValue);
            }
            removeItemsFromView(oldItems,location,dispatch);
            addItemsToView(newItems,location,dispatch);
         }
         else
         {
            event = new CollectionEvent(CollectionEvent.COLLECTION_CHANGE);
            event.kind = CollectionEventKind.REPLACE;
            event.location = location;
            event.items = items;
            dispatchEvent(event);
         }
      }
      
      private function getFilteredItemIndex(item:Object) : int
      {
         var prevItem:Object = null;
         var len:int = 0;
         var j:int = 0;
         var loc:int = list.getItemIndex(item);
         if(loc == 0)
         {
            return 0;
         }
         for(var i:int = loc - 1; i >= 0; i--)
         {
            prevItem = list.getItemAt(i);
            if(filterFunction(prevItem))
            {
               len = localIndex.length;
               for(j = 0; j < len; j++)
               {
                  if(localIndex[j] == prevItem)
                  {
                     return j + 1;
                  }
               }
            }
         }
         return 0;
      }
      
      public function willTrigger(type:String) : Boolean
      {
         return eventDispatcher.willTrigger(type);
      }
      
      mx_internal function findItem(values:Object, mode:String, insertIndex:Boolean = false) : int
      {
         var message:String = null;
         if(!sort)
         {
            message = resourceManager.getString("collections","itemNotFound");
            throw new CollectionViewError(message);
         }
         if(localIndex.length == 0)
         {
            return !!insertIndex?0:-1;
         }
         return sort.findItem(localIndex,values,mode,insertIndex);
      }
      
      public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false) : void
      {
         eventDispatcher.removeEventListener(type,listener,useCapture);
      }
      
      override flash_proxy function nextName(index:int) : String
      {
         return (index - 1).toString();
      }
      
      public function removeAll() : void
      {
         var i:int = 0;
         var len:int = length;
         if(len > 0)
         {
            if(localIndex)
            {
               for(i = len - 1; i >= 0; i--)
               {
                  removeItemAt(i);
               }
            }
            else
            {
               list.removeAll();
            }
         }
      }
      
      override flash_proxy function hasProperty(name:*) : Boolean
      {
         var n:Number = NaN;
         if(name is QName)
         {
            var name:* = name.localName;
         }
         var index:int = -1;
         try
         {
            n = parseInt(String(name));
            if(!isNaN(n))
            {
               index = int(n);
            }
         }
         catch(e:Error)
         {
         }
         if(index == -1)
         {
            return false;
         }
         return index >= 0 && index < length;
      }
      
      public function addAllAt(addList:IList, index:int) : void
      {
         var length:int = addList.length;
         for(var i:int = 0; i < length; i++)
         {
            this.addItemAt(addList.getItemAt(i),i + index);
         }
      }
      
      [Bindable("collectionChange")]
      public function getItemAt(index:int, prefetch:int = 0) : Object
      {
         var message:String = null;
         if(index < 0 || index >= length)
         {
            message = resourceManager.getString("collections","outOfBounds",[index]);
            throw new RangeError(message);
         }
         if(localIndex)
         {
            return localIndex[index];
         }
         if(list)
         {
            return list.getItemAt(index,prefetch);
         }
         return null;
      }
      
      private function moveItemInView(item:Object, dispatch:Boolean = true, updateEventItems:Array = null) : void
      {
         var removeLocation:int = 0;
         var i:int = 0;
         var addLocation:int = 0;
         var event:CollectionEvent = null;
         if(localIndex)
         {
            removeLocation = -1;
            for(i = 0; i < localIndex.length; i++)
            {
               if(localIndex[i] == item)
               {
                  removeLocation = i;
                  break;
               }
            }
            if(removeLocation > -1)
            {
               localIndex.splice(removeLocation,1);
            }
            addLocation = addItemsToView([item],removeLocation,false);
            if(dispatch)
            {
               event = new CollectionEvent(CollectionEvent.COLLECTION_CHANGE);
               event.items.push(item);
               if(updateEventItems && addLocation == removeLocation && addLocation > -1)
               {
                  updateEventItems.push(item);
                  return;
               }
               if(addLocation > -1 && removeLocation > -1)
               {
                  event.kind = CollectionEventKind.MOVE;
                  event.location = addLocation;
                  event.oldLocation = removeLocation;
               }
               else if(addLocation > -1)
               {
                  event.kind = CollectionEventKind.ADD;
                  event.location = addLocation;
               }
               else if(removeLocation > -1)
               {
                  event.kind = CollectionEventKind.REMOVE;
                  event.location = removeLocation;
               }
               else
               {
                  dispatch = false;
               }
               if(dispatch)
               {
                  dispatchEvent(event);
               }
            }
         }
      }
      
      public function contains(item:Object) : Boolean
      {
         return getItemIndex(item) != -1;
      }
      
      [Bindable("sortChanged")]
      public function get sort() : Sort
      {
         return _sort;
      }
      
      private function removeItemsFromView(items:Array, sourceLocation:int, dispatch:Boolean = true) : void
      {
         var i:int = 0;
         var item:Object = null;
         var loc:int = 0;
         var event:CollectionEvent = null;
         var removedItems:Array = !!localIndex?[]:items;
         var removeLocation:int = sourceLocation;
         if(localIndex)
         {
            for(i = 0; i < items.length; i++)
            {
               item = items[i];
               loc = getItemIndex(item);
               if(loc > -1)
               {
                  localIndex.splice(loc,1);
                  removedItems.push(item);
                  removeLocation = loc;
               }
            }
         }
         if(dispatch && removedItems.length > 0)
         {
            event = new CollectionEvent(CollectionEvent.COLLECTION_CHANGE);
            event.kind = CollectionEventKind.REMOVE;
            event.location = !localIndex || removedItems.length == 1?int(removeLocation):-1;
            event.items = removedItems;
            dispatchEvent(event);
         }
      }
      
      [Bindable("listChanged")]
      public function get list() : IList
      {
         return _list;
      }
      
      public function addItemAt(item:Object, index:int) : void
      {
         var message:String = null;
         if(index < 0 || !list || index > length)
         {
            message = resourceManager.getString("collections","outOfBounds",[index]);
            throw new RangeError(message);
         }
         var listIndex:int = index;
         if(localIndex && sort)
         {
            listIndex = list.length;
         }
         else if(localIndex && filterFunction != null)
         {
            if(listIndex == localIndex.length)
            {
               listIndex = list.length;
            }
            else
            {
               listIndex = list.getItemIndex(localIndex[index]);
            }
         }
         list.addItemAt(item,listIndex);
      }
      
      public function itemUpdated(item:Object, property:Object = null, oldValue:Object = null, newValue:Object = null) : void
      {
         list.itemUpdated(item,property,oldValue,newValue);
      }
      
      private function populateLocalIndex() : void
      {
         if(list)
         {
            localIndex = list.toArray();
         }
         else
         {
            localIndex = [];
         }
      }
      
      private function handlePropertyChangeEvents(param1:Array) : void
      {
         var _loc3_:Array = null;
         var _loc4_:Object = null;
         var _loc5_:int = 0;
         var _loc6_:Array = null;
         var _loc7_:int = 0;
         var _loc8_:PropertyChangeEvent = null;
         var _loc9_:Object = null;
         var _loc10_:* = false;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:int = 0;
         var _loc14_:int = 0;
         var _loc15_:CollectionEvent = null;
         var _loc2_:Array = param1;
         if(sort || filterFunction != null)
         {
            _loc3_ = [];
            for(_loc5_ = 0; _loc5_ < param1.length; _loc5_++)
            {
               _loc8_ = param1[_loc5_];
               if(_loc8_.target)
               {
                  _loc9_ = _loc8_.target;
                  _loc10_ = _loc8_.target != _loc8_.source;
               }
               else
               {
                  _loc9_ = _loc8_.source;
                  _loc10_ = false;
               }
               for(_loc11_ = 0; _loc11_ < _loc3_.length; )
               {
                  if(_loc3_[_loc11_].item == _loc9_)
                  {
                     param1 = _loc3_[_loc11_].events;
                     _loc12_ = param1.length;
                     for(_loc13_ = 0; _loc13_ < _loc12_; _loc13_++)
                     {
                        if(param1[_loc13_].property != _loc8_.property)
                        {
                           param1.push(_loc8_);
                           break;
                        }
                     }
                     break;
                  }
                  _loc11_++;
               }
               if(_loc11_ < _loc3_.length)
               {
                  _loc4_ = _loc3_[_loc11_];
               }
               else
               {
                  _loc4_ = {
                     "item":_loc9_,
                     "move":_loc10_,
                     "events":[_loc8_]
                  };
                  _loc3_.push(_loc4_);
               }
               _loc4_.move = _loc4_.move || filterFunction || !_loc8_.property || sort && sort.propertyAffectsSort(String(_loc8_.property));
            }
            _loc2_ = [];
            for(_loc5_ = 0; _loc5_ < _loc3_.length; _loc5_++)
            {
               _loc4_ = _loc3_[_loc5_];
               if(_loc4_.move)
               {
                  moveItemInView(_loc4_.item,_loc4_.item,_loc2_);
               }
               else
               {
                  _loc2_.push(_loc4_.item);
               }
            }
            _loc6_ = [];
            for(_loc7_ = 0; _loc7_ < _loc2_.length; _loc7_++)
            {
               for(_loc14_ = 0; _loc14_ < _loc3_.length; _loc14_++)
               {
                  if(_loc2_[_loc7_] == _loc3_[_loc14_].item)
                  {
                     _loc6_ = _loc6_.concat(_loc3_[_loc14_].events);
                  }
               }
            }
            _loc2_ = _loc6_;
         }
         if(_loc2_.length > 0)
         {
            _loc15_ = new CollectionEvent(CollectionEvent.COLLECTION_CHANGE);
            _loc15_.kind = CollectionEventKind.UPDATE;
            _loc15_.items = _loc2_;
            dispatchEvent(_loc15_);
         }
      }
      
      public function set sort(s:Sort) : void
      {
         _sort = s;
         dispatchEvent(new Event("sortChanged"));
      }
      
      override flash_proxy function nextValue(index:int) : *
      {
         return getItemAt(index - 1);
      }
      
      public function setItemAt(item:Object, index:int) : Object
      {
         var message:String = null;
         var oldItem:Object = null;
         if(index < 0 || !list || index >= length)
         {
            message = resourceManager.getString("collections","outOfBounds",[index]);
            throw new RangeError(message);
         }
         var listIndex:int = index;
         if(localIndex)
         {
            if(index > localIndex.length)
            {
               listIndex = list.length;
            }
            else
            {
               oldItem = localIndex[index];
               listIndex = list.getItemIndex(oldItem);
            }
         }
         return list.setItemAt(item,listIndex);
      }
      
      mx_internal function getBookmark(index:int) : ListCollectionViewBookmark
      {
         var value:Object = null;
         var message:String = null;
         if(index < 0 || index > length)
         {
            message = resourceManager.getString("collections","invalidIndex",[index]);
            throw new CollectionViewError(message);
         }
         try
         {
            value = getItemAt(index);
         }
         catch(e:Error)
         {
            value = null;
         }
         return new ListCollectionViewBookmark(value,this,revision,index);
      }
      
      private function addItemsToView(items:Array, sourceLocation:int, dispatch:Boolean = true) : int
      {
         var loc:int = 0;
         var i:int = 0;
         var item:Object = null;
         var message:String = null;
         var event:CollectionEvent = null;
         var addedItems:Array = !!localIndex?[]:items;
         var addLocation:int = sourceLocation;
         var firstOne:Boolean = true;
         if(localIndex)
         {
            loc = sourceLocation;
            for(i = 0; i < items.length; i++)
            {
               item = items[i];
               if(filterFunction == null || filterFunction(item))
               {
                  if(sort)
                  {
                     loc = findItem(item,Sort.ANY_INDEX_MODE,true);
                     if(firstOne)
                     {
                        addLocation = loc;
                        firstOne = false;
                     }
                  }
                  else
                  {
                     loc = getFilteredItemIndex(item);
                     if(firstOne)
                     {
                        addLocation = loc;
                        firstOne = false;
                     }
                  }
                  if(sort && sort.unique && sort.compareFunction(item,localIndex[loc]) == 0)
                  {
                     message = resourceManager.getString("collections","incorrectAddition");
                     throw new CollectionViewError(message);
                  }
                  localIndex.splice(loc++,0,item);
                  addedItems.push(item);
               }
               else
               {
                  addLocation = -1;
               }
            }
         }
         if(localIndex && addedItems.length > 1)
         {
            addLocation = -1;
         }
         if(dispatch && addedItems.length > 0)
         {
            event = new CollectionEvent(CollectionEvent.COLLECTION_CHANGE);
            event.kind = CollectionEventKind.ADD;
            event.location = addLocation;
            event.items = addedItems;
            dispatchEvent(event);
         }
         return addLocation;
      }
      
      public function addAll(addList:IList) : void
      {
         addAllAt(addList,length);
      }
      
      public function set list(value:IList) : void
      {
         var oldHasItems:* = false;
         var newHasItems:* = false;
         if(_list != value)
         {
            if(_list)
            {
               _list.removeEventListener(CollectionEvent.COLLECTION_CHANGE,listChangeHandler);
               oldHasItems = _list.length > 0;
            }
            _list = value;
            if(_list)
            {
               _list.addEventListener(CollectionEvent.COLLECTION_CHANGE,listChangeHandler,false,0,true);
               newHasItems = _list.length > 0;
            }
            if(oldHasItems || newHasItems)
            {
               reset();
            }
            dispatchEvent(new Event("listChanged"));
         }
      }
      
      public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, useWeakReference:Boolean = false) : void
      {
         eventDispatcher.addEventListener(type,listener,useCapture,priority,useWeakReference);
      }
      
      public function dispatchEvent(event:Event) : Boolean
      {
         return eventDispatcher.dispatchEvent(event);
      }
      
      public function getItemIndex(item:Object) : int
      {
         var i:int = 0;
         var startIndex:int = 0;
         var endIndex:int = 0;
         var len:int = 0;
         if(sort)
         {
            startIndex = sort.findItem(localIndex,item,Sort.FIRST_INDEX_MODE);
            if(startIndex == -1)
            {
               return -1;
            }
            endIndex = sort.findItem(localIndex,item,Sort.LAST_INDEX_MODE);
            for(i = startIndex; i <= endIndex; i++)
            {
               if(localIndex[i] == item)
               {
                  return i;
               }
            }
            return -1;
         }
         if(filterFunction != null)
         {
            len = localIndex.length;
            for(i = 0; i < len; i++)
            {
               if(localIndex[i] == item)
               {
                  return i;
               }
            }
            return -1;
         }
         return list.getItemIndex(item);
      }
      
      mx_internal function getLocalItemIndex(item:Object) : int
      {
         var i:int = 0;
         var len:int = localIndex.length;
         for(i = 0; i < len; i++)
         {
            if(localIndex[i] == item)
            {
               return i;
            }
         }
         return -1;
      }
      
      override flash_proxy function getProperty(name:*) : *
      {
         var n:Number = NaN;
         var message:String = null;
         if(name is QName)
         {
            var name:* = name.localName;
         }
         var index:int = -1;
         try
         {
            n = parseInt(String(name));
            if(!isNaN(n))
            {
               index = int(n);
            }
         }
         catch(e:Error)
         {
         }
         if(index == -1)
         {
            message = resourceManager.getString("collections","unknownProperty",[name]);
            throw new Error(message);
         }
         return getItemAt(index);
      }
      
      public function enableAutoUpdate() : void
      {
         if(autoUpdateCounter > 0)
         {
            autoUpdateCounter--;
            if(autoUpdateCounter == 0)
            {
               handlePendingUpdates();
            }
         }
      }
      
      mx_internal function reset() : void
      {
         var event:CollectionEvent = null;
         internalRefresh(false);
         if(dispatchResetEvent)
         {
            event = new CollectionEvent(CollectionEvent.COLLECTION_CHANGE);
            event.kind = CollectionEventKind.RESET;
            dispatchEvent(event);
         }
      }
      
      public function toArray() : Array
      {
         var ret:Array = null;
         if(localIndex)
         {
            ret = localIndex.concat();
         }
         else
         {
            ret = list.toArray();
         }
         return ret;
      }
      
      public function removeItemAt(index:int) : Object
      {
         var message:String = null;
         var oldItem:Object = null;
         if(index < 0 || index >= length)
         {
            message = resourceManager.getString("collections","outOfBounds",[index]);
            throw new RangeError(message);
         }
         var listIndex:int = index;
         if(localIndex)
         {
            oldItem = localIndex[index];
            listIndex = list.getItemIndex(oldItem);
         }
         return list.removeItemAt(listIndex);
      }
      
      override flash_proxy function callProperty(name:*, ... rest) : *
      {
         return null;
      }
      
      public function initialized(document:Object, id:String) : void
      {
         refresh();
      }
      
      override flash_proxy function setProperty(name:*, value:*) : void
      {
         var n:Number = NaN;
         var message:String = null;
         if(name is QName)
         {
            var name:* = name.localName;
         }
         var index:int = -1;
         try
         {
            n = parseInt(String(name));
            if(!isNaN(n))
            {
               index = int(n);
            }
         }
         catch(e:Error)
         {
         }
         if(index == -1)
         {
            message = resourceManager.getString("collections","unknownProperty",[name]);
            throw new Error(message);
         }
         setItemAt(value,index);
      }
      
      public function addItem(item:Object) : void
      {
         addItemAt(item,length);
      }
      
      private function internalRefresh(dispatch:Boolean) : Boolean
      {
         var tmp:Array = null;
         var len:int = 0;
         var i:int = 0;
         var item:Object = null;
         var refreshEvent:CollectionEvent = null;
         if(sort || filterFunction != null)
         {
            try
            {
               populateLocalIndex();
            }
            catch(pending:ItemPendingError)
            {
               pending.addResponder(new ItemResponder(function(data:Object, token:Object = null):void
               {
                  internalRefresh(dispatch);
               },function(info:Object, token:Object = null):void
               {
               }));
               return false;
            }
            if(filterFunction != null)
            {
               tmp = [];
               len = localIndex.length;
               for(i = 0; i < len; i++)
               {
                  item = localIndex[i];
                  if(filterFunction(item))
                  {
                     tmp.push(item);
                  }
               }
               localIndex = tmp;
            }
            if(sort)
            {
               sort.sort(localIndex);
               var dispatch:Boolean = true;
            }
         }
         else if(localIndex)
         {
            localIndex = null;
         }
         revision++;
         pendingUpdates = null;
         if(dispatch)
         {
            refreshEvent = new CollectionEvent(CollectionEvent.COLLECTION_CHANGE);
            refreshEvent.kind = CollectionEventKind.REFRESH;
            dispatchEvent(refreshEvent);
         }
         return true;
      }
      
      public function set filterFunction(f:Function) : void
      {
         _filterFunction = f;
         dispatchEvent(new Event("filterFunctionChanged"));
      }
      
      mx_internal function getBookmarkIndex(bookmark:CursorBookmark) : int
      {
         var bm:ListCollectionViewBookmark = null;
         var message:String = null;
         if(!(bookmark is ListCollectionViewBookmark) || ListCollectionViewBookmark(bookmark).view != this)
         {
            message = resourceManager.getString("collections","bookmarkNotFound");
            throw new CollectionViewError(message);
         }
         bm = ListCollectionViewBookmark(bookmark);
         if(bm.viewRevision != revision)
         {
            if(bm.index < 0 || bm.index >= length || getItemAt(bm.index) != bm.value)
            {
               try
               {
                  bm.index = getItemIndex(bm.value);
               }
               catch(e:SortError)
               {
                  bm.index = getLocalItemIndex(bm.value);
               }
            }
            bm.viewRevision = revision;
         }
         return bm.index;
      }
      
      public function refresh() : Boolean
      {
         return internalRefresh(true);
      }
      
      [Bindable("filterFunctionChanged")]
      public function get filterFunction() : Function
      {
         return _filterFunction;
      }
      
      public function createCursor() : IViewCursor
      {
         return new ListCollectionViewCursor(this);
      }
      
      public function hasEventListener(type:String) : Boolean
      {
         return eventDispatcher.hasEventListener(type);
      }
      
      [Bindable("collectionChange")]
      public function get length() : int
      {
         if(localIndex)
         {
            return localIndex.length;
         }
         if(list)
         {
            return list.length;
         }
         return 0;
      }
      
      override flash_proxy function nextNameIndex(index:int) : int
      {
         return index < length?int(index + 1):0;
      }
      
      public function disableAutoUpdate() : void
      {
         autoUpdateCounter++;
      }
      
      public function toString() : String
      {
         if(localIndex)
         {
            return ObjectUtil.toString(localIndex);
         }
         if(list && Object(list).toString)
         {
            return Object(list).toString();
         }
         return getQualifiedClassName(this);
      }
      
      private function listChangeHandler(event:CollectionEvent) : void
      {
         if(autoUpdateCounter > 0)
         {
            if(!pendingUpdates)
            {
               pendingUpdates = [];
            }
            pendingUpdates.push(event);
         }
         else
         {
            switch(event.kind)
            {
               case CollectionEventKind.ADD:
                  addItemsToView(event.items,event.location);
                  break;
               case CollectionEventKind.RESET:
                  reset();
                  break;
               case CollectionEventKind.REMOVE:
                  removeItemsFromView(event.items,event.location);
                  break;
               case CollectionEventKind.REPLACE:
                  replaceItemsInView(event.items,event.location);
                  break;
               case CollectionEventKind.UPDATE:
                  handlePropertyChangeEvents(event.items);
                  break;
               default:
                  dispatchEvent(event);
            }
         }
      }
   }
}

import mx.collections.CursorBookmark;
import mx.collections.ListCollectionView;
import mx.core.mx_internal;

use namespace mx_internal;

class ListCollectionViewBookmark extends CursorBookmark
{
    
   
   mx_internal var viewRevision:int;
   
   mx_internal var index:int;
   
   mx_internal var view:ListCollectionView;
   
   function ListCollectionViewBookmark(value:Object, view:ListCollectionView, viewRevision:int, index:int)
   {
      super(value);
      this.view = view;
      this.viewRevision = viewRevision;
      this.index = index;
   }
   
   override public function getViewIndex() : int
   {
      return view.getBookmarkIndex(this);
   }
}

import flash.events.EventDispatcher;
import mx.collections.CursorBookmark;
import mx.collections.ICollectionView;
import mx.collections.IViewCursor;
import mx.collections.ListCollectionView;
import mx.collections.Sort;
import mx.collections.errors.CollectionViewError;
import mx.collections.errors.CursorError;
import mx.collections.errors.ItemPendingError;
import mx.collections.errors.SortError;
import mx.core.mx_internal;
import mx.events.CollectionEvent;
import mx.events.CollectionEventKind;
import mx.events.FlexEvent;
import mx.resources.IResourceManager;
import mx.resources.ResourceManager;

use namespace mx_internal;

class ListCollectionViewCursor extends EventDispatcher implements IViewCursor
{
   
   private static const BEFORE_FIRST_INDEX:int = -1;
   
   private static const AFTER_LAST_INDEX:int = -2;
    
   
   private var _view:ListCollectionView;
   
   private var invalid:Boolean;
   
   private var resourceManager:IResourceManager;
   
   private var currentIndex:int;
   
   private var currentValue:Object;
   
   function ListCollectionViewCursor(view:ListCollectionView)
   {
      resourceManager = ResourceManager.getInstance();
      super();
      _view = view;
      _view.addEventListener(CollectionEvent.COLLECTION_CHANGE,collectionEventHandler,false,0,true);
      currentIndex = view.length > 0?0:int(AFTER_LAST_INDEX);
      if(currentIndex == 0)
      {
         try
         {
            setCurrent(view.getItemAt(0),false);
         }
         catch(e:ItemPendingError)
         {
            currentIndex = BEFORE_FIRST_INDEX;
            setCurrent(null,false);
         }
      }
   }
   
   public function findAny(values:Object) : Boolean
   {
      var index:int = 0;
      checkValid();
      var lcView:ListCollectionView = ListCollectionView(view);
      try
      {
         index = lcView.findItem(values,Sort.ANY_INDEX_MODE);
      }
      catch(e:SortError)
      {
         throw new CursorError(e.message);
      }
      if(index > -1)
      {
         currentIndex = index;
         setCurrent(lcView.getItemAt(currentIndex));
      }
      return index > -1;
   }
   
   public function remove() : Object
   {
      var oldIndex:int = 0;
      var message:String = null;
      if(beforeFirst || afterLast)
      {
         message = resourceManager.getString("collections","invalidRemove");
         throw new CursorError(message);
      }
      oldIndex = currentIndex;
      currentIndex++;
      if(currentIndex >= view.length)
      {
         currentIndex = AFTER_LAST_INDEX;
         setCurrent(null);
      }
      else
      {
         try
         {
            setCurrent(ListCollectionView(view).getItemAt(currentIndex));
         }
         catch(e:ItemPendingError)
         {
            setCurrent(null,false);
            ListCollectionView(view).removeItemAt(oldIndex);
            throw e;
         }
      }
      var removed:Object = ListCollectionView(view).removeItemAt(oldIndex);
      return removed;
   }
   
   private function setCurrent(value:Object, dispatch:Boolean = true) : void
   {
      currentValue = value;
      if(dispatch)
      {
         dispatchEvent(new FlexEvent(FlexEvent.CURSOR_UPDATE));
      }
   }
   
   public function seek(bookmark:CursorBookmark, offset:int = 0, prefetch:int = 0) : void
   {
      var message:String = null;
      checkValid();
      if(view.length == 0)
      {
         currentIndex = AFTER_LAST_INDEX;
         setCurrent(null,false);
         return;
      }
      var newIndex:int = currentIndex;
      if(bookmark == CursorBookmark.FIRST)
      {
         newIndex = 0;
      }
      else if(bookmark == CursorBookmark.LAST)
      {
         newIndex = view.length - 1;
      }
      else if(bookmark != CursorBookmark.CURRENT)
      {
         try
         {
            newIndex = ListCollectionView(view).getBookmarkIndex(bookmark);
            if(newIndex < 0)
            {
               setCurrent(null);
               message = resourceManager.getString("collections","bookmarkInvalid");
               throw new CursorError(message);
            }
         }
         catch(bmError:CollectionViewError)
         {
            message = resourceManager.getString("collections","bookmarkInvalid");
            throw new CursorError(message);
         }
      }
      newIndex = newIndex + offset;
      var newCurrent:Object = null;
      if(newIndex >= view.length)
      {
         currentIndex = AFTER_LAST_INDEX;
      }
      else if(newIndex < 0)
      {
         currentIndex = BEFORE_FIRST_INDEX;
      }
      else
      {
         newCurrent = ListCollectionView(view).getItemAt(newIndex,prefetch);
         currentIndex = newIndex;
      }
      setCurrent(newCurrent);
   }
   
   public function insert(item:Object) : void
   {
      var insertIndex:int = 0;
      var message:String = null;
      if(afterLast)
      {
         insertIndex = view.length;
      }
      else if(beforeFirst)
      {
         if(view.length > 0)
         {
            message = resourceManager.getString("collections","invalidInsert");
            throw new CursorError(message);
         }
         insertIndex = 0;
      }
      else
      {
         insertIndex = currentIndex;
      }
      ListCollectionView(view).addItemAt(item,insertIndex);
   }
   
   [Bindable("cursorUpdate")]
   public function get afterLast() : Boolean
   {
      checkValid();
      return currentIndex == AFTER_LAST_INDEX || view.length == 0;
   }
   
   private function checkValid() : void
   {
      var message:String = null;
      if(invalid)
      {
         message = resourceManager.getString("collections","invalidCursor");
         throw new CursorError(message);
      }
   }
   
   private function collectionEventHandler(event:CollectionEvent) : void
   {
      switch(event.kind)
      {
         case CollectionEventKind.ADD:
            if(event.location <= currentIndex)
            {
               currentIndex = currentIndex + event.items.length;
            }
            break;
         case CollectionEventKind.REMOVE:
            if(event.location < currentIndex)
            {
               currentIndex = currentIndex - event.items.length;
            }
            else if(event.location == currentIndex)
            {
               if(currentIndex < view.length)
               {
                  try
                  {
                     setCurrent(ListCollectionView(view).getItemAt(currentIndex));
                  }
                  catch(error:ItemPendingError)
                  {
                     setCurrent(null,false);
                  }
               }
               else
               {
                  currentIndex = AFTER_LAST_INDEX;
                  setCurrent(null);
               }
            }
            break;
         case CollectionEventKind.MOVE:
            if(event.oldLocation == currentIndex)
            {
               currentIndex = event.location;
            }
            else
            {
               if(event.oldLocation < currentIndex)
               {
                  currentIndex = currentIndex - event.items.length;
               }
               if(event.location <= currentIndex)
               {
                  currentIndex = currentIndex + event.items.length;
               }
            }
            break;
         case CollectionEventKind.REFRESH:
            if(!(beforeFirst || afterLast))
            {
               try
               {
                  currentIndex = ListCollectionView(view).getItemIndex(currentValue);
               }
               catch(e:SortError)
               {
                  if(ListCollectionView(view).sort)
                  {
                     currentIndex = ListCollectionView(view).getLocalItemIndex(currentValue);
                  }
               }
               if(currentIndex == -1)
               {
                  setCurrent(null);
               }
            }
            break;
         case CollectionEventKind.REPLACE:
            if(event.location == currentIndex)
            {
               try
               {
                  setCurrent(ListCollectionView(view).getItemAt(currentIndex));
               }
               catch(error:ItemPendingError)
               {
                  setCurrent(null,false);
               }
            }
            break;
         case CollectionEventKind.RESET:
            currentIndex = BEFORE_FIRST_INDEX;
            setCurrent(null);
      }
   }
   
   public function moveNext() : Boolean
   {
      if(afterLast)
      {
         return false;
      }
      var tempIndex:int = !!beforeFirst?0:int(currentIndex + 1);
      if(tempIndex >= view.length)
      {
         tempIndex = AFTER_LAST_INDEX;
         setCurrent(null);
      }
      else
      {
         setCurrent(ListCollectionView(view).getItemAt(tempIndex));
      }
      currentIndex = tempIndex;
      return !afterLast;
   }
   
   public function get view() : ICollectionView
   {
      checkValid();
      return _view;
   }
   
   public function movePrevious() : Boolean
   {
      if(beforeFirst)
      {
         return false;
      }
      var tempIndex:int = !!afterLast?int(view.length - 1):int(currentIndex - 1);
      if(tempIndex == -1)
      {
         tempIndex = BEFORE_FIRST_INDEX;
         setCurrent(null);
      }
      else
      {
         setCurrent(ListCollectionView(view).getItemAt(tempIndex));
      }
      currentIndex = tempIndex;
      return !beforeFirst;
   }
   
   public function findLast(values:Object) : Boolean
   {
      var index:int = 0;
      checkValid();
      var lcView:ListCollectionView = ListCollectionView(view);
      try
      {
         index = lcView.findItem(values,Sort.LAST_INDEX_MODE);
      }
      catch(sortError:SortError)
      {
         throw new CursorError(sortError.message);
      }
      if(index > -1)
      {
         currentIndex = index;
         setCurrent(lcView.getItemAt(currentIndex));
      }
      return index > -1;
   }
   
   [Bindable("cursorUpdate")]
   public function get beforeFirst() : Boolean
   {
      checkValid();
      return currentIndex == BEFORE_FIRST_INDEX || view.length == 0;
   }
   
   [Bindable("cursorUpdate")]
   public function get bookmark() : CursorBookmark
   {
      checkValid();
      if(view.length == 0 || beforeFirst)
      {
         return CursorBookmark.FIRST;
      }
      if(afterLast)
      {
         return CursorBookmark.LAST;
      }
      return ListCollectionView(view).getBookmark(currentIndex);
   }
   
   public function findFirst(values:Object) : Boolean
   {
      var index:int = 0;
      checkValid();
      var lcView:ListCollectionView = ListCollectionView(view);
      try
      {
         index = lcView.findItem(values,Sort.FIRST_INDEX_MODE);
      }
      catch(sortError:SortError)
      {
         throw new CursorError(sortError.message);
      }
      if(index > -1)
      {
         currentIndex = index;
         setCurrent(lcView.getItemAt(currentIndex));
      }
      return index > -1;
   }
   
   [Bindable("cursorUpdate")]
   public function get current() : Object
   {
      checkValid();
      return currentValue;
   }
}

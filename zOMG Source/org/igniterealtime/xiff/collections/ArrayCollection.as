package org.igniterealtime.xiff.collections
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.utils.Proxy;
   import flash.utils.flash_proxy;
   import org.igniterealtime.xiff.collections.events.CollectionEvent;
   import org.igniterealtime.xiff.collections.events.CollectionEventKind;
   
   public class ArrayCollection extends Proxy implements IEventDispatcher
   {
       
      
      protected var eventDispatcher:EventDispatcher;
      
      protected var _source:Array;
      
      protected const OUT_OF_BOUNDS_MESSAGE:String = "The supplied index is out of bounds.";
      
      public function ArrayCollection(source:Array = null)
      {
         _source = [];
         super();
         eventDispatcher = new EventDispatcher(this);
         if(source)
         {
            this.source = source;
         }
      }
      
      public function dispatchEvent(event:Event) : Boolean
      {
         return eventDispatcher.dispatchEvent(event);
      }
      
      protected function internalDispatchEvent(kind:String, item:* = null, location:int = -1) : void
      {
         var event:CollectionEvent = new CollectionEvent(CollectionEvent.COLLECTION_CHANGE);
         event.kind = kind;
         event.items.push(item);
         event.location = location;
         dispatchEvent(event);
      }
      
      override flash_proxy function nextValue(index:int) : *
      {
         return getItemAt(index - 1);
      }
      
      public function clearSource() : void
      {
         _source.splice(0,length);
      }
      
      public function getItemIndex(item:*) : int
      {
         var n:int = _source.length;
         for(var i:int = 0; i < n; i++)
         {
            if(_source[i] === item)
            {
               return i;
            }
         }
         return -1;
      }
      
      public function removeItemAt(index:int) : *
      {
         if(index < 0 || index >= length)
         {
            throw new RangeError(OUT_OF_BOUNDS_MESSAGE);
         }
         var removed:* = _source.splice(index,1)[0];
         internalDispatchEvent(CollectionEventKind.REMOVE,removed,index);
         return removed;
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
         catch(error:Error)
         {
         }
         if(index == -1)
         {
            message = "Unknown Property: " + name + ".";
            throw new Error(message);
         }
         return getItemAt(index);
      }
      
      public function hasEventListener(type:String) : Boolean
      {
         return eventDispatcher.hasEventListener(type);
      }
      
      public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, useWeakReference:Boolean = false) : void
      {
         eventDispatcher.addEventListener(type,listener,useCapture,priority,useWeakReference);
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
         catch(error:Error)
         {
         }
         if(index == -1)
         {
            return false;
         }
         return index >= 0 && index < length;
      }
      
      public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false) : void
      {
         eventDispatcher.removeEventListener(type,listener,useCapture);
      }
      
      override flash_proxy function callProperty(name:*, ... rest) : *
      {
         return null;
      }
      
      public function addItem(item:*) : void
      {
         addItemAt(item,length);
      }
      
      public function willTrigger(type:String) : Boolean
      {
         return eventDispatcher.willTrigger(type);
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
         catch(error:Error)
         {
         }
         if(index == -1)
         {
            message = "Unknown Property: " + name + ".";
            throw new Error(message);
         }
         setItemAt(value,index);
      }
      
      public function get source() : Array
      {
         return _source;
      }
      
      public function getItemAt(index:int) : *
      {
         if(index < 0 || index >= length)
         {
            throw new RangeError(OUT_OF_BOUNDS_MESSAGE);
         }
         return _source[index];
      }
      
      public function toArray() : Array
      {
         return _source.concat();
      }
      
      public function contains(item:*) : Boolean
      {
         return getItemIndex(item) != -1;
      }
      
      override flash_proxy function nextNameIndex(index:int) : int
      {
         return index < length?int(index + 1):0;
      }
      
      override flash_proxy function nextName(index:int) : String
      {
         return (index - 1).toString();
      }
      
      public function get length() : int
      {
         return !!_source?int(_source.length):0;
      }
      
      public function addItemAt(item:*, index:int) : void
      {
         if(index < 0 || index > length)
         {
            throw new RangeError(OUT_OF_BOUNDS_MESSAGE);
         }
         _source.splice(index,0,item);
         internalDispatchEvent(CollectionEventKind.ADD,item,index);
      }
      
      public function toString() : String
      {
         if(_source)
         {
            return _source.toString();
         }
         return "";
      }
      
      public function setItemAt(item:*, index:int) : *
      {
         if(index < 0 || index >= length)
         {
            throw new RangeError(OUT_OF_BOUNDS_MESSAGE);
         }
         var replaced:* = _source.splice(index,1,item)[0];
         internalDispatchEvent(CollectionEventKind.REPLACE,item,index);
         return replaced;
      }
      
      public function set source(value:Array) : void
      {
         _source = !!value?value:[];
         internalDispatchEvent(CollectionEventKind.RESET);
      }
      
      public function itemUpdated(item:*) : void
      {
         internalDispatchEvent(CollectionEventKind.UPDATE,item);
      }
      
      public function removeAll() : void
      {
         if(length > 0)
         {
            clearSource();
            internalDispatchEvent(CollectionEventKind.RESET);
         }
      }
      
      public function removeItem(item:*) : Boolean
      {
         var index:int = getItemIndex(item);
         var result:* = index >= 0;
         if(result)
         {
            removeItemAt(index);
         }
         return result;
      }
   }
}

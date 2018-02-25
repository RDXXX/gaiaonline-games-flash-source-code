package com.gaiaonline.utils.queue
{
   public class QueueHelper
   {
       
      
      private var _queue:Array;
      
      public function QueueHelper()
      {
         _queue = [];
         super();
      }
      
      public function queueSetter(reference:Object, property:String, value:Object) : void
      {
         _queue.push(new QueuedSetter(reference,property,value));
      }
      
      public function queueFunction(reference:Object, fxn:Function, args:Array) : void
      {
         _queue.push(new QueuedMethod(reference,fxn,args));
      }
      
      public function hasQueuedItems() : Boolean
      {
         return _queue.length > 0;
      }
      
      public function emptyQueue() : void
      {
         var queuedObject:IQueueCommand = null;
         for each(queuedObject in _queue)
         {
            queuedObject.execute();
         }
         _queue = null;
      }
   }
}

class QueuedMethod implements IQueueCommand
{
    
   
   private var _reference:Object = null;
   
   private var _function:Function = null;
   
   private var _args:Array = null;
   
   function QueuedMethod(reference:Object, fxn:Function, args:Array)
   {
      super();
      _reference = reference;
      _function = fxn;
      _args = args;
   }
   
   public function execute() : void
   {
      _function.apply(_reference,_args);
   }
}

interface IQueueCommand
{
    
   
   function execute() : void;
}

class QueuedSetter implements IQueueCommand
{
    
   
   private var _value:Object = null;
   
   private var _property:String = null;
   
   private var _reference:Object;
   
   function QueuedSetter(reference:Object, property:String, value:Object)
   {
      super();
      _reference = reference;
      _property = property;
      _value = value;
   }
   
   public function execute() : void
   {
      _reference[_property] = _value;
   }
}

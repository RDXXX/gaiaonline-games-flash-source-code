package mx.binding
{
   import flash.utils.Dictionary;
   import mx.collections.errors.ItemPendingError;
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public class Binding
   {
      
      mx_internal static const VERSION:String = "3.6.0.21751";
       
      
      mx_internal var destFunc:Function;
      
      mx_internal var srcFunc:Function;
      
      mx_internal var destString:String;
      
      mx_internal var document:Object;
      
      private var hasHadValue:Boolean;
      
      mx_internal var disabledRequests:Dictionary;
      
      mx_internal var isExecuting:Boolean;
      
      mx_internal var isHandlingEvent:Boolean;
      
      public var twoWayCounterpart:Binding;
      
      private var wrappedFunctionSuccessful:Boolean;
      
      mx_internal var _isEnabled:Boolean;
      
      public var uiComponentWatcher:int;
      
      private var lastValue:Object;
      
      public function Binding(document:Object, srcFunc:Function, destFunc:Function, destString:String)
      {
         super();
         this.document = document;
         this.srcFunc = srcFunc;
         this.destFunc = destFunc;
         this.destString = destString;
         _isEnabled = true;
         isExecuting = false;
         isHandlingEvent = false;
         hasHadValue = false;
         uiComponentWatcher = -1;
         BindingManager.addBinding(document,destString,this);
      }
      
      private function registerDisabledExecute(o:Object) : void
      {
         if(o != null)
         {
            disabledRequests = disabledRequests != null?disabledRequests:new Dictionary(true);
            disabledRequests[o] = true;
         }
      }
      
      protected function wrapFunctionCall(thisArg:Object, wrappedFunction:Function, object:Object = null, ... args) : Object
      {
         var result:Object = null;
         wrappedFunctionSuccessful = false;
         try
         {
            result = wrappedFunction.apply(thisArg,args);
            wrappedFunctionSuccessful = true;
            return result;
         }
         catch(itemPendingError:ItemPendingError)
         {
            itemPendingError.addResponder(new EvalBindingResponder(this,object));
            if(BindingManager.debugDestinationStrings[destString])
            {
               trace("Binding: destString = " + destString + ", error = " + itemPendingError);
            }
         }
         catch(rangeError:RangeError)
         {
            if(BindingManager.debugDestinationStrings[destString])
            {
               trace("Binding: destString = " + destString + ", error = " + rangeError);
            }
         }
         catch(error:Error)
         {
            if(error.errorID != 1006 && error.errorID != 1009 && error.errorID != 1010 && error.errorID != 1055 && error.errorID != 1069)
            {
               throw error;
            }
            if(BindingManager.debugDestinationStrings[destString])
            {
               trace("Binding: destString = " + destString + ", error = " + error);
            }
         }
         return null;
      }
      
      public function watcherFired(commitEvent:Boolean, cloneIndex:int) : void
      {
         if(isHandlingEvent)
         {
            return;
         }
         try
         {
            isHandlingEvent = true;
            execute(cloneIndex);
         }
         finally
         {
            isHandlingEvent = false;
         }
      }
      
      private function nodeSeqEqual(x:XMLList, y:XMLList) : Boolean
      {
         var i:uint = 0;
         var n:uint = x.length();
         if(n == y.length())
         {
            i = 0;
            while(i < n && x[i] === y[i])
            {
               i++;
            }
            return i == n;
         }
         return false;
      }
      
      mx_internal function set isEnabled(value:Boolean) : void
      {
         _isEnabled = value;
         if(value)
         {
            processDisabledRequests();
         }
      }
      
      private function processDisabledRequests() : void
      {
         var key:* = null;
         if(disabledRequests != null)
         {
            for(key in disabledRequests)
            {
               execute(key);
            }
            disabledRequests = null;
         }
      }
      
      public function execute(o:Object = null) : void
      {
         if(!isEnabled)
         {
            if(o != null)
            {
               registerDisabledExecute(o);
            }
            return;
         }
         if(isExecuting || twoWayCounterpart && twoWayCounterpart.isExecuting)
         {
            hasHadValue = true;
            return;
         }
         try
         {
            isExecuting = true;
            wrapFunctionCall(this,innerExecute,o);
         }
         finally
         {
            isExecuting = false;
         }
      }
      
      mx_internal function get isEnabled() : Boolean
      {
         return _isEnabled;
      }
      
      private function innerExecute() : void
      {
         var value:Object = wrapFunctionCall(document,srcFunc);
         if(BindingManager.debugDestinationStrings[destString])
         {
            trace("Binding: destString = " + destString + ", srcFunc result = " + value);
         }
         if(hasHadValue || wrappedFunctionSuccessful)
         {
            if(!(lastValue is XML && lastValue.hasComplexContent() && lastValue === value) && !(lastValue is XMLList && lastValue.hasComplexContent() && value is XMLList && nodeSeqEqual(lastValue as XMLList,value as XMLList)))
            {
               destFunc.call(document,value);
               lastValue = value;
               hasHadValue = true;
            }
         }
      }
   }
}

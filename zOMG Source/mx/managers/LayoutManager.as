package mx.managers
{
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import mx.core.ApplicationGlobals;
   import mx.core.UIComponent;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.managers.layoutClasses.PriorityQueue;
   
   use namespace mx_internal;
   
   public class LayoutManager extends EventDispatcher implements ILayoutManager
   {
      
      mx_internal static const VERSION:String = "3.6.0.21751";
      
      private static var instance:LayoutManager;
       
      
      private var invalidateClientPropertiesFlag:Boolean = false;
      
      private var invalidateDisplayListQueue:PriorityQueue;
      
      private var updateCompleteQueue:PriorityQueue;
      
      private var invalidateDisplayListFlag:Boolean = false;
      
      private var invalidateClientSizeFlag:Boolean = false;
      
      private var invalidateSizeQueue:PriorityQueue;
      
      private var originalFrameRate:Number;
      
      private var invalidatePropertiesFlag:Boolean = false;
      
      private var invalidatePropertiesQueue:PriorityQueue;
      
      private var invalidateSizeFlag:Boolean = false;
      
      private var callLaterPending:Boolean = false;
      
      private var _usePhasedInstantiation:Boolean = false;
      
      private var callLaterObject:UIComponent;
      
      private var targetLevel:int = 2.147483647E9;
      
      public function LayoutManager()
      {
         updateCompleteQueue = new PriorityQueue();
         invalidatePropertiesQueue = new PriorityQueue();
         invalidateSizeQueue = new PriorityQueue();
         invalidateDisplayListQueue = new PriorityQueue();
         super();
      }
      
      public static function getInstance() : LayoutManager
      {
         if(!instance)
         {
            instance = new LayoutManager();
         }
         return instance;
      }
      
      public function set usePhasedInstantiation(value:Boolean) : void
      {
         var sm:ISystemManager = null;
         var stage:Stage = null;
         if(_usePhasedInstantiation != value)
         {
            _usePhasedInstantiation = value;
            try
            {
               sm = SystemManagerGlobals.topLevelSystemManagers[0];
               stage = SystemManagerGlobals.topLevelSystemManagers[0].stage;
               if(stage)
               {
                  if(value)
                  {
                     originalFrameRate = stage.frameRate;
                     stage.frameRate = 1000;
                  }
                  else
                  {
                     stage.frameRate = originalFrameRate;
                  }
               }
            }
            catch(e:SecurityError)
            {
            }
         }
      }
      
      private function waitAFrame() : void
      {
         callLaterObject.callLater(doPhasedInstantiation);
      }
      
      public function validateClient(target:ILayoutManagerClient, skipDisplayList:Boolean = false) : void
      {
         var obj:ILayoutManagerClient = null;
         var i:int = 0;
         var done:Boolean = false;
         var oldTargetLevel:int = targetLevel;
         if(targetLevel == int.MAX_VALUE)
         {
            targetLevel = target.nestLevel;
         }
         while(!done)
         {
            done = true;
            obj = ILayoutManagerClient(invalidatePropertiesQueue.removeSmallestChild(target));
            while(obj)
            {
               obj.validateProperties();
               if(!obj.updateCompletePendingFlag)
               {
                  updateCompleteQueue.addObject(obj,obj.nestLevel);
                  obj.updateCompletePendingFlag = true;
               }
               obj = ILayoutManagerClient(invalidatePropertiesQueue.removeSmallestChild(target));
            }
            if(invalidatePropertiesQueue.isEmpty())
            {
               invalidatePropertiesFlag = false;
               invalidateClientPropertiesFlag = false;
            }
            obj = ILayoutManagerClient(invalidateSizeQueue.removeLargestChild(target));
            while(obj)
            {
               obj.validateSize();
               if(!obj.updateCompletePendingFlag)
               {
                  updateCompleteQueue.addObject(obj,obj.nestLevel);
                  obj.updateCompletePendingFlag = true;
               }
               if(invalidateClientPropertiesFlag)
               {
                  obj = ILayoutManagerClient(invalidatePropertiesQueue.removeSmallestChild(target));
                  if(obj)
                  {
                     invalidatePropertiesQueue.addObject(obj,obj.nestLevel);
                     done = false;
                     break;
                  }
               }
               obj = ILayoutManagerClient(invalidateSizeQueue.removeLargestChild(target));
            }
            if(invalidateSizeQueue.isEmpty())
            {
               invalidateSizeFlag = false;
               invalidateClientSizeFlag = false;
            }
            if(!skipDisplayList)
            {
               obj = ILayoutManagerClient(invalidateDisplayListQueue.removeSmallestChild(target));
               while(obj)
               {
                  obj.validateDisplayList();
                  if(!obj.updateCompletePendingFlag)
                  {
                     updateCompleteQueue.addObject(obj,obj.nestLevel);
                     obj.updateCompletePendingFlag = true;
                  }
                  if(invalidateClientPropertiesFlag)
                  {
                     obj = ILayoutManagerClient(invalidatePropertiesQueue.removeSmallestChild(target));
                     if(obj)
                     {
                        invalidatePropertiesQueue.addObject(obj,obj.nestLevel);
                        done = false;
                        break;
                     }
                  }
                  if(invalidateClientSizeFlag)
                  {
                     obj = ILayoutManagerClient(invalidateSizeQueue.removeLargestChild(target));
                     if(obj)
                     {
                        invalidateSizeQueue.addObject(obj,obj.nestLevel);
                        done = false;
                        break;
                     }
                  }
                  obj = ILayoutManagerClient(invalidateDisplayListQueue.removeSmallestChild(target));
               }
               if(invalidateDisplayListQueue.isEmpty())
               {
                  invalidateDisplayListFlag = false;
               }
            }
         }
         if(oldTargetLevel == int.MAX_VALUE)
         {
            targetLevel = int.MAX_VALUE;
            if(!skipDisplayList)
            {
               obj = ILayoutManagerClient(updateCompleteQueue.removeLargestChild(target));
               while(obj)
               {
                  if(!obj.initialized)
                  {
                     obj.initialized = true;
                  }
                  obj.dispatchEvent(new FlexEvent(FlexEvent.UPDATE_COMPLETE));
                  obj.updateCompletePendingFlag = false;
                  obj = ILayoutManagerClient(updateCompleteQueue.removeLargestChild(target));
               }
            }
         }
      }
      
      private function validateProperties() : void
      {
         var obj:ILayoutManagerClient = ILayoutManagerClient(invalidatePropertiesQueue.removeSmallest());
         while(obj)
         {
            obj.validateProperties();
            if(!obj.updateCompletePendingFlag)
            {
               updateCompleteQueue.addObject(obj,obj.nestLevel);
               obj.updateCompletePendingFlag = true;
            }
            obj = ILayoutManagerClient(invalidatePropertiesQueue.removeSmallest());
         }
         if(invalidatePropertiesQueue.isEmpty())
         {
            invalidatePropertiesFlag = false;
         }
      }
      
      public function invalidateProperties(obj:ILayoutManagerClient) : void
      {
         if(!invalidatePropertiesFlag && ApplicationGlobals.application.systemManager)
         {
            invalidatePropertiesFlag = true;
            if(!callLaterPending)
            {
               if(!callLaterObject)
               {
                  callLaterObject = new UIComponent();
                  callLaterObject.systemManager = ApplicationGlobals.application.systemManager;
                  callLaterObject.callLater(waitAFrame);
               }
               else
               {
                  callLaterObject.callLater(doPhasedInstantiation);
               }
               callLaterPending = true;
            }
         }
         if(targetLevel <= obj.nestLevel)
         {
            invalidateClientPropertiesFlag = true;
         }
         invalidatePropertiesQueue.addObject(obj,obj.nestLevel);
      }
      
      public function invalidateDisplayList(obj:ILayoutManagerClient) : void
      {
         if(!invalidateDisplayListFlag && ApplicationGlobals.application.systemManager)
         {
            invalidateDisplayListFlag = true;
            if(!callLaterPending)
            {
               if(!callLaterObject)
               {
                  callLaterObject = new UIComponent();
                  callLaterObject.systemManager = ApplicationGlobals.application.systemManager;
                  callLaterObject.callLater(waitAFrame);
               }
               else
               {
                  callLaterObject.callLater(doPhasedInstantiation);
               }
               callLaterPending = true;
            }
         }
         else if(!invalidateDisplayListFlag && !ApplicationGlobals.application.systemManager)
         {
         }
         invalidateDisplayListQueue.addObject(obj,obj.nestLevel);
      }
      
      private function validateDisplayList() : void
      {
         var obj:ILayoutManagerClient = ILayoutManagerClient(invalidateDisplayListQueue.removeSmallest());
         while(obj)
         {
            obj.validateDisplayList();
            if(!obj.updateCompletePendingFlag)
            {
               updateCompleteQueue.addObject(obj,obj.nestLevel);
               obj.updateCompletePendingFlag = true;
            }
            obj = ILayoutManagerClient(invalidateDisplayListQueue.removeSmallest());
         }
         if(invalidateDisplayListQueue.isEmpty())
         {
            invalidateDisplayListFlag = false;
         }
      }
      
      public function validateNow() : void
      {
         var infiniteLoopGuard:int = 0;
         if(!usePhasedInstantiation)
         {
            infiniteLoopGuard = 0;
            while(callLaterPending && infiniteLoopGuard++ < 100)
            {
               doPhasedInstantiation();
            }
         }
      }
      
      private function validateSize() : void
      {
         var obj:ILayoutManagerClient = ILayoutManagerClient(invalidateSizeQueue.removeLargest());
         while(obj)
         {
            obj.validateSize();
            if(!obj.updateCompletePendingFlag)
            {
               updateCompleteQueue.addObject(obj,obj.nestLevel);
               obj.updateCompletePendingFlag = true;
            }
            obj = ILayoutManagerClient(invalidateSizeQueue.removeLargest());
         }
         if(invalidateSizeQueue.isEmpty())
         {
            invalidateSizeFlag = false;
         }
      }
      
      private function doPhasedInstantiation() : void
      {
         var obj:ILayoutManagerClient = null;
         if(usePhasedInstantiation)
         {
            if(invalidatePropertiesFlag)
            {
               validateProperties();
               ApplicationGlobals.application.dispatchEvent(new Event("validatePropertiesComplete"));
            }
            else if(invalidateSizeFlag)
            {
               validateSize();
               ApplicationGlobals.application.dispatchEvent(new Event("validateSizeComplete"));
            }
            else if(invalidateDisplayListFlag)
            {
               validateDisplayList();
               ApplicationGlobals.application.dispatchEvent(new Event("validateDisplayListComplete"));
            }
         }
         else
         {
            if(invalidatePropertiesFlag)
            {
               validateProperties();
            }
            if(invalidateSizeFlag)
            {
               validateSize();
            }
            if(invalidateDisplayListFlag)
            {
               validateDisplayList();
            }
         }
         if(invalidatePropertiesFlag || invalidateSizeFlag || invalidateDisplayListFlag)
         {
            callLaterObject.callLater(doPhasedInstantiation);
         }
         else
         {
            usePhasedInstantiation = false;
            callLaterPending = false;
            obj = ILayoutManagerClient(updateCompleteQueue.removeLargest());
            while(obj)
            {
               if(!obj.initialized && obj.processedDescriptors)
               {
                  obj.initialized = true;
               }
               obj.dispatchEvent(new FlexEvent(FlexEvent.UPDATE_COMPLETE));
               obj.updateCompletePendingFlag = false;
               obj = ILayoutManagerClient(updateCompleteQueue.removeLargest());
            }
            dispatchEvent(new FlexEvent(FlexEvent.UPDATE_COMPLETE));
         }
      }
      
      public function isInvalid() : Boolean
      {
         return invalidatePropertiesFlag || invalidateSizeFlag || invalidateDisplayListFlag;
      }
      
      public function get usePhasedInstantiation() : Boolean
      {
         return _usePhasedInstantiation;
      }
      
      public function invalidateSize(obj:ILayoutManagerClient) : void
      {
         if(!invalidateSizeFlag && ApplicationGlobals.application.systemManager)
         {
            invalidateSizeFlag = true;
            if(!callLaterPending)
            {
               if(!callLaterObject)
               {
                  callLaterObject = new UIComponent();
                  callLaterObject.systemManager = ApplicationGlobals.application.systemManager;
                  callLaterObject.callLater(waitAFrame);
               }
               else
               {
                  callLaterObject.callLater(doPhasedInstantiation);
               }
               callLaterPending = true;
            }
         }
         if(targetLevel <= obj.nestLevel)
         {
            invalidateClientSizeFlag = true;
         }
         invalidateSizeQueue.addObject(obj,obj.nestLevel);
      }
   }
}

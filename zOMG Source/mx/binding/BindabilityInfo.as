package mx.binding
{
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   
   use namespace mx_internal;
   
   public class BindabilityInfo
   {
      
      public static const METHOD:String = "method";
      
      public static const ACCESSOR:String = "accessor";
      
      public static const CHANGE_EVENT:String = "ChangeEvent";
      
      public static const NON_COMMITTING_CHANGE_EVENT:String = "NonCommittingChangeEvent";
      
      public static const BINDABLE:String = "Bindable";
      
      mx_internal static const VERSION:String = "3.6.0.21751";
      
      public static const MANAGED:String = "Managed";
       
      
      private var classChangeEvents:Object;
      
      private var typeDescription:XML;
      
      private var childChangeEvents:Object;
      
      public function BindabilityInfo(typeDescription:XML)
      {
         childChangeEvents = {};
         super();
         this.typeDescription = typeDescription;
      }
      
      private function addChangeEvents(metadata:XMLList, eventListObj:Object, isCommit:Boolean) : void
      {
         var md:XML = null;
         var arg:XMLList = null;
         var eventName:String = null;
         for each(md in metadata)
         {
            arg = md.arg;
            if(arg.length() > 0)
            {
               eventName = arg[0].@value;
               eventListObj[eventName] = isCommit;
            }
            else
            {
               trace("warning: unconverted Bindable metadata in class \'" + typeDescription.@name + "\'");
            }
         }
      }
      
      private function getClassChangeEvents() : Object
      {
         if(!classChangeEvents)
         {
            classChangeEvents = {};
            addBindabilityEvents(typeDescription.metadata,classChangeEvents);
            if(typeDescription.metadata.(@name == MANAGED).length() > 0)
            {
               classChangeEvents[PropertyChangeEvent.PROPERTY_CHANGE] = true;
            }
         }
         return classChangeEvents;
      }
      
      private function addBindabilityEvents(metadata:XMLList, eventListObj:Object) : void
      {
         addChangeEvents(metadata.(@name == BINDABLE),eventListObj,true);
         addChangeEvents(metadata.(@name == CHANGE_EVENT),eventListObj,true);
         addChangeEvents(metadata.(@name == NON_COMMITTING_CHANGE_EVENT),eventListObj,false);
      }
      
      private function copyProps(from:Object, to:Object) : Object
      {
         var propName:* = null;
         for(propName in from)
         {
            to[propName] = from[propName];
         }
         return to;
      }
      
      public function getChangeEvents(childName:String) : Object
      {
         var childDesc:XMLList = null;
         var numChildren:int = 0;
         var changeEvents:Object = childChangeEvents[childName];
         if(!changeEvents)
         {
            changeEvents = copyProps(getClassChangeEvents(),{});
            childDesc = typeDescription.accessor.(@name == childName) + typeDescription.method.(@name == childName);
            numChildren = childDesc.length();
            if(numChildren == 0)
            {
               if(!typeDescription.@dynamic)
               {
                  trace("warning: no describeType entry for \'" + childName + "\' on non-dynamic type \'" + typeDescription.@name + "\'");
               }
            }
            else
            {
               if(numChildren > 1)
               {
                  trace("warning: multiple describeType entries for \'" + childName + "\' on type \'" + typeDescription.@name + "\':\n" + childDesc);
               }
               addBindabilityEvents(childDesc.metadata,changeEvents);
            }
            childChangeEvents[childName] = changeEvents;
         }
         return changeEvents;
      }
   }
}

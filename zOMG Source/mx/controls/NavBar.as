package mx.controls
{
   import flash.display.DisplayObject;
   import flash.display.InteractiveObject;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import mx.collections.ArrayCollection;
   import mx.collections.IList;
   import mx.containers.Box;
   import mx.containers.BoxDirection;
   import mx.containers.ViewStack;
   import mx.core.ClassFactory;
   import mx.core.Container;
   import mx.core.FlexVersion;
   import mx.core.IFactory;
   import mx.core.IFlexDisplayObject;
   import mx.core.ScrollPolicy;
   import mx.core.UIComponent;
   import mx.core.mx_internal;
   import mx.events.ChildExistenceChangedEvent;
   import mx.events.CollectionEvent;
   import mx.events.FlexEvent;
   import mx.events.IndexChangedEvent;
   import mx.events.ItemClickEvent;
   
   use namespace mx_internal;
   
   public class NavBar extends Box
   {
      
      mx_internal static const VERSION:String = "3.6.0.21751";
       
      
      private var _labelField:String = "label";
      
      private var _iconField:String = "icon";
      
      private var _dataProvider:IList;
      
      private var measurementHasBeenCalled:Boolean = false;
      
      private var _toolTipField:String = "toolTip";
      
      mx_internal var navItemFactory:IFactory;
      
      private var pendingTargetStack:Object;
      
      private var lastToolTip:String = null;
      
      private var _labelFunction:Function;
      
      mx_internal var targetStack:ViewStack;
      
      private var _selectedIndex:int = -1;
      
      private var dataProviderChanged:Boolean = false;
      
      public function NavBar()
      {
         navItemFactory = new ClassFactory(Button);
         super();
         direction = BoxDirection.HORIZONTAL;
         showInAutomationHierarchy = true;
      }
      
      [Bindable("iconFieldChanged")]
      public function get iconField() : String
      {
         return _iconField;
      }
      
      override public function set enabled(value:Boolean) : void
      {
         var n:int = 0;
         var i:int = 0;
         if(value != enabled)
         {
            super.enabled = value;
            n = numChildren;
            for(i = 0; i < n; i++)
            {
               if(targetStack)
               {
                  Button(getChildAt(i)).enabled = value && Container(targetStack.getChildAt(i)).enabled;
               }
               else
               {
                  Button(getChildAt(i)).enabled = value;
               }
            }
         }
      }
      
      protected function updateNavItemIcon(index:int, icon:Class) : void
      {
         var item:Button = Button(getChildAt(index));
         item.setStyle("icon",icon);
      }
      
      private function childIndexChangeHandler(event:IndexChangedEvent) : void
      {
         if(event.target == this)
         {
            return;
         }
         setChildIndex(getChildAt(event.oldIndex),event.newIndex);
         resetNavItems();
      }
      
      protected function hiliteSelectedNavItem(index:int) : void
      {
      }
      
      private function checkPendingTargetStack() : void
      {
         if(pendingTargetStack)
         {
            _setTargetViewStack(pendingTargetStack);
            pendingTargetStack = null;
         }
      }
      
      private function setTargetViewStack(newStack:Object) : void
      {
         if(!measurementHasBeenCalled && newStack)
         {
            pendingTargetStack = newStack;
            invalidateProperties();
         }
         else
         {
            _setTargetViewStack(newStack);
         }
      }
      
      override public function get baselinePosition() : Number
      {
         if(FlexVersion.compatibilityVersion < FlexVersion.VERSION_3_0)
         {
            return super.baselinePosition;
         }
         if(!validateBaselinePosition())
         {
            return NaN;
         }
         if(numChildren == 0)
         {
            return super.baselinePosition;
         }
         var child:Button = Button(getChildAt(0));
         validateNow();
         return child.y + child.baselinePosition;
      }
      
      private function enabledChangedHandler(event:Event) : void
      {
         var itemIndex:int = targetStack.getChildIndex(DisplayObject(event.target));
         Button(getChildAt(itemIndex)).enabled = enabled && event.target.enabled;
      }
      
      private function labelChangedHandler(event:Event) : void
      {
         var itemIndex:int = targetStack.getChildIndex(DisplayObject(event.target));
         updateNavItemLabel(itemIndex,Container(event.target).label);
      }
      
      override protected function createChildren() : void
      {
         super.createChildren();
         if(dataProviderChanged)
         {
            createNavChildren();
            dataProviderChanged = false;
         }
      }
      
      override public function notifyStyleChangeInChildren(styleProp:String, recursive:Boolean) : void
      {
         super.notifyStyleChangeInChildren(styleProp,true);
      }
      
      protected function clickHandler(event:MouseEvent) : void
      {
         var index:int = getChildIndex(DisplayObject(event.currentTarget));
         if(targetStack)
         {
            targetStack.selectedIndex = index;
         }
         _selectedIndex = index;
         var newEvent:ItemClickEvent = new ItemClickEvent(ItemClickEvent.ITEM_CLICK);
         newEvent.label = Button(event.currentTarget).label;
         newEvent.index = index;
         newEvent.relatedObject = InteractiveObject(event.currentTarget);
         newEvent.item = !!_dataProvider?_dataProvider.getItemAt(index):null;
         dispatchEvent(newEvent);
         event.stopImmediatePropagation();
      }
      
      override public function get horizontalScrollPolicy() : String
      {
         return ScrollPolicy.OFF;
      }
      
      public function set iconField(value:String) : void
      {
         _iconField = value;
         if(_dataProvider)
         {
            dataProvider = _dataProvider;
         }
         dispatchEvent(new Event("iconFieldChanged"));
      }
      
      private function childAddHandler(event:ChildExistenceChangedEvent) : void
      {
         if(event.target == this)
         {
            return;
         }
         if(event.relatedObject.parent != targetStack)
         {
            return;
         }
         var newChild:Container = Container(event.relatedObject);
         var item:Button = Button(createNavItem(itemToLabel(newChild),newChild.icon));
         var index:int = newChild.parent.getChildIndex(DisplayObject(newChild));
         setChildIndex(item,index);
         if(newChild.toolTip)
         {
            item.toolTip = newChild.toolTip;
            newChild.toolTip = null;
         }
         newChild.addEventListener("labelChanged",labelChangedHandler);
         newChild.addEventListener("iconChanged",iconChangedHandler);
         newChild.addEventListener("enabledChanged",enabledChangedHandler);
         newChild.addEventListener("toolTipChanged",toolTipChangedHandler);
         item.enabled = enabled && newChild.enabled;
         callLater(resetNavItems);
      }
      
      public function itemToLabel(data:Object) : String
      {
         if(data == null)
         {
            return "";
         }
         if(labelFunction != null)
         {
            return labelFunction(data);
         }
         if(data is XML)
         {
            try
            {
               if(data[labelField].length() != 0)
               {
                  var data:Object = data[labelField];
               }
            }
            catch(e:Error)
            {
            }
         }
         else if(data is Object)
         {
            try
            {
               if(data[labelField] != null)
               {
                  data = data[labelField];
               }
            }
            catch(e:Error)
            {
            }
         }
         if(data is String)
         {
            return String(data);
         }
         if(data is Number)
         {
            return data.toString();
         }
         return "";
      }
      
      private function createNavChildren() : void
      {
         var item:Object = null;
         var navItem:Button = null;
         var label:String = null;
         var iconValue:Object = null;
         var icon:Class = null;
         if(!_dataProvider)
         {
            return;
         }
         var n:int = _dataProvider.length;
         for(var i:int = 0; i < n; i++)
         {
            item = _dataProvider.getItemAt(i);
            if(item is String && labelFunction == null)
            {
               navItem = Button(createNavItem(String(item)));
            }
            else
            {
               label = itemToLabel(item);
               if(iconField)
               {
                  iconValue = null;
                  try
                  {
                     iconValue = item[iconField];
                  }
                  catch(e:Error)
                  {
                  }
                  icon = iconValue is String?Class(systemManager.getDefinitionByName(String(iconValue))):Class(iconValue);
                  navItem = Button(createNavItem(label,icon));
               }
               else
               {
                  navItem = Button(createNavItem(label,null));
               }
               if(toolTipField)
               {
                  try
                  {
                     navItem.toolTip = item[toolTipField] === undefined?null:item[toolTipField];
                  }
                  catch(e:Error)
                  {
                  }
               }
            }
            navItem.enabled = enabled;
         }
         resetNavItems();
      }
      
      public function set toolTipField(value:String) : void
      {
         _toolTipField = value;
         if(_dataProvider)
         {
            dataProvider = _dataProvider;
         }
         dispatchEvent(new Event("toolTipFieldChanged"));
      }
      
      private function _setTargetViewStack(newStack:Object) : void
      {
         var newTargetStack:ViewStack = null;
         var numViews:int = 0;
         var child:Container = null;
         var i:int = 0;
         var item:Button = null;
         if(newStack is ViewStack)
         {
            newTargetStack = ViewStack(newStack);
         }
         else if(newStack)
         {
            newTargetStack = parentDocument[newStack];
         }
         else
         {
            newTargetStack = null;
         }
         if(targetStack)
         {
            targetStack.removeEventListener(ChildExistenceChangedEvent.CHILD_ADD,childAddHandler);
            targetStack.removeEventListener(ChildExistenceChangedEvent.CHILD_REMOVE,childRemoveHandler);
            targetStack.removeEventListener(Event.CHANGE,changeHandler);
            targetStack.removeEventListener(IndexChangedEvent.CHILD_INDEX_CHANGE,childIndexChangeHandler);
            numViews = targetStack.numChildren;
            for(i = 0; i < numViews; i++)
            {
               child = Container(targetStack.getChildAt(i));
               child.removeEventListener("labelChanged",labelChangedHandler);
               child.removeEventListener("iconChanged",iconChangedHandler);
               child.removeEventListener("enabledChanged",enabledChangedHandler);
               child.removeEventListener("toolTipChanged",toolTipChangedHandler);
            }
         }
         removeAllChildren();
         _selectedIndex = -1;
         targetStack = newTargetStack;
         if(!targetStack)
         {
            return;
         }
         targetStack.addEventListener(ChildExistenceChangedEvent.CHILD_ADD,childAddHandler);
         targetStack.addEventListener(ChildExistenceChangedEvent.CHILD_REMOVE,childRemoveHandler);
         targetStack.addEventListener(Event.CHANGE,changeHandler);
         targetStack.addEventListener(IndexChangedEvent.CHILD_INDEX_CHANGE,childIndexChangeHandler);
         numViews = targetStack.numChildren;
         for(i = 0; i < numViews; i++)
         {
            child = Container(targetStack.getChildAt(i));
            item = Button(createNavItem(itemToLabel(child),child.icon));
            if(child.toolTip)
            {
               item.toolTip = child.toolTip;
               child.toolTip = null;
            }
            child.addEventListener("labelChanged",labelChangedHandler);
            child.addEventListener("iconChanged",iconChangedHandler);
            child.addEventListener("enabledChanged",enabledChangedHandler);
            child.addEventListener("toolTipChanged",toolTipChangedHandler);
            item.enabled = enabled && child.enabled;
         }
         var index:int = targetStack.selectedIndex;
         if(index == -1 && targetStack.numChildren > 0)
         {
            index = 0;
         }
         if(index != -1)
         {
            hiliteSelectedNavItem(index);
         }
         resetNavItems();
         invalidateDisplayList();
      }
      
      private function toolTipChangedHandler(event:Event) : void
      {
         var itemIndex:int = targetStack.getChildIndex(DisplayObject(event.target));
         var item:UIComponent = UIComponent(getChildAt(itemIndex));
         if(UIComponent(event.target).toolTip)
         {
            item.toolTip = UIComponent(event.target).toolTip;
            lastToolTip = UIComponent(event.target).toolTip;
            UIComponent(event.target).toolTip = null;
         }
         else if(!lastToolTip)
         {
            item.toolTip = UIComponent(event.target).toolTip;
            lastToolTip = "placeholder";
            UIComponent(event.target).toolTip = null;
         }
         else
         {
            lastToolTip = null;
         }
      }
      
      protected function createNavItem(label:String, icon:Class = null) : IFlexDisplayObject
      {
         return null;
      }
      
      [Bindable("collectionChange")]
      public function get dataProvider() : Object
      {
         return !!targetStack?targetStack:_dataProvider;
      }
      
      protected function updateNavItemLabel(index:int, label:String) : void
      {
         var item:Button = Button(getChildAt(index));
         item.label = label;
      }
      
      override public function set horizontalScrollPolicy(value:String) : void
      {
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(!measurementHasBeenCalled)
         {
            checkPendingTargetStack();
            measurementHasBeenCalled = true;
         }
         if(dataProviderChanged)
         {
            dataProviderChanged = false;
            createNavChildren();
         }
         if(blocker)
         {
            blocker.visible = false;
         }
      }
      
      public function set labelField(value:String) : void
      {
         _labelField = value;
         if(_dataProvider)
         {
            dataProvider = _dataProvider;
         }
         dispatchEvent(new Event("labelFieldChanged"));
      }
      
      private function iconChangedHandler(event:Event) : void
      {
         var itemIndex:int = targetStack.getChildIndex(DisplayObject(event.target));
         updateNavItemIcon(itemIndex,Container(event.target).icon);
      }
      
      protected function resetNavItems() : void
      {
      }
      
      [Bindable("toolTipFieldChanged")]
      public function get toolTipField() : String
      {
         return _toolTipField;
      }
      
      public function set labelFunction(value:Function) : void
      {
         _labelFunction = value;
         if(_dataProvider)
         {
            dataProvider = _dataProvider;
         }
         dispatchEvent(new Event("labelFunctionChanged"));
      }
      
      [Bindable("labelFieldChanged")]
      public function get labelField() : String
      {
         return _labelField;
      }
      
      override public function set verticalScrollPolicy(value:String) : void
      {
      }
      
      private function childRemoveHandler(event:ChildExistenceChangedEvent) : void
      {
         if(event.target == this)
         {
            return;
         }
         event.relatedObject.removeEventListener("labelChanged",labelChangedHandler);
         event.relatedObject.removeEventListener("iconChanged",iconChangedHandler);
         event.relatedObject.removeEventListener("enabledChanged",enabledChangedHandler);
         event.relatedObject.removeEventListener("toolTipChanged",toolTipChangedHandler);
         var viewStack:ViewStack = ViewStack(event.target);
         removeChildAt(viewStack.getChildIndex(event.relatedObject));
         callLater(resetNavItems);
      }
      
      [Bindable("labelFunctionChanged")]
      public function get labelFunction() : Function
      {
         return _labelFunction;
      }
      
      override public function get verticalScrollPolicy() : String
      {
         return ScrollPolicy.OFF;
      }
      
      public function set dataProvider(value:Object) : void
      {
         var message:String = null;
         var name:String = null;
         if(value && !(value is String) && !(value is ViewStack) && !(value is Array) && !(value is IList))
         {
            message = resourceManager.getString("controls","errWrongContainer",[id]);
            throw new Error(message);
         }
         if(_dataProvider)
         {
            _dataProvider.removeEventListener(CollectionEvent.COLLECTION_CHANGE,collectionChangeHandler);
         }
         if(value is String && (document && document[value]))
         {
            value = document[value];
         }
         if(value is String || value is ViewStack)
         {
            setTargetViewStack(value);
            return;
         }
         if(value is IList && IList(value).length > 0 && IList(value).getItemAt(0) is DisplayObject || value is Array && (value as Array).length > 0 && value[0] is DisplayObject)
         {
            name = !!id?className + " \'" + id + "\'":"a " + className;
            message = resourceManager.getString("controls","errWrongType",[name]);
            throw new Error(message);
         }
         setTargetViewStack(null);
         removeAllChildren();
         if(value is IList)
         {
            _dataProvider = IList(value);
         }
         else if(value is Array)
         {
            _dataProvider = new ArrayCollection(value as Array);
         }
         else
         {
            _dataProvider = null;
         }
         dataProviderChanged = true;
         invalidateProperties();
         if(_dataProvider)
         {
            _dataProvider.addEventListener(CollectionEvent.COLLECTION_CHANGE,collectionChangeHandler,false,0,true);
         }
         if(inheritingStyles == UIComponent.STYLE_UNINITIALIZED)
         {
            return;
         }
         dispatchEvent(new Event("collectionChange"));
      }
      
      private function changeHandler(event:Event) : void
      {
         if(event.target == dataProvider)
         {
            hiliteSelectedNavItem(Object(event.target).selectedIndex);
         }
      }
      
      private function collectionChangeHandler(event:Event) : void
      {
         dataProvider = dataProvider;
      }
      
      public function set selectedIndex(value:int) : void
      {
         _selectedIndex = value;
         if(targetStack)
         {
            targetStack.selectedIndex = value;
         }
         dispatchEvent(new FlexEvent(FlexEvent.VALUE_COMMIT));
      }
      
      [Bindable("valueCommit")]
      [Bindable("itemClick")]
      public function get selectedIndex() : int
      {
         return _selectedIndex;
      }
   }
}

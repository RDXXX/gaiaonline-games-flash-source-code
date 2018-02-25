package mx.containers
{
   import flash.display.DisplayObject;
   import flash.events.Event;
   import mx.automation.IAutomationObject;
   import mx.core.Container;
   import mx.core.ContainerCreationPolicy;
   import mx.core.EdgeMetrics;
   import mx.core.IInvalidating;
   import mx.core.IUIComponent;
   import mx.core.ScrollPolicy;
   import mx.core.UIComponent;
   import mx.core.mx_internal;
   import mx.effects.Effect;
   import mx.effects.EffectManager;
   import mx.events.ChildExistenceChangedEvent;
   import mx.events.EffectEvent;
   import mx.events.FlexEvent;
   import mx.events.IndexChangedEvent;
   import mx.graphics.RoundedRectangle;
   import mx.managers.HistoryManager;
   import mx.managers.IHistoryManagerClient;
   
   use namespace mx_internal;
   
   public class ViewStack extends Container implements IHistoryManagerClient
   {
      
      mx_internal static const VERSION:String = "3.6.0.21751";
       
      
      private var dispatchChangeEventPending:Boolean = false;
      
      private var historyManagementEnabledChanged:Boolean = false;
      
      mx_internal var vsPreferredHeight:Number;
      
      private var initialSelectedIndex:int = -1;
      
      private var firstTime:Boolean = true;
      
      mx_internal var _historyManagementEnabled:Boolean = false;
      
      private var overlayChild:Container;
      
      private var overlayTargetArea:RoundedRectangle;
      
      private var proposedSelectedIndex:int = -1;
      
      private var needToInstantiateSelectedChild:Boolean = false;
      
      private var bSaveState:Boolean = false;
      
      mx_internal var vsMinHeight:Number;
      
      private var bInLoadState:Boolean = false;
      
      mx_internal var vsPreferredWidth:Number;
      
      private var _resizeToContent:Boolean = false;
      
      mx_internal var vsMinWidth:Number;
      
      private var lastIndex:int = -1;
      
      private var _selectedIndex:int = -1;
      
      public function ViewStack()
      {
         super();
         addEventListener(ChildExistenceChangedEvent.CHILD_ADD,childAddHandler);
         addEventListener(ChildExistenceChangedEvent.CHILD_REMOVE,childRemoveHandler);
      }
      
      protected function get contentHeight() : Number
      {
         var vm:EdgeMetrics = viewMetricsAndPadding;
         return unscaledHeight - vm.top - vm.bottom;
      }
      
      public function set selectedChild(value:Container) : void
      {
         var newIndex:int = getChildIndex(DisplayObject(value));
         if(newIndex >= 0 && newIndex < numChildren)
         {
            selectedIndex = newIndex;
         }
      }
      
      override mx_internal function setActualCreationPolicies(policy:String) : void
      {
         var i:int = 0;
         var containerChild:Container = null;
         super.setActualCreationPolicies(policy);
         if(policy == ContainerCreationPolicy.ALL && numChildren > 0)
         {
            for(i = 0; i < numChildren; i++)
            {
               containerChild = getChildAt(i) as Container;
               if(containerChild && containerChild.numChildrenCreated == -1)
               {
                  containerChild.createComponentsFromDescriptors();
               }
            }
         }
      }
      
      private function dispatchChangeEvent(oldIndex:int, newIndex:int) : void
      {
         var event:IndexChangedEvent = new IndexChangedEvent(IndexChangedEvent.CHANGE);
         event.oldIndex = oldIndex;
         event.newIndex = newIndex;
         event.relatedObject = getChildAt(newIndex);
         dispatchEvent(event);
      }
      
      protected function get contentY() : Number
      {
         return getStyle("paddingTop");
      }
      
      protected function commitSelectedIndex(newIndex:int) : void
      {
         var currentChild:Container = null;
         var hideEffect:Effect = null;
         if(numChildren == 0)
         {
            _selectedIndex = -1;
            return;
         }
         if(newIndex < 0)
         {
            newIndex = 0;
         }
         else if(newIndex > numChildren - 1)
         {
            newIndex = numChildren - 1;
         }
         if(lastIndex != -1 && lastIndex < numChildren)
         {
            Container(getChildAt(lastIndex)).endEffectsStarted();
         }
         if(_selectedIndex != -1)
         {
            selectedChild.endEffectsStarted();
         }
         lastIndex = _selectedIndex;
         if(newIndex == lastIndex)
         {
            return;
         }
         _selectedIndex = newIndex;
         if(initialSelectedIndex == -1)
         {
            initialSelectedIndex = _selectedIndex;
         }
         if(lastIndex != -1 && newIndex != -1)
         {
            dispatchChangeEventPending = true;
         }
         var listenForEffectEnd:Boolean = false;
         if(lastIndex != -1 && lastIndex < numChildren)
         {
            currentChild = Container(getChildAt(lastIndex));
            currentChild.setVisible(false);
            if(currentChild.getStyle("hideEffect"))
            {
               hideEffect = EffectManager.lastEffectCreated;
               if(hideEffect)
               {
                  hideEffect.addEventListener(EffectEvent.EFFECT_END,hideEffectEndHandler);
                  listenForEffectEnd = true;
               }
            }
         }
         if(!listenForEffectEnd)
         {
            hideEffectEndHandler(null);
         }
      }
      
      private function instantiateSelectedChild() : void
      {
         if(!selectedChild)
         {
            return;
         }
         if(selectedChild && selectedChild.numChildrenCreated == -1)
         {
            if(initialized)
            {
               selectedChild.addEventListener(FlexEvent.CREATION_COMPLETE,childCreationCompleteHandler);
            }
            selectedChild.createComponentsFromDescriptors(true);
         }
         if(selectedChild is IInvalidating)
         {
            IInvalidating(selectedChild).invalidateSize();
         }
         invalidateSize();
         invalidateDisplayList();
      }
      
      private function initializeHandler(event:FlexEvent) : void
      {
         overlayChild.removeEventListener(FlexEvent.INITIALIZE,initializeHandler);
         UIComponent(overlayChild).addOverlay(overlayColor,overlayTargetArea);
      }
      
      public function set historyManagementEnabled(value:Boolean) : void
      {
         if(value != _historyManagementEnabled)
         {
            _historyManagementEnabled = value;
            historyManagementEnabledChanged = true;
            invalidateProperties();
         }
      }
      
      override public function get horizontalScrollPolicy() : String
      {
         return ScrollPolicy.OFF;
      }
      
      private function childAddHandler(event:ChildExistenceChangedEvent) : void
      {
         var uiChild:IUIComponent = null;
         var child:DisplayObject = event.relatedObject;
         var index:int = getChildIndex(child);
         if(child is IUIComponent)
         {
            uiChild = IUIComponent(child);
            uiChild.visible = false;
         }
         if(numChildren == 1 && proposedSelectedIndex == -1)
         {
            proposedSelectedIndex = 0;
            invalidateProperties();
         }
         else if(index <= selectedIndex && numChildren > 1 && proposedSelectedIndex == -1)
         {
            selectedIndex++;
         }
         if(child is IAutomationObject)
         {
            IAutomationObject(child).showInAutomationHierarchy = true;
         }
      }
      
      private function addedToStageHandler(event:Event) : void
      {
         if(historyManagementEnabled)
         {
            HistoryManager.register(this);
         }
      }
      
      public function get resizeToContent() : Boolean
      {
         return _resizeToContent;
      }
      
      public function saveState() : Object
      {
         var index:int = _selectedIndex == -1?0:int(_selectedIndex);
         return {"selectedIndex":index};
      }
      
      override public function get autoLayout() : Boolean
      {
         return true;
      }
      
      override mx_internal function removeOverlay() : void
      {
         if(overlayChild)
         {
            UIComponent(overlayChild).removeOverlay();
            overlayChild = null;
         }
      }
      
      private function removedFromStageHandler(event:Event) : void
      {
         HistoryManager.unregister(this);
      }
      
      [Bindable("creationComplete")]
      [Bindable("valueCommit")]
      public function get selectedChild() : Container
      {
         if(selectedIndex == -1)
         {
            return null;
         }
         return Container(getChildAt(selectedIndex));
      }
      
      private function hideEffectEndHandler(event:EffectEvent) : void
      {
         if(event)
         {
            event.currentTarget.removeEventListener(EffectEvent.EFFECT_END,hideEffectEndHandler);
         }
         needToInstantiateSelectedChild = true;
         invalidateProperties();
         if(bSaveState)
         {
            HistoryManager.save();
            bSaveState = false;
         }
      }
      
      private function childCreationCompleteHandler(event:FlexEvent) : void
      {
         event.target.removeEventListener(FlexEvent.CREATION_COMPLETE,childCreationCompleteHandler);
         event.target.dispatchEvent(new FlexEvent(FlexEvent.SHOW));
      }
      
      override public function set horizontalScrollPolicy(value:String) : void
      {
      }
      
      public function get historyManagementEnabled() : Boolean
      {
         return _historyManagementEnabled;
      }
      
      public function loadState(state:Object) : void
      {
         var newIndex:int = !!state?int(int(state.selectedIndex)):0;
         if(newIndex == -1)
         {
            newIndex = initialSelectedIndex;
         }
         if(newIndex == -1)
         {
            newIndex = 0;
         }
         if(newIndex != _selectedIndex)
         {
            bInLoadState = true;
            selectedIndex = newIndex;
            bInLoadState = false;
         }
      }
      
      protected function get contentWidth() : Number
      {
         var vm:EdgeMetrics = viewMetricsAndPadding;
         return unscaledWidth - vm.left - vm.right;
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(historyManagementEnabledChanged)
         {
            if(historyManagementEnabled)
            {
               HistoryManager.register(this);
            }
            else
            {
               HistoryManager.unregister(this);
            }
            historyManagementEnabledChanged = false;
         }
         if(proposedSelectedIndex != -1)
         {
            commitSelectedIndex(proposedSelectedIndex);
            proposedSelectedIndex = -1;
         }
         if(needToInstantiateSelectedChild)
         {
            instantiateSelectedChild();
            needToInstantiateSelectedChild = false;
         }
         if(dispatchChangeEventPending)
         {
            dispatchChangeEvent(lastIndex,selectedIndex);
            dispatchChangeEventPending = false;
         }
         if(firstTime)
         {
            firstTime = false;
            addEventListener(Event.ADDED_TO_STAGE,addedToStageHandler,false,0,true);
            addEventListener(Event.REMOVED_FROM_STAGE,removedFromStageHandler,false,0,true);
         }
      }
      
      public function set resizeToContent(value:Boolean) : void
      {
         if(value != _resizeToContent)
         {
            _resizeToContent = value;
            if(value)
            {
               invalidateSize();
            }
         }
      }
      
      override public function createComponentsFromDescriptors(recurse:Boolean = true) : void
      {
         if(actualCreationPolicy == ContainerCreationPolicy.ALL)
         {
            super.createComponentsFromDescriptors();
            return;
         }
         var numChildrenBefore:int = numChildren;
         var n:int = !!childDescriptors?int(childDescriptors.length):0;
         for(var i:int = 0; i < n; i++)
         {
            createComponentFromDescriptor(childDescriptors[i],false);
         }
         numChildrenCreated = numChildren - numChildrenBefore;
         processedDescriptors = true;
      }
      
      override protected function measure() : void
      {
         var minWidth:Number = NaN;
         var minHeight:Number = NaN;
         var preferredWidth:Number = NaN;
         var preferredHeight:Number = NaN;
         var child:Container = null;
         super.measure();
         minWidth = 0;
         minHeight = 0;
         preferredWidth = 0;
         preferredHeight = 0;
         if(vsPreferredWidth && !_resizeToContent)
         {
            measuredMinWidth = vsMinWidth;
            measuredMinHeight = vsMinHeight;
            measuredWidth = vsPreferredWidth;
            measuredHeight = vsPreferredHeight;
            return;
         }
         if(numChildren > 0 && selectedIndex != -1)
         {
            child = Container(getChildAt(selectedIndex));
            minWidth = child.minWidth;
            preferredWidth = child.getExplicitOrMeasuredWidth();
            minHeight = child.minHeight;
            preferredHeight = child.getExplicitOrMeasuredHeight();
         }
         var vm:EdgeMetrics = viewMetricsAndPadding;
         var wPadding:Number = vm.left + vm.right;
         minWidth = minWidth + wPadding;
         preferredWidth = preferredWidth + wPadding;
         var hPadding:Number = vm.top + vm.bottom;
         minHeight = minHeight + hPadding;
         preferredHeight = preferredHeight + hPadding;
         measuredMinWidth = minWidth;
         measuredMinHeight = minHeight;
         measuredWidth = preferredWidth;
         measuredHeight = preferredHeight;
         if(selectedChild && Container(selectedChild).numChildrenCreated == -1)
         {
            return;
         }
         if(numChildren == 0)
         {
            return;
         }
         vsMinWidth = minWidth;
         vsMinHeight = minHeight;
         vsPreferredWidth = preferredWidth;
         vsPreferredHeight = preferredHeight;
      }
      
      override public function set verticalScrollPolicy(value:String) : void
      {
      }
      
      public function set selectedIndex(value:int) : void
      {
         if(value == selectedIndex)
         {
            return;
         }
         proposedSelectedIndex = value;
         invalidateProperties();
         if(historyManagementEnabled && _selectedIndex != -1 && !bInLoadState)
         {
            bSaveState = true;
         }
         dispatchEvent(new FlexEvent(FlexEvent.VALUE_COMMIT));
      }
      
      override mx_internal function addOverlay(color:uint, targetArea:RoundedRectangle = null) : void
      {
         if(overlayChild)
         {
            removeOverlay();
         }
         overlayChild = selectedChild;
         if(!overlayChild)
         {
            return;
         }
         overlayColor = color;
         overlayTargetArea = targetArea;
         if(selectedChild && selectedChild.numChildrenCreated == -1)
         {
            selectedChild.addEventListener(FlexEvent.INITIALIZE,initializeHandler);
         }
         else
         {
            initializeHandler(null);
         }
      }
      
      override public function set autoLayout(value:Boolean) : void
      {
      }
      
      override public function get verticalScrollPolicy() : String
      {
         return ScrollPolicy.OFF;
      }
      
      [Bindable("creationComplete")]
      [Bindable("valueCommit")]
      [Bindable("change")]
      public function get selectedIndex() : int
      {
         return proposedSelectedIndex == -1?int(_selectedIndex):int(proposedSelectedIndex);
      }
      
      private function childRemoveHandler(event:ChildExistenceChangedEvent) : void
      {
         var child:DisplayObject = event.relatedObject;
         var index:int = getChildIndex(child);
         if(index > selectedIndex)
         {
            return;
         }
         var currentSelectedIndex:int = selectedIndex;
         if(index < currentSelectedIndex || currentSelectedIndex == numChildren - 1)
         {
            if(currentSelectedIndex == 0)
            {
               selectedIndex = -1;
               _selectedIndex = -1;
            }
            else
            {
               selectedIndex--;
            }
         }
         else if(index == currentSelectedIndex)
         {
            needToInstantiateSelectedChild = true;
            invalidateProperties();
         }
      }
      
      override protected function updateDisplayList(unscaledWidth:Number, unscaledHeight:Number) : void
      {
         var child:Container = null;
         var newWidth:Number = NaN;
         var newHeight:Number = NaN;
         super.updateDisplayList(unscaledWidth,unscaledHeight);
         var nChildren:int = numChildren;
         var w:Number = contentWidth;
         var h:Number = contentHeight;
         var left:Number = contentX;
         var top:Number = contentY;
         if(selectedIndex != -1)
         {
            child = Container(getChildAt(selectedIndex));
            newWidth = w;
            newHeight = h;
            if(!isNaN(child.percentWidth))
            {
               if(newWidth > child.maxWidth)
               {
                  newWidth = child.maxWidth;
               }
            }
            else if(newWidth > child.explicitWidth)
            {
               newWidth = child.explicitWidth;
            }
            if(!isNaN(child.percentHeight))
            {
               if(newHeight > child.maxHeight)
               {
                  newHeight = child.maxHeight;
               }
            }
            else if(newHeight > child.explicitHeight)
            {
               newHeight = child.explicitHeight;
            }
            if(child.width != newWidth || child.height != newHeight)
            {
               child.setActualSize(newWidth,newHeight);
            }
            if(child.x != left || child.y != top)
            {
               child.move(left,top);
            }
            child.visible = true;
         }
      }
      
      protected function get contentX() : Number
      {
         return getStyle("paddingLeft");
      }
   }
}

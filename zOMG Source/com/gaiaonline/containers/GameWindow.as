package com.gaiaonline.containers
{
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import mx.collections.ArrayCollection;
   import mx.containers.ControlBar;
   import mx.containers.Panel;
   import mx.controls.Button;
   import mx.controls.TabBar;
   import mx.core.UIComponent;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.DragEvent;
   import mx.events.FlexEvent;
   import mx.events.ResizeEvent;
   import mx.styles.CSSStyleDeclaration;
   import mx.styles.StyleManager;
   
   use namespace mx_internal;
   
   public class GameWindow extends Panel implements IGameWindow
   {
      
      private static const RESTORE_BUTTON_ENABLED:Boolean = false;
      
      private static const TITLEBAR_CHROME_PADDING_TOP:Number = 3;
      
      private static var s_objectUnderPointHelper:Point = new Point(NaN,NaN);
      
      private static const TITLEBAR_CHROME_GAP:Number = 3;
      
      mx_internal static var _GameWindow_StylesInit_done:Boolean = false;
       
      
      private var _dragImage:DragProxyImage;
      
      private var _closeButton:UIComponent;
      
      private var _childsCreated:Boolean = false;
      
      private var _titleBarChrome:Array;
      
      private var _restoreButton:UIComponent;
      
      private var _bottomChrome:DisplayObjectContainer;
      
      private var _resizeButton:UIComponent;
      
      private var _tabs:TabBar;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      private var _dragStarter:DragStarter;
      
      private var _childs:Array;
      
      public function GameWindow()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":Panel,
            "propertiesFactory":function():Object
            {
               return {"childDescriptors":[new UIComponentDescriptor({"type":ControlBar})]};
            }
         });
         _childs = new Array();
         _titleBarChrome = [];
         super();
         mx_internal::_document = this;
         if(!this.styleDeclaration)
         {
            this.styleDeclaration = new CSSStyleDeclaration();
         }
         this.styleDeclaration.defaultFactory = function():void
         {
            this.paddingTop = 23;
         };
         mx_internal::_GameWindow_StylesInit();
         this.horizontalScrollPolicy = "off";
         this.verticalScrollPolicy = "off";
         this.styleName = "GameWindow";
         this.addEventListener("creationComplete",___GameWindow_Panel1_creationComplete);
      }
      
      private static function getParent(dobj:DisplayObject, cls:Class) : DisplayObject
      {
         while(dobj)
         {
            if(dobj["constructor"] == cls)
            {
               return dobj;
            }
            dobj = dobj.parent;
         }
         return null;
      }
      
      private static function isTabBarChild(obj:DisplayObject) : Boolean
      {
         while(obj)
         {
            if(obj is GameWindowTabBar)
            {
               return true;
            }
            obj = obj.parent;
         }
         return false;
      }
      
      private static function getNewButton() : Button
      {
         var btn:Button = new Button();
         btn.tabEnabled = false;
         btn.mouseFocusEnabled = false;
         return btn;
      }
      
      private function onStopDraggingTab(e:Event) : void
      {
         var a:Array = null;
         var found:DisplayObject = null;
         var obj:Object = null;
         var parent:DisplayObject = null;
         var newOne:GameWindow = null;
         _dragImage.stopDrag();
         _dragImage.parent.removeChild(_dragImage);
         _dragImage = null;
         removeDragListeners(stage,onStopDraggingTab);
         var me:MouseEvent = e as MouseEvent;
         if(me)
         {
            s_objectUnderPointHelper.x = me.stageX;
            s_objectUnderPointHelper.y = me.stageY;
            a = stage.getObjectsUnderPoint(s_objectUnderPointHelper);
            for each(obj in a)
            {
               parent = getParent(DisplayObject(obj),GameWindow);
               if(parent)
               {
                  found = parent;
               }
            }
            if(found)
            {
               parent.dispatchEvent(new GameWindowTabDropEvent(GameWindowTabDropEvent.TAB_DROP));
               removeTab();
            }
            else if(found != this)
            {
               newOne = new GameWindow();
               newOne.resizable = true;
               newOne.width = width;
               newOne.height = height;
               newOne.move(me.stageX,me.stageY);
               this.parent.addChild(newOne);
               removeTab();
            }
         }
      }
      
      public function ___GameWindow_Panel1_creationComplete(event:FlexEvent) : void
      {
         onCreationComplete();
      }
      
      private function addTopChrome(chrome:DisplayObjectContainer) : void
      {
         _titleBarChrome.push(chrome);
         titleBar.addChild(chrome);
         invalidateDisplayList();
      }
      
      override public function initialize() : void
      {
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         super.initialize();
      }
      
      private function onChildResize(e:ResizeEvent) : void
      {
         this.checkVisibility();
      }
      
      private function activateTabs() : void
      {
         titleBar.addChild(_tabs);
         _dragStarter = new DragStarter(_tabs);
         _dragStarter.startListen(onStartDragTab);
      }
      
      override protected function createChildren() : void
      {
         var child:DisplayObject = null;
         var controlBarHeight:int = 0;
         var chromeProvider:IChromeProvider = null;
         var chrome:DisplayObjectContainer = null;
         super.createChildren();
         if(!_closeButton)
         {
            _closeButton = GameWindow.getNewButton();
            _closeButton.setStyle("upSkin",GameWindowAssets.closeButton);
            _closeButton.setStyle("downSkin",GameWindowAssets.closeButtonDn);
            _closeButton.setStyle("overSkin",GameWindowAssets.closeButtonDn);
            _closeButton.addEventListener(MouseEvent.CLICK,onCloseClick,false,0,true);
            titleBar.addChild(_closeButton);
            _titleBarChrome.push(_closeButton);
         }
         if(_resizeButton)
         {
            _resizeButton.setStyle("upSkin",GameWindowAssets.resizeButton);
            _resizeButton.setStyle("overSkin",GameWindowAssets.resizeButtonDn);
            _resizeButton.setStyle("downSkin",GameWindowAssets.resizeButtonDn);
            _resizeButton.addEventListener(MouseEvent.MOUSE_DOWN,onResizeMouseDown,false,0,true);
            rawChildren.addChild(_resizeButton);
            if(RESTORE_BUTTON_ENABLED)
            {
               _restoreButton.setStyle("upSkin",GameWindowAssets.restoreButton);
               _restoreButton.setStyle("overSkin",GameWindowAssets.restoreButtonDn);
               _restoreButton.setStyle("downSkin",GameWindowAssets.restoreButtonDn);
               titleBar.addChild(_restoreButton);
               _titleBarChrome.push(_restoreButton);
            }
            controlBarHeight = 23;
            setStyle("paddingBottom",controlBarHeight);
            if(controlBar)
            {
               DisplayObject(controlBar).height = controlBarHeight;
               if(_bottomChrome)
               {
                  DisplayObjectContainer(controlBar).addChild(_bottomChrome);
                  _bottomChrome = null;
               }
            }
         }
         if(_tabs)
         {
            activateTabs();
         }
         this._childsCreated = true;
         for each(child in this._childs)
         {
            chromeProvider = child as IChromeProvider;
            if(chromeProvider)
            {
               chrome = chromeProvider.getBottomChrome();
               if(chrome)
               {
                  addBottomChrome(chrome);
               }
               chrome = chromeProvider.getTopChrome();
               if(chrome)
               {
                  addTopChrome(chrome);
               }
            }
         }
         this._childs = new Array();
      }
      
      private function onCloseClick(e:Event) : void
      {
         dispatchEvent(new GameWindowEvent(GameWindowEvent.CLOSE));
         if(parent)
         {
            parent.removeChild(this);
         }
      }
      
      public function set tabMode(b:Boolean) : void
      {
         if(!_tabs)
         {
            _tabs = new GameWindowTabBar();
            _tabs.dataProvider = new ArrayCollection([]);
            invalidateDisplayList();
         }
      }
      
      private function onResizeMouseDown(e:MouseEvent) : void
      {
         dispatchEvent(GameWindowManager.toSnapEvent(this,e,GameWindowManagerEvent.RESIZE_START));
      }
      
      private function onCreationComplete() : void
      {
         titleBar.addEventListener(MouseEvent.MOUSE_DOWN,onTitleBarMouseDown,false,0,true);
         addEventListener(GameWindowTabDropEvent.TAB_DROP,onTabDrop,false,0,true);
      }
      
      private function isTitleBarChrome(obj:DisplayObject) : Boolean
      {
         var chrome:DisplayObject = null;
         var objWalk:DisplayObject = null;
         for each(chrome in _titleBarChrome)
         {
            objWalk = obj;
            while(objWalk)
            {
               if(objWalk == chrome)
               {
                  return true;
               }
               objWalk = objWalk.parent;
            }
         }
         return false;
      }
      
      private function checkVisibility() : void
      {
         var child:DisplayObject = null;
         if(numChildren)
         {
            child = this.getChildAt(0);
            this.visible = child && child.width > 0 && child.height > 0;
            if(this.visible)
            {
               child.removeEventListener(ResizeEvent.RESIZE,onChildResize);
            }
         }
         else
         {
            this.visible = true;
         }
      }
      
      override protected function layoutChrome(unscaledWidth:Number, unscaledHeight:Number) : void
      {
         var child:UIComponent = null;
         super.layoutChrome(unscaledWidth,unscaledHeight);
         titleTextField.move(titleTextField.x,titleTextField.y + 1);
         var controlBarPaddingRight:Number = 2;
         if(_resizeButton)
         {
            _resizeButton.setActualSize(_resizeButton.getExplicitOrMeasuredWidth(),_resizeButton.getExplicitOrMeasuredHeight());
            _resizeButton.move(unscaledWidth - _resizeButton.getExplicitOrMeasuredWidth() - 4,unscaledHeight - _resizeButton.getExplicitOrMeasuredHeight() - 4);
            controlBarPaddingRight = controlBarPaddingRight + (_resizeButton.getExplicitOrMeasuredWidth() + 2);
         }
         UIComponent(controlBar).setStyle("paddingRight",controlBarPaddingRight);
         var nextTitleBarX:Number = titleBar.width;
         for each(child in _titleBarChrome)
         {
            child.setActualSize(child.getExplicitOrMeasuredWidth(),child.getExplicitOrMeasuredHeight());
            nextTitleBarX = nextTitleBarX - (TITLEBAR_CHROME_GAP + child.width);
            child.move(nextTitleBarX,TITLEBAR_CHROME_PADDING_TOP);
         }
         if(_tabs)
         {
            _tabs.setActualSize(_tabs.getExplicitOrMeasuredWidth(),_tabs.getExplicitOrMeasuredHeight());
            _tabs.move(0,7);
         }
      }
      
      private function onTabDrop(e:GameWindowTabDropEvent) : void
      {
         var index:int = 0;
         tabMode = true;
         if(!_tabs.parent)
         {
            activateTabs();
         }
         else
         {
            index = _tabs.selectedIndex;
            ArrayCollection(_tabs.dataProvider).addItem("next");
            _tabs.selectedIndex = index;
            invalidateDisplayList();
         }
      }
      
      private function addBottomChrome(chrome:DisplayObjectContainer) : void
      {
         var cb:DisplayObjectContainer = controlBar as DisplayObjectContainer;
         if(cb)
         {
            cb.addChild(chrome);
         }
         else
         {
            _bottomChrome = chrome;
         }
      }
      
      private function removeDragListeners(stage:Stage, onMouseUp:Function) : void
      {
         stage.removeEventListener(MouseEvent.MOUSE_UP,onMouseUp);
         stage.removeEventListener(Event.MOUSE_LEAVE,onMouseUp);
      }
      
      private function onDragDrop(event:DragEvent) : void
      {
         tabMode = true;
         _tabs.dataProvider.push("map");
      }
      
      private function addDragListeners(stage:Stage, onMouseUp:Function) : void
      {
         stage.addEventListener(MouseEvent.MOUSE_UP,onMouseUp,false,0,true);
         stage.addEventListener(Event.MOUSE_LEAVE,onMouseUp,false,0,true);
      }
      
      public function set resizable(b:Boolean) : void
      {
         setStyle("borderSkin",!!b?GameWindowAssets.borderSkin2:GameWindowAssets.borderSkin1);
         if(b && !_resizeButton)
         {
            _resizeButton = GameWindow.getNewButton();
            if(RESTORE_BUTTON_ENABLED)
            {
               _restoreButton = GameWindow.getNewButton();
            }
         }
         else if(!b && _resizeButton)
         {
            rawChildren.removeChild(_resizeButton);
            if(RESTORE_BUTTON_ENABLED)
            {
               removeChild(_restoreButton);
            }
            _resizeButton = null;
         }
      }
      
      public function mergeIntoTabs(source:GameWindow) : void
      {
         var tab:String = null;
         source.parent.removeChild(source);
         tabMode = true;
         if(!_tabs.parent)
         {
            activateTabs();
         }
         var index:int = _tabs.selectedIndex;
         ArrayCollection(_tabs.dataProvider).addItem("map");
         if(source._tabs && ArrayCollection(source._tabs.dataProvider).length)
         {
            for each(tab in ArrayCollection(source._tabs.dataProvider).source)
            {
               ArrayCollection(_tabs.dataProvider).addItem(tab);
            }
         }
         else
         {
            ArrayCollection(_tabs.dataProvider).addItem("map");
         }
         _tabs.selectedIndex = index;
         invalidateDisplayList();
      }
      
      private function onTitleBarMouseDown(e:MouseEvent) : void
      {
         if(!isTitleBarChrome(DisplayObject(e.target)) && !isTabBarChild(DisplayObject(e.target)))
         {
            dispatchEvent(GameWindowManager.toSnapEvent(this,e,GameWindowManagerEvent.DRAG_START));
         }
      }
      
      mx_internal function _GameWindow_StylesInit() : void
      {
         var style:CSSStyleDeclaration = null;
         var effects:Array = null;
         if(mx_internal::_GameWindow_StylesInit_done)
         {
            return;
         }
         mx_internal::_GameWindow_StylesInit_done = true;
         style = StyleManager.getStyleDeclaration(".GameWindowControlBar");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".GameWindowControlBar",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.paddingTop = 0;
               this.paddingBottom = 0;
               this.paddingLeft = 2;
            };
         }
         style = StyleManager.getStyleDeclaration(".GameWindow");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".GameWindow",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.titleStyleName = "GameWindowTitle";
               this.color = 16777215;
               this.controlBarStyleName = "GameWindowControlBar";
               this.headerHeight = 22;
            };
         }
         style = StyleManager.getStyleDeclaration(".GameWindowTitle");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".GameWindowTitle",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.fontWeight = "bold";
               this.fontFamily = "Arial";
               this.fontSize = 12;
            };
         }
      }
      
      private function removeTab() : void
      {
         var coll:ArrayCollection = ArrayCollection(_tabs.dataProvider);
         coll.removeItemAt(0);
         if(coll.length == 1)
         {
            coll.removeItemAt(0);
         }
         invalidateDisplayList();
      }
      
      override public function addChild(child:DisplayObject) : DisplayObject
      {
         var chromeProvider:IChromeProvider = null;
         var chrome:DisplayObjectContainer = null;
         var retval:DisplayObject = super.addChild(child);
         if(this._childsCreated)
         {
            chromeProvider = child as IChromeProvider;
            if(chromeProvider)
            {
               chrome = chromeProvider.getBottomChrome();
               if(chrome)
               {
                  addBottomChrome(chrome);
               }
               chrome = chromeProvider.getTopChrome();
               if(chrome)
               {
                  addTopChrome(chrome);
               }
            }
         }
         else
         {
            this._childs.push(child);
         }
         this.checkVisibility();
         child.addEventListener(ResizeEvent.RESIZE,onChildResize,false,0,true);
         return retval;
      }
      
      private function onStartDragTab(e:MouseEvent) : void
      {
         _dragImage = new DragProxyImage();
         systemManager.popUpChildren.addChild(_dragImage);
         _dragImage.dragSource(DisplayObject(e.target),e);
         addDragListeners(stage,onStopDraggingTab);
      }
   }
}

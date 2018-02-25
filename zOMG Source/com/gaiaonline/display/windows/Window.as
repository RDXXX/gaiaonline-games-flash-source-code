package com.gaiaonline.display.windows
{
   import com.gaiaonline.battle.Globals;
   import com.gaiaonline.battle.utils.BattleUtils;
   import com.gaiaonline.usersettings.ISettings;
   import com.gaiaonline.usersettings.Settings#54;
   import com.gaiaonline.utils.DisplayObjectUtils;
   import com.gaiaonline.utils.factories.ILoaderContextFactory;
   import flash.display.DisplayObject;
   import flash.display.Loader;
   import flash.display.LoaderInfo;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.filters.DropShadowFilter;
   import flash.net.URLRequest;
   import flash.utils.Timer;
   
   public class Window extends Sprite implements ISettings
   {
      
      private static const s_dropShadowFilters:Array = [new DropShadowFilter(8,45,0,1,6,6,0.5,1,false,false,false)];
       
      
      protected var swfWin:String = "";
      
      protected var winLoader:Loader;
      
      protected var minHeight:uint = 20;
      
      protected var isResisable:Boolean = true;
      
      protected var winHeight:uint = 300;
      
      public var saveSize:Boolean = true;
      
      protected var showMax:Boolean = true;
      
      private var _loaderContextFactory:ILoaderContextFactory = null;
      
      protected var winWidth:uint = 300;
      
      protected var mcBorders:Sprite;
      
      protected var resetHeight:uint = 300;
      
      protected var isInit:Boolean = false;
      
      private var winLoaderInfo:LoaderInfo = null;
      
      protected var mcShadow:Sprite;
      
      protected var btnMax:SimpleButton;
      
      protected var defaultFull:Object;
      
      private var retryTimer:Timer;
      
      protected var defaultNormal:Object;
      
      protected var mcContainer:DisplayObject;
      
      protected var minWidth:uint = 20;
      
      protected var mcMask:Sprite;
      
      protected var maxHeight:uint = 0;
      
      protected var btnDrag:Sprite;
      
      protected var mcResizeButton:Sprite;
      
      protected var resetWidth:uint = 300;
      
      private var mcMaskDisplay:Sprite;
      
      protected var maxWidth:uint = 0;
      
      public var savePosition:Boolean = true;
      
      protected var isLoaded:Boolean = false;
      
      protected var isDragable:Boolean = true;
      
      protected var isMax:Boolean = false;
      
      private var _useMask:Boolean = true;
      
      protected var resetX:uint = 0;
      
      protected var resetY:uint = 0;
      
      protected var showClose:Boolean = true;
      
      protected var btnClose:SimpleButton;
      
      public function Window(swfWin:String, container:DisplayObject, isDragable:Boolean = true, isResisable:Boolean = true, showClose:Boolean = true, showMax:Boolean = true, maxWidth:uint = 0, maxHeight:uint = 0, minWidth:uint = 0, minHeight:uint = 0, minized:Boolean = false, maximized:Boolean = false, loaderContextFactory:ILoaderContextFactory = null)
      {
         retryTimer = new Timer(1000);
         super();
         this._loaderContextFactory = loaderContextFactory;
         this.swfWin = swfWin;
         this.mcContainer = container;
         this.isDragable = isDragable;
         this.isResisable = isResisable;
         this.showMax = showMax;
         this.showClose = showClose;
         this.maxWidth = maxWidth;
         this.maxHeight = maxHeight;
         this.minWidth = minWidth;
         this.minHeight = minHeight;
         this.winLoader = new Loader();
         if(minized)
         {
            this.winWidth = this.minWidth;
            this.winHeight = this.minHeight;
         }
         if(maximized)
         {
            this.winWidth = this.maxWidth;
            this.winHeight = this.maxHeight;
            this.isMax = true;
            this.resetWidth = this.minWidth;
            this.resetHeight = this.minHeight;
         }
         this.tabEnabled = false;
         this.winLoaderInfo = this.winLoader.contentLoaderInfo;
         this.winLoaderInfo.addEventListener(Event.COMPLETE,onWinLoadComplete);
         this.winLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
         this.winLoaderInfo.addEventListener(IOErrorEvent.NETWORK_ERROR,this.onNetworkError);
         this.winLoaderInfo.addEventListener(IOErrorEvent.VERIFY_ERROR,this.onVerifyError);
         this.winLoaderInfo.addEventListener(IOErrorEvent.DISK_ERROR,this.onDiskError);
         this.addEventListener(Event.ADDED_TO_STAGE,onAddedToStage,false,0,true);
         this.addEventListener(Event.REMOVED_FROM_STAGE,onRemoveFromStage,false,0,true);
         this.addEventListener(MouseEvent.MOUSE_DOWN,onMouseDown,false,0,true);
         this.winLoader.load(new URLRequest(this.swfWin),this._loaderContextFactory.getLoaderContext());
      }
      
      protected function setBorders() : void
      {
         this.mcBorders.width = this.mcShadow.width = this.winWidth;
         this.mcBorders.height = this.mcShadow.height = this.winHeight;
      }
      
      public function getMinWidth() : uint
      {
         return this.minWidth;
      }
      
      public function useMask(value:Boolean) : void
      {
         this._useMask = value;
         if(this.mcMaskDisplay != null && this.mcContainer != null)
         {
            if(this._useMask && !this.mcMaskDisplay.contains(this.mcContainer))
            {
               this.mcMaskDisplay.addChild(this.mcContainer);
            }
            else if(!this._useMask && this.mcMaskDisplay.contains(this.mcContainer))
            {
               this.addChildAt(this.mcContainer,3);
            }
         }
      }
      
      protected function init() : void
      {
         this.mcBorders = Sprite(Sprite(this.winLoader.content).getChildByName("borders"));
         this.mcShadow = Sprite(Sprite(this.winLoader.content).getChildByName("mcShadow"));
         this.mcMask = Sprite(Sprite(this.winLoader.content).getChildByName("containerMask"));
         this.btnDrag = Sprite(Sprite(this.winLoader.content).getChildByName("btnDrag"));
         this.btnDrag.tabEnabled = false;
         this.btnDrag.tabChildren = false;
         this.btnDrag.addEventListener(MouseEvent.MOUSE_DOWN,onBtnDragPress,false,0,true);
         this.btnDrag.addEventListener(MouseEvent.MOUSE_UP,onBtnDragRelease,false,0,true);
         this.btnClose = SimpleButton(Sprite(this.winLoader.content).getChildByName("btnClose"));
         this.btnClose.tabEnabled = false;
         this.btnClose.addEventListener(MouseEvent.CLICK,onClosePress,false,0,true);
         this.btnMax = SimpleButton(Sprite(this.winLoader.content).getChildByName("btnMax"));
         this.btnMax.tabEnabled = false;
         this.btnMax.addEventListener(MouseEvent.MOUSE_UP,onMaxPress,false,0,true);
         this.mcResizeButton = Sprite(Sprite(this.winLoader.content).getChildByName("mcResizeButton"));
         this.mcResizeButton.tabEnabled = false;
         this.mcResizeButton.tabChildren = false;
         this.mcResizeButton.addEventListener(MouseEvent.MOUSE_DOWN,onResizeButtonPress,false,0,true);
         this.mcResizeButton.addEventListener(MouseEvent.MOUSE_UP,onResizeButtonRelease,false,0,true);
         this.addChild(this.mcShadow);
         this.addChild(this.mcMask);
         this.mcMaskDisplay = new Sprite();
         this.mcMaskDisplay.mask = this.mcMask;
         this.mcMaskDisplay.addChild(this.mcContainer);
         this.addChild(this.mcMaskDisplay);
         this.addChild(this.btnDrag);
         this.addChild(this.btnClose);
         this.addChild(this.btnMax);
         this.addChild(this.mcResizeButton);
         this.addChild(this.mcBorders);
         this.filters = s_dropShadowFilters;
         this.useMask(this._useMask);
         this.isInit = true;
         this.setSize(this.winWidth,this.winHeight);
         this.checkPos();
         this.winLoader.unload();
         this.dispatchEvent(new Event(Event.COMPLETE));
         this.dispatchEvent(new Event(Settings#54.SETTING_CHANGED_EVENT));
         BattleUtils.disableMouseOnChildren(this);
      }
      
      public function addContainerChild() : void
      {
         if(this.mcContainer != null)
         {
            if(!this.mcMaskDisplay.contains(this.mcContainer))
            {
               this.mcMaskDisplay.addChild(this.mcContainer);
            }
         }
      }
      
      public function setMinWidth(v:uint) : void
      {
         this.minWidth = v;
         if(this.isMax)
         {
            this.setSize(this.stage.stageWidth,this.stage.stageHeight);
         }
         else
         {
            this.setSize(this.winWidth,this.winHeight);
         }
         this.dispatchEvent(new Event(Settings#54.SETTING_CHANGED_EVENT));
      }
      
      public function dispose() : void
      {
         DisplayObjectUtils.ClearAllChildrens(this,0,5);
         swfWin = null;
         winLoader = null;
         mcBorders = null;
         mcMask = null;
         mcContainer = null;
         btnDrag = null;
         btnClose = null;
         btnMax = null;
         mcResizeButton = null;
         mcMaskDisplay = null;
      }
      
      public function setDefaultSize(witdh:Number, Height:Number, mode:String) : void
      {
         var x:int = 0;
         var y:int = 0;
         if(mode == "Full")
         {
            if(this.defaultFull != null)
            {
               x = this.defaultFull.x;
               y = this.defaultFull.y;
            }
            this.defaultFull = this.getSettings();
            this.defaultFull.winWidth = witdh;
            this.defaultFull.winHeight = Height;
            this.defaultFull.x = x;
            this.defaultFull.y = y;
         }
         else if(mode == "Normal")
         {
            if(this.defaultNormal != null)
            {
               x = this.defaultNormal.x;
               y = this.defaultNormal.y;
            }
            this.defaultNormal = this.getSettings();
            this.defaultNormal.winWidth = witdh;
            this.defaultNormal.winHeight = Height;
            this.defaultNormal.x = x;
            this.defaultNormal.y = y;
         }
      }
      
      public function checkPos() : void
      {
         if(stage != null)
         {
            if(this.x > stage.stageWidth - this.winWidth)
            {
               this.x = stage.stageWidth - this.winWidth;
            }
            if(this.x < 0)
            {
               this.x = 0;
            }
            if(this.y > stage.stageHeight - this.winHeight)
            {
               this.y = stage.stageHeight - this.winHeight;
            }
            if(this.y < 0)
            {
               this.y = 0;
            }
         }
      }
      
      public function resetDefaultSettings(mode:String) : void
      {
         if(mode == "Full")
         {
            this.setSettings(this.defaultFull);
         }
         else if(mode == "Normal")
         {
            this.setSettings(this.defaultNormal);
         }
      }
      
      public function getMaxWidth() : uint
      {
         return this.maxWidth;
      }
      
      public function getDefaultFull() : Object
      {
         return this.defaultFull;
      }
      
      protected function onMaxPress(evt:Event) : void
      {
         if(!this.isMax)
         {
            this.isMax = true;
            this.resetWidth = this.winWidth;
            this.resetHeight = this.winHeight;
            this.resetX = this.x;
            this.resetY = this.y;
            this.setSize(this.stage.stageWidth,this.stage.stageHeight);
            if(this.x != 0 || this.y != 0)
            {
               this.dispatchEvent(new Event("MOVE"));
            }
            this.x = 0;
            this.y = 0;
         }
         else
         {
            this.isMax = false;
            this.setSize(this.resetWidth,this.resetHeight);
            if(this.x != this.resetX || this.y != this.resetY)
            {
               this.dispatchEvent(new Event("MOVE"));
            }
            this.x = this.resetX;
            this.y = this.resetY;
            this.checkPos();
         }
         this.dispatchEvent(new Event(Settings#54.SETTING_CHANGED_EVENT));
      }
      
      public function getShowClose() : Boolean
      {
         return this.showClose;
      }
      
      public function setMaxWidth(v:uint) : void
      {
         this.maxWidth = v;
         if(this.isMax)
         {
            this.setSize(this.stage.stageWidth,this.stage.stageHeight);
         }
         else
         {
            this.setSize(this.winWidth,this.winHeight);
         }
         this.dispatchEvent(new Event(Settings#54.SETTING_CHANGED_EVENT));
      }
      
      private function onDiskError(e:IOErrorEvent) : void
      {
         if(this.mcContainer == Globals.uiManager.inventoryPanel)
         {
            trace("[WINDOW: onDiskError] ",e.text);
         }
         this.retryLoad();
      }
      
      public function getIsInit() : Boolean
      {
         return this.isInit;
      }
      
      public function setDefaultPos(x:Number, y:Number, mode:String) : void
      {
         var w:Number = 300;
         var h:Number = 300;
         if(mode == "Full")
         {
            if(this.defaultFull != null)
            {
               w = this.defaultFull.winWidth;
               h = this.defaultFull.winHeight;
            }
            this.defaultFull = this.getSettings();
            this.defaultFull.x = x;
            this.defaultFull.y = y;
            this.defaultFull.winWidth = w;
            this.defaultFull.winHeight = h;
         }
         else if(mode == "Normal")
         {
            if(this.defaultNormal != null)
            {
               w = this.defaultNormal.winWidth;
               h = this.defaultNormal.winHeight;
            }
            this.defaultNormal = this.getSettings();
            this.defaultNormal.x = x;
            this.defaultNormal.y = y;
            this.defaultNormal.winWidth = w;
            this.defaultNormal.winHeight = h;
         }
      }
      
      protected function onMouseLeave(evt:Event) : void
      {
         this.stage.removeEventListener(Event.MOUSE_LEAVE,onMouseLeave);
         this.stopDrag();
         this.checkPos();
         this.dispatchEvent(new Event("MOVE"));
         this.dispatchEvent(new Event(Settings#54.SETTING_CHANGED_EVENT));
      }
      
      protected function onWinLoadComplete(evt:Event) : void
      {
         this.isLoaded = true;
         init();
         this.winLoaderInfo.removeEventListener(Event.COMPLETE,onWinLoadComplete);
         this.winLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,onIOError);
         this.winLoaderInfo.removeEventListener(IOErrorEvent.NETWORK_ERROR,onNetworkError);
         this.winLoaderInfo.removeEventListener(IOErrorEvent.VERIFY_ERROR,onVerifyError);
         this.winLoaderInfo.removeEventListener(IOErrorEvent.DISK_ERROR,onDiskError);
         this.winLoaderInfo = null;
         this.winLoader = null;
      }
      
      public function setIsResisable(v:Boolean) : void
      {
         this.isResisable = v;
         this.mcResizeButton.visible = this.isResisable;
         this.dispatchEvent(new Event(Settings#54.SETTING_CHANGED_EVENT));
      }
      
      public function getMinHeight() : uint
      {
         return this.maxHeight;
      }
      
      public function setMaxHeight(v:uint) : void
      {
         this.maxHeight = v;
         if(this.isMax)
         {
            this.setSize(this.stage.stageWidth,this.stage.stageHeight);
         }
         else
         {
            this.setSize(this.winWidth,this.winHeight);
         }
         this.dispatchEvent(new Event(Settings#54.SETTING_CHANGED_EVENT));
      }
      
      protected function onClosePress(evt:Event) : void
      {
         this.dispatchEvent(new Event("CLOSE"));
      }
      
      public function setShowMax(v:Boolean) : void
      {
         this.showMax = v;
         this.btnMax.visible = v;
         this.dispatchEvent(new Event(Settings#54.SETTING_CHANGED_EVENT));
      }
      
      protected function onRemoveFromStage(evt:Event) : void
      {
         this.stage.removeEventListener(Event.MOUSE_LEAVE,onMouseLeave);
         this.stage.removeEventListener(Event.RESIZE,onStageResize);
      }
      
      public function getSize() : Object
      {
         var p:Object = new Object();
         p.width = this.winWidth;
         p.height = this.winHeight;
         return p;
      }
      
      public function setSize(width:uint, height:uint) : void
      {
         if(this.stage != null)
         {
            if(this.maxWidth > 0 && width > this.maxWidth)
            {
               this.winWidth = maxWidth;
            }
            else if(this.minWidth > 0 && width < this.minWidth)
            {
               this.winWidth = this.minWidth;
            }
            else
            {
               this.winWidth = width;
            }
            if(this.maxHeight > 0 && height > this.maxHeight)
            {
               this.winHeight = maxHeight;
            }
            else if(this.minHeight > 0 && width < this.minHeight)
            {
               this.winHeight = this.minHeight;
            }
            else
            {
               this.winHeight = height;
            }
            if(this.winWidth > this.stage.stageWidth)
            {
               this.winWidth = this.stage.stageWidth;
               this.x = 0;
            }
            if(this.winHeight > this.stage.stageHeight)
            {
               this.winHeight = this.stage.stageHeight;
               this.y = 0;
            }
            if(this.isLoaded)
            {
               this.setBorders();
               this.setContainerMask();
               this.setDragButton();
               this.setButtons();
               this.setResizeButton();
               this.dispatchEvent(new Event(Event.RESIZE));
            }
         }
         else
         {
            this.winWidth = width;
            this.winHeight = height;
         }
      }
      
      protected function setDragButton() : void
      {
         if(this.btnDrag != null && this.stage != null)
         {
            this.btnDrag.x = 0;
            this.btnDrag.y = 0;
            this.btnDrag.width = this.winWidth;
            this.btnDrag.visible = (this.winWidth < this.stage.stageWidth || this.winHeight < this.stage.stageHeight) && this.isDragable;
         }
      }
      
      protected function setResizeButton() : void
      {
         this.mcResizeButton.visible = this.isResisable;
         this.mcResizeButton.x = this.winWidth - this.mcResizeButton.width;
         this.mcResizeButton.y = this.winHeight - this.mcResizeButton.height;
      }
      
      public function getSettings() : Object
      {
         var obj:Object = new Object();
         if(this.savePosition)
         {
            obj.x = this.x;
            obj.y = this.y;
         }
         if(this.saveSize)
         {
            obj.winWidth = this.winWidth;
            obj.winHeight = this.winHeight;
         }
         obj.isMax = this.isMax;
         obj.minWidth = this.minWidth;
         obj.minHeight = this.minHeight;
         obj.maxWidth = this.maxWidth;
         obj.maxHeight = this.maxHeight;
         obj.isDragable = this.isDragable;
         obj.isResisable = this.isResisable;
         obj.showClose = this.showClose;
         obj.showMax = this.showMax;
         obj.resetWidth = this.resetWidth;
         obj.resetHeight = this.resetHeight;
         obj.resetX = this.resetX;
         obj.resetY = this.resetY;
         return obj;
      }
      
      public function setSettings(obj:Object) : void
      {
         if(this.savePosition)
         {
            this.x = obj.x;
            this.y = obj.y;
         }
         if(this.saveSize)
         {
            this.winWidth = obj.winWidth;
            this.winHeight = obj.winHeight;
         }
         this.isMax = obj.isMax;
         this.minWidth = obj.minWidth;
         this.minHeight = obj.minHeight;
         this.maxWidth = obj.maxWidth;
         this.maxHeight = obj.maxHeight;
         this.isDragable = obj.isDragable;
         this.isResisable = obj.isResisable;
         this.showClose = obj.showClose;
         this.showMax = obj.showMax;
         this.resetWidth = obj.resetWidth;
         this.resetHeight = obj.resetHeight;
         this.resetX = obj.resetX;
         this.resetY = obj.resetY;
         if(this.isLoaded)
         {
            this.setSize(this.winWidth,this.winHeight);
            this.checkPos();
         }
      }
      
      private function retryLoad() : void
      {
         retryTimer.delay = retryTimer.delay * 2;
         if(this.mcContainer == Globals.uiManager.inventoryPanel)
         {
            trace("[WINDOW: retryLoad] delay: ",retryTimer.delay);
         }
         retryTimer.addEventListener(TimerEvent.TIMER,onRetryTimer,false,0,true);
         retryTimer.start();
      }
      
      protected function onAddedToStage(evt:Event) : void
      {
         this.stage.addEventListener(Event.RESIZE,onStageResize,false,0,true);
         if(this.isLoaded)
         {
            if(!this.isInit)
            {
               init();
            }
            else
            {
               this.useMask(this._useMask);
               this.setSize(this.winWidth,this.winHeight);
               this.checkPos();
            }
         }
      }
      
      public function setShowClose(v:Boolean) : void
      {
         this.showClose = v;
         if(this.isLoaded)
         {
            this.btnClose.visible = this.showClose;
            this.setButtons();
         }
         this.dispatchEvent(new Event(Settings#54.SETTING_CHANGED_EVENT));
      }
      
      private function onVerifyError(e:IOErrorEvent) : void
      {
         if(this.mcContainer == Globals.uiManager.inventoryPanel)
         {
            trace("[WINDOW: onVerifyError] ",e.text);
         }
         this.retryLoad();
      }
      
      private function onIOError(e:IOErrorEvent) : void
      {
         if(this.mcContainer == Globals.uiManager.inventoryPanel)
         {
            trace("[WINDOW: onIOERROR] ",e.text);
         }
         this.retryLoad();
      }
      
      protected function onResizeButtonPress(evt:MouseEvent) : void
      {
         this.stage.addEventListener(MouseEvent.MOUSE_MOVE,onResizeButtonMove,false,0,true);
         this.stage.addEventListener(MouseEvent.MOUSE_UP,onResizeButtonRelease,false,0,true);
      }
      
      protected function onMouseDown(evt:MouseEvent) : void
      {
         DisplayObjectUtils.bringToFront(this);
      }
      
      protected function onResizeButtonRelease(evt:MouseEvent) : void
      {
         this.stage.removeEventListener(MouseEvent.MOUSE_MOVE,onResizeButtonMove);
         this.stage.removeEventListener(MouseEvent.MOUSE_UP,onResizeButtonRelease);
         this.dispatchEvent(new Event(Settings#54.SETTING_CHANGED_EVENT));
      }
      
      private function onRetryTimer(e:TimerEvent) : void
      {
         this.winLoaderInfo.addEventListener(Event.COMPLETE,onWinLoadComplete);
         this.winLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
         this.winLoaderInfo.addEventListener(IOErrorEvent.NETWORK_ERROR,this.onNetworkError);
         this.winLoaderInfo.addEventListener(IOErrorEvent.VERIFY_ERROR,this.onVerifyError);
         this.winLoaderInfo.addEventListener(IOErrorEvent.DISK_ERROR,this.onDiskError);
         this.winLoader.load(new URLRequest(this.swfWin),this._loaderContextFactory.getLoaderContext());
      }
      
      public function removeContainerChild() : void
      {
         if(this.mcContainer != null)
         {
            if(this.mcMaskDisplay.contains(this.mcContainer))
            {
               this.mcMaskDisplay.removeChild(this.mcContainer);
            }
            else if(this.contains(this.mcContainer))
            {
               this.removeChild(this.mcContainer);
            }
            this.mcContainer = null;
         }
      }
      
      public function getIsDragable() : Boolean
      {
         return this.isDragable;
      }
      
      protected function setButtons() : void
      {
         this.btnClose.visible = this.showClose;
         this.btnMax.visible = this.showMax;
         var paddind:uint = 5;
         var xpos:uint = this.winWidth - paddind;
         if(this.showClose)
         {
            this.btnClose.y = paddind;
            this.btnClose.x = xpos - this.btnClose.width;
            xpos = xpos - this.btnClose.width - 2;
         }
         if(this.showMax)
         {
            this.btnMax.y = paddind;
            this.btnMax.x = xpos - this.btnMax.width;
         }
      }
      
      public function getDefaultNormal() : Object
      {
         return this.defaultNormal;
      }
      
      public function setMinHeight(v:uint) : void
      {
         this.minHeight = v;
         if(this.isMax)
         {
            this.setSize(this.stage.stageWidth,this.stage.stageHeight);
         }
         else
         {
            this.setSize(this.winWidth,this.winHeight);
         }
         this.dispatchEvent(new Event(Settings#54.SETTING_CHANGED_EVENT));
      }
      
      public function setIsDragable(v:Boolean) : void
      {
         this.isDragable = v;
         this.setDragButton();
         this.dispatchEvent(new Event(Settings#54.SETTING_CHANGED_EVENT));
      }
      
      protected function setContainerMask() : void
      {
         var mcTopLeft:Sprite = Sprite(this.mcMask.getChildByName("topLeft"));
         var mcTop:Sprite = Sprite(this.mcMask.getChildByName("top"));
         var mcTopRight:Sprite = Sprite(this.mcMask.getChildByName("topRight"));
         var mcMid:Sprite = Sprite(this.mcMask.getChildByName("mid"));
         var mcBottomLeft:Sprite = Sprite(this.mcMask.getChildByName("bottomLeft"));
         var mcBottom:Sprite = Sprite(this.mcMask.getChildByName("bottom"));
         var mcBottomRight:Sprite = Sprite(this.mcMask.getChildByName("bottomRight"));
         mcTopLeft.x = 0;
         mcTopLeft.y = 0;
         mcTop.width = this.winWidth - mcTopLeft.width - mcTopRight.width;
         mcTop.height = mcTopLeft.height;
         mcTop.x = mcTopLeft.width;
         mcTop.y = 0;
         mcTopRight.x = this.winWidth - mcTopRight.width;
         mcMid.x = 0;
         mcMid.y = mcTopLeft.height;
         mcMid.width = this.winWidth;
         mcMid.height = this.winHeight - mcTop.height - mcBottom.height;
         mcBottomLeft.x = 0;
         mcBottomLeft.y = this.winHeight - mcBottomLeft.height;
         mcBottom.x = mcBottomLeft.width;
         mcBottom.y = this.winHeight - mcBottom.height;
         mcBottom.width = this.winWidth - mcBottomLeft.width - mcBottomRight.width;
         mcBottomRight.x = this.winWidth - mcBottomRight.width;
         mcBottomRight.y = this.winHeight - mcBottomRight.width;
      }
      
      public function getIsResisable() : Boolean
      {
         return this.isResisable;
      }
      
      public function getContainer() : DisplayObject
      {
         return this.mcContainer;
      }
      
      public function getShowMax() : Boolean
      {
         return this.showMax;
      }
      
      protected function onBtnDragPress(evt:MouseEvent) : void
      {
         if(this.isDragable)
         {
            this.stage.addEventListener(Event.MOUSE_LEAVE,onMouseLeave,false,0,true);
            this.startDrag();
         }
      }
      
      protected function onStageResize(evt:Event) : void
      {
         if(this.isMax)
         {
            this.setSize(this.stage.stageWidth,this.stage.stageHeight);
         }
         else
         {
            this.setSize(this.winWidth,this.winHeight);
         }
         this.checkPos();
      }
      
      public function getMaxHeight() : uint
      {
         return this.maxHeight;
      }
      
      protected function onBtnDragRelease(evt:MouseEvent) : void
      {
         this.stage.removeEventListener(Event.MOUSE_LEAVE,onMouseLeave);
         this.stopDrag();
         this.checkPos();
         this.dispatchEvent(new Event("MOVE"));
         this.dispatchEvent(new Event(Settings#54.SETTING_CHANGED_EVENT));
      }
      
      public function isWinLoaded() : Boolean
      {
         return this.isLoaded;
      }
      
      private function onNetworkError(e:IOErrorEvent) : void
      {
         if(this.mcContainer == Globals.uiManager.inventoryPanel)
         {
            trace("[WINDOW: onNetworkError] ",e.text);
         }
         this.retryLoad();
      }
      
      protected function onResizeButtonMove(evt:MouseEvent) : void
      {
         var nw:int = evt.stageX - this.x;
         if(evt.stageX >= this.stage.stageWidth)
         {
            nw = this.stage.stageWidth - this.x;
         }
         if(nw < this.minWidth)
         {
            nw = this.minWidth;
         }
         var nh:int = evt.stageY - this.y;
         if(evt.stageY >= this.stage.stageHeight)
         {
            nh = this.stage.stageHeight - this.y;
         }
         if(nh < this.minHeight)
         {
            nh = this.minHeight;
         }
         this.isMax = false;
         this.setSize(nw,nh);
      }
      
      public function close() : void
      {
         this.dispatchEvent(new Event("CLOSE"));
      }
   }
}

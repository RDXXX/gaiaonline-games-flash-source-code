package com.gaiaonline.battle.ui.battlewin
{
   import com.gaiaonline.battle.ApplicationInterfaces.IUIFramework;
   import com.gaiaonline.battle.ConfigManager;
   import com.gaiaonline.battle.StepLoader;
   import com.gaiaonline.battle.map.IMapHolder;
   import com.gaiaonline.battle.ui.CenterPrintMsg;
   import com.gaiaonline.battle.ui.CenterPrintMsgEvent;
   import com.gaiaonline.flexModulesAPIs.globalevent.GlobalEvent;
   import com.gaiaonline.objectPool.LoaderFactory;
   import com.gaiaonline.usersettings.ISettings;
   import com.gaiaonline.usersettings.Settings#54;
   import com.gaiaonline.utils.MouseEventProxy;
   import com.gaiaonline.utils.VisManagerSingleParent;
   import flash.display.DisplayObject;
   import flash.display.Loader;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.net.URLRequest;
   
   public class BattleWin extends Sprite implements ISettings, IMapHolder
   {
       
      
      private var fullScreenPosY:int = -1;
      
      private var _sizeObj:Object;
      
      private var _winHeader:IWinHeader;
      
      private var _uiFramework:IUIFramework = null;
      
      private var _visManager:VisManagerSingleParent = null;
      
      private var _serverName:String;
      
      private var winLoader:Loader;
      
      private var minHeight:uint = 101;
      
      private var isResisable:Boolean = false;
      
      private var winHeight:uint = 527;
      
      private var offsetX:Number = NaN;
      
      private var offsetY:Number = NaN;
      
      private var showMax:Boolean = true;
      
      private var mcMapBounds:Sprite;
      
      private var mcHeaderMask:Sprite;
      
      private var mcBorders:Sprite;
      
      private var winWidth:uint = 784;
      
      private var mcShadow:Sprite;
      
      private var resetHeight:uint = 527;
      
      private var defaultPosY:int = -1;
      
      private var btnMax:SimpleButton;
      
      private var defaultPosX:int = -1;
      
      private var mcWaterMark:Sprite;
      
      private var minWidth:uint = 156;
      
      private var mcBack:Sprite;
      
      private var _map:DisplayObject;
      
      private var isFullScreen:Boolean = false;
      
      private var maxHeight:uint = 0;
      
      private var _zoneName:String;
      
      private var btnDrag:SimpleButton;
      
      private var mcResizeButton:Sprite;
      
      private var resetWidth:uint = 784;
      
      private var mcMsgBox:BattleWinMsg;
      
      private var maxWidth:uint = 0;
      
      private var mcCounters:BattleWinCounters;
      
      private var mainContainer:Sprite;
      
      private var isLoaded:Boolean = false;
      
      private var isDragable:Boolean = false;
      
      private var isMax:Boolean = false;
      
      private var mcCenterPrint:Sprite;
      
      private var resetX:uint = 0;
      
      private var resetY:uint = 0;
      
      private var swfWin:String = "";
      
      private var fullScreenPosX:int = -1;
      
      public function BattleWin(uiFramework:IUIFramework, swfWin:String, map:DisplayObject)
      {
         _sizeObj = {
            "width":NaN,
            "height":NaN
         };
         super();
         this._uiFramework = uiFramework;
         this.tabEnabled = false;
         this.tabChildren = false;
         this.swfWin = swfWin;
         this._map = map;
         this.isDragable = isDragable;
         this.isResisable = isResisable;
         this.showMax = showMax;
         this.maxWidth = maxWidth;
         this.maxHeight = maxHeight;
         this.minWidth = minWidth;
         this.minHeight = minHeight;
         this.winLoader = LoaderFactory.getInstance().checkOut();
         this.winLoader.contentLoaderInfo.addEventListener(Event.INIT,onWinLoadInit,false,0,true);
         this.addEventListener(Event.ADDED_TO_STAGE,onAddedToStage,false,0,true);
         this.addEventListener(Event.REMOVED_FROM_STAGE,onRemoveFromStage,false,0,true);
         GlobalEvent.eventDispatcher.addEventListener(GlobalEvent.MAP_START_LOAD,onMapStartLoad,false,0,true);
         StepLoader.add(this.winLoader,new URLRequest(this.swfWin),uiFramework.loaderContextFactory.getLoaderContext());
         this._visManager = new VisManagerSingleParent(this);
      }
      
      public function updateCounter(name:String, title:String, value:Number = 0, goal:Number = -1, show:Boolean = true) : void
      {
         this.mcCounters.updateCounter(name,title,value,goal,show);
      }
      
      private function setBorders() : void
      {
         this.mcBorders.width = this.mcShadow.width = this.winWidth;
         this.mcBorders.height = this.mcShadow.height = this.winHeight;
      }
      
      private function init() : void
      {
         this.addChild(this.winLoader);
         this.mcBorders = Sprite(Sprite(this.winLoader.content).getChildByName("borders"));
         this.mcShadow = Sprite(Sprite(this.winLoader.content).getChildByName("mcShadow"));
         this.mcHeaderMask = Sprite(Sprite(this.winLoader.content).getChildByName("headerMask"));
         this.mcHeaderMask.mouseEnabled = false;
         this.mcBack = Sprite(Sprite(this.winLoader.content).getChildByName("back"));
         this.btnDrag = SimpleButton(Sprite(this.winLoader.content).getChildByName("btnDrag"));
         this.btnDrag.addEventListener(MouseEvent.MOUSE_DOWN,onBtnDragPress,false,0,true);
         this.btnDrag.addEventListener(MouseEvent.MOUSE_UP,onBtnDragRelease,false,0,true);
         this.btnMax = SimpleButton(Sprite(this.winLoader.content).getChildByName("btnMax"));
         this.btnMax.addEventListener(MouseEvent.MOUSE_UP,onMaxPress,false,0,true);
         this.mcResizeButton = Sprite(Sprite(this.winLoader.content).getChildByName("mcResizeButton"));
         this.mcResizeButton.addEventListener(MouseEvent.MOUSE_DOWN,onResizeButtonPress,false,0,true);
         this.mcResizeButton.addEventListener(MouseEvent.MOUSE_UP,onResizeButtonRelease,false,0,true);
         this.mcMsgBox = BattleWinMsg(Sprite(this.winLoader.content).getChildByName("mcMsgBox"));
         this.mcCounters = BattleWinCounters(Sprite(this.winLoader.content).getChildByName("mcCounters"));
         this.mcMapBounds = new Sprite();
         this.mcMapBounds.graphics.beginFill(0);
         this.mcMapBounds.graphics.drawRect(0,0,this.winWidth - 4,this.winHeight - 22);
         this.mcMapBounds.graphics.endFill();
         this.mainContainer = Sprite(Sprite(this.winLoader.content).getChildByName("container"));
         this.mainContainer.addChild(this.mcMapBounds);
         this.mainContainer.addChild(this._map);
         this.mainContainer.scrollRect = new Rectangle(0,0,780,505);
         this.mainContainer.cacheAsBitmap = true;
         this.mcCenterPrint = Sprite(Sprite(this.winLoader.content).getChildByName("mcCenterPrint"));
         this.mcCenterPrint.mouseEnabled = this.mcCenterPrint.mouseChildren = false;
         this.mcWaterMark = Sprite(this.winLoader.content).getChildByName("mcWaterMark") as Sprite;
         if(this.mcWaterMark != null)
         {
            this.mcWaterMark.mouseEnabled = false;
            this.mcWaterMark.mouseChildren = false;
         }
         this._winHeader = Sprite(this.winLoader.content).getChildByName("mcHeader") as IWinHeader;
         this._winHeader.init(this._uiFramework);
         this._winHeader.serverName = this._serverName;
         this._winHeader.zoneName = this._zoneName;
         this.setSize(this.winWidth,this.winHeight);
         this._uiFramework.map.setMapHolder(this);
         this.dispatchEvent(new Event(Settings#54.SETTING_CHANGED_EVENT));
         this.dispatchEvent(new Event(Event.COMPLETE));
      }
      
      public function getMinWidth() : uint
      {
         return this.minWidth;
      }
      
      private function setDisplayObjectVisible(displayObject:DisplayObject, visible:Boolean) : void
      {
         this._visManager.setVisible(displayObject,visible);
         displayObject.visible = visible;
      }
      
      private function setHeaderMask() : void
      {
         var mcTopLeft:Sprite = Sprite(this.mcHeaderMask.getChildByName("topLeft"));
         var mcTop:Sprite = Sprite(this.mcHeaderMask.getChildByName("top"));
         var mcTopRight:Sprite = Sprite(this.mcHeaderMask.getChildByName("topRight"));
         mcTopLeft.x = 0;
         mcTopLeft.y = 0;
         mcTop.width = this.winWidth - mcTopLeft.width - mcTopRight.width;
         mcTop.height = mcTopLeft.height;
         mcTop.x = mcTopLeft.width;
         mcTop.y = 0;
         mcTopRight.x = this.winWidth - mcTopRight.width;
         this.mcBack.height = 20;
         this.mcBack.scaleX = 1;
         if(this.mcBack.width < this.winWidth)
         {
            this.mcBack.width = this.winWidth;
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
      
      public function myStopDrag(e:MouseEvent) : void
      {
         this._uiFramework.stageMouseMoveLimiter.removeListener(_onMouseMove);
         stage.removeEventListener(MouseEvent.MOUSE_MOVE,_onMouseMove);
      }
      
      public function showShopCallout(show:Boolean) : void
      {
         if(this._winHeader is IBattleWinHeader)
         {
            IBattleWinHeader(this._winHeader).showShopCallout(show);
         }
      }
      
      private function alignCenterPrint() : void
      {
         for(var i:int = 0; i < this.mcCenterPrint.numChildren; i++)
         {
            this.mcCenterPrint.getChildAt(i).y = i * 20;
         }
         var rect:Rectangle = this.mcCenterPrint.getBounds(this.mcCenterPrint);
         this.mcCenterPrint.x = this.winWidth / 2 - rect.width / 2 - rect.x;
         this.mcCenterPrint.y = this.winHeight / 2 - rect.height / 2;
      }
      
      private function checkPos() : void
      {
         if(this.stage != null)
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
      
      public function get _isLoaded() : Boolean
      {
         return this.isLoaded;
      }
      
      public function setPositions(dX:int, dY:int, fsX:int, fsY:int) : void
      {
         this.defaultPosX = dX;
         this.defaultPosY = dY;
         this.fullScreenPosX = fsX;
         this.fullScreenPosY = fsY;
      }
      
      public function resetDefaultSettings(mode:String) : void
      {
         if(mode == "Full")
         {
            this.setSettings(this.getDefaultFull());
         }
         else if(mode == "Normal")
         {
            this.setSettings(this.getDefaultNormal());
         }
      }
      
      private function _onMouseMove(mep:MouseEventProxy) : void
      {
         var e:MouseEvent = mep.original;
         this.x = e.stageX - offsetX;
         this.y = e.stageY - offsetY;
         this.dispatchEvent(new Event("MouseMove"));
         e.updateAfterEvent();
      }
      
      private function onMaxPress(evt:Event) : void
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
      
      public function getMaxWidth() : uint
      {
         return this.maxWidth;
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
      
      public function setIsBragable(v:Boolean) : void
      {
         this.isDragable = v;
         this.btnDrag.enabled = this.isDragable;
         this.dispatchEvent(new Event(Settings#54.SETTING_CHANGED_EVENT));
      }
      
      public function getDefaultFull() : Object
      {
         var obj:Object = new Object();
         obj.winWidth = 784;
         obj.winHeight = 527;
         obj.x = 217;
         obj.y = 0;
         obj.isMax = false;
         obj.minWidth = 260;
         obj.minHeight = 175;
         obj.maxWidth = 0;
         obj.maxHeight = 0;
         obj.isDragable = true;
         obj.isResisable = true;
         obj.showMax = true;
         return obj;
      }
      
      public function setIsResisable(v:Boolean) : void
      {
         this.isResisable = v;
         this.setDisplayObjectVisible(this.mcResizeButton,this.isResisable);
         this.dispatchEvent(new Event(Settings#54.SETTING_CHANGED_EVENT));
      }
      
      public function getMcBound() : Sprite
      {
         return this.mcMapBounds;
      }
      
      private function onMouseLeave(evt:Event) : void
      {
         this.stage.removeEventListener(Event.MOUSE_LEAVE,onMouseLeave);
         this.myStopDrag(null);
         this.checkPos();
         this.dispatchEvent(new Event("MOVE"));
         this.dispatchEvent(new Event(Settings#54.SETTING_CHANGED_EVENT));
      }
      
      private function myStartDrag(e:MouseEvent) : void
      {
         offsetX = e.stageX - this.x;
         offsetY = e.stageY - this.y;
         this._uiFramework.stageMouseMoveLimiter.addListener(_onMouseMove);
      }
      
      private function onRemoveFromStage(evt:Event) : void
      {
         this.stage.removeEventListener(Event.MOUSE_LEAVE,onMouseLeave);
         this.stage.removeEventListener(Event.RESIZE,onStageResize);
      }
      
      public function setShowMax(v:Boolean) : void
      {
         this.showMax = v;
         this.setDisplayObjectVisible(this.btnMax,v);
         this.dispatchEvent(new Event(Settings#54.SETTING_CHANGED_EVENT));
      }
      
      public function getSize() : Object
      {
         this._sizeObj.width = this.winWidth;
         this._sizeObj.height = this.winHeight;
         return this._sizeObj;
      }
      
      public function setSize(width:uint, height:uint) : void
      {
         var wr:int = 0;
         var hr:int = 0;
         if(this.stage != null && this.isLoaded)
         {
            if(this.stage.stageWidth <= 780 && this.stage.stageHeight <= 555)
            {
               this.winWidth = 784;
               this.winHeight = 527;
            }
            else
            {
               if(this.maxWidth > 0 && width > this.maxWidth)
               {
                  this.winWidth = Math.min(maxWidth,this.stage.stageWidth);
               }
               else if(this.minWidth > 0 && width < this.minWidth)
               {
                  this.winWidth = Math.min(this.minWidth,this.stage.stageWidth);
               }
               else
               {
                  this.winWidth = Math.min(width,this.stage.stageWidth);
               }
               if(this.maxHeight > 0 && height > this.maxHeight)
               {
                  this.winHeight = Math.min(maxHeight,this.stage.stageHeight);
               }
               else if(this.minHeight > 0 && width < this.minHeight)
               {
                  this.winHeight = Math.min(this.minHeight,this.stage.stageHeight);
               }
               else
               {
                  this.winHeight = Math.min(height,this.stage.stageHeight);
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
               wr = Math.round(this.winWidth / 784 * 100);
               hr = Math.round(this.winHeight / 527 * 100);
               if(wr < hr)
               {
                  this.winHeight = this.winWidth * (527 / 784);
               }
               else
               {
                  this.winWidth = this.winHeight * (784 / 527);
               }
            }
            this.setBorders();
            this.setHeaderMask();
            this.setMapMask();
            this.setDragButton();
            this.setButtons();
            this.setResizeButton();
            this.alignCenterPrint();
            if(this.mcWaterMark != null)
            {
               this.mcWaterMark.x = this.winWidth - this.mcWaterMark.width - 8;
               this.mcWaterMark.y = this.winHeight - this.mcWaterMark.height - 8;
            }
            if(this.mcCounters != null)
            {
               this.mcCounters.x = this.winWidth - 2;
               this.mcCounters.y = this.winHeight - 4;
            }
            this._winHeader.setSize(this.winWidth,this.winHeight,this.btnMax.x);
            this.dispatchEvent(new Event(Event.RESIZE));
            this.stage.invalidate();
         }
      }
      
      private function setDragButton() : void
      {
         this.btnDrag.x = 0;
         this.btnDrag.y = 0;
         this.btnDrag.width = this.winWidth;
         this.btnDrag.enabled = this.btnDrag.visible = this.btnDrag.enabled = (this.winWidth < this.stage.stageWidth || this.winHeight < this.stage.stageHeight) && this.isDragable;
      }
      
      public function get winHeader() : IWinHeader
      {
         return this._winHeader;
      }
      
      public function getHeaderHeight() : Number
      {
         return this.mcBack.height;
      }
      
      public function setMsgBox(name:String, title:String, show:Boolean = true, msg:String = null, url:String = null, npcName:String = null) : void
      {
         if(this.mcMsgBox != null)
         {
            this.mcMsgBox.setMsg(name,title,show,msg,url,npcName);
         }
      }
      
      private function setResizeButton() : void
      {
         this.setDisplayObjectVisible(this.mcResizeButton,this.isResisable);
         this.mcResizeButton.x = this.winWidth - this.mcResizeButton.width;
         this.mcResizeButton.y = this.winHeight - this.mcResizeButton.height;
      }
      
      public function getShopButtonBottom() : Number
      {
         var btn:Sprite = null;
         if(this._winHeader is IBattleWinHeader)
         {
            btn = IBattleWinHeader(this._winHeader).getShopButton();
            return btn.stage.y + btn.y + btn.height;
         }
         return 0;
      }
      
      public function getSettings() : Object
      {
         var obj:Object = new Object();
         obj.x = this.x;
         obj.y = this.y;
         obj.winWidth = this.winWidth;
         obj.winHeight = this.winHeight;
         obj.isMax = this.isMax;
         obj.minWidth = this.minWidth;
         obj.minHeight = this.minHeight;
         obj.maxWidth = this.maxWidth;
         obj.maxHeight = this.maxHeight;
         obj.isDragable = this.isDragable;
         obj.isResisable = this.isResisable;
         obj.showMax = this.showMax;
         obj.resetWidth = this.resetWidth;
         obj.resetHeight = this.resetHeight;
         obj.resetX = this.resetX;
         obj.resetY = this.resetY;
         return obj;
      }
      
      private function setMapMask() : void
      {
         this.mainContainer.scaleX = (this.winWidth - 4) / 780;
         this.mainContainer.scaleY = (this.winHeight - 22) / 505;
      }
      
      public function getShopButtonWidth() : Number
      {
         if(this._winHeader is IBattleWinHeader)
         {
            return IBattleWinHeader(this._winHeader).getShopButton().width;
         }
         return 0;
      }
      
      private function onAddedToStage(evt:Event) : void
      {
         this.stage.addEventListener(Event.RESIZE,onStageResize,false,0,true);
         if(this.isLoaded)
         {
            init();
         }
      }
      
      private function onWinLoadInit(evt:Event) : void
      {
         init();
         this.isLoaded = true;
         if(this.isMax)
         {
            this.maximize();
         }
         else
         {
            this.setSize(this.winWidth,this.winHeight);
         }
         this.winLoader.contentLoaderInfo.removeEventListener(Event.INIT,onWinLoadInit);
         LoaderFactory.getInstance().checkIn(winLoader);
      }
      
      public function setSettings(obj:Object) : void
      {
         this.x = obj.x;
         this.y = obj.y;
         this.winWidth = obj.winWidth;
         this.winHeight = obj.winHeight;
         this.minWidth = obj.minWidth;
         this.minHeight = obj.minHeight;
         this.maxWidth = obj.maxWidth;
         this.maxHeight = obj.maxHeight;
         this.isDragable = obj.isDragable;
         this.isResisable = obj.isResisable;
         this.showMax = obj.showMax;
         this.resetWidth = obj.resetWidth;
         this.resetHeight = obj.resetHeight;
         this.resetX = obj.resetX;
         this.resetY = obj.resetY;
         if(ConfigManager.getInstance().mainWindowMaximize)
         {
            this.isMax = true;
         }
         else
         {
            this.isMax = obj.isMax;
         }
         if(this.isLoaded)
         {
            if(this.isMax)
            {
               this.maximize();
            }
            else
            {
               this.setSize(this.winWidth,this.winHeight);
            }
            this.checkPos();
         }
      }
      
      private function setButtons() : void
      {
         this.setDisplayObjectVisible(this.btnMax,this.showMax);
         var xpaddind:uint = 5;
         var ypadding:uint = 3;
         var xpos:uint = this.winWidth - xpaddind;
         if(this.showMax)
         {
            this.btnMax.y = ypadding;
            this.btnMax.x = xpos - this.btnMax.width;
         }
      }
      
      private function onResizeButtonRelease(evt:MouseEvent) : void
      {
         this.stage.removeEventListener(MouseEvent.MOUSE_MOVE,onResizeButtonMove);
         this.stage.removeEventListener(MouseEvent.MOUSE_UP,onResizeButtonRelease);
         this.dispatchEvent(new Event(Settings#54.SETTING_CHANGED_EVENT));
      }
      
      private function onMsgDone(evt:CenterPrintMsgEvent) : void
      {
         var received:Boolean = false;
         var fromSystem:Boolean = false;
         var centerPrintMsg:CenterPrintMsg = evt.target as CenterPrintMsg;
         if(centerPrintMsg != null)
         {
            received = true;
            fromSystem = true;
            GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.CHATTABLE_MSG,{
               "msg":centerPrintMsg.message,
               "type":"server",
               "received":received,
               "color":evt.color,
               "fromSystem":true
            }));
            if(this.mcCenterPrint.contains(centerPrintMsg))
            {
               centerPrintMsg.removeEventListener(CenterPrintMsgEvent.DONE,onMsgDone);
               this.mcCenterPrint.removeChild(centerPrintMsg);
            }
         }
         CenterPrintMsg(evt.target).removeEventListener(CenterPrintMsgEvent.DONE,onMsgDone);
      }
      
      private function onResizeButtonPress(evt:MouseEvent) : void
      {
         this.stage.addEventListener(MouseEvent.MOUSE_MOVE,onResizeButtonMove,false,0,true);
         this.stage.addEventListener(MouseEvent.MOUSE_UP,onResizeButtonRelease,false,0,true);
      }
      
      public function getIsDragable() : Boolean
      {
         return this.isDragable;
      }
      
      public function maximize() : void
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
      
      public function getDefaultNormal() : Object
      {
         var obj:Object = new Object();
         if(this.defaultPosX == -1)
         {
            obj.x = -2;
         }
         else
         {
            obj.x = this.defaultPosX;
         }
         if(this.defaultPosY == -1)
         {
            obj.y = -20;
         }
         else
         {
            obj.y = this.defaultPosY;
         }
         obj.winWidth = 784;
         obj.winHeight = 527;
         obj.isMax = false;
         obj.minWidth = 784;
         obj.minHeight = 527;
         obj.maxWidth = 784;
         obj.maxHeight = 784;
         if(obj.x <= 0)
         {
            obj.isDragable = false;
         }
         else
         {
            obj.isDragable = true;
         }
         if(obj.x <= 0)
         {
            obj.isResisable = false;
         }
         else
         {
            obj.isResisable = true;
         }
         if(obj.x <= 0)
         {
            obj.showMax = false;
         }
         else
         {
            obj.showMax = true;
         }
         trace("get Default Normal : ",obj.x);
         return obj;
      }
      
      public function set serverName(v:String) : void
      {
         this._serverName = v;
         if(this._winHeader != null)
         {
            this._winHeader.serverName = this._serverName;
         }
      }
      
      public function getIsResisable() : Boolean
      {
         return this.isResisable;
      }
      
      private function onMapStartLoad(event:GlobalEvent) : void
      {
         this._zoneName = event.data.name;
         if(this._winHeader != null)
         {
            this._winHeader.zoneName = this._zoneName;
         }
      }
      
      public function getShowMax() : Boolean
      {
         return this.showMax;
      }
      
      private function onBtnDragPress(evt:MouseEvent) : void
      {
         if(this.isDragable)
         {
            this.stage.addEventListener(Event.MOUSE_LEAVE,onMouseLeave,false,0,true);
            this.myStartDrag(evt);
         }
      }
      
      private function onStageResize(evt:Event) : void
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
      
      private function onBtnDragRelease(evt:MouseEvent) : void
      {
         this.stage.removeEventListener(Event.MOUSE_LEAVE,onMouseLeave);
         this.myStopDrag(evt);
         this.checkPos();
         this.dispatchEvent(new Event("MOVE"));
         this.dispatchEvent(new Event(Settings#54.SETTING_CHANGED_EVENT));
      }
      
      public function addCenterPrint(txt:String, type:String = "") : void
      {
         var msg:CenterPrintMsg = null;
         if(this.mcCenterPrint != null)
         {
            msg = new CenterPrintMsg(txt,type);
            msg.addEventListener(CenterPrintMsgEvent.DONE,onMsgDone);
            this.mcCenterPrint.addChild(msg);
            this.alignCenterPrint();
         }
      }
      
      public function getShopButtonOffset() : Number
      {
         var btn:Sprite = null;
         if(this._winHeader is IBattleWinHeader)
         {
            btn = IBattleWinHeader(this._winHeader).getShopButton();
            return this.getSize().width - btn.x - btn.width;
         }
         return 0;
      }
      
      public function updateTimer(name:String, title:String, startTime:Date, endTime:Date, playing:Boolean, show:Boolean = true) : void
      {
         this.mcCounters.updateTimer(name,title,startTime,endTime,playing,show);
      }
      
      private function onResizeButtonMove(evt:MouseEvent) : void
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
   }
}

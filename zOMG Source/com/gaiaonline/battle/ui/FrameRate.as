package com.gaiaonline.battle.ui
{
   import com.gaiaonline.battle.ApplicationInterfaces.IUIFramework;
   import com.gaiaonline.battle.gateway.BattleEvent;
   import com.gaiaonline.battle.gateway.BattleGateway;
   import com.gaiaonline.battle.gateway.BattleMessage;
   import com.gaiaonline.battle.map.IMap;
   import com.gaiaonline.battle.utils.NumericRasterTextField;
   import com.gaiaonline.flexModulesAPIs.gatewayInterfaces.IBattleMessage;
   import com.gaiaonline.flexModulesAPIs.globalevent.GlobalEvent;
   import com.gaiaonline.utils.DisplayObjectUtils;
   import com.gaiaonline.utils.FrameTimer;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.system.System;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.utils.getTimer;
   import it.gotoandplay.smartfoxserver.SocketStats;
   
   public class FrameRate extends Sprite
   {
      
      private static const FIELD_HEIGHT:Number = 15;
      
      private static const FIELD_LEFT:Number = 10;
       
      
      private var txtWrites:NumericRasterTextField;
      
      private var _lastTotalMemoryKB:int = 0;
      
      private var txtReads:NumericRasterTextField;
      
      private var txtBytesRead:NumericRasterTextField;
      
      private var _lastRoom:String;
      
      private var _iTest:uint = 0;
      
      private var _map:IMap;
      
      private var tests:Array;
      
      private var _fpsAutoUpdate:Boolean = true;
      
      public var mx:Number = 0;
      
      public var my:Number = 0;
      
      private var _socketStats:SocketStats;
      
      private var txtMx:NumericRasterTextField;
      
      private var txtBytesWritten:NumericRasterTextField;
      
      private var _frameCount:int = 0;
      
      private var txtMy:NumericRasterTextField;
      
      private var _fpsStartTime:int = 0;
      
      private var txtClientVer:TextField;
      
      private var _fpsTimer:FrameTimer;
      
      private var txtServerVer:TextField;
      
      private var txtTotalMemory:NumericRasterTextField;
      
      private var txtFPS:NumericRasterTextField;
      
      private var btn:SimpleButton;
      
      private var txtTotalMemoryDelta:NumericRasterTextField;
      
      private var _bg:BattleGateway;
      
      private var txtRoom:TextField;
      
      private var _nonce:String;
      
      private var _lastRender:int = 0;
      
      private var _frameTimer:FrameTimer;
      
      public function FrameRate(uiFramework:IUIFramework, gateway:BattleGateway, showNetworkStats:Boolean)
      {
         _frameTimer = new FrameTimer(enterFrameListener);
         tests = [function():void
         {
            var msg:* = new BattleMessage(BattleEvent.SHOP_INFO,{});
            _bg.sendMsg(msg);
         },function():void
         {
            var msg:* = new BattleMessage(BattleEvent.GET_NONCE,{});
            _bg.sendMsg(msg);
         },function():void
         {
            var msg:* = new BattleMessage("buyStoreItem",{
               "nonce":_nonce,
               "itemId":18032
            });
            _bg.sendMsg(msg);
         }];
         _fpsTimer = new FrameTimer(onFpsTimer);
         super();
         _map = uiFramework.map;
         _bg = gateway;
         if(showNetworkStats)
         {
            _socketStats = gateway.socketStats;
         }
         this.tabEnabled = false;
         this.tabChildren = false;
         var format:TextFormat = new TextFormat();
         format.font = "myArial";
         format.size = 12;
         format.color = 16777215;
         var currentY:Number = 5;
         this.txtFPS = new NumericRasterTextField();
         this.txtFPS.x = FIELD_LEFT;
         this.txtFPS.y = currentY;
         this.txtFPS.suffix = " fps";
         this.addChild(this.txtFPS);
         currentY = currentY + FIELD_HEIGHT;
         this.txtTotalMemory = new NumericRasterTextField();
         this.txtTotalMemory.x = FIELD_LEFT;
         this.txtTotalMemory.y = currentY;
         this.txtTotalMemory.suffix = " KB";
         this.txtTotalMemory.showThousandsSeparator = true;
         this.addChild(this.txtTotalMemory);
         currentY = currentY + FIELD_HEIGHT;
         this.txtTotalMemoryDelta = new NumericRasterTextField();
         this.txtTotalMemoryDelta.x = 15;
         this.txtTotalMemoryDelta.y = currentY;
         this.txtTotalMemoryDelta.suffix = " KB";
         this.txtTotalMemoryDelta.showSign = true;
         this.txtTotalMemoryDelta.showThousandsSeparator = true;
         this.addChild(this.txtTotalMemoryDelta);
         currentY = currentY + FIELD_HEIGHT;
         if(_socketStats)
         {
            this.txtReads = new NumericRasterTextField();
            this.txtReads.x = FIELD_LEFT;
            this.txtReads.y = currentY;
            this.txtReads.suffix = "dn";
            this.addChild(this.txtReads);
            this.txtBytesRead = new NumericRasterTextField();
            this.txtBytesRead.x = FIELD_LEFT + 40;
            this.txtBytesRead.y = currentY;
            this.txtBytesRead.suffix = "b";
            this.txtBytesRead.showThousandsSeparator = true;
            this.addChild(this.txtBytesRead);
            currentY = currentY + FIELD_HEIGHT;
            this.txtWrites = new NumericRasterTextField();
            this.txtWrites.x = FIELD_LEFT;
            this.txtWrites.y = currentY;
            this.txtWrites.suffix = "up";
            this.addChild(this.txtWrites);
            this.txtBytesWritten = new NumericRasterTextField();
            this.txtBytesWritten.x = FIELD_LEFT + 40;
            this.txtBytesWritten.y = currentY;
            this.txtBytesWritten.suffix = "b";
            this.txtBytesWritten.showThousandsSeparator = true;
            this.addChild(this.txtBytesWritten);
            currentY = currentY + FIELD_HEIGHT;
         }
         this.txtMx = new NumericRasterTextField();
         this.txtMx.x = FIELD_LEFT;
         this.txtMx.y = currentY;
         this.txtMx.suffix = "x";
         this.addChild(this.txtMx);
         this.txtMy = new NumericRasterTextField();
         this.txtMy.x = 55;
         this.txtMy.y = currentY;
         this.txtMy.suffix = "y";
         this.addChild(this.txtMy);
         currentY = currentY + FIELD_HEIGHT;
         this.txtRoom = new TextField();
         this.txtRoom.embedFonts = true;
         this.txtRoom.autoSize = TextFieldAutoSize.LEFT;
         this.txtRoom.defaultTextFormat = format;
         this.txtRoom.x = FIELD_LEFT;
         this.txtRoom.y = currentY;
         this.addChild(this.txtRoom);
         currentY = currentY + FIELD_HEIGHT;
         this.txtServerVer = new TextField();
         this.txtServerVer.embedFonts = true;
         this.txtServerVer.autoSize = TextFieldAutoSize.LEFT;
         this.txtServerVer.defaultTextFormat = format;
         this.txtServerVer.x = FIELD_LEFT;
         this.txtServerVer.y = currentY;
         this.addChild(this.txtServerVer);
         currentY = currentY + FIELD_HEIGHT;
         this.txtClientVer = new TextField();
         this.txtClientVer.embedFonts = true;
         this.txtClientVer.autoSize = TextFieldAutoSize.LEFT;
         this.txtClientVer.defaultTextFormat = format;
         this.txtClientVer.x = FIELD_LEFT;
         this.txtClientVer.y = currentY;
         this.addChild(this.txtClientVer);
         var box:Sprite = new Sprite();
         box.graphics.beginFill(65535);
         box.graphics.drawRect(0,0,30,18);
         box.graphics.endFill();
         var box2:Sprite = new Sprite();
         box2.graphics.beginFill(16711680);
         box2.graphics.drawRect(0,0,30,18);
         box2.graphics.endFill();
         this.btn = new SimpleButton(box,box,box2,box2);
         this.addChild(this.btn);
         this.btn.addEventListener(MouseEvent.CLICK,onBtnClick);
         this.btn.y = 20;
         this.btn.x = 100;
         uiFramework.tooltipManager.addToolTip(this.btn,"default: gc\nSHIFT: toggle per frame updates\nCTRL: Stop all object on the stage\nALT: traceDisplayList(stage)");
         this._frameTimer.startPerFrame();
         this.starFpsCount();
         GlobalEvent.eventDispatcher.addEventListener(GlobalEvent.FPS_MONITORING_STATE_CHANGED,onFPSMonitoringStateChange);
      }
      
      private function onBtnClick(evt:MouseEvent) : void
      {
         var fn:Function = null;
         if(evt.shiftKey)
         {
            if(this._frameTimer.running)
            {
               this._frameTimer.stop();
            }
            else
            {
               this._frameTimer.startPerFrame();
            }
         }
         else if(evt.ctrlKey && evt.altKey)
         {
            nextStoreTest();
         }
         else if(evt.ctrlKey)
         {
            DisplayObjectUtils.stopAllMovieClips(stage);
         }
         else if(evt.altKey)
         {
            DisplayObjectUtils.traceDisplayList(stage);
         }
         else
         {
            enterFrameListener();
            fn = System["gc"] as Function;
            if(fn != null)
            {
               fn();
            }
         }
      }
      
      public function setClientVer(v:String) : void
      {
         this.txtClientVer.text = "client: " + v;
      }
      
      public function starFpsCount(autoUpdate:Boolean = true, time:int = 500) : void
      {
         this._fpsAutoUpdate = autoUpdate;
         this._fpsStartTime = getTimer();
         this._frameCount = 0;
         if(this._fpsAutoUpdate)
         {
            this._fpsTimer.start(time);
         }
      }
      
      public function setServerVer(v:String) : void
      {
         this.txtServerVer.text = "server: " + v;
      }
      
      private function onStoreTestResult(be:BattleEvent) : void
      {
         var bmsg:IBattleMessage = null;
         var storeInfo:Array = null;
         var si:* = null;
         var key:* = null;
         bmsg = be.getBattleMessage();
         switch(be.type)
         {
            case BattleEvent.SHOP_INFO:
               storeInfo = bmsg.responseObj[0].storeInfo;
               for(si in storeInfo)
               {
                  trace("Store Item:");
                  for(key in storeInfo[si])
                  {
                     trace(" |- " + key + ": " + storeInfo[si][key]);
                  }
               }
               break;
            case BattleEvent.GET_NONCE:
               _nonce = bmsg.responseObj[0].nonce;
               trace("Nonce: " + _nonce);
               break;
            case BattleEvent.BUY_STORE_ITEM:
               trace("buy response " + bmsg.responseObj[0].buyResponse);
         }
      }
      
      private function enterFrameListener() : void
      {
         var time:int = 0;
         this._frameCount++;
         var totalMemoryKB:int = System.totalMemory / 1024;
         this.txtTotalMemory.integer = totalMemoryKB;
         this.txtMx.integer = this.mx;
         this.txtMy.integer = this.my;
         if(_map && _map.isMapLoaded())
         {
            if(_map.getCurrentMapRoom() != null)
            {
               if(_lastRoom != _map.getCurrentMapRoom().serverRoomId)
               {
                  _lastRoom = _map.getCurrentMapRoom().serverRoomId;
                  this.txtRoom.text = _lastRoom;
               }
            }
         }
         time = getTimer();
         var periodRender:* = time - _lastRender > 2000;
         if(periodRender)
         {
            _lastRender = time;
            this.txtTotalMemoryDelta.integer = totalMemoryKB - _lastTotalMemoryKB;
            _lastTotalMemoryKB = totalMemoryKB;
            if(_socketStats)
            {
               this.txtReads.integer = _socketStats.reads;
               this.txtWrites.integer = _socketStats.writes;
               this.txtBytesRead.integer = _socketStats.bytesRead;
               this.txtBytesWritten.integer = _socketStats.bytesWritten;
               _socketStats.clear();
            }
         }
      }
      
      public function stopFpsCount() : int
      {
         var now:int = 0;
         var dt:Number = NaN;
         now = getTimer();
         dt = (now - this._fpsStartTime) / 1000;
         var fps:Number = this._frameCount / dt;
         this.txtFPS.integer = fps;
         this._fpsStartTime = now;
         this._frameCount = 0;
         return fps;
      }
      
      private function onFpsTimer() : void
      {
         this.stopFpsCount();
         if(!this._fpsAutoUpdate)
         {
            this._fpsTimer.stop();
         }
      }
      
      private function onFPSMonitoringStateChange(e:GlobalEvent) : void
      {
         var data:Object = e.data;
         if(data.on)
         {
            this.starFpsCount(data.autoUpdate);
         }
         else
         {
            this.stopFpsCount();
         }
      }
      
      private function nextStoreTest() : void
      {
         tests[_iTest++ % tests.length]();
         _bg.addEventListener(BattleEvent.SHOP_INFO,onStoreTestResult,false,0,true);
         _bg.addEventListener(BattleEvent.GET_NONCE,onStoreTestResult,false,0,true);
         _bg.addEventListener(BattleEvent.BUY_STORE_ITEM,onStoreTestResult,false,0,true);
      }
   }
}

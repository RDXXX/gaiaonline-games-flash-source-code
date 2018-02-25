package com.gaiaonline.battle.newrings
{
   import com.gaiaonline.battle.ApplicationInterfaces.IFileVersionManager;
   import com.gaiaonline.battle.ItemLoadManager.ItemLoadEvent;
   import com.gaiaonline.battle.gateway.BattleEvent;
   import com.gaiaonline.battle.gateway.BattleGateway;
   import com.gaiaonline.battle.gateway.BattleMessage;
   import com.gaiaonline.objectPool.LoaderFactory;
   import com.gaiaonline.utils.DisplayObjectStopper;
   import com.gaiaonline.utils.DisplayObjectStopperModes;
   import com.gaiaonline.utils.DisplayObjectUtils;
   import com.gaiaonline.utils.FrameTimer;
   import com.gaiaonline.utils.factories.ILoaderContextFactory;
   import flash.display.Loader;
   import flash.display.LoaderInfo;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLRequest;
   
   public class RingLoader
   {
       
      
      private var _ring:Ring = null;
      
      private var _ringGarbageStopper:DisplayObjectStopper;
      
      private var _callLater:FrameTimer;
      
      private var _baseUrl:String = null;
      
      private var iconLoader:Loader;
      
      private var _loaderContextFactory:ILoaderContextFactory = null;
      
      private var _fileVersionManager:IFileVersionManager = null;
      
      private var swfLoader:Loader;
      
      private var _pendingLoad:Array;
      
      public function RingLoader(baseUrl:String, fileVersionManager:IFileVersionManager, loaderContextFactory:ILoaderContextFactory)
      {
         _callLater = new FrameTimer(onIconLoaded);
         _pendingLoad = [];
         _ringGarbageStopper = new DisplayObjectStopper(DisplayObjectStopperModes.SHOW_NO_ANIM,true);
         super();
         this._baseUrl = baseUrl;
         this._fileVersionManager = fileVersionManager;
         this._loaderContextFactory = loaderContextFactory;
      }
      
      private static function assertOnNull(condition:Object, msg:String) : void
      {
         if(!condition)
         {
            throw "[kja] ERROR: " + msg + "null";
         }
      }
      
      private function log(... args) : void
      {
         var s:String = null;
         var p:* = null;
         for(p in args)
         {
            if(s == null)
            {
               if(args[p] == null)
               {
                  s = "null";
               }
               else
               {
                  s = args[p];
               }
            }
            else if(args[p] == null)
            {
               s = s = s + ", null";
            }
            else
            {
               s = s + "," + String(args[p]);
            }
         }
      }
      
      public function loadSimpleRing(gateway:BattleGateway, ring:Ring) : void
      {
         var msg:BattleMessage = null;
         _ring = ring;
         if(null != ring && !_ring.isLoadingAnim)
         {
            _ring.isLoadingAnim = true;
            log("Call to get ring swf : " + _ring.ringId);
            msg = new BattleMessage("ringSwf",{"rid":_ring.ringId});
            msg.addEventListener(BattleEvent.CALL_BACK,onSwfUrlCallBack);
            gateway.sendMsg(msg);
         }
      }
      
      public function createRing(obj:Object, ringId:String) : Ring
      {
         var i:int = 0;
         var si:int = 0;
         _ring = new Ring(ringId);
         _ring.isFullRing = true;
         _ring.name = obj.ringName;
         _ring.description = obj.ringDescription;
         _ring.type = obj.ringType;
         _ring.exhaustion = obj.ringExhaustion;
         _ring.targetType = obj.ringTargets;
         _ring.itemThumbNail = obj.itemThumbNail;
         _ring.timeUsedAtLoadTime = obj.ringRageRechargedSoFar;
         if(_ring.targetType == -1)
         {
            _ring.isPointTarget = true;
         }
         _ring.rage = new Object();
         if(obj.ringRageArray != null)
         {
            for(i = 0; i < obj.ringRageArray.length; i++)
            {
               _ring.rage[obj.ringRageArray[i].ringRageLevel] = new Object();
               _ring.rage[obj.ringRageArray[i].ringRageLevel].range = obj.ringRageArray[i].ringRageRank;
               _ring.rage[obj.ringRageArray[i].ringRageLevel].recharge = obj.ringRageArray[i].ringRageRecharge;
               if(obj.ringRageArray[i].ringRageProjectileSpeed != null)
               {
                  _ring.rage[obj.ringRageArray[i].ringRageLevel].ProjectileSpeed = obj.ringRageArray[i].ringRageProjectileSpeed;
               }
            }
         }
         if(_ring.rage != null && _ring.rage[0] != null && _ring.rage[0].ProjectileSpeed != null)
         {
            _ring.projectileSpeed = _ring.rage[0].ProjectileSpeed;
            _ring.isProjectile = true;
         }
         if(_ring.iconUrl == null || !_ring.isIconLoaded)
         {
            _ring.iconUrl = obj.ringIcon;
            _ring.isIconLoaded = false;
         }
         if(_ring.animUrl == null || !_ring.isAnimLoaded)
         {
            _ring.animUrl = obj.swf;
            _ring.isAnimLoaded = false;
         }
         if(!_ring.isIconLoaded)
         {
            LoadIcon(_ring.iconUrl);
         }
         else if(!_ring.isAnimLoaded && this._ring.type != 0)
         {
            _ring.animUrl = obj.swf;
            this.LoadAnim(_ring.animUrl);
         }
         else
         {
            this.doneLoading();
         }
         _ring.stats.length = 0;
         if(obj.ringStatDescriptionsList != null)
         {
            for(si = 0; si < obj.ringStatDescriptionsList.length; si++)
            {
               _ring.stats.push(obj.ringStatDescriptionsList[si]);
            }
         }
         return _ring;
      }
      
      private function onAnimLoaded(evt:Event) : void
      {
         if(_ring.mcAnimRef != null)
         {
            DisplayObjectUtils.ClearAllChildrens(_ring.mcAnimRef);
         }
         _ring.mcAnimRef = Sprite(LoaderInfo(evt.target).content);
         _ring.isAnimLoaded = true;
         _ring.isLoadingAnim = false;
         DisplayObjectUtils.stopAllMovieClips(_ring.mcAnimRef);
         _ringGarbageStopper.addGarbageStopper(_ring.mcAnimRef);
         this.swfLoader.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,onAnimIoError);
         this.swfLoader.contentLoaderInfo.removeEventListener(IOErrorEvent.NETWORK_ERROR,onAnimIoError);
         this.swfLoader.contentLoaderInfo.removeEventListener(IOErrorEvent.VERIFY_ERROR,onAnimIoError);
         this.swfLoader.contentLoaderInfo.removeEventListener(IOErrorEvent.DISK_ERROR,onAnimIoError);
         this.swfLoader.contentLoaderInfo.removeEventListener(Event.COMPLETE,onAnimLoaded);
         LoaderFactory.getInstance().checkIn(swfLoader);
         swfLoader = null;
         this.doneLoading();
      }
      
      private function onSwfUrlCallBack(evt:BattleEvent) : void
      {
         if(evt.battleMessage.responseObj.length > 0)
         {
            if(evt.battleMessage.responseObj[0].spd != null)
            {
               _ring.projectileSpeed = evt.battleMessage.responseObj[0].spd;
               _ring.isProjectile = true;
            }
            this.LoadAnim(evt.battleMessage.responseObj[0].swf);
         }
         BattleMessage(evt.target).removeEventListener(BattleEvent.CALL_BACK,onSwfUrlCallBack);
      }
      
      private function onAnimIoError(evt:Event) : void
      {
         this.doneLoading();
      }
      
      private function onIconLoaded() : void
      {
         var url:String = null;
         while(url = _pendingLoad.shift())
         {
            _ring.bmIcon = RingIconFactory.getBitmap(url);
            _ring.isIconLoaded = true;
            if(!_ring.isAnimLoaded && this._ring.type != 0)
            {
               this.LoadAnim(_ring.animUrl);
            }
            else
            {
               this.doneLoading();
            }
         }
      }
      
      private function LoadIcon(url:String) : void
      {
         _pendingLoad.push(url);
         _callLater.startPerFrame(0,1);
      }
      
      private function doneLoading() : void
      {
         _ring.dispatchEvent(new Event(Ring.LOADED));
         _ring.dispatchEvent(new ItemLoadEvent(ItemLoadEvent.ITEM_LOADED));
         _ring.maintainLoaderReference(null);
      }
      
      public function LoadAnim(url:String) : void
      {
         this.swfLoader = LoaderFactory.getInstance().checkOut();
         assertOnNull(this.swfLoader,"swfLoader");
         assertOnNull(this.swfLoader.contentLoaderInfo,"swfLoader.contentLoaderInfo");
         assertOnNull(this._fileVersionManager,"fileVersionManager");
         assertOnNull(this._loaderContextFactory,"loaderContextFactory");
         this.swfLoader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,onAnimIoError);
         this.swfLoader.contentLoaderInfo.addEventListener(IOErrorEvent.NETWORK_ERROR,onAnimIoError);
         this.swfLoader.contentLoaderInfo.addEventListener(IOErrorEvent.VERIFY_ERROR,onAnimIoError);
         this.swfLoader.contentLoaderInfo.addEventListener(IOErrorEvent.DISK_ERROR,onAnimIoError);
         this.swfLoader.contentLoaderInfo.addEventListener(Event.COMPLETE,onAnimLoaded);
         var vUrl:String = "?v=" + this._fileVersionManager.getClientVersion("rings/" + url);
         this.swfLoader.load(new URLRequest(this._baseUrl + "rings/" + url + vUrl),this._loaderContextFactory.getLoaderContext());
      }
   }
}

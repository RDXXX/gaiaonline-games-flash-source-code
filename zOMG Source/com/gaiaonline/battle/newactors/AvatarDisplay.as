package com.gaiaonline.battle.newactors
{
   import com.gaiaonline.battle.ApplicationInterfaces.IAssetFactory;
   import com.gaiaonline.battle.ApplicationInterfaces.IUIFramework;
   import com.gaiaonline.battle.gateway.BattleGateway;
   import com.gaiaonline.battle.newrings.RingAnim;
   import com.gaiaonline.objectPool.IObjectPoolCleanUp;
   import com.gaiaonline.objectPool.IObjectPoolDeconstructor;
   import com.gaiaonline.objectPool.IObjectPoolFactory;
   import com.gaiaonline.objectPool.IObjectPoolInitializer;
   import com.gaiaonline.objectPool.LoaderFactory;
   import com.gaiaonline.objectPool.ObjectPool;
   import com.gaiaonline.utils.BitmapCache;
   import com.gaiaonline.utils.DisplayObjectUtils;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Loader;
   import flash.display.LoaderInfo;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.TimerEvent;
   import flash.geom.Matrix;
   import flash.net.URLRequest;
   import flash.system.LoaderContext;
   import flash.utils.Timer;
   
   public class AvatarDisplay extends ActorDisplay implements IObjectPoolFactory, IObjectPoolDeconstructor, IObjectPoolInitializer, IObjectPoolCleanUp
   {
      
      private static const nonRepeatableAnims:Array = ["sit","notKo","idle","walk","ko","linkDead"];
      
      private static var s_shadowBitmapData:BitmapData = null;
      
      private static var s_getTargetInfoPotraitMatrix:Matrix = new Matrix(1.6,0,0,1.6,-840,-40);
      
      private static var s_defaultAvatarStripData:BitmapData = null;
      
      private static const s_bitmapCache:BitmapCache = new BitmapCache(20 * 1000,2 * 60 * 1000);
      
      private static var s_getDialogPotraitMatrix:Matrix = new Matrix(1,0,0,1,-480 - 30,-1 - 10);
      
      private static var s_defaultAvatarAnim:Sprite;
       
      
      private var _faceUpRepeat:uint = 0;
      
      private var dialogPotraitArray:Array;
      
      private var targetInfoPotraitArray:Array;
      
      private var _reloadTime:int = 500;
      
      private var _avatarPool:ObjectPool;
      
      private var _isSittng:Boolean = false;
      
      private var _faceDownRepeat:uint = 0;
      
      private var img:Bitmap;
      
      private var avs:Array;
      
      private var _faceDirectionInitted:Boolean = false;
      
      private var _reloadTimer:Timer;
      
      private var _facingUp:Boolean = false;
      
      public function AvatarDisplay(assetFactory:IAssetFactory, baseUrl:String, baseActorId:String = null)
      {
         avs = new Array();
         targetInfoPotraitArray = new Array();
         dialogPotraitArray = new Array();
         this.actorBtn = MovieClip(assetFactory.getInstance("AvatarBtn"));
         this.assetFactory = assetFactory;
         var shadowBitmap:Bitmap = this.getNewShadowBitmap();
         shadowBitmap.x = -shadowBitmap.width / 2;
         shadowBitmap.y = -shadowBitmap.height / 2;
         this.addChild(shadowBitmap);
         this.mcBound = new Sprite();
         this.setMcBound(false);
         this.mcBound.visible = false;
         this.addChild(this.mcBound);
         this.mcBound.name = "mcBound";
         this.img = getNewDefaultAvStrip();
         this._avatarPool = new ObjectPool(this,null,null,10);
         super(assetFactory,baseUrl,baseActorId);
         this._frameQueueList.addFrameQueue(fnCallAnimation);
         this._frameQueueList.addFrameQueue(fnSetDir);
         this.clearPortraitArray(this.dialogPotraitArray);
         this.clearPortraitArray(this.targetInfoPotraitArray);
      }
      
      private function getNewShadowBitmap() : Bitmap
      {
         var shadowClass:Class = null;
         if(!s_shadowBitmapData)
         {
            shadowClass = this.assetFactory.getClass("AvatarShadow");
            s_shadowBitmapData = new shadowClass(0,0) as BitmapData;
         }
         var bitmap:Bitmap = DisplayObjectUtils.createClearAllChildrensImmuneBitmap(s_shadowBitmapData);
         bitmap.scaleX = bitmap.scaleX * 0.5;
         bitmap.scaleY = bitmap.scaleY * 0.5;
         return bitmap;
      }
      
      private function onAvRemovedFromStage(evt:Event) : void
      {
         var i:int = 0;
         if(this.parent is BaseActor && !BaseActor(this.parent).pickedUpBy)
         {
            i = this.avs.indexOf(evt.target);
            if(i >= 0)
            {
               if(!this._avatarPool.checkIn(this.avs[i]))
               {
                  DisplayObjectUtils.ClearAllChildrens(this.avs[i]);
                  this.avs[i].dispose();
               }
               this.avs[i].removeEventListener(Event.REMOVED_FROM_STAGE,onAvRemovedFromStage);
               this.avs.splice(i,1);
            }
         }
      }
      
      private function fnCallAnimation(data:Object) : void
      {
         switch(this.currentActorAnim)
         {
            case "sit":
               this.sit();
               break;
            case "notKo":
               if(this.genericAnim != null)
               {
                  this.genericAnim.playAnim("idle");
               }
               break;
            case "idle":
            case "stand":
               this.stand();
               break;
            case "walk":
               this.walk();
               break;
            case "hit":
               if(this.genericAnim != null)
               {
                  this.genericAnim.playAnim("hit");
               }
               break;
            case "ko":
               if(this.genericAnim != null)
               {
                  this.genericAnim.playAnim("ko");
               }
               break;
            case "LinkDead":
               if(this.genericAnim != null)
               {
                  this.genericAnim.playAnim("LinkDead");
               }
               break;
            default:
               if(!this._isSittng)
               {
                  this.stand();
               }
               else
               {
                  this.sit();
               }
         }
      }
      
      override public function getTargetInfoPortrait() : Sprite
      {
         return this.getPortrait(s_getTargetInfoPotraitMatrix,this.targetInfoPotraitArray);
      }
      
      private function getPortrait(matrix:Matrix, arrayForCaching:Array) : Sprite
      {
         if(this.isDispose)
         {
            return null;
         }
         var s:Sprite = new Sprite();
         if(this.avs != null && this.img != null)
         {
            this.drawPortrait(s,matrix);
            if(!this.isLoaded)
            {
               arrayForCaching.push(s);
            }
         }
         else
         {
            arrayForCaching.push(s);
         }
         return s;
      }
      
      override protected function onErrorLoading(evt:IOErrorEvent) : void
      {
         if(this.isDispose)
         {
            return;
         }
         super.onErrorLoading(evt);
         trace("Error laoding AV:",this.url);
         this._reloadTimer = new Timer(this._reloadTime);
         this._reloadTimer.addEventListener(TimerEvent.TIMER,onLoadTimer,false,0,true);
         this._reloadTimer.start();
         this._reloadTime = this._reloadTime * 2;
      }
      
      override protected function refreshPortraits() : void
      {
         this.refreshPotraitArray(this.dialogPotraitArray,s_getDialogPotraitMatrix);
         this.refreshPotraitArray(this.targetInfoPotraitArray,s_getTargetInfoPotraitMatrix);
      }
      
      private function faceDown() : void
      {
         var i:int = 0;
         if(!this._faceDirectionInitted || this._facingUp)
         {
            if(avs)
            {
               for(i = 0; i < this.avs.length; i++)
               {
                  this.avs[i].faceDown();
               }
            }
            if(this.actorBtn)
            {
               if(this.actorBtn.currentFrame == 2)
               {
                  this.actorBtn.gotoAndStop(1);
               }
               else if(this.actorBtn.currentFrame == 4)
               {
                  this.actorBtn.gotoAndStop(3);
               }
            }
            this._facingUp = false;
            this._faceDirectionInitted = true;
         }
      }
      
      private function refreshPotraitArray(array:Array, matrix:Matrix) : void
      {
         var s:Sprite = null;
         for(var i:int = 0; i < array.length; i++)
         {
            s = array[i] as Sprite;
            if(s != null && this.avs != null && this.img != null)
            {
               this.drawPortrait(s,matrix);
            }
         }
         array.length = 0;
      }
      
      override public function dispose() : void
      {
         var i:int = 0;
         if(this.img && this.url && s_bitmapCache)
         {
            s_bitmapCache.add(url,img);
         }
         this.img = null;
         if(avs)
         {
            for(i = 0; i < this.avs.length; i++)
            {
               DisplayObjectUtils.ClearAllChildrens(this.avs[i]);
               this.avs[i].removeEventListener(Event.REMOVED_FROM_STAGE,onAvRemovedFromStage);
               this.avs[i].dispose();
               this.avs[i] = null;
            }
         }
         this.avs = null;
         this._avatarPool.dispose(this);
         this.targetInfoPotraitArray = null;
         this.dialogPotraitArray = null;
         super.dispose();
      }
      
      override public function getNewActor(pooling:Boolean = true) : Sprite
      {
         var av:BaseAvatar = null;
         if(this.isDispose)
         {
            return null;
         }
         if(this.avs != null && this.img != null)
         {
            if(pooling)
            {
               av = this._avatarPool.checkOut(this);
            }
            else
            {
               av = new BaseAvatar(this.img.bitmapData);
            }
            this._faceDirectionInitted = false;
            this.avs.push(av);
            av.addEventListener(Event.REMOVED_FROM_STAGE,onAvRemovedFromStage);
            av.mouseEnabled = false;
            this.playAnim(this.currentActorAnim,null,true);
            return av;
         }
         return null;
      }
      
      override public function loadActor(gateway:BattleGateway, uiFramework:IUIFramework, url:String) : void
      {
         var bmp:Bitmap = null;
         var l:Loader = null;
         var loaderContext:LoaderContext = null;
         this._uiFramework = uiFramework;
         super.loadActor(gateway,uiFramework,url);
         if(this.isDispose)
         {
            return;
         }
         this.url = url;
         this.genericAnim = new RingAnim(this.baseUrl,this._gateway,this._uiFramework,this,"GenericAvatar","caster",getNewGenericAvatarAnim());
         this.genericAnim.addEventListener(RingAnim.PRIORITY_CHANGE,onAnimPriorityChange);
         this.genericHit.y = -90;
         this.genericHit.x = 0;
         this.reticle.width = 125;
         this.reticle.height = this.reticle.width * 0.5;
         this.animList.push(this.genericAnim);
         if(s_bitmapCache)
         {
            bmp = s_bitmapCache.lookup(this.url);
            if(bmp)
            {
               this.img = bmp;
               this._isLoaded = true;
               this.updateBitmap();
            }
         }
         if(this.url && !this._isLoaded)
         {
            l = LoaderFactory.getInstance().checkOut();
            loaderContext = this._uiFramework.loaderContextFactory.getLoaderContext();
            if(loaderContext != null)
            {
               loaderContext.checkPolicyFile = true;
            }
            l.contentLoaderInfo.addEventListener(Event.COMPLETE,onActorLoaded);
            l.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,onErrorLoading);
            l.contentLoaderInfo.addEventListener(IOErrorEvent.NETWORK_ERROR,onErrorLoading);
            l.contentLoaderInfo.addEventListener(IOErrorEvent.VERIFY_ERROR,onErrorLoading);
            l.contentLoaderInfo.addEventListener(IOErrorEvent.DISK_ERROR,onErrorLoading);
            l.load(new URLRequest(this.url),loaderContext);
         }
      }
      
      public function initializeObjectPool(obj:*, args:Array = null) : void
      {
      }
      
      private function fnSetDir(data:Object) : void
      {
         if(this.direction >= 180 && this.direction < 360)
         {
            this.faceUp();
         }
         else
         {
            this.faceDown();
         }
      }
      
      override public function get actorFootX() : Number
      {
         return -71;
      }
      
      override public function get actorFootY() : Number
      {
         return -139;
      }
      
      override public function setDirection(angle:Number) : void
      {
         if(this.isDispose)
         {
            return;
         }
         super.setDirection(angle);
         this._frameQueueList.addToFrameQueue(fnSetDir,angle,true);
      }
      
      private function setMcBound(sitting:Boolean = false) : void
      {
         var mcx:int = -49;
         var mcy:int = -119;
         if(sitting)
         {
            mcy = -99;
         }
         if(this.mcBound != null)
         {
            this.mcBound.graphics.clear();
            this.mcBound.graphics.beginFill(255);
            this.mcBound.graphics.drawRect(mcx,mcy,67,60);
            this.mcBound.graphics.endFill();
         }
      }
      
      override public function mcTestHitPoint(x:int, y:int) : Boolean
      {
         if(this.isDispose)
         {
            return false;
         }
         return this.actorBtn.hitTestPoint(x,y,true);
      }
      
      private function walk() : void
      {
         var i:int = 0;
         this._isSittng = false;
         this.setMcBound(false);
         if(avs)
         {
            for(i = 0; i < this.avs.length; i++)
            {
               this.avs[i].walk();
            }
         }
         if(this.actorBtn)
         {
            if(this.direction >= 180 && this.direction < 360)
            {
               this.actorBtn.gotoAndStop(2);
            }
            else
            {
               this.actorBtn.gotoAndStop(1);
            }
         }
      }
      
      public function objectPoolCleanUp(obj:*) : void
      {
      }
      
      private function stand() : void
      {
         var i:int = 0;
         this._isSittng = false;
         this.setMcBound(false);
         if(avs)
         {
            for(i = 0; i < this.avs.length; i++)
            {
               this.avs[i].stand();
            }
         }
         if(this.actorBtn)
         {
            if(this.direction >= 180 && this.direction < 360)
            {
               this.actorBtn.gotoAndStop(2);
            }
            else
            {
               this.actorBtn.gotoAndStop(1);
            }
         }
      }
      
      private function faceUp() : void
      {
         var i:int = 0;
         if(!this._faceDirectionInitted || !this._facingUp)
         {
            if(avs)
            {
               for(i = 0; i < this.avs.length; i++)
               {
                  this.avs[i].faceUp();
               }
            }
            if(this.actorBtn)
            {
               if(this.actorBtn.currentFrame == 1)
               {
                  this.actorBtn.gotoAndStop(2);
               }
               else if(this.actorBtn.currentFrame == 3)
               {
                  this.actorBtn.gotoAndStop(4);
               }
            }
            this._facingUp = true;
            this._faceDirectionInitted = true;
         }
      }
      
      private function updateBitmap() : void
      {
         var i:int = 0;
         if(this.avs != null)
         {
            for(i = 0; i < this.avs.length; i++)
            {
               BaseAvatar(this.avs[i]).updateBitmapData(this.img.bitmapData);
            }
         }
         var avPool:Array = this._avatarPool.getAllObject();
         for(var ii:int = 0; ii < avPool.length; ii++)
         {
            BaseAvatar(avPool[ii]).updateBitmapData(this.img.bitmapData);
         }
      }
      
      override public function playAnim(action:String, param:Object = null, allowRepeatAnim:Boolean = false) : void
      {
         if(this.isDispose)
         {
            return;
         }
         if(action == "stand")
         {
            action = "idle";
         }
         if(allowRepeatAnim || AvatarDisplay.nonRepeatableAnims.indexOf(this.currentActorAnim) == -1 || this.currentActorAnim != action)
         {
            super.playAnim(action);
            this._frameQueueList.addToFrameQueue(fnCallAnimation,this.currentActorAnim,true);
         }
      }
      
      private function onLoadTimer(evt:TimerEvent) : void
      {
         var l:Loader = null;
         var loaderContext:LoaderContext = null;
         this._reloadTimer.removeEventListener(TimerEvent.TIMER,onLoadTimer);
         this._reloadTimer = null;
         trace("Retry loading Av:",this.url);
         if(this.url != null)
         {
            l = LoaderFactory.getInstance().checkOut();
            loaderContext = this._uiFramework.loaderContextFactory.getLoaderContext();
            if(loaderContext != null)
            {
               loaderContext.checkPolicyFile = true;
            }
            l.contentLoaderInfo.addEventListener(Event.COMPLETE,onActorLoaded);
            l.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,onErrorLoading);
            l.contentLoaderInfo.addEventListener(IOErrorEvent.NETWORK_ERROR,onErrorLoading);
            l.contentLoaderInfo.addEventListener(IOErrorEvent.VERIFY_ERROR,onErrorLoading);
            l.contentLoaderInfo.addEventListener(IOErrorEvent.DISK_ERROR,onErrorLoading);
            l.load(new URLRequest(this.url),loaderContext);
         }
      }
      
      private function getNewDefaultAvStrip() : Bitmap
      {
         var c:Class = null;
         if(!s_defaultAvatarStripData)
         {
            c = this.assetFactory.getClass("DefaultAvStrip");
            s_defaultAvatarStripData = new c(0,0) as BitmapData;
         }
         return new Bitmap(s_defaultAvatarStripData);
      }
      
      private function sit() : void
      {
         var i:int = 0;
         this._isSittng = true;
         this.setMcBound(true);
         if(avs)
         {
            for(i = 0; i < this.avs.length; i++)
            {
               this.avs[i].sit();
            }
         }
         if(this.actorBtn)
         {
            if(this.direction >= 180 && this.direction < 360)
            {
               this.actorBtn.gotoAndStop(3);
            }
            else
            {
               this.actorBtn.gotoAndStop(4);
            }
         }
      }
      
      private function getNewGenericAvatarAnim() : Sprite
      {
         if(!s_defaultAvatarAnim)
         {
            s_defaultAvatarAnim = assetFactory.getInstance("GenericAvatarAnim") as Sprite;
         }
         return s_defaultAvatarAnim;
      }
      
      override public function getDialogPortrait() : Sprite
      {
         return this.getPortrait(s_getDialogPotraitMatrix,this.dialogPotraitArray);
      }
      
      override protected function onActorLoaded(evt:Event) : void
      {
         if(this.isDispose)
         {
            return;
         }
         this.img = Bitmap(LoaderInfo(evt.target).content);
         this.updateBitmap();
         LoaderInfo(evt.target).loader.contentLoaderInfo.removeEventListener(Event.COMPLETE,onActorLoaded);
         LoaderInfo(evt.target).loader.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,onErrorLoading);
         LoaderInfo(evt.target).loader.contentLoaderInfo.removeEventListener(IOErrorEvent.NETWORK_ERROR,onErrorLoading);
         LoaderInfo(evt.target).loader.contentLoaderInfo.removeEventListener(IOErrorEvent.VERIFY_ERROR,onErrorLoading);
         LoaderInfo(evt.target).loader.contentLoaderInfo.removeEventListener(IOErrorEvent.DISK_ERROR,onErrorLoading);
         LoaderFactory.getInstance().checkIn(LoaderInfo(evt.target).loader);
         super.onActorLoaded(evt);
      }
      
      public function create() : *
      {
         return new BaseAvatar(this.img.bitmapData);
      }
      
      public function deconstruct(obj:*) : void
      {
         if(obj != null)
         {
            DisplayObjectUtils.ClearAllChildrens(BaseAvatar(obj));
            BaseAvatar(obj).dispose();
         }
      }
      
      private function drawPortrait(s:Sprite, matrix:Matrix) : void
      {
         var av:BaseAvatar = null;
         if(s != null && this.avs != null && this.img != null)
         {
            av = new BaseAvatar(this.img.bitmapData);
            s.graphics.clear();
            s.graphics.beginBitmapFill(this.img.bitmapData,matrix);
            s.graphics.drawRect(0,0,80,80);
            s.graphics.endFill();
         }
      }
   }
}

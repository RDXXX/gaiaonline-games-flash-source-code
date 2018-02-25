package com.gaiaonline.battle.map
{
   import com.gaiaonline.battle.ui.events.UiEvents;
   import com.gaiaonline.battle.utils.Rasterization;
   import com.gaiaonline.flexModulesAPIs.globalevent.GlobalEvent;
   import com.gaiaonline.platform.actors.ISilhouetteable;
   import com.gaiaonline.utils.DisplayObjectStopper;
   import com.gaiaonline.utils.DisplayObjectStopperModes;
   import com.gaiaonline.utils.DisplayObjectUtils;
   import com.gaiaonline.utils.SpritePositionBubbler;
   import flash.display.Bitmap;
   import flash.display.BlendMode;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class MapObject
   {
      
      private static const SILHOUETTE_COLOR_TRANSFORM:ColorTransform = new ColorTransform(0,0,0,0,0,0,0,96);
      
      private static const ALLOW_DELAYED_INIT:Boolean = true;
       
      
      public var displaySilhouette:Boolean = false;
      
      private var _displayShadow:Boolean = true;
      
      public var name:String;
      
      private var _invertedHostMatrix:Matrix = null;
      
      private var _state:int = 0;
      
      private var _map:IMap = null;
      
      private var _canRasterize:Boolean = true;
      
      private var _mcShadow:Sprite;
      
      private var _btnLink:SimpleButton;
      
      private var _isTintable:Boolean = true;
      
      private var _objectSilhouettes:Dictionary;
      
      private var _maskMc:Sprite;
      
      private var _silhouetteHolder:Sprite;
      
      private var _displayGroundLight:Boolean = true;
      
      private var _lightOn:Boolean = false;
      
      private var _displayObjectStopper:DisplayObjectStopper;
      
      private var _delayedInit:Object = null;
      
      private var _silhouetteVisible:Boolean = false;
      
      private var gstLightIgnore:Boolean = false;
      
      private var _mcGroundLight:Sprite;
      
      private var _matrices:Dictionary;
      
      private var _mcLight:Sprite;
      
      private var _colorTransform:ColorTransform;
      
      private var originReuse:Point;
      
      private var _displayMc:Sprite;
      
      private var _mcHotSpot:Sprite;
      
      private var _hostMc:SpritePositionBubbler;
      
      public function MapObject(map:IMap, mc:Sprite)
      {
         _objectSilhouettes = new Dictionary(true);
         originReuse = new Point(0,0);
         _matrices = new Dictionary(true);
         super();
         _map = map;
         if(mc != null)
         {
            this.init(mc);
         }
      }
      
      private static function clearMc(mc:Sprite) : void
      {
         if(mc != null && mc.parent != null)
         {
            mc.parent.removeChild(mc);
         }
         DisplayObjectUtils.ClearAllChildrens(mc);
      }
      
      private static function createMaskMc(map:IMap, mc:Sprite) : Sprite
      {
         var s:MovieClip = null;
         var rect:Rectangle = null;
         var maskMc:Sprite = null;
         var rast:Rasterization = map.getRasterizationStore().rasterize(mc);
         if(rast)
         {
            s = new MovieClip();
            s.cacheAsBitmap = true;
            s.addChild(rast.createBitmap());
            return s;
         }
         var maskClass:Class = mc["constructor"];
         maskMc = new maskClass();
         maskMc.transform = mc.transform;
         maskMc.filters = mc.filters;
         maskMc.cacheAsBitmap = true;
         maskMc.opaqueBackground = mc.opaqueBackground;
         if(mc.scale9Grid)
         {
            rect = mc.scale9Grid;
            rect.x = rect.x / 20;
            rect.y = rect.y / 20;
            rect.height = rect.height / 20;
            rect.width = rect.width / 20;
            maskMc.scale9Grid = rect;
         }
         var removingObject:DisplayObject = maskMc.getChildByName("groundLight");
         if(removingObject)
         {
            maskMc.removeChild(removingObject);
         }
         removingObject = maskMc.getChildByName("shadow");
         if(removingObject)
         {
            maskMc.removeChild(removingObject);
         }
         removingObject = maskMc.getChildByName("hotSpot");
         if(removingObject)
         {
            maskMc.removeChild(removingObject);
         }
         removingObject = maskMc.getChildByName("lightProp");
         if(removingObject)
         {
            maskMc.removeChild(removingObject);
         }
         DisplayObjectUtils.stopAllMovieClips(maskMc);
         return maskMc;
      }
      
      public function get y() : Number
      {
         return _hostMc.y;
      }
      
      public function setTint(r:int, g:int, b:int) : void
      {
         var ct:ColorTransform = null;
         if(this._displayMc != null)
         {
            ct = new ColorTransform(r / 256,g / 256,b / 256,1,0,0,0,0);
            if(this._colorTransform != null)
            {
               ct.concat(this._colorTransform);
            }
            this._displayMc.transform.colorTransform = ct;
         }
      }
      
      private function onLinkClick(evt:MouseEvent) : void
      {
         if(this.links != null)
         {
            GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.LINK_CLICKED,{"links":this.links}));
         }
      }
      
      private function init(mc:Sprite) : void
      {
         mc.parent.removeChild(mc);
         if(ALLOW_DELAYED_INIT && this._map.getRasterizationStore().canRasterize(mc))
         {
            this.name = mc.name;
            this._colorTransform = mc.transform.colorTransform;
            _delayedInit = {
               "objClass":mc["constructor"],
               "x":mc.x,
               "y":mc.y,
               "matrix":mc.transform.matrix.clone(),
               "filters":mc.filters.concat()
            };
            if(mc.hasOwnProperty("gstLightIgnore"))
            {
               _delayedInit.gstLightIgnore = Object(mc).gstLightIgnore;
            }
            if(mc.hasOwnProperty("isTintable"))
            {
               _delayedInit.isTintable = Object(mc).isTintable;
            }
            if(mc.hasOwnProperty("displaySilhouette"))
            {
               _delayedInit.displaySilhouette = Object(mc).displaySilhouette;
            }
         }
         else
         {
            finishInit(mc);
         }
      }
      
      private function onUsableClick(evt:MouseEvent) : void
      {
         var e:UiEvents = null;
         if(this._displayMc != null)
         {
            e = new UiEvents("USE",null);
            e.value = new Object();
            this._displayMc.dispatchEvent(e);
         }
      }
      
      private function fullIntersectionTest(silhouetteable:ISilhouetteable) : Boolean
      {
         return silhouetteable.hitTestObject(_displayMc);
      }
      
      public function getGroundLight() : Sprite
      {
         return this._mcGroundLight;
      }
      
      private function onLinkMouseOut(evt:MouseEvent) : void
      {
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.MOUSE_OVER_STATE_CHANGED,{"isLink":false}));
      }
      
      public function get isCustomLight() : Boolean
      {
         return Object(_displayMc).isCustomLight || false;
      }
      
      public function dispose() : void
      {
         removeAllObjectSilhouettes();
         if(this._hostMc)
         {
            this._hostMc.removeChild(this._silhouetteHolder);
         }
         this._silhouetteHolder = null;
         clearMc(this._maskMc);
         this._maskMc = null;
         clearMc(this._displayMc);
         this._displayMc = null;
         clearMc(this._hostMc);
         this._hostMc = null;
         clearMc(this._mcGroundLight);
         this._mcGroundLight = null;
         clearMc(this._mcHotSpot);
         this._mcHotSpot = null;
         clearMc(this._mcShadow);
         this._mcShadow = null;
         this._objectSilhouettes = null;
         this._displayObjectStopper = null;
         this._map = null;
         _matrices = null;
      }
      
      private function onLinkMouseOver(evt:MouseEvent) : void
      {
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.MOUSE_OVER_STATE_CHANGED,{"isLink":true}));
      }
      
      public function getEventMc() : Sprite
      {
         return this._displayMc;
      }
      
      private function onUsableMouseOver(evt:MouseEvent) : void
      {
         if(this._displayMc != null)
         {
            this._displayMc.dispatchEvent(new MouseEvent(evt.type,false,false,evt.localX,evt.localY));
         }
      }
      
      public function getShadow() : Sprite
      {
         return this._mcShadow;
      }
      
      public function removeAllObjectSilhouettes() : void
      {
         var actor:* = null;
         for(actor in _objectSilhouettes)
         {
            removeObjectSilhouetteById(ISilhouetteable(actor));
         }
         if(null != _silhouetteHolder)
         {
            this._silhouetteHolder.cacheAsBitmap = false;
            this._silhouetteHolder.mask = null;
         }
         if(null != this._maskMc && this._hostMc.contains(this._maskMc))
         {
            this._hostMc.removeChild(this._maskMc);
         }
         if(null != this._maskMc)
         {
            this._maskMc = null;
         }
      }
      
      public function get displayShadow() : Boolean
      {
         return this._displayShadow;
      }
      
      private function get links() : Array
      {
         if(this._displayMc != null)
         {
            return MovieClip(this._displayMc).links;
         }
         return null;
      }
      
      private function createSilhouette(silhouetteable:ISilhouetteable) : Sprite
      {
         var silhouette:Sprite = silhouetteable.getCopyOfSpriteToBeSilhouetted();
         if(silhouette)
         {
            silhouette.transform.colorTransform = SILHOUETTE_COLOR_TRANSFORM;
            silhouette.blendMode = BlendMode.LAYER;
            _objectSilhouettes[silhouetteable] = silhouette;
         }
         if(null != silhouette)
         {
            _silhouetteHolder.addChild(silhouette);
         }
         else
         {
            trace("SILHOUETTE IS NULL FIX ME!!!");
         }
         return silhouette;
      }
      
      public function get displayGroundLight() : Boolean
      {
         return this._displayGroundLight && this._lightOn;
      }
      
      private function onUsableMouseOut(evt:MouseEvent) : void
      {
         if(this._displayMc != null)
         {
            this._displayMc.dispatchEvent(new MouseEvent(evt.type,false,false,evt.localX,evt.localY));
         }
      }
      
      public function getHotSpot() : Sprite
      {
         return this._mcHotSpot;
      }
      
      public function display() : void
      {
         var filters:Array = null;
         var rast:Rasterization = null;
         var bmp:Bitmap = null;
         if(_delayedInit)
         {
            performDelayedInit();
            _delayedInit = null;
         }
         if(_canRasterize)
         {
            _canRasterize = false;
            if(this._displayMc.getChildByName("mcStates") == null)
            {
               filters = this._displayMc.filters.concat();
               this._displayMc.filters = new Array();
               rast = this._map.getRasterizationStore().rasterize(this._displayMc);
               this._displayMc.filters = filters;
               if(rast)
               {
                  bmp = rast.createBitmap();
                  this._displayMc.cacheAsBitmap = false;
                  while(this._displayMc.numChildren > 0)
                  {
                     this._displayMc.removeChildAt(0);
                  }
                  this._displayMc.addChild(bmp);
               }
            }
         }
         if(_displayObjectStopper && this._displayMc.getChildByName("mcStates") == null)
         {
            DisplayObjectUtils.startAllMovieClips(this._hostMc);
         }
      }
      
      private function finishInit(mc:Sprite) : void
      {
         var poff:Point = null;
         var m:Matrix = null;
         var gm:Matrix = null;
         var sm:Matrix = null;
         var hm:Matrix = null;
         var mcHit:Sprite = Sprite(mc.getChildByName("hit"));
         if(mcHit)
         {
            mc.removeChild(mcHit);
            DisplayObjectUtils.ClearAllChildrens(mcHit);
         }
         this._displayMc = mc;
         this._displayMc.cacheAsBitmap = true;
         this.name = _displayMc.name;
         this._hostMc = reparentDisplay(_displayMc);
         _mcLight = _displayMc.getChildByName("lightProp") as Sprite;
         if(_mcLight)
         {
            this._mcLight.visible = this._lightOn;
            _hostMc.addChild(_mcLight);
         }
         this._silhouetteHolder = new Sprite();
         this._hostMc.addChild(this._silhouetteHolder);
         this._hostMc.mouseEnabled = false;
         this._hostMc.mouseChildren = false;
         this._hostMc.hitArea = null;
         this._btnLink = _displayMc.getChildByName("btnLink") as SimpleButton;
         if(this._btnLink != null)
         {
            this._btnLink = MovieClip(_displayMc).btnLink;
            this._displayMc.removeChild(this._btnLink);
            poff = new Point(this.btnLink.x,this.btnLink.y);
            this.btnLink.x = 0;
            this.btnLink.y = 0;
            m = this._hostMc.transform.matrix.clone();
            m.concat(this.btnLink.transform.matrix);
            this.btnLink.transform.matrix = m;
            this.btnLink.x = this._hostMc.x + poff.x * this._hostMc.scaleX;
            this.btnLink.y = this._hostMc.y + poff.y * this._hostMc.scaleY;
            this._btnLink.addEventListener(MouseEvent.CLICK,onLinkClick,false,0,true);
            this._btnLink.addEventListener(MouseEvent.MOUSE_OVER,onLinkMouseOver,false,0,true);
            this._btnLink.addEventListener(MouseEvent.MOUSE_OUT,onLinkMouseOut,false,0,true);
         }
         if(this._displayMc.hasOwnProperty("gstLightIgnore"))
         {
            this.gstLightIgnore = Object(this._displayMc).gstLightIgnore;
            this.setLight(this.gstLightIgnore);
         }
         if(this._displayMc.hasOwnProperty("isTintable"))
         {
            this._isTintable = Object(this._displayMc).isTintable;
         }
         if(this._displayMc.hasOwnProperty("displaySilhouette"))
         {
            this.displaySilhouette = Object(this._displayMc).displaySilhouette;
         }
         for(var i:int = 0; i < this._displayMc.numChildren; i++)
         {
            if(this._displayMc.getChildByName("groundLight") != null)
            {
               this._mcGroundLight = Sprite(this._displayMc.getChildByName("groundLight"));
               if(this._mcGroundLight.hasOwnProperty("displayGroundLight"))
               {
                  this._displayGroundLight = Object(this._mcGroundLight).displayGroundLight;
               }
               gm = this._mcGroundLight.transform.matrix;
               gm.concat(this._displayMc.transform.matrix);
               gm.concat(this._hostMc.transform.matrix);
               this._mcGroundLight.transform.matrix = gm;
               this._mcGroundLight.visible = this._lightOn && this._displayGroundLight;
               this._displayMc.removeChild(this._mcGroundLight);
            }
            if(this._displayMc.getChildByName("shadow") != null)
            {
               this._mcShadow = Sprite(this._displayMc.getChildByName("shadow"));
               if(this._mcShadow.hasOwnProperty("displayShadow"))
               {
                  this._displayShadow = Object(this._mcShadow).displayShadow;
               }
               this._mcShadow.visible = this._displayShadow;
               sm = this._mcShadow.transform.matrix;
               sm.concat(this._displayMc.transform.matrix);
               sm.concat(this._hostMc.transform.matrix);
               this._mcShadow.transform.matrix = sm;
               this._displayMc.removeChild(this._mcShadow);
            }
            if(this._displayMc.getChildByName("hotSpot") != null)
            {
               this._mcHotSpot = Sprite(this._displayMc.getChildByName("hotSpot"));
               hm = this._mcHotSpot.transform.matrix;
               hm.concat(this._displayMc.transform.matrix);
               hm.concat(this._hostMc.transform.matrix);
               this._mcHotSpot.transform.matrix = hm;
               this._mcHotSpot.visible = this._lightOn;
               this._displayMc.removeChild(this._mcHotSpot);
            }
         }
         _displayObjectStopper = new DisplayObjectStopper(DisplayObjectStopperModes.SHOW_NO_ANIM,true);
         _displayObjectStopper.addGarbageStopper(this._hostMc,null);
         DisplayObjectUtils.stopAllMovieClips(this._hostMc);
      }
      
      public function getTintType() : TintTypes
      {
         if(this._isTintable)
         {
            return TintTypes.NO_SHADOWS;
         }
         return TintTypes.NONE;
      }
      
      private function removeObjectSilhouetteById(actor:ISilhouetteable) : void
      {
         var silhouette:Sprite = _objectSilhouettes[actor];
         if(null != silhouette && silhouette.parent == _silhouetteHolder)
         {
            _silhouetteHolder.removeChild(silhouette);
            delete _objectSilhouettes[actor];
         }
      }
      
      public function updateState(actorObj:Object, transition:Boolean = false) : void
      {
         var isUsable:* = false;
         if(this._displayMc != null && Object(this._displayMc).updateState != null)
         {
            Object(this._displayMc).updateState(actorObj,transition);
            isUsable = false;
            if(actorObj.aids != null)
            {
               isUsable = actorObj.aids.indexOf("Usable") >= 0;
               if(isUsable && this._hostMc != null && this._displayMc != null)
               {
                  this._hostMc.hitArea = this._displayMc.hitArea;
                  this._hostMc.mouseChildren = false;
                  this._hostMc.mouseEnabled = true;
                  this._hostMc.addEventListener(MouseEvent.MOUSE_OVER,onUsableMouseOver,false,0,true);
                  this._hostMc.addEventListener(MouseEvent.MOUSE_OUT,onUsableMouseOut,false,0,true);
                  this._hostMc.addEventListener(MouseEvent.CLICK,onUsableClick,false,0,true);
               }
               else
               {
                  this._hostMc.mouseEnabled = false;
                  this._hostMc.mouseChildren = false;
                  this._hostMc.hitArea = null;
                  this._hostMc.removeEventListener(MouseEvent.MOUSE_OVER,onUsableMouseOver);
                  this._hostMc.removeEventListener(MouseEvent.MOUSE_OUT,onUsableMouseOut);
                  this._hostMc.removeEventListener(MouseEvent.CLICK,onUsableClick);
               }
            }
         }
         if(actorObj.state != null)
         {
            this._state = actorObj.state;
         }
      }
      
      public function hide() : void
      {
         if(_displayObjectStopper)
         {
            DisplayObjectUtils.stopAllMovieClips(this._hostMc);
         }
      }
      
      public function setLight(v:Boolean = true) : void
      {
         if(this.gstLightIgnore)
         {
            v = true;
         }
         if(this._lightOn != v)
         {
            this._lightOn = v;
            if(this._mcLight != null)
            {
               this._mcLight.visible = this._lightOn;
            }
            if(this._mcGroundLight != null)
            {
               this._mcGroundLight.visible = this._lightOn && this._displayGroundLight;
            }
            if(this._mcHotSpot != null)
            {
               this._mcHotSpot.visible = this._lightOn;
            }
         }
      }
      
      public function checkSilhouettes(silhouetteable:ISilhouetteable) : Boolean
      {
         var scalingDirty:Boolean = false;
         var scale:Point = null;
         if(null == _hostMc.parent)
         {
            return false;
         }
         var silhouette:Sprite = _objectSilhouettes[silhouetteable];
         if(silhouetteable.displaySilhouette && quickIntersectionTest(silhouetteable) && fullIntersectionTest(silhouetteable))
         {
            if(!this._maskMc)
            {
               this._silhouetteHolder.cacheAsBitmap = true;
               this._maskMc = createMaskMc(this._map,_displayMc);
               if(this._maskMc != null && Object(this._maskMc).updateState != null)
               {
                  Object(this._maskMc).updateState({"state":this._state});
               }
               this._hostMc.addChild(this._maskMc);
               this._silhouetteHolder.mask = this._maskMc;
            }
            scalingDirty = silhouetteable.scalingDirty;
            if(!silhouette)
            {
               createSilhouette(silhouetteable);
               scale = silhouetteable.scale;
               scalingDirty = true;
            }
            if(silhouette && !silhouette.visible)
            {
               scalingDirty = true;
            }
            updateSilhouette(silhouetteable,scalingDirty);
            silhouetteable.scalingDirty = false;
            return true;
         }
         if(silhouette)
         {
            this.setSilhouetteVisible(silhouette,false);
            removeObjectSilhouette(silhouetteable);
            return false;
         }
         return false;
      }
      
      public function quickIntersectionTest(silhouetteable:ISilhouetteable) : Boolean
      {
         var objMc:Sprite = getStageMc();
         if(objMc != null && objMc.y > silhouetteable.y)
         {
            return true;
         }
         return false;
      }
      
      public function removeObjectSilhouette(silhouetteable:ISilhouetteable) : void
      {
         removeObjectSilhouetteById(silhouetteable);
      }
      
      private function get invertedHostMatrix() : Matrix
      {
         if(_invertedHostMatrix == null)
         {
            _invertedHostMatrix = _hostMc.transform.matrix;
            _invertedHostMatrix.invert();
         }
         return _invertedHostMatrix;
      }
      
      public function updateSilhouette(silhouettable:ISilhouetteable, scalingDirty:Boolean) : void
      {
         var globalActorPoint:Point = null;
         var dispMaskPoint:Point = null;
         var silhouetteMatrix:Matrix = null;
         var actorDisplay:Sprite = null;
         var silhouette:Sprite = _objectSilhouettes[silhouettable];
         if(silhouette)
         {
            if(!silhouettable.displaySilhouette || !silhouettable.parent)
            {
               removeObjectSilhouette(silhouettable);
               return;
            }
            this.setSilhouetteVisible(silhouette,true);
            if(scalingDirty)
            {
               if(!_matrices[silhouettable])
               {
                  _matrices[silhouettable] = new Dictionary(true);
               }
               silhouetteMatrix = _matrices[silhouettable][silhouettable.scale.x + "_" + silhouettable.scale.y];
               if(!silhouetteMatrix)
               {
                  actorDisplay = silhouettable.getDisplaySprite();
                  silhouetteMatrix = actorDisplay.transform.matrix.clone();
                  silhouetteMatrix.concat(this.invertedHostMatrix);
                  _matrices[silhouettable][silhouettable.scale.x + "_" + silhouettable.scale.y] = silhouetteMatrix;
               }
               silhouette.transform.matrix = silhouetteMatrix;
            }
            originReuse.x = silhouettable.actorFootX * silhouettable.scale.x;
            originReuse.y = silhouettable.actorFootY * silhouettable.scale.y;
            originReuse.y = originReuse.y + silhouettable.zpos * silhouettable.scale.y;
            globalActorPoint = silhouettable.localToGlobal(originReuse);
            dispMaskPoint = _silhouetteHolder.globalToLocal(globalActorPoint);
            silhouette.x = dispMaskPoint.x;
            silhouette.y = dispMaskPoint.y;
         }
      }
      
      private function reparentDisplay(disp:Sprite) : SpritePositionBubbler
      {
         var hostMc:SpritePositionBubbler = new MapObjectHolder(this);
         hostMc.addChild(disp);
         hostMc.x = disp.x;
         hostMc.y = disp.y;
         hostMc.transform.matrix = disp.transform.matrix.clone();
         disp.transform.matrix = new Matrix();
         disp.x = 0;
         disp.y = 0;
         return hostMc;
      }
      
      private function performDelayedInit() : void
      {
         var mc:Sprite = null;
         if(!this._displayMc)
         {
            mc = new _delayedInit.objClass();
            mc.x = _delayedInit.x;
            mc.y = _delayedInit.y;
            mc.transform.matrix = _delayedInit.matrix;
            mc.filters = _delayedInit.filters;
            mc.name = this.name;
            if(_delayedInit.hasOwnProperty("gstLightIgnore"))
            {
               Object(mc).gstLightIgnore = _delayedInit.gstLightIgnore;
            }
            if(_delayedInit.hasOwnProperty("isTitnable"))
            {
               Object(mc).isTintable = _delayedInit.isTintable;
            }
            if(mc.hasOwnProperty("displaySilhouette"))
            {
               Object(mc).displaySilhouette = _delayedInit.displaySilhouette;
            }
            finishInit(mc);
         }
      }
      
      public function get btnLink() : SimpleButton
      {
         return this._btnLink;
      }
      
      public function get x() : Number
      {
         return _hostMc.x;
      }
      
      public function getStageMc() : SpritePositionBubbler
      {
         return this._hostMc;
      }
      
      private function setSilhouetteVisible(silhouette:Sprite, visible:Boolean) : void
      {
         if(_silhouetteVisible != visible)
         {
            silhouette.visible = visible;
            this._silhouetteVisible = visible;
         }
      }
   }
}

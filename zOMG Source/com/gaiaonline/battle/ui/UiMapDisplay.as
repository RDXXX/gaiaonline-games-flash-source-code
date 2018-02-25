package com.gaiaonline.battle.ui
{
   import com.gaiaonline.battle.ui.events.UiEvents;
   import com.gaiaonline.utils.DisplayObjectUtils;
   import flash.display.BlendMode;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.filters.GlowFilter;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   import flash.utils.getTimer;
   
   public class UiMapDisplay extends MovieClip
   {
      
      private static const MARKERFRAME_NORMAL:String = "marker";
      
      private static const MARKERFRAME_TRIANGLE:String = "hint";
      
      public static const PHANTOM_MARKER_CLICK:String = "UiMapDisplayEvent.phantomMarkerClick";
      
      public static const DRAG_START:String = "UiMapDisplayEvent.dragStart";
      
      private static const s_convertRadians:Number = 180 / Math.PI;
       
      
      private var mcDots:Sprite;
      
      private var _autoCenter:Boolean = true;
      
      private var _markerClicked:Boolean = false;
      
      public var mcMask:MovieClip;
      
      private var centerPoint:Point;
      
      private var _lastPulse:int = 0;
      
      public var mcMapContainer:MovieClip;
      
      private var _playerPos:Point;
      
      private var _height:Number = 100;
      
      private var _width:Number = 100;
      
      private var _tooltipManager:ToolTipOld;
      
      private var _stores:Dictionary;
      
      private var _showFOW:Boolean = true;
      
      private var _objects:Array;
      
      private var mcFOW:Sprite;
      
      public var mcBorder:MovieClip;
      
      private var mcFOWMask:Sprite;
      
      private var mcMap:Sprite;
      
      private var _updateWatermark:uint = 0;
      
      public function UiMapDisplay()
      {
         _stores = new Dictionary();
         mcMap = new Sprite();
         mcDots = new Sprite();
         mcFOW = new Sprite();
         mcFOWMask = new Sprite();
         _objects = new Array();
         centerPoint = new Point(NaN,NaN);
         super();
      }
      
      public function get showGroup() : Boolean
      {
         return getMarkerStore(MiniMapMarkerType.GROUP).show;
      }
      
      private function onPhantomFriendRollOver(e:Event) : void
      {
         DisplayObject(e.target).scaleX = 1.5;
         DisplayObject(e.target).scaleY = 1.5;
      }
      
      private function onPhantomFriendRollOut(e:Event) : void
      {
         DisplayObject(e.target).scaleX = 1;
         DisplayObject(e.target).scaleY = 1;
      }
      
      public function setSize(width:Number, height:Number) : void
      {
         var dirty:Boolean = width != this._width || height != this._height;
         if(dirty)
         {
            this._width = width;
            this._height = height;
            this.resize(dirty);
         }
      }
      
      public function set showGroup(v:Boolean) : void
      {
         getMarkerStore(MiniMapMarkerType.GROUP).show = v;
      }
      
      public function setMarkerData(id:String, type:MiniMapMarkerType, name:String, markerX:Number, markerY:Number, voiceData:Object = null) : void
      {
         var tooltip:String = null;
         var mf:MarkerStore = getMarkerStore(type);
         var marker:Marker = mf.getInstance(id);
         if(marker == null)
         {
            marker = mf.addInstance(id);
            switch(type)
            {
               case MiniMapMarkerType.PHANTOM_FRIEND:
                  DisplayObjectUtils.addWeakListener(marker.mc,MouseEvent.MOUSE_DOWN,onPhantomFriendMouseDown);
                  DisplayObjectUtils.addWeakListener(marker.mc,MouseEvent.ROLL_OVER,onPhantomFriendRollOver);
                  DisplayObjectUtils.addWeakListener(marker.mc,MouseEvent.ROLL_OUT,onPhantomFriendRollOut);
            }
            if(type == MiniMapMarkerType.PLAYER)
            {
               this.mcDots.addChild(marker.mc);
            }
            else
            {
               this.mcDots.addChildAt(marker.mc,0);
            }
         }
         if(marker.name != name)
         {
            tooltip = type == MiniMapMarkerType.PHANTOM_FRIEND?name + " - click to move to this player.":name;
            this._tooltipManager.addToolTip(marker.mc,tooltip,100);
            marker.name = name;
         }
         if(type == MiniMapMarkerType.PLAYER)
         {
            if(this._playerPos)
            {
               this._playerPos.x = markerX;
               this._playerPos.y = markerY;
            }
            else
            {
               this._playerPos = new Point(markerX,markerY);
            }
         }
         marker.setWorldPos(markerX,markerY);
         marker.watermark = _updateWatermark;
         if(voiceData)
         {
            if(voiceData.isSpeaking)
            {
               marker.addVoicePulse(voiceData.speakingMCClass);
            }
            else
            {
               marker.removeVoicePulse();
            }
         }
      }
      
      public function init(tooltipManager:ToolTipOld) : void
      {
         this._tooltipManager = tooltipManager;
         this.mcFOW.blendMode = BlendMode.LAYER;
         this.mcFOWMask.blendMode = BlendMode.ERASE;
         this.mcFOWMask.filters = [new GlowFilter(0,1,12,12)];
         this.mcFOW.addChild(this.mcFOWMask);
         this.mcMapContainer.addChild(this.mcMap);
         this.mcMapContainer.addChild(this.mcFOW);
         this.mcMapContainer.addChild(this.mcDots);
         this.mcMapContainer.addEventListener(MouseEvent.MOUSE_DOWN,onMapMouseDown,false,0,true);
         this.mcMapContainer.buttonMode = true;
         this.mcMapContainer.useHandCursor = true;
      }
      
      private function getMarkerStore(type:MiniMapMarkerType) : MarkerStore
      {
         if(!this._stores[type])
         {
            this._stores[type] = new MarkerStore(type);
         }
         return this._stores[type];
      }
      
      private function playMarker(marker:Marker) : void
      {
         if(marker.stateName != UiMapDisplay.MARKERFRAME_TRIANGLE)
         {
            marker.mc.gotoAndPlay(UiMapDisplay.MARKERFRAME_NORMAL);
         }
      }
      
      public function set showFriend(v:Boolean) : void
      {
         getMarkerStore(MiniMapMarkerType.FRIEND).show = v;
         getMarkerStore(MiniMapMarkerType.PHANTOM_FRIEND).show = v;
      }
      
      private function pulseMarkers() : void
      {
         var time:int = getTimer();
         if(time - _lastPulse > 4000)
         {
            forEachMarker(playMarker);
            _lastPulse = time;
         }
      }
      
      public function applyMarkers() : void
      {
         if(this._autoCenter)
         {
            this.resize();
         }
         updateMarkerPositions();
         pulseMarkers();
      }
      
      public function get showQuestFlags() : Boolean
      {
         return getMarkerStore(MiniMapMarkerType.QUEST).show;
      }
      
      private function exceedsEpsilon(delta:Number) : Boolean
      {
         return delta > 0.1 || delta < -0.1;
      }
      
      public function resize(resized:Boolean = false, needsRecentering:Boolean = true) : void
      {
         if(this._autoCenter && this._playerPos != null)
         {
            if(centerPoint.x != this._playerPos.x || centerPoint.y != this._playerPos.y)
            {
               needsRecentering = true;
               centerPoint.x = this._playerPos.x;
               centerPoint.y = this._playerPos.y;
            }
         }
         else
         {
            centerPoint.x = -this.mcMapContainer.x + this._width / 2;
            centerPoint.y = -this.mcMapContainer.y + this._height / 2;
         }
         if(resized || needsRecentering)
         {
            reposition(resized);
         }
         updateMarkerPositions();
      }
      
      private function forEachMarker(fn:Function) : void
      {
         var store:MarkerStore = null;
         for each(store in _stores)
         {
            store.forEachMarker(fn);
         }
      }
      
      private function updateMarkerPositions() : void
      {
         var store:MarkerStore = null;
         var marker:Marker = null;
         var targetX:Number = NaN;
         var excessX:Number = NaN;
         var targetY:Number = NaN;
         var excessY:Number = NaN;
         var stateName:String = null;
         var angle:Number = NaN;
         var mapContainerX:Number = this.mcMapContainer.x;
         var mapContainerY:Number = this.mcMapContainer.y;
         var maskWidth:Number = this.mcMask.width;
         var maskHeight:Number = this.mcMask.height;
         for each(store in _stores)
         {
            for each(marker in store.instances)
            {
               targetX = marker.worldX;
               if(targetX + mapContainerX < 0)
               {
                  targetX = -mapContainerX;
               }
               else if(targetX + mapContainerX > maskWidth)
               {
                  targetX = -mapContainerX + maskWidth;
               }
               excessX = marker.worldX - targetX;
               targetY = marker.worldY;
               if(targetY + mapContainerY < 0)
               {
                  targetY = -mapContainerY;
               }
               else if(targetY + mapContainerY > maskHeight)
               {
                  targetY = -mapContainerY + maskHeight;
               }
               excessY = marker.worldY - targetY;
               stateName = MARKERFRAME_NORMAL;
               angle = 0;
               if(excessX != 0 || excessY != 0)
               {
                  stateName = MARKERFRAME_TRIANGLE;
                  angle = Math.atan2(excessY,excessX) * s_convertRadians + 90;
               }
               if(marker.stateName != stateName)
               {
                  marker.stateName = stateName;
                  marker.mc.gotoAndPlay(stateName);
               }
               if(marker.mc.rotation != angle)
               {
                  marker.mc.rotation = angle;
               }
               if(!marker.isAt(targetX,targetY))
               {
                  marker.setPos(targetX,targetY);
               }
            }
         }
      }
      
      public function setMapImg(map:Sprite) : void
      {
         while(this.mcMap.numChildren > 0)
         {
            this.mcMap.removeChildAt(0);
         }
         this.mcMap.addChild(map);
         this.mcMapContainer.x = 0;
         this.mcMapContainer.y = 0;
         this.resize(false,true);
      }
      
      public function set autoCenter(v:Boolean) : void
      {
         if(v != this._autoCenter)
         {
            this._autoCenter = v;
            this.resize();
            this.updateMarkerPositions();
         }
      }
      
      private function onPhantomFriendMouseDown(e:Event) : void
      {
         var id:* = null;
         var event:UiEvents = null;
         var phantomStore:MarkerStore = MarkerStore(getMarkerStore(MiniMapMarkerType.PHANTOM_FRIEND));
         for(id in phantomStore.instances)
         {
            if(phantomStore.getInstance(id).mc == e.currentTarget)
            {
               event = new UiEvents(PHANTOM_MARKER_CLICK,null);
               event.userId = id;
               dispatchEvent(event);
               _markerClicked = true;
               break;
            }
         }
      }
      
      private function reposition(resized:Boolean) : void
      {
         var mapContainerX:Number = NaN;
         var exceedsEpsilon:Boolean = false;
         var mapContainerY:Number = NaN;
         var mcMaskHeight:Number = this._height;
         var mcMaskWidth:Number = this._width;
         var currMapContainerX:Number = this.mcMapContainer.x;
         var currMapContainerY:Number = this.mcMapContainer.y;
         if(resized)
         {
            this.mcMask.width = mcMaskWidth;
            this.mcMask.height = mcMaskHeight;
            this.mcBorder.width = mcMaskWidth;
            this.mcBorder.height = mcMaskHeight;
         }
         var mcMapContainerHeight:Number = this.mcMapContainer.height;
         var mcMapContainerWidth:Number = this.mcMapContainer.width;
         if(this._showFOW)
         {
            mapContainerX = mcMaskWidth / 2 - mcMapContainerWidth / 2;
            if(mcMapContainerWidth >= mcMaskWidth)
            {
               mapContainerX = -(centerPoint.x - mcMaskWidth / 2);
               if(mapContainerX > 0)
               {
                  mapContainerX = 0;
               }
               if(mapContainerX < -(mcMapContainerWidth - mcMaskWidth))
               {
                  mapContainerX = -(mcMapContainerWidth - mcMaskWidth);
               }
            }
            exceedsEpsilon = this.exceedsEpsilon(mapContainerX - currMapContainerX);
            if(exceedsEpsilon)
            {
               this.mcMapContainer.x = mapContainerX;
            }
            mapContainerY = mcMaskHeight / 2 - mcMapContainerHeight / 2;
            if(mcMapContainerHeight >= mcMaskHeight)
            {
               mapContainerY = -(centerPoint.y - mcMaskHeight / 2);
               if(mapContainerY > 0)
               {
                  mapContainerY = 0;
               }
               if(mapContainerY < -(mcMapContainerHeight - mcMaskHeight))
               {
                  mapContainerY = -(mcMapContainerHeight - mcMaskHeight);
               }
            }
            exceedsEpsilon = this.exceedsEpsilon(mapContainerY - currMapContainerY);
            if(exceedsEpsilon)
            {
               this.mcMapContainer.y = mapContainerY;
            }
         }
         else
         {
            if(mapContainerX != currMapContainerX)
            {
               this.mcMapContainer.x = mcMaskWidth / 2 - mcMapContainerWidth / 2;
            }
            if(mapContainerY != currMapContainerY)
            {
               this.mcMapContainer.y = mcMaskHeight / 2 - mcMapContainerHeight / 2;
            }
         }
      }
      
      private function onMapDrag(evt:MouseEvent) : void
      {
         updateMarkerPositions();
      }
      
      private function onMapMouseUp(evt:MouseEvent) : void
      {
         this.mcMapContainer.stopDrag();
         this.stage.removeEventListener(MouseEvent.MOUSE_UP,onMapMouseUp);
         this.stage.removeEventListener(MouseEvent.MOUSE_MOVE,onMapDrag);
         updateMarkerPositions();
      }
      
      public function clearFogOfWar(rect:Rectangle) : void
      {
         this.mcFOWMask.graphics.lineStyle(0,0,0);
         this.mcFOWMask.graphics.beginFill(0,1);
         this.mcFOWMask.graphics.drawRect(rect.x,rect.y,rect.width,rect.height);
         this.mcFOWMask.graphics.endFill();
      }
      
      public function resetFogOfWar(showFogOfWar:Boolean) : void
      {
         this.mcFOWMask.graphics.clear();
         this.mcFOW.graphics.clear();
         this.mcFOW.graphics.lineStyle(0,0,0);
         this.mcFOW.graphics.beginFill(0,1);
         this.mcFOW.graphics.drawRect(0,0,this.mcMap.width,this.mcMap.height);
         this.mcFOW.graphics.endFill();
         this._showFOW = showFogOfWar;
         this.mcFOW.visible = showFogOfWar;
      }
      
      private function onMapMouseDown(evt:MouseEvent) : void
      {
         var left:Number = NaN;
         var right:Number = NaN;
         var top:Number = NaN;
         var bottom:Number = NaN;
         if(_markerClicked)
         {
            _markerClicked = false;
            return;
         }
         dispatchEvent(new Event(DRAG_START));
         if(!this._autoCenter && this._showFOW && this.stage != null && (this.mcMapContainer.width > this.mcMask.width || this.mcMapContainer.height > this.mcMask.height))
         {
            left = this.mcMask.width / 2 - this.mcMapContainer.width / 2;
            right = 0;
            if(this.mcMapContainer.width > this.mcMask.width)
            {
               left = -this.mcMapContainer.width + this.mcMask.width;
               right = this.mcMapContainer.width - this.mcMask.width;
            }
            top = this.mcMask.height / 2 - this.mcMapContainer.height / 2;
            bottom = 0;
            if(this.mcMapContainer.height > this.mcMask.height)
            {
               top = -this.mcMapContainer.height + this.mcMask.height;
               bottom = this.mcMapContainer.height - this.mcMask.height;
            }
            this.mcMapContainer.startDrag(false,new Rectangle(left,top,right,bottom));
            this.stage.addEventListener(MouseEvent.MOUSE_UP,onMapMouseUp,false,0,true);
            this.stage.addEventListener(MouseEvent.MOUSE_MOVE,onMapDrag,false,0,true);
         }
      }
      
      public function purgeStaleMarkers() : void
      {
         var markerLookup:MarkerStore = null;
         var id:* = null;
         var marker:Marker = null;
         for each(markerLookup in this._stores)
         {
            for(id in markerLookup.instances)
            {
               marker = markerLookup.getInstance(id);
               if(marker.watermark != _updateWatermark)
               {
                  this._tooltipManager.removeToolTip(marker.mc);
                  this.mcDots.removeChild(marker.mc);
                  markerLookup.removeInstance(id);
               }
            }
         }
         _updateWatermark++;
      }
      
      public function set showQuestFlags(v:Boolean) : void
      {
         getMarkerStore(MiniMapMarkerType.QUEST).show = v;
         getMarkerStore(MiniMapMarkerType.AVAILABLE_QUEST).show = v;
      }
      
      public function get autoCenter() : Boolean
      {
         return this._autoCenter;
      }
      
      public function get showFriend() : Boolean
      {
         return getMarkerStore(MiniMapMarkerType.FRIEND).show;
      }
   }
}

import flash.display.MovieClip;

class Marker
{
    
   
   public var name:String = "";
   
   public var mc:MovieClip;
   
   private var _pulse:MovieClip = null;
   
   public var watermark:int = 0;
   
   private var _worldX:Number = 0;
   
   private var _worldY:Number = 0;
   
   private var _cachedX:Number = 0;
   
   public var stateName:String = "";
   
   private var _cachedY:Number = 0;
   
   function Marker(_mc:MovieClip)
   {
      super();
      mc = _mc;
   }
   
   public function get worldX() : Number
   {
      return _worldX;
   }
   
   public function get worldY() : Number
   {
      return _worldY;
   }
   
   public function addVoicePulse(pulse:Class) : void
   {
      if(null == _pulse)
      {
         _pulse = new pulse();
         mc.addChild(_pulse);
      }
   }
   
   public function setPos(x:Number, y:Number) : void
   {
      _cachedX = x;
      _cachedY = y;
      mc.x = x;
      mc.y = y;
   }
   
   public function setWorldPos(x:Number, y:Number) : void
   {
      _worldX = x;
      _worldY = y;
   }
   
   public function removeVoicePulse() : void
   {
      if(null != _pulse)
      {
         if(_pulse.parent == mc)
         {
            mc.removeChild(_pulse);
         }
         _pulse = null;
      }
   }
   
   public function isAt(x:Number, y:Number) : Boolean
   {
      return _cachedX == x && _cachedY == y;
   }
}

import com.gaiaonline.battle.ui.MiniMapMarkerType;

class MarkerStore
{
    
   
   private var _type:MiniMapMarkerType;
   
   private var _show:Boolean;
   
   private var _instances:Object;
   
   function MarkerStore(type:MiniMapMarkerType)
   {
      _instances = {};
      super();
      _type = type;
      _show = true;
   }
   
   public function forEachMarker(fn:Function) : void
   {
      var m:Marker = null;
      for each(m in _instances)
      {
         fn(m);
      }
   }
   
   public function getInstance(id:String) : Marker
   {
      return _instances[id];
   }
   
   public function addInstance(id:String) : Marker
   {
      var assetType:Class = _type.getClass();
      var newMarker:Marker = new Marker(new assetType());
      newMarker.mc.visible = _show;
      _instances[id] = newMarker;
      return newMarker;
   }
   
   public function removeInstance(id:String) : void
   {
      _instances[id] = null;
      delete _instances[id];
   }
   
   public function set show(s:Boolean) : void
   {
      var m:Marker = null;
      if(_show != s)
      {
         _show = s;
         for each(m in _instances)
         {
            m.mc.visible = s;
         }
      }
   }
   
   public function get show() : Boolean
   {
      return _show;
   }
   
   public function get instances() : Object
   {
      return _instances;
   }
}

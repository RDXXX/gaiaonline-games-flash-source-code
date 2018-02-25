package com.gaiaonline.battle.map
{
   import com.gaiaonline.battle.GST;
   import com.gaiaonline.flexModulesAPIs.globalevent.GlobalEvent;
   import com.gaiaonline.platform.actors.ITintable;
   import com.gaiaonline.platform.map.ITintManager;
   import com.gaiaonline.utils.DisplayObjectUtils;
   import com.gaiaonline.utils.RegisterUtils;
   import flash.display.BlendMode;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class TintManager implements ITintManager
   {
       
      
      private var _mapGSTTintManager:MapGSTTintManager = null;
      
      private var _mapTintManager:MapTintManager = null;
      
      private var mcTintGst:Sprite;
      
      private var mcTintGroundLight:Sprite;
      
      private var mcTintLayer:Sprite;
      
      private var mcTintRoom:Sprite;
      
      private var _environmentChangeHandlers:Array;
      
      private var mcTintShadow:Sprite;
      
      private var _mapRoomManager:IMapRoomManager = null;
      
      public function TintManager(mapRoomManager:IMapRoomManager, gst:GST)
      {
         _environmentChangeHandlers = [];
         super();
         _mapRoomManager = mapRoomManager;
         this.mcTintLayer = new Sprite();
         this.mcTintLayer.blendMode = BlendMode.MULTIPLY;
         this.mcTintGst = new Sprite();
         this.mcTintRoom = new Sprite();
         this.mcTintRoom.alpha = 0;
         this.mcTintGroundLight = new Sprite();
         this.mcTintShadow = new Sprite();
         this.mcTintShadow.blendMode = BlendMode.DARKEN;
         this.mcTintLayer.addChild(this.mcTintGst);
         this.mcTintLayer.addChild(this.mcTintRoom);
         this.mcTintLayer.addChild(this.mcTintShadow);
         this.mcTintLayer.addChild(this.mcTintGroundLight);
         _mapTintManager = new MapTintManager(mapRoomManager,mcTintLayer,mcTintShadow);
         _mapTintManager.addEventListener(MapTintManager.INHABITANTS_TINT_INVALID,onInhabitantsTintInvalid,false,0,true);
         _mapGSTTintManager = new MapGSTTintManager(mcTintGst,mcTintRoom,_mapTintManager,mapRoomManager,gst);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.MAP_DONE,onMapDone);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.MAP_LOAD_ZONE,onLoadZone);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.MAP_SLIDE_COMPLETE,onMapSlideDone);
      }
      
      public function removeShadow(shadow:DisplayObject) : void
      {
         if(shadow != null && shadow.parent == this.mcTintShadow)
         {
            this.mcTintShadow.removeChild(shadow);
         }
      }
      
      public function addGroundLight(groundLight:DisplayObject) : void
      {
         if(groundLight != null && groundLight.parent != this.mcTintGroundLight)
         {
            this.mcTintGroundLight.addChild(groundLight);
         }
      }
      
      private function onLoadZone(event:GlobalEvent) : void
      {
         _mapTintManager.clearTintData();
         DisplayObjectUtils.ClearAllChildrens(this.mcTintGst);
         DisplayObjectUtils.ClearAllChildrens(this.mcTintRoom);
         DisplayObjectUtils.ClearAllChildrens(this.mcTintShadow);
         DisplayObjectUtils.ClearAllChildrens(this.mcTintGroundLight);
      }
      
      public function initTintLayers(sX:Number, sY:Number) : void
      {
         this.mcTintGst.graphics.clear();
         this.mcTintGst.graphics.beginFill(16777215,1);
         this.mcTintGst.graphics.drawRect(-780,-505,sX + 780 * 2,sY + 505 * 2);
         this.mcTintGst.graphics.endFill();
         this.mcTintRoom.graphics.clear();
         this.mcTintRoom.graphics.beginFill(16777215,1);
         this.mcTintRoom.graphics.drawRect(-780,-505,sX + 780 * 2,sY + 505 * 2);
         this.mcTintRoom.graphics.endFill();
      }
      
      public function updateTints(roomId:String) : void
      {
         _mapTintManager.updateTints(roomId);
      }
      
      private function onMapSlideDone(event:GlobalEvent) : void
      {
         var currentRoom:MapRoom = _mapRoomManager.getCurrentMapRoom();
         var tint:Object = currentRoom.getRoomTint();
         _mapGSTTintManager.updateRoomTint(tint.r,tint.g,tint.b,tint.a);
         _mapTintManager.updateTints(currentRoom.serverRoomId);
         this.mcTintLayer.visible = currentRoom.tintBackground;
      }
      
      private function onMapDone(event:GlobalEvent) : void
      {
         var newRoom:MapRoom = _mapRoomManager.getRoomById(event.data.roomId);
         var tint:Object = newRoom.getRoomTint();
         _mapGSTTintManager.setRoomTint(tint.r,tint.g,tint.b,tint.a);
         this.mcTintLayer.visible = newRoom.tintBackground;
      }
      
      public function addShadow(shadow:DisplayObject) : void
      {
         if(shadow != null && shadow.parent != this.mcTintShadow)
         {
            shadow.cacheAsBitmap;
            this.mcTintShadow.addChild(shadow);
         }
      }
      
      public function setLights() : void
      {
         _mapGSTTintManager.setLights();
      }
      
      private function onInhabitantsTintInvalid(event:Event) : void
      {
         var enviroChangeHandler:IEnvironmentChangeHandler = null;
         for each(enviroChangeHandler in _environmentChangeHandlers)
         {
            enviroChangeHandler.onEnvironmentChange(this);
         }
      }
      
      private function tintObject(tintable:ITintable) : void
      {
         var tintObj:Object = null;
         switch(tintable.getTintType())
         {
            case TintTypes.ALL:
               tintObj = _mapTintManager.getTintAtForAvatars(tintable.x,tintable.y);
               break;
            case TintTypes.NO_SHADOWS:
               tintObj = _mapTintManager.getTintAtForMapObjects(tintable.x,tintable.y);
               break;
            case TintTypes.NONE:
               return;
         }
         if(tintObj)
         {
            tintable.setTint(tintObj.r,tintObj.g,tintObj.b);
         }
      }
      
      public function removeGroundLight(groundLight:DisplayObject) : void
      {
         if(groundLight != null && groundLight.parent == this.mcTintGroundLight)
         {
            this.mcTintGroundLight.removeChild(groundLight);
         }
      }
      
      public function updateObject(invalidObj:Object) : void
      {
         var tintable:ITintable = invalidObj as ITintable;
         if(tintable)
         {
            tintObject(tintable);
         }
      }
      
      public function getTintLayer() : Sprite
      {
         return mcTintLayer;
      }
      
      public function setCurrentGSTTint(update:Boolean = true) : void
      {
         _mapGSTTintManager.setCurrentGSTTint(update);
      }
      
      public function registerForEnvironmentChanges(handler:IEnvironmentChangeHandler) : void
      {
         RegisterUtils.register(_environmentChangeHandlers,handler);
      }
      
      public function isLightsOn() : Boolean
      {
         return _mapGSTTintManager.isLightsOn();
      }
   }
}

import com.gaiaonline.battle.map.IMapRoomManager;
import com.gaiaonline.battle.map.MapRoom;
import com.gaiaonline.flexModulesAPIs.globalevent.GlobalEvent;
import com.gaiaonline.utils.DisplayObjectUtils;
import flash.display.BitmapData;
import flash.display.DisplayObjectContainer;
import flash.events.Event;
import flash.events.EventDispatcher;
import flash.geom.Matrix;
import flash.geom.Point;

class MapTintManager extends EventDispatcher
{
   
   private static const TINT_SCALE:Number = 0.1;
   
   public static const INHABITANTS_TINT_INVALID:String = "inhabitantsTintInvalid";
    
   
   private var mcTintLayer:DisplayObjectContainer = null;
   
   private var bmdObjTint:BitmapData;
   
   private var bmdAvTint:BitmapData;
   
   private var mcTintShadow:DisplayObjectContainer = null;
   
   private var _mapRoomManager:IMapRoomManager = null;
   
   function MapTintManager(mapRoomManager:IMapRoomManager, tintLayer:DisplayObjectContainer, shadowTintLayer:DisplayObjectContainer)
   {
      super();
      _mapRoomManager = mapRoomManager;
      mcTintLayer = tintLayer;
      mcTintShadow = shadowTintLayer;
      DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.MAP_UPDATE_TINTS,updateTintsEvent);
   }
   
   public function clearTintData() : void
   {
      if(bmdAvTint)
      {
         this.bmdAvTint.fillRect(bmdAvTint.rect,4278190080);
      }
      if(bmdObjTint)
      {
         this.bmdObjTint.fillRect(bmdObjTint.rect,4278190080);
      }
      dispatchInvalidTint();
   }
   
   public function onTintUpdate(evt:Event) : void
   {
      var currentRoomId:String = _mapRoomManager.getCurrentRoomId();
      if(currentRoomId)
      {
         this.updateTints(currentRoomId);
      }
   }
   
   private function updateTintsEvent(event:GlobalEvent) : void
   {
      updateTints(event.data.roomId);
   }
   
   public function updateTints(roomId:String = null) : void
   {
      if(roomId == null)
      {
         roomId = _mapRoomManager.getCurrentRoomId();
      }
      this.buildTintData(roomId);
   }
   
   private function tryBuildTintData(roomId:String) : void
   {
      var avatarTintMatrix:Matrix = null;
      var mapObjectTintMatrix:Matrix = null;
      var mRoom:MapRoom = _mapRoomManager.getRoomById(roomId);
      if(mRoom != null && this.mcTintLayer != null && this.mcTintLayer.width > 0 && this.mcTintLayer.height > 0)
      {
         mRoom.setShadowForTint(true);
         mRoom.setGroundLightForTint(true);
         if(this.bmdAvTint == null)
         {
            this.bmdAvTint = new BitmapData(780 * TINT_SCALE,505 * TINT_SCALE,true,4294967295);
         }
         if(this.bmdObjTint == null)
         {
            this.bmdObjTint = new BitmapData(2340 * TINT_SCALE,1515 * TINT_SCALE,true,4294967295);
         }
         clearTintData();
         avatarTintMatrix = this.mcTintLayer.transform.matrix.clone();
         avatarTintMatrix.tx = -(mRoom.layoutPos.x * 780);
         avatarTintMatrix.ty = -(mRoom.layoutPos.y * 505);
         avatarTintMatrix.scale(TINT_SCALE,TINT_SCALE);
         this.bmdAvTint.draw(this.mcTintLayer,avatarTintMatrix);
         mapObjectTintMatrix = this.mcTintLayer.transform.matrix.clone();
         mapObjectTintMatrix.tx = -((mRoom.layoutPos.x - 1) * 780);
         mapObjectTintMatrix.ty = -((mRoom.layoutPos.y - 1) * 505);
         mapObjectTintMatrix.scale(TINT_SCALE,TINT_SCALE);
         this.mcTintShadow.visible = false;
         this.bmdObjTint.draw(this.mcTintLayer,mapObjectTintMatrix);
         this.mcTintShadow.visible = true;
         mRoom.setShadowForTint(false);
         mRoom.setGroundLightForTint(false);
      }
      else
      {
         clearTintData();
      }
      dispatchInvalidTint();
   }
   
   private function buildTintData(roomId:String) : void
   {
      try
      {
         tryBuildTintData(roomId);
      }
      catch(error:ArgumentError)
      {
         trace(error);
      }
   }
   
   public function getTintAtForAvatars(x:int, y:int) : Object
   {
      var mapRoom:MapRoom = null;
      var layoutPos:Point = null;
      var localX:Number = NaN;
      var localY:Number = NaN;
      var c:int = 0;
      var r:* = 0;
      var g:* = 0;
      var b:* = 0;
      var tint:Object = null;
      if(_mapRoomManager.getCurrentRoomId() != null)
      {
         mapRoom = _mapRoomManager.getCurrentMapRoom();
         if(this.bmdAvTint != null && mapRoom != null)
         {
            layoutPos = mapRoom.layoutPos;
            localX = x - layoutPos.x * 780;
            localY = y - layoutPos.y * 505;
            c = this.bmdAvTint.getPixel(localX * TINT_SCALE,localY * TINT_SCALE);
            r = c >> 16;
            g = c >> 8 & 255;
            b = c & 255;
            tint = {
               "r":r,
               "g":g,
               "b":b
            };
            if(!(tint.r == 0 && tint.g == 0 && tint.b == 0))
            {
               return tint;
            }
         }
      }
      return null;
   }
   
   public function getTintAtForMapObjects(x:Number, y:Number) : Object
   {
      var c:int = 0;
      var r:* = 0;
      var g:* = 0;
      var b:* = 0;
      var layoutPos:Point = _mapRoomManager.getCurrentMapRoom().layoutPos;
      x = x - (layoutPos.x - 1) * 780;
      y = y - (layoutPos.y - 1) * 505;
      if(this.bmdObjTint != null)
      {
         c = this.bmdObjTint.getPixel(x * TINT_SCALE,y * TINT_SCALE);
         r = c >> 16;
         g = c >> 8 & 255;
         b = c & 255;
      }
      var tint:Object = {
         "r":r,
         "g":g,
         "b":b
      };
      if(!(tint.r == 0 && tint.g == 0 && tint.b == 0))
      {
         return tint;
      }
      return null;
   }
   
   private function dispatchInvalidTint() : void
   {
      dispatchEvent(new Event(INHABITANTS_TINT_INVALID));
   }
}

import com.gaiaonline.battle.GST;
import com.gaiaonline.battle.map.IMapRoomManager;
import com.gaiaonline.battle.map.MapObject;
import com.gaiaonline.battle.map.MapRoom;
import com.gaiaonline.battle.map.TintUpdate;
import com.gaiaonline.flexModulesAPIs.globalevent.GlobalEvent;
import com.gaiaonline.utils.DisplayObjectUtils;
import flash.display.Sprite;

class MapGSTTintManager
{
    
   
   private var gstTint:TintUpdate;
   
   private var lightOn:Boolean = false;
   
   private var _gst:GST = null;
   
   private var _mapTintManager:MapTintManager = null;
   
   private var roomTint:TintUpdate;
   
   private var _mapRoomManager:IMapRoomManager = null;
   
   function MapGSTTintManager(gstTintLayer:Sprite, roomTintLayer:Sprite, mapTintManager:MapTintManager, mapRoomManager:IMapRoomManager, gst:GST)
   {
      super();
      _mapTintManager = mapTintManager;
      _mapRoomManager = mapRoomManager;
      _gst = gst;
      this.gstTint = new TintUpdate(gstTintLayer,240000,6000);
      this.gstTint.addEventListener("TINT_UPDATE",_mapTintManager.onTintUpdate,false,0,true);
      this.gstTint.name = "GST";
      this.roomTint = new TintUpdate(roomTintLayer,12000,1000);
      this.roomTint.addEventListener("TINT_UPDATE",_mapTintManager.onTintUpdate,false,0,true);
      this.roomTint.name = "Room";
      DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.MAP_GST_TINT_UPDATE,onGSTTintEvent);
      DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.MAP_SET_LIGHTS,setLightsOnEvent);
   }
   
   private function setGSTTint(r:int = 255, g:int = 255, b:int = 255, update:Boolean = true) : void
   {
      if(update)
      {
         this.gstTint.updateTint(r,g,b,100);
      }
      else
      {
         this.gstTint.setTint(r,g,b,100);
      }
   }
   
   private function setLightsOnEvent(event:GlobalEvent) : void
   {
      var value:Boolean = event.data.on;
      setLightsOn(value);
   }
   
   public function isLightsOn() : Boolean
   {
      return this.lightOn;
   }
   
   public function setLights() : void
   {
      setLightsOn(_gst.lightsOn);
   }
   
   public function setRoomTint(r:int, g:int, b:int, per:int) : void
   {
      roomTint.setTint(r,g,b,per);
   }
   
   public function setCurrentGSTTint(update:Boolean = true) : void
   {
      var tint:Object = _gst.getCurrentTint();
      if(tint != null)
      {
         setGSTTint(tint.r,tint.g,tint.b,update);
      }
   }
   
   private function onGSTTintEvent(event:GlobalEvent) : void
   {
      var r:int = event.data.r;
      var g:int = event.data.g;
      var b:int = event.data.b;
      var update:Boolean = event.data.update;
      setGSTTint(r,g,b,update);
   }
   
   private function setLightsOn(value:Boolean) : void
   {
      var i:int = 0;
      var mapObj:MapObject = null;
      if(this.lightOn == value)
      {
         return;
      }
      this.lightOn = value;
      var mapRoom:MapRoom = _mapRoomManager.getCurrentMapRoom();
      if(mapRoom != null)
      {
         for(i = 0; i < mapRoom.mapObjs.length; i++)
         {
            mapObj = mapRoom.mapObjs[i];
            if(!mapObj.isCustomLight)
            {
               mapObj.setLight(this.lightOn);
            }
         }
      }
   }
   
   public function updateRoomTint(r:int, g:int, b:int, per:int) : void
   {
      roomTint.updateTint(r,g,b,per);
   }
}

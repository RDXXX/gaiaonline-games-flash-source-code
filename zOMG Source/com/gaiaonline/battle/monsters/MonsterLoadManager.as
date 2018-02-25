package com.gaiaonline.battle.monsters
{
   import com.gaiaonline.battle.ApplicationInterfaces.IFileVersionManager;
   import com.gaiaonline.battle.ApplicationInterfaces.IUIFramework;
   import com.gaiaonline.battle.gateway.BattleEvent;
   import com.gaiaonline.battle.gateway.BattleGateway;
   import com.gaiaonline.battle.gateway.BattleMessage;
   import com.gaiaonline.battle.map.MapRoom;
   import com.gaiaonline.battle.sounds.ActorSoundManager;
   import com.gaiaonline.flexModulesAPIs.globalevent.GlobalEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class MonsterLoadManager extends EventDispatcher
   {
       
      
      private var _unloadExceptions:Array;
      
      private var _uiFramework:IUIFramework;
      
      private var _useRasterize:Boolean = false;
      
      private var _baseUrl:String;
      
      private var _lastNonNullChamberZoneId:String;
      
      private var _monsterPreloadList:Array;
      
      private var _battleGateway:BattleGateway;
      
      private var _fileVersionManager:IFileVersionManager;
      
      private var _progressEventDispatcher:ProgressEventDispatcher;
      
      private var _monsters:Object;
      
      public function MonsterLoadManager(uiFramework:IUIFramework, baseUrl:String, fileVersionManager:IFileVersionManager, battleGateway:BattleGateway)
      {
         _monsters = new Object();
         _monsterPreloadList = new Array();
         _unloadExceptions = new Array();
         super();
         this._uiFramework = uiFramework;
         this._baseUrl = baseUrl;
         this._fileVersionManager = fileVersionManager;
         this._battleGateway = battleGateway;
         GlobalEvent.eventDispatcher.addEventListener(GlobalEvent.MAP_LOAD_ZONE,onMapUnloadZone,false,0,true);
      }
      
      public function preloadMonsters() : EventDispatcher
      {
         var msg:BattleMessage = new BattleMessage("preload",null);
         msg.addEventListener(BattleEvent.CALL_BACK,onPreloadCallBack);
         this._battleGateway.sendMsg(msg);
         this._progressEventDispatcher = new ProgressEventDispatcher();
         return this._progressEventDispatcher;
      }
      
      public function addUnloadException(monsterName:String) : void
      {
         var mName:String = monsterName + ".swf?v?=" + this._fileVersionManager.getClientVersion("monsters/" + monsterName + ".swf");
         this._unloadExceptions.push(mName);
      }
      
      public function getBaseMonster(url:String) : BaseMonsterLoader
      {
         var a:Array = url.replace(/\\/g,"/").split("/");
         var name:String = a[a.length - 1];
         if(this._monsters[name] == null)
         {
            this._monsters[name] = new BaseMonsterLoader(this._uiFramework,url,this._useRasterize);
         }
         return BaseMonsterLoader(this._monsters[name]);
      }
      
      public function clearAll() : void
      {
         var sm:ActorSoundManager = null;
         var name:* = null;
         if(this._monsters != null)
         {
            sm = ActorSoundManager.getInstance();
            for(name in this._monsters)
            {
               if(this._monsters[name] is BaseMonsterLoader)
               {
                  sm.clearAll(BaseMonsterLoader(this._monsters[name]).baseMonster);
                  BaseMonsterLoader(this._monsters[name]).dispose();
               }
               this._monsters[name] = null;
            }
         }
         this._monsters = new Object();
      }
      
      public function set useRasterize(v:Boolean) : void
      {
         this._useRasterize = v;
      }
      
      private function onMapUnloadZone(event:GlobalEvent) : void
      {
      }
      
      private function onPreloadCallBack(evt:BattleEvent) : void
      {
         var vUrl:String = null;
         var mName:String = null;
         var sm:ActorSoundManager = null;
         var name:* = null;
         var m:MapRoom = null;
         var roomScale:Number = NaN;
         var url:String = null;
         var bml:BaseMonsterLoader = null;
         var bml2:BaseMonsterLoader = null;
         var preloadUrls:Array = evt.battleMessage.responseObj[0].preloadURLs;
         var monsterList:Object = new Object();
         for(var ii:int = 0; ii < preloadUrls.length; ii++)
         {
            mName = preloadUrls[ii];
            vUrl = "v?=" + this._fileVersionManager.getClientVersion("monsters/" + mName + ".swf");
            monsterList[mName + ".swf?" + vUrl] = mName;
         }
         if(preloadUrls.length >= 4)
         {
            sm = ActorSoundManager.getInstance();
            for(name in this._monsters)
            {
               if(this._unloadExceptions.indexOf(name) < 0)
               {
                  m = !!this._uiFramework?this._uiFramework.map.getCurrentMapRoom():null;
                  roomScale = 1;
                  if(m != null)
                  {
                     roomScale = m.scale / 100;
                  }
                  if(monsterList[name] == null || roomScale != BaseMonsterLoader(this._monsters[name]).scale)
                  {
                     sm.clearAll(BaseMonsterLoader(this._monsters[name]).baseMonster);
                     BaseMonsterLoader(this._monsters[name]).dispose();
                     this._monsters[name] = null;
                     delete this._monsters[name];
                  }
               }
            }
         }
         var monsterLoader:Object = new Object();
         for(var i:int = 0; i < preloadUrls.length; i++)
         {
            mName = preloadUrls[i];
            vUrl = "v?=" + this._fileVersionManager.getClientVersion("monsters/" + mName + ".swf");
            if(monsterLoader[mName] == null && this._monsters[mName + ".swf?" + vUrl] == null)
            {
               url = _baseUrl + "monsters/" + mName + ".swf?" + vUrl;
               bml = getBaseMonster(url);
               if(!bml.loaded)
               {
                  monsterLoader[mName] = bml;
                  this._monsterPreloadList.push(bml);
               }
            }
         }
         monsterLoader = null;
         if(this._monsterPreloadList.length > 0)
         {
            this._progressEventDispatcher.setTotal(_monsterPreloadList.length);
            bml2 = _monsterPreloadList.shift();
            bml2.addEventListener(Event.COMPLETE,onMonsterPreloaded);
            bml2.load();
         }
         else
         {
            _progressEventDispatcher.complete();
            _progressEventDispatcher = null;
            GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.MONSTER_PRELOAD_DONE,null));
         }
      }
      
      private function onMonsterPreloaded(evt:Event) : void
      {
         var bml2:BaseMonsterLoader = null;
         BaseMonsterLoader(evt.target).removeEventListener(Event.COMPLETE,onMonsterPreloaded);
         this._progressEventDispatcher.update(_monsterPreloadList.length);
         if(_monsterPreloadList.length > 0)
         {
            bml2 = _monsterPreloadList.shift();
            bml2.addEventListener(Event.COMPLETE,onMonsterPreloaded);
            bml2.load();
         }
         else
         {
            _progressEventDispatcher.complete();
            _progressEventDispatcher = null;
            GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.MONSTER_PRELOAD_DONE,null));
         }
      }
      
      public function removeMonster(url:String) : void
      {
         var a:Array = url.replace(/\\/g,"/").split("/");
         var name:String = a[a.length - 1];
         delete this._monsters[name];
         this._monsters[name] = null;
      }
      
      public function get useRasterize() : Boolean
      {
         return this._useRasterize;
      }
   }
}

import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.ProgressEvent;

class ProgressEventDispatcher extends EventDispatcher
{
    
   
   private var _total:int = 0;
   
   function ProgressEventDispatcher()
   {
      super();
   }
   
   public function update(numLeftToLoad:Number) : void
   {
      this.dispatchEvent(new ProgressEvent(ProgressEvent.PROGRESS,false,false,this._total - numLeftToLoad,this._total));
   }
   
   public function setTotal(total:int) : void
   {
      this._total = total;
   }
   
   public function complete() : void
   {
      this.dispatchEvent(new Event(Event.COMPLETE));
   }
}

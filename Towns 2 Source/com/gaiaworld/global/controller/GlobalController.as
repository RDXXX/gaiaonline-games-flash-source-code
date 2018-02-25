package com.gaiaworld.global.controller
{
   import com.gaiaworld.global.constants.GlobalConstants;
   import com.gaiaworld.global.model.GlobalModel;
   import com.gaiaworld.room.interfaces.IWorldItem;
   import flash.display.Sprite;
   import flash.display.Stage;
   import flash.events.Event;
   
   public class GlobalController
   {
       
      
      private var globalModel:GlobalModel;
      
      public function GlobalController()
      {
         this.globalModel = GlobalModel.getInstance();
         super();
      }
      
      public function setHouseEditMode(param1:Boolean) : *
      {
         this.globalModel.houseEditMode = param1;
      }
      
      public function worldIsBuilt() : *
      {
         this.globalModel.worldIsBuilt();
      }
      
      public function setStartPos(param1:Number, param2:Number) : *
      {
         this.globalModel.startX = param1;
         this.globalModel.startY = param2;
      }
      
      public function setGaiaTime(param1:String) : *
      {
         this.globalModel.gaiaTime = param1;
      }
      
      public function setDaylight(param1:String) : void
      {
         this.globalModel.lightString = param1;
      }
      
      public function setDayIcon(param1:Number) : void
      {
         this.globalModel.dayIcon = param1;
      }
      
      public function setSubdomain(param1:String) : *
      {
         this.globalModel.gsiSubdomain = param1;
      }
      
      public function setRoom(param1:String) : *
      {
         this.globalModel.roomName = param1;
      }
      
      public function setPaths(param1:String, param2:String, param3:String, param4:String) : void
      {
         this.globalModel.thumbPath = param1;
         this.globalModel.imagespath = param2;
         this.globalModel.roomimagepath = param3;
         this.globalModel.avatarpath = param4;
      }
      
      public function setImagePath(param1:String) : *
      {
         this.globalModel.imagespath = param1;
      }
      
      public function ignoreGST(param1:Boolean) : *
      {
         this.globalModel.ignoreGST = param1;
      }
      
      public function getJournal() : *
      {
         this.globalModel.getJournal();
      }
      
      public function setVersion(param1:Number) : void
      {
         this.globalModel.version = param1;
      }
      
      public function setIsHangout(param1:Boolean) : *
      {
         this.globalModel.isHangout = param1;
      }
      
      public function setMapDim(param1:Number, param2:Number) : *
      {
         this.globalModel.mapWidth = param1;
         this.globalModel.mapHeight = param2;
      }
      
      public function setMusic(param1:Array) : *
      {
         this.globalModel.musicArray = param1;
      }
      
      public function loadMusic(param1:String) : *
      {
         this.globalModel.loadMusic(param1);
      }
      
      public function unloadMusic() : *
      {
         this.globalModel.unloadMusic();
      }
      
      public function takePhoto() : *
      {
         this.globalModel.takePhoto();
      }
      
      public function fullScreen() : *
      {
         this.globalModel.goFullScreen();
      }
      
      public function alreadyLoggedIn() : void
      {
         this.globalModel.alreadyLoggedIn();
      }
      
      public function setImageFolder(param1:String) : *
      {
         this.globalModel.imageFolder = param1;
      }
      
      public function setEmoteEnabled(param1:Boolean) : void
      {
         this.globalModel.emoteEnabled = param1;
      }
      
      public function setGameID(param1:Number) : void
      {
         this.globalModel.gameID = param1;
      }
      
      public function setCurrentPos(param1:Number, param2:Number) : *
      {
         this.globalModel.currentX = param1;
         this.globalModel.currentY = param2;
      }
      
      public function setSpace(param1:String) : void
      {
         this.globalModel.spaceName = param1;
      }
      
      public function loadScreen(param1:String) : void
      {
         this.globalModel.screenToLoad = param1;
      }
      
      public function unloadScreen() : void
      {
         this.globalModel.unloadScreen();
      }
      
      public function hideChangeScreen() : void
      {
         this.globalModel.hideChangeScreen();
      }
      
      public function setSoundStatus(param1:Boolean) : void
      {
         this.globalModel.backgroundMusicIsPlaying = param1;
      }
      
      public function toggleSound() : void
      {
         this.globalModel.toggleSound();
      }
      
      public function hideUserBar() : void
      {
         this.globalModel.dispatchEvent(new Event(GlobalConstants.HIDE_USER_BAR));
      }
      
      public function showUserBar() : void
      {
         this.globalModel.dispatchEvent(new Event(GlobalConstants.SHOW_USER_BAR));
      }
      
      public function setLastLoadedMusic(param1:String) : void
      {
         this.globalModel.lastLoaded = param1;
      }
      
      public function setSingleInstance(param1:Boolean) : void
      {
         this.globalModel.singleInstance = param1;
      }
      
      public function setIsInSittingGame(param1:Boolean) : *
      {
         this.globalModel.isInSittingGame = param1;
      }
      
      public function changeTimeOfDay(param1:Boolean) : void
      {
         this.globalModel.isDayTime = param1;
      }
      
      public function ignoreGlobalClick(param1:Boolean) : void
      {
         this.globalModel.ignoreGlobalClick = param1;
      }
      
      public function setStage(param1:Stage) : void
      {
         this.globalModel.stage = param1;
      }
      
      public function hidePhone() : void
      {
         this.globalModel.hidePhone();
      }
      
      public function setButtonsEnabled(param1:Boolean) : void
      {
         this.globalModel.barButtonsEnabled = param1;
      }
      
      public function stopMusic() : void
      {
         this.globalModel.stopMusic();
      }
      
      public function showDay() : void
      {
         this.globalModel.showDay();
      }
      
      public function showHouseName() : *
      {
         this.globalModel.showHouseName();
      }
      
      public function hideHouseName() : *
      {
         this.globalModel.hideHouseName();
      }
      
      public function showNight() : void
      {
         this.globalModel.showNight();
      }
      
      public function globalClickItem(param1:Sprite) : void
      {
         this.globalModel.clickTarget = param1;
      }
      
      public function showLocation(param1:String) : void
      {
         this.globalModel.location = param1;
      }
      
      public function toggleSurface() : *
      {
         this.globalModel.toggleSurface();
      }
      
      public function changeMusic() : void
      {
         this.globalModel.changeMusic();
      }
      
      public function togglePMap() : void
      {
         this.globalModel.togglePMap();
      }
      
      public function toggleAdminOverride() : void
      {
         this.globalModel.adminOverride = !this.globalModel.adminOverride;
      }
      
      public function setLogClick(param1:Boolean) : void
      {
         this.globalModel.logClick = param1;
      }
      
      public function showDebugBox() : void
      {
         this.globalModel.showDebugBox();
      }
      
      public function redrawHistory(param1:Number, param2:Number) : *
      {
         this.globalModel.redrawHistory(param1,param2);
      }
      
      public function setHistoryTextSize(param1:Number) : void
      {
         this.globalModel.historyTextSize = param1;
      }
      
      public function setFontIndex(param1:Number) : void
      {
         this.globalModel.fontIndex = param1;
      }
      
      public function setUseEmbededFont(param1:Boolean) : *
      {
         this.globalModel.useEmbed = param1;
      }
      
      public function setFull(param1:Boolean) : void
      {
         this.globalModel.isFullScreen = param1;
      }
      
      public function setBlockedItem(param1:IWorldItem) : void
      {
         this.globalModel.blockedItem = param1;
      }
      
      public function keyPressed(param1:String) : void
      {
         this.globalModel.setKeyPressed(param1);
      }
      
      public function useLink(param1:Boolean) : void
      {
         this.globalModel.useLink = param1;
      }
      
      public function setLinkIp(param1:String) : void
      {
         this.globalModel.linkIP = param1;
      }
      
      public function setPortIP(param1:Number) : void
      {
         this.globalModel.linkPort = param1;
      }
      
      public function savePrefs() : void
      {
         this.globalModel.savePrefs();
      }
      
      public function setHideOverride(param1:Boolean) : void
      {
         this.globalModel.hideOverride = param1;
      }
      
      public function setWeather(param1:String) : void
      {
         this.globalModel.weather = param1;
      }
      
      public function showAFK(param1:Boolean) : void
      {
         this.globalModel.showAFK = param1;
      }
      
      public function showIsTyping(param1:Boolean) : void
      {
         this.globalModel.showIsTyping = param1;
      }
      
      public function showAnimDebug() : void
      {
         this.globalModel.showAnimDebug();
      }
      
      public function setAuth(param1:String, param2:String) : void
      {
         this.globalModel.passport_id = param1;
         this.globalModel.passport_token = param2;
      }
      
      public function setServerTime(param1:Number) : void
      {
         this.globalModel.currentTime = param1;
      }
      
      public function toggleIgnoreServer() : void
      {
         this.globalModel.toggleIgnoreServer();
      }
      
      public function toggleChat() : void
      {
         this.globalModel.toggleChat();
      }
   }
}

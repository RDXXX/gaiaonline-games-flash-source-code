package com.gaiaworld.global.model
{
   import com.gaiaworld.global.constants.GlobalConstants;
   import com.gaiaworld.global.events.KeyEvent;
   import com.gaiaworld.global.util.StringFunctions;
   import com.gaiaworld.room.interfaces.IWorldItem;
   import flash.display.Sprite;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class GlobalModel extends EventDispatcher
   {
      
      private static var instance:GlobalModel;
       
      
      public var houseEditMode:Boolean = false;
      
      public var startX:Number = 350;
      
      public var startY:Number = 450;
      
      public var lightString:String = "0,0,0,0,0,0,0";
      
      public var dayIcon:Number = 1;
      
      private var _gsiSubdomain:String = "www";
      
      public var roomName:String = "towns";
      
      private var _gaiaTime:String;
      
      public var thumbPath:String;
      
      public var imagespath:String;
      
      public var imageFolder:String = "";
      
      public var roomimagepath:String;
      
      public var avatarpath:String;
      
      private var _ignoreGST:Boolean = false;
      
      public var hood:Number = 0;
      
      public var doorX:Number = 0;
      
      public var doorY:Number = 0;
      
      public var version:Number = 0;
      
      public var viewWidth:Number = 975;
      
      public var viewHeight:Number = 650;
      
      public var mapWidth:Number = 1100;
      
      public var mapHeight:Number = 1100;
      
      public var isHangout:Boolean = false;
      
      public var gameID:Number = 10;
      
      private var _emoteEnabled:Boolean = true;
      
      private var _musicArray:Array;
      
      public var currentX:Number;
      
      public var currentY:Number;
      
      private var _spaceName:String;
      
      public var musicToLoad:String;
      
      public var backgroundMusicIsPlaying:Boolean = true;
      
      public var lastLoaded;
      
      public var singleInstance:Boolean;
      
      public var isInSittingGame:Boolean = false;
      
      public var ignoreGlobalClick:Boolean = false;
      
      public var stage:Stage;
      
      public var adminOverride:Boolean = false;
      
      public var logClick:Boolean = false;
      
      public var historyBackColor:Number = 1184274;
      
      public var historyAlpha:Number = 0.5;
      
      public var useEmbed:Boolean = true;
      
      public var isFullScreen:Boolean = false;
      
      public var useLink:Boolean = false;
      
      public var linkIP:String;
      
      public var linkPort:Number;
      
      private var _blockedItem:IWorldItem;
      
      private var _fontIndex:Number = 0;
      
      private var _historyTextSize:Number = 12;
      
      private var _location:String;
      
      private var _clickTarget:Sprite;
      
      private var _barButtonsEnabled:Boolean = true;
      
      private var _isDayTime:Boolean;
      
      private var _screenToLoad:String;
      
      public var hideOverride:Boolean = false;
      
      public var weather:String = "";
      
      public var showAFK:Boolean = true;
      
      public var showIsTyping:Boolean = true;
      
      public var passport_id:String = "";
      
      public var passport_token:String = "";
      
      public var currentTime:Number = 0;
      
      public function GlobalModel()
      {
         this._musicArray = new Array();
         super();
      }
      
      public static function getInstance() : GlobalModel
      {
         if(instance == null)
         {
            instance = new GlobalModel();
         }
         return instance;
      }
      
      public function worldIsBuilt() : void
      {
         this.dispatchEvent(new Event(GlobalConstants.WORLD_IS_BUILT,false));
      }
      
      public function get gaiaTime() : String
      {
         return this._gaiaTime;
      }
      
      public function set gaiaTime(param1:String) : void
      {
         this._gaiaTime = param1;
         this.dispatchEvent(new Event(GlobalConstants.GAIA_TIME_UPDATED,true));
      }
      
      public function get gsiSubdomain() : String
      {
         return this._gsiSubdomain;
      }
      
      public function set gsiSubdomain(param1:String) : void
      {
         this._gsiSubdomain = param1;
         this.dispatchEvent(new Event(GlobalConstants.SUBDOMAIN_SET,true));
      }
      
      public function get musicArray() : Array
      {
         return this._musicArray;
      }
      
      public function set musicArray(param1:Array) : void
      {
         this._musicArray = param1;
         this.dispatchEvent(new Event(GlobalConstants.MUSIC_SET,true));
      }
      
      public function loadMusic(param1:String) : *
      {
         this.musicToLoad = param1;
         this.dispatchEvent(new Event(GlobalConstants.LOAD_MUSIC,true));
      }
      
      public function unloadMusic() : *
      {
         this.dispatchEvent(new Event(GlobalConstants.UNLOAD_MUSIC,true));
      }
      
      public function get emoteEnabled() : Boolean
      {
         return this._emoteEnabled;
      }
      
      public function set emoteEnabled(param1:Boolean) : void
      {
         this._emoteEnabled = param1;
         this.dispatchEvent(new Event(GlobalConstants.EMOTE_STATUS_CHANGED,true));
      }
      
      public function get screenToLoad() : String
      {
         return this._screenToLoad;
      }
      
      public function set screenToLoad(param1:String) : void
      {
         this._screenToLoad = param1;
         this.dispatchEvent(new Event(GlobalConstants.LOAD_SCREEN,true));
      }
      
      public function get isDayTime() : Boolean
      {
         return this._isDayTime;
      }
      
      public function set isDayTime(param1:Boolean) : void
      {
         this._isDayTime = param1;
         this.dispatchEvent(new Event(GlobalConstants.TIME_OF_DAY_CHANGE,true));
      }
      
      public function get imagePath2() : String
      {
         if(this.imagespath == null)
         {
            return "";
         }
         return StringFunctions.findReplace("housing/",this.imagespath,"");
      }
      
      public function get barButtonsEnabled() : Boolean
      {
         return this._barButtonsEnabled;
      }
      
      public function set barButtonsEnabled(param1:Boolean) : void
      {
         this._barButtonsEnabled = param1;
         this.dispatchEvent(new Event(GlobalConstants.BUTTONS_ENABLED_CHANGED,true));
      }
      
      public function get spaceName() : String
      {
         return this._spaceName;
      }
      
      public function set spaceName(param1:String) : void
      {
         this._spaceName = param1;
         this.dispatchEvent(new Event(GlobalConstants.SPACE_CHANGED,true));
      }
      
      public function get ignoreGST() : Boolean
      {
         return this._ignoreGST;
      }
      
      public function set ignoreGST(param1:Boolean) : void
      {
         this._ignoreGST = param1;
         this.dispatchEvent(new Event(GlobalConstants.IGNORE_GST_CHANGED,true));
      }
      
      public function get clickTarget() : Sprite
      {
         return this._clickTarget;
      }
      
      public function set clickTarget(param1:Sprite) : void
      {
         this._clickTarget = param1;
         this.dispatchEvent(new Event(GlobalConstants.CLICK_TARGET_UPDATED,true));
      }
      
      public function get location() : String
      {
         return this._location;
      }
      
      public function set location(param1:String) : void
      {
         this._location = param1;
         this.dispatchEvent(new Event(GlobalConstants.LOCATION_TEXT_CHANGED,true));
      }
      
      public function get historyTextSize() : Number
      {
         return this._historyTextSize;
      }
      
      public function set historyTextSize(param1:Number) : void
      {
         this._historyTextSize = param1;
         this.dispatchEvent(new Event(GlobalConstants.HISTORY_TEXT_SIZE_CHANGED,true));
      }
      
      public function get fontIndex() : Number
      {
         return this._fontIndex;
      }
      
      public function set fontIndex(param1:Number) : void
      {
         this._fontIndex = param1;
         this.dispatchEvent(new Event(GlobalConstants.HISTORY_TEXT_SIZE_CHANGED,true));
      }
      
      public function get blockedItem() : IWorldItem
      {
         return this._blockedItem;
      }
      
      public function set blockedItem(param1:IWorldItem) : void
      {
         this._blockedItem = param1;
         this.dispatchEvent(new Event(GlobalConstants.BLOCK_ITEM_UPDATED,true));
      }
      
      public function unloadScreen() : *
      {
         this.dispatchEvent(new Event(GlobalConstants.UNLOAD_SCREEN,true));
      }
      
      public function setLight(param1:String) : *
      {
         this.lightString = param1;
      }
      
      public function showDay() : *
      {
         this.dispatchEvent(new Event(GlobalConstants.SHOW_DAY,true));
         this.isDayTime = true;
      }
      
      public function getJournal() : void
      {
         this.dispatchEvent(new Event(GlobalConstants.GET_JOURNAL,true));
      }
      
      public function takePhoto() : void
      {
         this.dispatchEvent(new Event(GlobalConstants.TAKE_PHOTO,true));
      }
      
      public function goFullScreen() : void
      {
         this.dispatchEvent(new Event(GlobalConstants.FULL_SCREEN,true));
      }
      
      public function alreadyLoggedIn() : void
      {
         this.dispatchEvent(new Event(GlobalConstants.ALREADY_LOGGED_IN_ERROR,true));
      }
      
      public function hideChangeScreen() : void
      {
         if(this.hideOverride == false)
         {
            this.dispatchEvent(new Event(GlobalConstants.HIDE_CHANGE_SCREEN,true));
         }
         else
         {
            this.hideOverride = false;
         }
      }
      
      public function toggleSound() : void
      {
         this.dispatchEvent(new Event(GlobalConstants.TOGGLE_MUSIC,true));
      }
      
      public function hidePhone() : void
      {
         this.dispatchEvent(new Event(GlobalConstants.HIDE_PHONE,true));
      }
      
      public function stopMusic() : void
      {
         this.dispatchEvent(new Event(GlobalConstants.STOP_MUSIC,true));
      }
      
      public function showHouseName() : void
      {
         this.dispatchEvent(new Event(GlobalConstants.SHOW_HOUSE_NAME,true));
      }
      
      public function hideHouseName() : void
      {
         this.dispatchEvent(new Event(GlobalConstants.HIDE_HOUSE_NAME,true));
      }
      
      public function showNight() : void
      {
         this.dispatchEvent(new Event(GlobalConstants.SHOW_NIGHT,true));
         this.isDayTime = false;
      }
      
      public function toggleSurface() : void
      {
         this.dispatchEvent(new Event(GlobalConstants.TOGGLE_SURFACE,true));
      }
      
      public function changeMusic() : void
      {
         this.dispatchEvent(new Event(GlobalConstants.CHANGE_MUSIC,true));
      }
      
      public function togglePMap() : void
      {
         this.dispatchEvent(new Event(GlobalConstants.TOGGLE_P_SURFACE,true));
      }
      
      public function showDebugBox() : void
      {
         this.dispatchEvent(new Event(GlobalConstants.SHOW_DEBUG_BOX,true));
      }
      
      public function redrawHistory(param1:Number, param2:Number) : *
      {
         this.historyAlpha = param2;
         this.historyBackColor = param1;
         this.dispatchEvent(new Event(GlobalConstants.REDRAW_HISTORY,true));
      }
      
      public function setKeyPressed(param1:String) : void
      {
         this.dispatchEvent(new KeyEvent(KeyEvent.KEY_PRESSED,param1,true));
      }
      
      public function savePrefs() : void
      {
         this.dispatchEvent(new Event(GlobalConstants.SAVE_PREFENCES,true));
      }
      
      public function showAnimDebug() : void
      {
         this.dispatchEvent(new Event(GlobalConstants.SHOW_ANIM_DEBUG,true));
      }
      
      public function toggleIgnoreServer() : void
      {
         this.dispatchEvent(new Event(GlobalConstants.TOGGLE_IGNORE_SERVER,true));
      }
      
      public function toggleChat() : void
      {
         this.dispatchEvent(new Event(GlobalConstants.TOGGLE_CHAT,true));
      }
   }
}

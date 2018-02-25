package com.gaiaonline.battle.ui.musicplayer
{
   import com.gaiaonline.battle.gateway.BattleEvent;
   import com.gaiaonline.battle.gateway.BattleGateway;
   import com.gaiaonline.battle.sounds.AudioSettings;
   import com.gaiaonline.battle.sounds.AudioSettingsEvent;
   import com.gaiaonline.battle.sounds.MusicState;
   import fl.transitions.Tween;
   import fl.transitions.TweenEvent;
   import fl.transitions.easing.Regular;
   import flash.events.EventDispatcher;
   import flash.events.NetStatusEvent;
   
   public class TrackManager extends EventDispatcher
   {
       
      
      private var _gateway:BattleGateway = null;
      
      private var _fadePct:Number = 0;
      
      private var _fadingOutSource:MusicSource = null;
      
      private var _audioSettings:AudioSettings;
      
      private var _actualTrackID:int = -1;
      
      private var _primarySource:MusicSource = null;
      
      private var _fadeTime:int = 5;
      
      private var _bufferTime:Number = 2;
      
      private var _fadeTween:Tween = null;
      
      private var _trackObjectList:Array;
      
      private const MAX_BUFFER_TIME:Number = 8;
      
      public function TrackManager(gateway:BattleGateway, volumes:AudioSettings)
      {
         _trackObjectList = [];
         super();
         this._gateway = gateway;
         this._gateway.addEventListener(BattleEvent.CONNECTION_LOST,onSfConnectionLost,false,0,true);
         this._audioSettings = volumes;
         volumes.addEventListener(AudioSettingsEvent.MUSIC_VOLUME_CHANGED,onMusicAmplitudeChanged,false,0,true);
         volumes.addEventListener(AudioSettingsEvent.MUSIC_MUTE_CHANGED,onMusicAmplitudeChanged,false,0,true);
      }
      
      public function getNewTrack() : int
      {
         var trackNum:int = Math.floor(Math.random() * this._trackObjectList.length);
         return trackNum;
      }
      
      public function get trackList() : Array
      {
         return this._trackObjectList;
      }
      
      public function onXMPData(metaData:Object) : void
      {
      }
      
      private function increaseBufferTime() : void
      {
         this._bufferTime = Math.max(this._bufferTime * 2,this.MAX_BUFFER_TIME);
      }
      
      public function set trackList(trackList:Array) : void
      {
         this._trackObjectList = trackList;
      }
      
      public function setNewTrack(trackId:int, crossFade:Boolean = false) : void
      {
         var wasPlaying:Boolean = this.playing;
         cleanupFade();
         if(crossFade)
         {
            setupFade();
         }
         else if(this._primarySource != null)
         {
            this._primarySource.dispose();
            this._primarySource = null;
         }
         this._actualTrackID = trackId;
         var newTrackEvent:MPEvents = new MPEvents(MPEvents.NEW_TRACK_INIT);
         newTrackEvent.value = this._trackObjectList[trackId];
         this.dispatchEvent(newTrackEvent);
         if(wasPlaying)
         {
            initializeAndPlayCurrentTrack();
         }
      }
      
      public function set fadetime(val:Number) : void
      {
         this._fadeTime = val;
      }
      
      public function nextTrack(crossFade:Boolean = false) : void
      {
         if(this._actualTrackID < this._trackObjectList.length - 1)
         {
            this.setNewTrack(this._actualTrackID + 1,crossFade);
         }
         else
         {
            this.setNewTrack(0,crossFade);
         }
      }
      
      public function getStreamObjectInfo() : Object
      {
         if(this._actualTrackID >= 0 && this._actualTrackID < this._trackObjectList.length)
         {
            return this._trackObjectList[this._actualTrackID];
         }
         return null;
      }
      
      public function get trackID() : int
      {
         return this._actualTrackID;
      }
      
      private function setupFade() : void
      {
         this._fadePct = 100;
         this._fadeTween = new Tween({"pct":100},"pct",Regular.easeInOut,100,0,this._fadeTime,true);
         this._fadeTween.addEventListener(TweenEvent.MOTION_CHANGE,onFadeTween,false,0,true);
         this._fadeTween.addEventListener(TweenEvent.MOTION_FINISH,onFadeEnd,false,0,true);
         this._fadingOutSource = this._primarySource;
         this._primarySource = null;
      }
      
      private function applyNewVolumeToSources() : void
      {
         if(this._primarySource != null)
         {
            _primarySource.volume = !!this._audioSettings.musicMuted?Number(0):Number(this._audioSettings.musicVolume * ((100 - this._fadePct) / 100));
         }
         if(this._fadingOutSource != null)
         {
            _fadingOutSource.volume = !!this._audioSettings.musicMuted?Number(0):Number(this._audioSettings.musicVolume * (this._fadePct / 100));
         }
      }
      
      public function getStreamDuration() : Number
      {
         if(this._actualTrackID >= 0 && this._trackObjectList != null && this._trackObjectList[this._actualTrackID] != null)
         {
            return this._trackObjectList[this._actualTrackID].duration * 1000;
         }
         return 0;
      }
      
      public function get playing() : Boolean
      {
         return this._primarySource != null && !this._primarySource.paused;
      }
      
      private function onFadeTween(e:TweenEvent) : void
      {
         var tween:Tween = e.target as Tween;
         this._fadePct = tween.obj.pct;
         applyNewVolumeToSources();
      }
      
      public function getSeekPosition() : Number
      {
         if(this._actualTrackID != -1 && this._primarySource != null)
         {
            return this._primarySource.time * 1000;
         }
         return 0;
      }
      
      private function cleanupFade() : void
      {
         if(this._fadeTween != null)
         {
            this._fadeTween.stop();
            this._fadeTween = null;
         }
         if(this._fadingOutSource != null)
         {
            this._fadingOutSource.dispose();
            this._fadingOutSource = null;
         }
         this._fadePct = 0;
         applyNewVolumeToSources();
      }
      
      private function dispose() : void
      {
         if(_primarySource != null)
         {
            _primarySource.dispose();
            _primarySource = null;
         }
         if(_fadingOutSource != null)
         {
            _fadingOutSource.dispose();
            _fadingOutSource = null;
         }
         _trackObjectList.length = 0;
      }
      
      public function setSeekPosition(seekBarPosition:Number) : void
      {
         var track:Object = null;
         var timeValue:Number = NaN;
         cleanupFade();
         if(this._primarySource != null && this._actualTrackID >= 0 && this._actualTrackID < this._trackObjectList.length)
         {
            track = this._trackObjectList[this._actualTrackID];
            timeValue = track.duration * 1000 / 100 * seekBarPosition / 1000;
            if(timeValue > track.duration)
            {
               timeValue = track.duration - 0.5;
            }
            if(timeValue < 1)
            {
               timeValue = 0;
            }
            this._primarySource.seek(timeValue);
         }
      }
      
      public function onMetaData(metaData:Object) : void
      {
         this._trackObjectList[this._actualTrackID].duration = metaData.duration;
      }
      
      private function onSfConnectionLost(e:BattleEvent) : void
      {
         this.stopTrack();
         this.dispose();
      }
      
      private function onMusicAmplitudeChanged(ve:AudioSettingsEvent) : void
      {
         applyNewVolumeToSources();
         if(this.playing)
         {
            dispatchAudibilityChange();
         }
      }
      
      public function prevTrack() : void
      {
         if(this._actualTrackID > 0)
         {
            this.setNewTrack(this._actualTrackID - 1);
         }
         else
         {
            this.setNewTrack(this._trackObjectList.length - 1);
         }
      }
      
      private function onFadeEnd(e:TweenEvent) : void
      {
         cleanupFade();
      }
      
      public function stopTrack() : void
      {
         if(this._primarySource != null)
         {
            this._primarySource.dispose();
            this._primarySource = null;
            this._audioSettings.musicState = MusicState.STOPPED;
            dispatchAudibilityChange();
         }
      }
      
      private function dispatchAudibilityChange() : void
      {
         var audible:Boolean = this.playing && this._audioSettings.musicVolume > 0 && !this._audioSettings.musicMuted;
         var evt:MPEvents = new MPEvents(MPEvents.AUDIBILITY_CHANGE);
         evt.value = {"audible":audible};
         dispatchEvent(evt);
      }
      
      private function initializeAndPlayCurrentTrack() : void
      {
         var trackObject:Object = null;
         if(this._primarySource == null)
         {
            trackObject = this._trackObjectList[this._actualTrackID];
            if(null != trackObject)
            {
               this._primarySource = new MusicSource(trackObject.trackId,trackHandler,this);
               this._primarySource.bufferTime = this._bufferTime;
            }
         }
         if(_primarySource)
         {
            this._primarySource.play();
            this._audioSettings.musicState = MusicState.PLAYING;
         }
         else
         {
            trace("NO PRIMARY SOURCE FOUND FOR MUSIC PLAYER");
         }
         applyNewVolumeToSources();
         dispatchAudibilityChange();
      }
      
      public function pauseTrack() : void
      {
         if(this._primarySource != null)
         {
            this._primarySource.pause();
            this._audioSettings.musicState = MusicState.PAUSED;
            dispatchAudibilityChange();
         }
      }
      
      public function playTrack() : void
      {
         cleanupFade();
         initializeAndPlayCurrentTrack();
      }
      
      private function trackHandler(event:NetStatusEvent) : void
      {
         switch(event.info.code)
         {
            case "NetStream.Buffer.Empty":
               increaseBufferTime();
               break;
            case "NetStream.Play.Start":
               if(this._fadeTween != null && this._fadePct >= 100)
               {
                  this._fadeTween.start();
               }
               break;
            case "NetStream.Play.StreamNotFound":
               break;
            case "NetStream.Play.Stop":
               this.nextTrack();
         }
      }
   }
}

import flash.events.NetStatusEvent;
import flash.media.SoundTransform;
import flash.net.NetConnection;
import flash.net.NetStream;

class MusicSource
{
    
   
   private var _stream:NetStream = null;
   
   private var _paused:Boolean = false;
   
   private var _url:String = null;
   
   private var _connection:NetConnection = null;
   
   function MusicSource(url:String, netStatusHandler:Function, metaDataHandler:Object)
   {
      super();
      _url = url;
      _connection = new NetConnection();
      _connection.connect(null);
      _stream = new NetStream(_connection);
      _stream.checkPolicyFile = true;
      _stream.client = metaDataHandler;
      _stream.addEventListener(NetStatusEvent.NET_STATUS,netStatusHandler,false,0,true);
   }
   
   public function set bufferTime(n:Number) : void
   {
      _stream.bufferTime = n;
   }
   
   public function get paused() : Boolean
   {
      return _paused;
   }
   
   public function play() : void
   {
      if(_paused)
      {
         _stream.resume();
         _paused = false;
      }
      else
      {
         _stream.play(_url,0);
      }
   }
   
   public function pause() : void
   {
      _paused = true;
      _stream.pause();
   }
   
   public function seek(offset:Number) : void
   {
      _stream.seek(offset);
   }
   
   public function set volume(v:Number) : void
   {
      var tmp:SoundTransform = _stream.soundTransform;
      tmp.volume = v / 100;
      _stream.soundTransform = tmp;
   }
   
   public function get time() : Number
   {
      return _stream.time;
   }
   
   public function dispose() : void
   {
      if(_stream != null)
      {
         _connection.close();
         _stream.close();
         _connection = null;
         _stream = null;
      }
   }
}

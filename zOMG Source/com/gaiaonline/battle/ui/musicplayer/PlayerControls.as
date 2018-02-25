package com.gaiaonline.battle.ui.musicplayer
{
   import com.gaiaonline.battle.ApplicationInterfaces.IUIFramework;
   import com.gaiaonline.battle.sounds.AudioSettings;
   import com.gaiaonline.battle.sounds.AudioSettingsEvent;
   import com.gaiaonline.battle.sounds.MusicState;
   import com.gaiaonline.battle.ui.ToolTipOld;
   import com.gaiaonline.battle.ui.events.UiEvents;
   import com.gaiaonline.flexModulesAPIs.globalevent.GlobalEvent;
   import com.gaiaonline.utils.DisplayObjectUtils;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Rectangle;
   import flash.utils.Timer;
   
   public class PlayerControls
   {
      
      private static const UNMUTED_FRAME:int = 1;
      
      private static const MAX_VOLUME_X:Number = 19;
      
      private static const BUTTON_STATE_PLAY:int = 1;
      
      private static const FUDGE:int = 18;
      
      private static const MUTED_FRAME:int = 2;
      
      private static const BUTTON_STATE_PAUSE:int = 2;
       
      
      private var _uiFramework:IUIFramework = null;
      
      private var miniPlayer:MovieClip;
      
      private var _inaudibilityTimer:Timer;
      
      private var timeDrag:Boolean = false;
      
      private var controlItems:MovieClip;
      
      private var seekTimer:Timer;
      
      private var tm:TrackManager;
      
      public function PlayerControls(uiFramework:IUIFramework, mPlayerControls:MovieClip, MiniPlayer:MovieClip)
      {
         seekTimer = new Timer(1 * 1000);
         _inaudibilityTimer = new Timer(27 * 1000);
         super();
         this._uiFramework = uiFramework;
         this.controlItems = mPlayerControls;
         this.miniPlayer = MiniPlayer;
         this.controlItems.playBtn.addEventListener(MouseEvent.CLICK,onPlayTrack,false,0,true);
         this.miniPlayer.playBtnMini.addEventListener(MouseEvent.CLICK,onPlayTrack,false,0,true);
         this.controlItems.backBtn.addEventListener(MouseEvent.CLICK,onPrevTrack,false,0,true);
         this.controlItems.fwdBtn.addEventListener(MouseEvent.CLICK,onNextTrack,false,0,true);
         this.controlItems.stopBtn.addEventListener(MouseEvent.CLICK,onStopTrack,false,0,true);
         this.controlItems.muteBtn.addEventListener(MouseEvent.CLICK,onMute,false,0,true);
         this.miniPlayer.muteBtnMini.addEventListener(MouseEvent.CLICK,onMute,false,0,true);
         this.controlItems.muteBtn.gotoAndStop(1);
         this.miniPlayer.muteBtnMini.gotoAndStop(1);
         this.miniPlayer.restoreBtn.addEventListener(MouseEvent.CLICK,restorePlayerView,false,0,true);
         this.controlItems.dragTime.buttonMode = true;
         this.controlItems.dragTime.addEventListener(MouseEvent.MOUSE_DOWN,startDragTime,false,0,true);
         this.controlItems.addEventListener(Event.ADDED_TO_STAGE,onAddedStage,false,0,true);
         this.setVolumeTo(uiFramework.volumes.musicVolume);
         this.controlItems.volumeOptions.buttonMode = true;
         this.controlItems.volumeOptions.addEventListener(MouseEvent.MOUSE_DOWN,onStartSetVolume,false,0,true);
         uiFramework.volumes.addEventListener(AudioSettingsEvent.MUSIC_VOLUME_CHANGED,onMusicVolumeChanged,false,0,true);
         uiFramework.volumes.addEventListener(AudioSettingsEvent.MUSIC_MUTE_CHANGED,onMusicMuteChanged,false,0,true);
         uiFramework.volumes.addEventListener(AudioSettingsEvent.MUSIC_PLAYBACK_CHANGED,onMusicPlaybackChanged,false,0,true);
         updatePlayBtnState();
         this.seekTimer.start();
         this.controlItems.playTime.text = "0:00";
         this.controlItems.timeBar.scaleX = 0;
         GlobalEvent.eventDispatcher.addEventListener(GlobalEvent.MUSIC_PLAYER_STATE_CHANGED,onMusicPlayerStateChanged);
         var tooltipManager:ToolTipOld = this._uiFramework.tooltipManager;
         tooltipManager.addToolTip(this.controlItems.playBtn,"Play/Pause");
         tooltipManager.addToolTip(this.miniPlayer.playBtnMini,"Play/Pause");
         tooltipManager.addToolTip(this.controlItems.backBtn,"Previous Track");
         tooltipManager.addToolTip(this.controlItems.fwdBtn,"Next Track");
         tooltipManager.addToolTip(this.controlItems.stopBtn,"Stop");
         tooltipManager.addToolTip(this.controlItems.muteBtn,"Toggle Mute");
         tooltipManager.addToolTip(this.miniPlayer.muteBtnMini,"Toggle Mute");
         tooltipManager.addToolTip(this.miniPlayer.restoreBtn,"Restore Full Player");
         tooltipManager.addToolTip(this.controlItems.dragTime,"Set Track Position");
         if(this._inaudibilityTimer)
         {
            this._inaudibilityTimer.addEventListener(TimerEvent.TIMER,onInaudibleTimeout,false,0,true);
         }
      }
      
      private function onPrevTrack(evt:MouseEvent) : void
      {
         if(this.tm != null)
         {
            this.tm.prevTrack();
         }
      }
      
      private function stopTimeDrag(e:MouseEvent) : void
      {
         var sX:Number = NaN;
         var positionProc:Number = NaN;
         if(this.timeDrag)
         {
            this.timeDrag = false;
            this.controlItems.dragTime.stopDrag();
            sX = this.controlItems.dragTime.x - 30;
            positionProc = sX / 1.3;
            if(this.tm != null)
            {
               this.tm.setSeekPosition(positionProc);
            }
         }
      }
      
      private function onMute(evt:MouseEvent) : void
      {
         var btn:MovieClip = MovieClip(evt.currentTarget);
         this._uiFramework.volumes.musicMuted = btn.currentFrame == UNMUTED_FRAME;
      }
      
      private function onEndSetVolume(e:MouseEvent) : void
      {
         this._uiFramework.stage.removeEventListener(MouseEvent.MOUSE_MOVE,onDragVolume);
         this._uiFramework.stage.removeEventListener(MouseEvent.MOUSE_UP,onEndSetVolume);
         setSliderPositionFromMouse();
      }
      
      private function onNextTrack(evt:MouseEvent) : void
      {
         if(this.tm != null)
         {
            this.tm.nextTrack();
         }
      }
      
      private function onMusicPlayerStateChanged(e:GlobalEvent) : void
      {
         var state:String = e.data.state;
         if(state == "mini" || state == "full")
         {
            DisplayObjectUtils.addWeakListener(this.seekTimer,TimerEvent.TIMER,setStreamSeek);
         }
         else
         {
            this.seekTimer.removeEventListener(TimerEvent.TIMER,setStreamSeek);
         }
      }
      
      private function get draggedVolumeX() : Number
      {
         return Math.min(Math.max(this.controlItems.volumeOptions.mouseX,0),MAX_VOLUME_X);
      }
      
      private function setSliderPositionFromMouse() : void
      {
         this.controlItems.volumeOptions.volumeLevel.x = draggedVolumeX - FUDGE;
         var volumeValue:Number = draggedVolumeX * 100 / MAX_VOLUME_X;
         var event:UiEvents = new UiEvents(UiEvents.SET_MUSIC_VOLUME,null);
         event.value = volumeValue;
         this.controlItems.dispatchEvent(event);
      }
      
      private function onAudibilityChange(e:MPEvents) : void
      {
         if(this._inaudibilityTimer)
         {
            if(e.value.audible)
            {
               this._inaudibilityTimer.stop();
            }
            else
            {
               this._inaudibilityTimer.reset();
               this._inaudibilityTimer.start();
            }
         }
      }
      
      private function updatePlayBtnState() : void
      {
         var state:int = this._uiFramework.volumes.musicState == MusicState.PLAYING?int(BUTTON_STATE_PAUSE):int(BUTTON_STATE_PLAY);
         this.controlItems.playBtn.gotoAndStop(state);
         this.miniPlayer.playBtnMini.gotoAndStop(state);
      }
      
      private function restorePlayerView(e:MouseEvent) : void
      {
         var r:MPEvents = new MPEvents(MPEvents.RESTORE_VIEW,"");
         this.miniPlayer.dispatchEvent(r);
      }
      
      private function onStopTrack(_unused:MouseEvent) : void
      {
         if(this.tm != null)
         {
            this.tm.stopTrack();
         }
      }
      
      private function onMusicVolumeChanged(ve:AudioSettingsEvent) : void
      {
         setVolumeTo(AudioSettings(ve.target).musicVolume);
      }
      
      private function onAddedStage(e:Event) : void
      {
         this.controlItems.dragTime.addEventListener(MouseEvent.MOUSE_UP,stopTimeDrag,false,0,true);
         this.controlItems.dragTime.stage.addEventListener(MouseEvent.MOUSE_UP,stopTimeDrag,false,0,true);
      }
      
      private function onStartSetVolume(e:MouseEvent) : void
      {
         this._uiFramework.stage.addEventListener(MouseEvent.MOUSE_MOVE,onDragVolume,false,0,true);
         this._uiFramework.stage.addEventListener(MouseEvent.MOUSE_UP,onEndSetVolume,false,0,true);
         setSliderPositionFromMouse();
      }
      
      public function setTrackManager(trackManager:TrackManager) : void
      {
         this.tm = trackManager;
         this.tm.addEventListener(MPEvents.AUDIBILITY_CHANGE,onAudibilityChange,false,0,true);
      }
      
      private function onPlayTrack(evt:MouseEvent) : void
      {
         var btn:MovieClip = MovieClip(evt.currentTarget);
         if(this.tm)
         {
            switch(this._uiFramework.volumes.musicState)
            {
               case MusicState.PLAYING:
                  this.tm.pauseTrack();
                  break;
               case MusicState.STOPPED:
               case MusicState.PAUSED:
                  this.tm.playTrack();
            }
         }
      }
      
      private function setStreamSeek(se:TimerEvent) : void
      {
         var seekPos:Number = NaN;
         var streamDuration:Number = NaN;
         var timeVal:String = null;
         var timeProcPosition:int = 0;
         var sX:Number = this.controlItems.dragTime.x - 30;
         var positionProc:Number = sX / 1.3;
         if(this.tm != null)
         {
            seekPos = this.tm.getSeekPosition();
            streamDuration = this.tm.getStreamDuration();
            if(seekPos == 0)
            {
               this.controlItems.playTime.text = "0:00";
               this.miniPlayer.playTime.text = "0:00";
               this.controlItems.timeBar.scaleX = 0;
               this.controlItems.dragTime.x = 35;
            }
            else
            {
               timeVal = this.parseTimeValue(seekPos);
               this.controlItems.playTime.text = timeVal;
               this.miniPlayer.playTime.text = timeVal;
               timeProcPosition = Math.floor(seekPos / (streamDuration / 100));
               if(!this.timeDrag)
               {
                  this.controlItems.timeBar.scaleX = timeProcPosition / 100;
                  this.controlItems.dragTime.x = 35 + 1.3 * timeProcPosition;
               }
               else
               {
                  this.controlItems.timeBar.scaleX = (this.controlItems.dragTime.x - 35) / 1.3 / 100;
               }
            }
         }
      }
      
      private function startDragTime(e:MouseEvent) : void
      {
         var dragLimit:Rectangle = new Rectangle(35,57.5,130,0);
         this.controlItems.dragTime.startDrag(false,dragLimit);
         this.timeDrag = true;
      }
      
      private function parseTimeValue(seekPos:Number) : String
      {
         var minutes:int = Math.floor(seekPos / 60000);
         var second:int = Math.round((seekPos - minutes * 60000) / 1000);
         var output:* = String(minutes) + ":";
         if(second < 10)
         {
            output = output + ("0" + String(second));
         }
         else
         {
            output = output + String(second);
         }
         return output;
      }
      
      private function onDragVolume(e:Event) : void
      {
         setSliderPositionFromMouse();
      }
      
      private function onMusicMuteChanged(e:AudioSettingsEvent) : void
      {
         var frame:int = !!AudioSettings(e.target).musicMuted?int(MUTED_FRAME):int(UNMUTED_FRAME);
         this.controlItems.muteBtn.gotoAndStop(frame);
         this.miniPlayer.muteBtnMini.gotoAndStop(frame);
      }
      
      private function setVolumeTo(volValue:Number) : void
      {
         var xM:Number = MAX_VOLUME_X * (volValue / 100);
         this.controlItems.volumeOptions.volumeLevel.x = xM - FUDGE;
      }
      
      private function onMusicPlaybackChanged(e:Event) : void
      {
         updatePlayBtnState();
      }
      
      private function onInaudibleTimeout(e:Event) : void
      {
         this._inaudibilityTimer.stop();
         onStopTrack(null);
      }
   }
}

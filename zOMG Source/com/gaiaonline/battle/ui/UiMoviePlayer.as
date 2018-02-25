package com.gaiaonline.battle.ui
{
   import com.gaiaonline.battle.sounds.AudioSettings;
   import com.gaiaonline.battle.sounds.AudioSettingsEvent;
   import flash.display.MovieClip;
   import flash.events.AsyncErrorEvent;
   import flash.events.Event;
   import flash.events.NetStatusEvent;
   import flash.events.SecurityErrorEvent;
   import flash.media.SoundTransform;
   import flash.media.Video;
   import flash.net.NetConnection;
   import flash.net.NetStream;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   
   public class UiMoviePlayer extends MovieClip
   {
      
      public static const MOVIE_DONE:String = "MovieDone";
       
      
      private var _vh:int = 100;
      
      private var _videoURL:String;
      
      private var _audioSettings:AudioSettings;
      
      private var _stream:NetStream;
      
      private var _vw:int = 100;
      
      private var _txt:TextField;
      
      private var _video:Video;
      
      private var _connection:NetConnection;
      
      public function UiMoviePlayer(audioSettings:AudioSettings)
      {
         super();
         var format:TextFormat = new TextFormat();
         format.font = "myArial";
         format.size = 12;
         format.color = 16777215;
         this._txt = new TextField();
         this._txt.embedFonts = true;
         this._txt.autoSize = TextFieldAutoSize.LEFT;
         this._txt.defaultTextFormat = format;
         this._txt.text = "buffering";
         audioSettings.addEventListener(AudioSettingsEvent.SOUND_VOLUME_CHANGED,onSoundVolumeChanged,false,0,true);
         _audioSettings = audioSettings;
      }
      
      private function securityErrorHandler(event:SecurityErrorEvent) : void
      {
         trace("securityErrorHandler: " + event);
      }
      
      private function hideBuffering() : void
      {
         if(this.contains(this._txt))
         {
            this.removeChild(this._txt);
         }
      }
      
      private function connectStream() : void
      {
         this._stream = new NetStream(this._connection);
         this._stream.bufferTime = 2;
         this._stream.addEventListener(NetStatusEvent.NET_STATUS,netStatusHandler);
         this._stream.addEventListener(AsyncErrorEvent.ASYNC_ERROR,asyncErrorHandler);
         this._stream.client = this;
         this._video = new Video(this._vw,this._vh);
         this._video.attachNetStream(this._stream);
         this._stream.play(this._videoURL);
         this.addChild(this._video);
      }
      
      public function stopMovie() : void
      {
         if(this._connection != null && this._connection.connected)
         {
            this._connection.close();
         }
         if(this._stream != null)
         {
            this._stream.close();
         }
         if(this._video != null)
         {
            this.removeChild(this._video);
            this._video.clear();
         }
         this._video = null;
         this._connection = null;
         this._stream = null;
      }
      
      public function onMetaData(infoObject:Object) : void
      {
      }
      
      private function netStatusHandler(event:NetStatusEvent) : void
      {
         switch(event.info.code)
         {
            case "NetConnection.Connect.Success":
               this.connectStream();
               break;
            case "NetStream.Play.StreamNotFound":
               trace("Unable to locate video: " + this._videoURL);
               break;
            case "NetStream.Play.Stop":
               this.stopMovie();
               this.dispatchEvent(new Event(MOVIE_DONE));
               break;
            case "NetStream.Play.Start":
               if(this._stream.bytesLoaded / this._stream.bytesTotal < 0.5)
               {
                  this.showBuffering();
               }
               break;
            case "NetStream.Buffer.Empty":
               this.showBuffering();
               break;
            case "NetStream.Buffer.Full":
               this.hideBuffering();
         }
      }
      
      public function playMovie(url:String, width:int = 100, height:int = 100) : void
      {
         this.stopMovie();
         this._videoURL = url;
         this._vw = width;
         this._vh = height;
         this._connection = new NetConnection();
         this._connection.addEventListener(NetStatusEvent.NET_STATUS,netStatusHandler);
         this._connection.addEventListener(SecurityErrorEvent.SECURITY_ERROR,securityErrorHandler);
         this._connection.connect(null);
         this.setVolume(this._audioSettings.soundVolume);
      }
      
      private function setVolume(n:Number) : void
      {
         var tmp:SoundTransform = null;
         if(_stream)
         {
            tmp = _stream.soundTransform;
            tmp.volume = n / 100;
            _stream.soundTransform = tmp;
         }
      }
      
      private function showBuffering() : void
      {
         if(!this.contains(this._txt))
         {
            this.addChild(this._txt);
            this._txt.x = this.width / 2 - this._txt.width / 2;
            this._txt.y = this.height / 2;
         }
      }
      
      private function onSoundVolumeChanged(ae:AudioSettingsEvent) : void
      {
         setVolume(AudioSettings(ae.target).soundVolume);
      }
      
      public function get url() : String
      {
         return this._videoURL;
      }
      
      private function asyncErrorHandler(event:AsyncErrorEvent) : void
      {
      }
   }
}

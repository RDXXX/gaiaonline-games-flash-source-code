class classes.environment.SoundEffects
{
   function SoundEffects()
   {
      this.backgroundMusic = classes.environment.BackgroundMusic.getInstance();
      this.loadSoundFile();
   }
   function loadSoundFile()
   {
      this.bgMusic = new Sound(this);
      var _loc3_ = "bgMusic";
      if(_global.isInChess && _global.sponsorshipEvent == "madagascar2")
      {
         _loc3_ = "bgMusicMadagascar2";
      }
      else if(parseInt(_global.eventID) == 10)
      {
         _loc3_ = !(_global.scene == "toHome" || _global.scene == "home")?"bgMusicHalloween":"bgMusicGhost";
      }
      else if(parseInt(_global.eventID) == _global.EVENT_XMAS)
      {
         _loc3_ = "bgMusicChristmas";
      }
      this.backgroundMusic.startMusic(_loc3_);
      var _loc4_ = _global.uiCtrl.checkSoundState();
      this.bgmSwitch(_loc4_);
   }
   function bgmSwitch(bgmState)
   {
      var _loc3_ = 50;
      switch(_global.scene)
      {
         case "toHome":
         case "home":
            break;
         default:
            _loc3_ = 60;
            bgmState != true?this.backgroundMusic.setVol(0):this.backgroundMusic.setVol(_loc3_);
      }
      _loc3_ = 10;
      bgmState != true?this.backgroundMusic.setVol(0):this.backgroundMusic.setVol(_loc3_);
   }
   function remove()
   {
      this.bgMusic.stop();
      this.bgmLayer.removeMovieClip();
   }
}

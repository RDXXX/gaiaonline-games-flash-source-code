class classes.environment.BackgroundMusic
{
   var beenHere = false;
   function BackgroundMusic()
   {
   }
   function startMusic(music)
   {
      if(this.beenHere == false)
      {
         this.bgSound = new Sound(_root);
         this.bgSound.attachSound(music);
         this.bgSound.start(0,999);
         this.beenHere = true;
      }
   }
   function stopMusic()
   {
      this.bgSound.stop();
   }
   function setVol(vol)
   {
      this.bgSound.setVolume(vol);
   }
   static function getInstance()
   {
      if(classes.environment.BackgroundMusic.instance == null)
      {
         classes.environment.BackgroundMusic.instance = new classes.environment.BackgroundMusic();
      }
      return classes.environment.BackgroundMusic.instance;
   }
}

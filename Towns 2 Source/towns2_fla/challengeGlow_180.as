package towns2_fla
{
   import flash.display.MovieClip;
   
   public dynamic class challengeGlow_180 extends MovieClip
   {
       
      
      public function challengeGlow_180()
      {
         super();
         addFrameScript(0,this.frame1,9,this.frame10);
      }
      
      function frame1() : *
      {
         stop();
      }
      
      function frame10() : *
      {
         gotoAndPlay(2);
      }
   }
}

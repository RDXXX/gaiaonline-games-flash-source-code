package uiactionbar_fla
{
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public dynamic class healthMeterAnim_29 extends MovieClip
   {
       
      
      public var txt:TextField;
      
      public var heartIcon:MovieClip;
      
      public function healthMeterAnim_29()
      {
         super();
         addFrameScript(3,frame4,22,frame23,42,frame43);
      }
      
      function frame23() : *
      {
         gotoAndPlay("slow");
      }
      
      function frame4() : *
      {
         stop();
      }
      
      function frame43() : *
      {
         gotoAndPlay("fast");
      }
   }
}

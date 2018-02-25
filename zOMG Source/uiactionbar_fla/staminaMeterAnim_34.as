package uiactionbar_fla
{
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public dynamic class staminaMeterAnim_34 extends MovieClip
   {
       
      
      public var txt:TextField;
      
      public var staminaIcon:MovieClip;
      
      public function staminaMeterAnim_34()
      {
         super();
         addFrameScript(1,frame2,19,frame20);
      }
      
      function frame20() : *
      {
         gotoAndPlay("slow");
      }
      
      function frame2() : *
      {
         stop();
      }
   }
}

package uiactionbar_fla
{
   import flash.display.MovieClip;
   
   public dynamic class Slot_8 extends MovieClip
   {
       
      
      public var mcContainer:MovieClip;
      
      public var mcUnUsable:MovieClip;
      
      public var mcLock:MovieClip;
      
      public function Slot_8()
      {
         super();
         addFrameScript(0,frame1);
      }
      
      function frame1() : *
      {
         stop();
      }
   }
}

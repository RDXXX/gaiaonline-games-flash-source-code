package hObjects
{
   import flash.display.MovieClip;
   
   public dynamic class AllImps extends MovieClip
   {
       
      
      public var imp:MovieClip;
      
      public function AllImps()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      function frame1() : *
      {
         stop();
      }
   }
}

package com.gaiaworld.global.util
{
   public class ChangeMessageUtil
   {
       
      
      private var messageArray:Array;
      
      public function ChangeMessageUtil()
      {
         this.messageArray = new Array();
         super();
         this.setUpMessages();
      }
      
      private function setUpMessages() : *
      {
         this.messageArray.push("I pretty much do what I want - DarkNrgy");
         this.messageArray.push("Making computer stuff happen...");
         this.messageArray.push("Traipsing into a magical land of make-believe...");
         this.messageArray.push("Not actually loading, just making you wait...");
         this.messageArray.push("Loading grass AI...");
         this.messageArray.push("Patiently awaiting your arrival...");
         this.messageArray.push("Buffering bug animations...");
         this.messageArray.push("Rendering trash...");
         this.messageArray.push("Declumping dirt polygons...");
         this.messageArray.push("Preparing to witness your incredible genius...");
         this.messageArray.push("Cleaning the place up a little...");
         this.messageArray.push("Repainting curbs...");
         this.messageArray.push("Contemplating infinity...");
         this.messageArray.push("Silently judging you...");
         this.messageArray.push("Really Gaia? Really?");
         this.messageArray.push("Winding the rubber band...");
         this.messageArray.push("Louding spell cheeker...");
         this.messageArray.push("Computerizing...");
         this.messageArray.push("Coming up with more stupid loading messages...");
         this.messageArray.push("Oh! Was I supposed to be doing something?");
         this.messageArray.push("Meditating upon life\'s meaninglessness...");
         this.messageArray.push("Trying to look busy...");
         this.messageArray.push("Harnessing the incredible power of technology...");
         this.messageArray.push("Stacking paper...");
         this.messageArray.push("Meticulously arranging pixels...");
         this.messageArray.push("Twiddling assorted body parts...");
         this.messageArray.push("Loading....Soon!");
         this.messageArray.push("Loading....We are looking into it");
      }
      
      public function getMessage() : String
      {
         var _loc1_:Number = int(Math.random() * this.messageArray.length);
         return this.messageArray[_loc1_];
      }
   }
}

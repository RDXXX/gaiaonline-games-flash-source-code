package com.gaiaworld.global.util
{
   public class BadWordFilter
   {
       
      
      private var badWords:Array;
      
      private var starArray:Array;
      
      public function BadWordFilter()
      {
         this.starArray = new Array();
         super();
         this.initArrays();
      }
      
      private function initArrays() : *
      {
         this.badWords = ["asshole","bastard","bitch","cunt","fuck","shit","twat","asswad","chink","clit","cum","cocksuck","cock","dick","卐","dildo","faggot","fag","penis","nipple","nigger","vagina","nigga","kunt","jizz","prick","syber","cyber","buttsex","sex","hump","hoe","rape","rapist","titties","tit","boob","pussy","fuk","phuc","phuk","anal","bukkake","bukake","futanari","futa","slut","porn","prons","pronz","whore","horny","blowjob","buttshecks","guro","yaoi","yuri","lez","boner","gaywad","gayfer","douche"];
         var _loc1_:* = "*";
         var _loc2_:int = 0;
         while(_loc2_ < 20)
         {
            this.starArray.push(_loc1_);
            _loc1_ = _loc1_ + "*";
            _loc2_++;
         }
      }
      
      public function filterWords(param1:String) : String
      {
         var _loc5_:String = null;
         var _loc2_:String = param1;
         param1 = " " + param1 + " ";
         var _loc3_:Number = this.badWords.length;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = this.badWords[_loc4_];
            param1 = StringFunctions.findReplace(" " + _loc5_ + " ",param1.toLowerCase(),this.starArray[_loc5_.length]);
            _loc4_++;
         }
         param1 = StringFunctions.trim(param1);
         if(_loc2_.toLowerCase() == param1)
         {
            return _loc2_;
         }
         return param1;
      }
   }
}

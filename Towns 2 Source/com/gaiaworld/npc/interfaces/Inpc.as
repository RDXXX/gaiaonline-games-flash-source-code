package com.gaiaworld.npc.interfaces
{
   import com.gaiaworld.npc.view.TalkBalloon;
   import flash.display.Sprite;
   
   public interface Inpc
   {
       
      
      function setBalloonPos(param1:Number, param2:Number) : void;
      
      function talk() : void;
      
      function loadNpc(param1:Number) : void;
      
      function get clip() : Sprite;
      
      function get depth2() : Number;
      
      function setTalkBalloon(param1:TalkBalloon) : *;
      
      function getMyName() : String;
   }
}

package com.gaiaworld.sushi.interfaces
{
   import com.gaiaworld.user.vo.PalTrackVo;
   import flash.events.Event;
   
   public interface IDataExchange
   {
       
      
      function connect(param1:String, param2:Number) : void;
      
      function joinHangoutRoom() : void;
      
      function listAlreadyHere() : void;
      
      function askForFriend() : void;
      
      function ignore(param1:Event) : void;
      
      function unignore(param1:Event) : void;
      
      function getListOfRooms() : void;
      
      function createCustomHangout(param1:String) : void;
      
      function showRoomData() : void;
      
      function getCurrentRoomData() : Array;
      
      function setRoomData(param1:Number, param2:Array) : void;
      
      function setMobDataSilent(param1:String, param2:Array) : void;
      
      function updateMobData(param1:String, param2:Array) : void;
      
      function initMob(param1:Array) : String;
      
      function initMobTemp(param1:Array) : String;
      
      function getMobData(param1:String) : String;
      
      function clearMob() : void;
      
      function callPlugin(param1:Array) : *;
      
      function get roomName() : String;
      
      function joinPlace(param1:PalTrackVo) : void;
      
      function set connectOverrideFlag(param1:Boolean) : void;
   }
}

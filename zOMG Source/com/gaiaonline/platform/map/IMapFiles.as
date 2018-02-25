package com.gaiaonline.platform.map
{
   import flash.events.Event;
   
   public interface IMapFiles
   {
       
      
      function getMiniMapUrl(param1:String) : String;
      
      function get globalYScale() : Number;
      
      function getActorFilters(param1:String) : Array;
      
      function registerForLoadEvents(param1:IMapFilesLoadHandler) : void;
      
      function load(param1:String) : void;
      
      function getMiniMap(param1:String) : Object;
      
      function getMiniMapId(param1:String) : String;
      
      function getZonesStartRoom() : Array;
      
      function getZoneName(param1:String) : String;
      
      function isNullchamber(param1:String) : Boolean;
      
      function getRoomsInfo(param1:String) : Object;
      
      function getMusic(param1:String) : Array;
      
      function getZoneImgs(param1:String) : Array;
      
      function unregisterForLoadEvents(param1:IMapFilesLoadHandler) : void;
      
      function getZoneTitleImg(param1:String) : String;
      
      function get globalXScale() : Number;
      
      function onPlayListLoaded(param1:Event) : void;
      
      function getMusicZone(param1:String) : String;
      
      function getZoneNameFromRoomId(param1:String) : String;
      
      function getZoneFile(param1:String) : String;
      
      function getDependencies(param1:String) : Array;
   }
}

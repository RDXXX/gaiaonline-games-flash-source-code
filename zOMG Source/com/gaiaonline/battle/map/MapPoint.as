package com.gaiaonline.battle.map
{
   public class MapPoint
   {
      
      public static var TYPE_PIXEL:Number = 0;
      
      private static var cMapRes:Number = 8;
      
      public static var TYPE_SERVER:Number = 1;
      
      public static var TYPE_PATH:Number = 3;
      
      private static var pfRes:Number = 3;
      
      public static var TYPE_MAP:Number = 2;
       
      
      private var scale:Number = 100;
      
      private var pixelX:Number = -1;
      
      private var pathX:Number = -1;
      
      private var pixelY:Number = -1;
      
      private var pathY:Number = -1;
      
      private var serverX:Number = -1;
      
      private var serverY:Number = -1;
      
      private var mapX:Number = -1;
      
      private var mapY:Number = -1;
      
      public function MapPoint(x:Number, y:Number, mapNodeType:Number, scl:Number)
      {
         super();
         this.scale = scl;
         switch(mapNodeType)
         {
            case TYPE_PIXEL:
               setPixelCoords(x,y);
               break;
            case TYPE_SERVER:
               setServerCoords(x,y);
               break;
            case TYPE_MAP:
               setMapNodeCoords(x,y);
               break;
            case TYPE_PATH:
               setPathNodeCoords(x,y);
         }
      }
      
      public function getServerY() : Number
      {
         if(this.serverY == -1)
         {
            setServerCoordsFromPixel();
         }
         return this.serverY;
      }
      
      private function setPixelCoords(x:Number, y:Number) : void
      {
         this.pixelX = Math.round(x);
         this.pixelY = Math.round(y);
      }
      
      private function setServerCoords(x:Number, y:Number) : void
      {
         this.serverX = x;
         this.serverY = y;
         var scaleMult:Number = 100 / scale;
         this.pixelX = Math.round(x / scaleMult);
         this.pixelY = Math.round(y / scaleMult);
      }
      
      private function setPathNodeCoordsFromPixel() : void
      {
         this.pathX = Math.floor(this.pixelX / 24);
         this.pathY = Math.floor(this.pixelY / 24);
      }
      
      private function setPathNodeCoords(x:Number, y:Number) : void
      {
         this.pathX = x;
         this.pathY = y;
         var pathNodeSize:Number = cMapRes * pfRes;
         this.pixelX = Math.round(x * pathNodeSize) + 12;
         this.pixelY = Math.round(y * pathNodeSize) + 12;
      }
      
      public function getName() : String
      {
         return this.pixelX + "_" + this.pixelY;
      }
      
      public function getPixelY() : Number
      {
         return this.pixelY;
      }
      
      public function getPixelX() : Number
      {
         return this.pixelX;
      }
      
      public function getMapY() : Number
      {
         if(this.mapY == -1)
         {
            setMapNodeCoordsFromPixel();
         }
         return this.mapY;
      }
      
      public function getPathX() : Number
      {
         if(this.pathX == -1)
         {
            setPathNodeCoordsFromPixel();
         }
         return this.pathX;
      }
      
      public function getPathY() : Number
      {
         if(this.pathY == -1)
         {
            setPathNodeCoordsFromPixel();
         }
         return this.pathY;
      }
      
      private function setMapNodeCoordsFromPixel() : void
      {
         this.mapX = Math.floor(this.pixelX / cMapRes);
         this.mapY = Math.floor(this.pixelY / cMapRes);
      }
      
      public function getMapX() : Number
      {
         if(this.mapX == -1)
         {
            setMapNodeCoordsFromPixel();
         }
         return this.mapX;
      }
      
      private function setServerCoordsFromPixel() : void
      {
         var scaleMult:Number = 100 / scale;
         this.serverX = Math.round(this.pixelX * scaleMult);
         this.serverY = Math.round(this.pixelY * scaleMult);
      }
      
      private function setMapNodeCoords(x:Number, y:Number) : void
      {
         this.mapX = x;
         this.mapY = y;
         var halfMapNodeSize:Number = Math.round(cMapRes / 2);
         this.pixelX = Math.round(x * cMapRes) + halfMapNodeSize;
         this.pixelY = Math.round(y * cMapRes) + halfMapNodeSize;
      }
      
      public function getServerX() : Number
      {
         if(this.serverX == -1)
         {
            setServerCoordsFromPixel();
         }
         return this.serverX;
      }
   }
}

package com.gaiaonline.battle.map
{
   import com.gaiaonline.platform.gateway.ICollisionConnector;
   import com.gaiaonline.platform.gateway.IResponseHandler;
   
   public class MapIt implements IResponseHandler
   {
      
      public static const gameWidth:Number = 780;
      
      private static const nineCharCode:Number = "9".charCodeAt(0);
      
      public static const gameHeight:Number = 505;
      
      private static const zeroCharCode:Number = "0".charCodeAt(0);
       
      
      private var hasCollisionData:Boolean = false;
      
      private var _gateway:ICollisionConnector;
      
      private var roomName:String = "";
      
      private var cMap:CollisionMap;
      
      private var rowLength:Number = 0;
      
      private var mapResolution:Number = 8;
      
      private var roomScale:Number;
      
      private var numRows:Number = 0;
      
      public function MapIt(rname:String, gateway:ICollisionConnector)
      {
         super();
         this.roomName = rname;
         this._gateway = gateway;
         this.cMap = new CollisionMap();
         setResolution(this.mapResolution);
      }
      
      private function processIncomingMapRLE(resObj:Object) : void
      {
         var dataString:String = null;
         var j:int = 0;
         dataString = resObj["map"];
         var len:uint = dataString.length;
         var nodeCounter:Number = 0;
         var c:Number = 0;
         var runLength:Number = 0;
         for(var i:uint = 0; i < len; i++)
         {
            c = dataString.charCodeAt(i);
            if(isDigit(c))
            {
               runLength = runLength * 10;
               runLength = runLength + (c - zeroCharCode);
            }
            else
            {
               for(j = 0; j < runLength; j++)
               {
                  this.cMap.setNodeFromCharCode(nodeCounter % rowLength,nodeCounter / rowLength,c);
                  nodeCounter++;
               }
               runLength = 0;
            }
         }
      }
      
      private function processIncomingTargets(resObj:Object) : void
      {
         var targetName:String = null;
         var newTargetX:Number = NaN;
         var newTargetY:Number = NaN;
         var targetString:String = resObj["trg"];
         var targetArray:Array = new Array();
         targetArray = targetString.split("|");
         for(var i:int = 0; i < targetArray.length; i = i + 3)
         {
            targetName = targetArray[i];
            newTargetX = parseInt(targetArray[i + 1]);
            newTargetY = parseInt(targetArray[i + 2]);
            this.cMap.saveTarget(targetName,newTargetX,newTargetY);
         }
      }
      
      public function processScaleAndResData(resObj:Object) : void
      {
         this.roomScale = resObj.scl;
         this.cMap.setRoomScale(roomScale);
         this.setResolution(parseInt(resObj.res));
         this.cMap.setResolution(this.mapResolution);
      }
      
      public function onResponse(data:Object) : void
      {
         processScaleAndResData(data);
         processIncomingTargets(data);
         processIncomingMapRLE(data);
         this.hasCollisionData = true;
      }
      
      public function isCollisionMapOk() : Boolean
      {
         return this.hasCollisionData;
      }
      
      public function getCollisionMap() : CollisionMap
      {
         return cMap;
      }
      
      public function getMapDataFromServer() : void
      {
         _gateway.getCollisionData(this.roomName,this);
      }
      
      public function dispose() : void
      {
         this.cMap.dispose();
      }
      
      private function isDigit(charCode:Number) : Boolean
      {
         return charCode >= zeroCharCode && charCode <= nineCharCode;
      }
      
      private function setResolution(res:Number) : void
      {
         this.mapResolution = res;
         this.rowLength = Math.ceil(gameWidth / this.mapResolution);
         this.cMap.setResolution(this.mapResolution);
      }
      
      public function getRoomScale() : Number
      {
         return this.roomScale;
      }
   }
}

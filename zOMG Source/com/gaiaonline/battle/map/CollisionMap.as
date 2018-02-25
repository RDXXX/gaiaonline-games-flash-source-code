package com.gaiaonline.battle.map
{
   import flash.display.Sprite;
   import flash.utils.ByteArray;
   
   public class CollisionMap
   {
      
      public static const TYPE_WATER:uint = 8;
      
      private static const gameHeight:Number = 505;
      
      public static const TYPE_DEEP_WATER:uint = 16;
      
      public static const TRIGGER_BITMASK:uint = 128;
      
      public static const TYPE_BITMASK:uint = 127;
      
      public static const TYPE_NOFLYZONE:uint = 64;
      
      public static const TYPE_LOW_WALL:uint = 4;
      
      public static const SLOT_NULL:uint = 0;
      
      public static const TYPE_SAND:uint = 32;
      
      private static const OFF_LIMITS_TO_NONFLY_BITMASK:uint = TYPE_WALL | TYPE_LOW_WALL | TYPE_DEEP_WATER;
      
      public static const TYPE_OPEN:uint = 1;
      
      private static const gameWidth:Number = 780;
      
      public static const TYPE_WALL:uint = 2;
      
      private static var _charCodeToSlot:Array;
       
      
      private var targets:Array;
      
      private var exitNorth:String;
      
      private var scale:Number = 75;
      
      private var exitSouth:String;
      
      private var mapWidth:Number;
      
      private var exitEast:String;
      
      private var numCols:Number;
      
      private var map:ByteArray;
      
      private var scaleMult:Number;
      
      private var mapHeight:Number;
      
      private var resolution:Number = 8;
      
      private var exitWest:String;
      
      private var drawClip:Sprite;
      
      private var numRows:Number;
      
      public function CollisionMap()
      {
         targets = [];
         map = new ByteArray();
         super();
         this.setResolution(this.resolution);
         this.setRoomScale(this.scale);
      }
      
      public static function isTerrianTypeOffLimitsToNonFly(type:uint) : Boolean
      {
         return (type & OFF_LIMITS_TO_NONFLY_BITMASK) != 0;
      }
      
      private static function initDeserializationLookup() : void
      {
         _charCodeToSlot = [];
         _charCodeToSlot["a".charCodeAt(0)] = TYPE_OPEN;
         _charCodeToSlot["b".charCodeAt(0)] = TYPE_WALL;
         _charCodeToSlot["c".charCodeAt(0)] = TYPE_LOW_WALL;
         _charCodeToSlot["d".charCodeAt(0)] = TYPE_WATER;
         _charCodeToSlot["e".charCodeAt(0)] = TYPE_DEEP_WATER;
         _charCodeToSlot["f".charCodeAt(0)] = TYPE_SAND;
         _charCodeToSlot["g".charCodeAt(0)] = TYPE_NOFLYZONE;
         _charCodeToSlot["A".charCodeAt(0)] = TYPE_OPEN | TRIGGER_BITMASK;
         _charCodeToSlot["B".charCodeAt(0)] = TYPE_WALL | TRIGGER_BITMASK;
         _charCodeToSlot["C".charCodeAt(0)] = TYPE_LOW_WALL | TRIGGER_BITMASK;
         _charCodeToSlot["D".charCodeAt(0)] = TYPE_WATER | TRIGGER_BITMASK;
         _charCodeToSlot["E".charCodeAt(0)] = TYPE_DEEP_WATER | TRIGGER_BITMASK;
         _charCodeToSlot["F".charCodeAt(0)] = TYPE_SAND | TRIGGER_BITMASK;
         _charCodeToSlot["G".charCodeAt(0)] = TYPE_NOFLYZONE | TRIGGER_BITMASK;
      }
      
      public function getName() : String
      {
         return "cmap_" + this.scale + "_" + this.resolution;
      }
      
      public function get byteArrayOverhead() : uint
      {
         return map.length;
      }
      
      public function getNumRows() : Number
      {
         return this.numRows;
      }
      
      public function draw(mc:Sprite) : void
      {
         var j:int = 0;
         var slot:uint = 0;
         var type:uint = 0;
         var xx:int = 0;
         var yy:int = 0;
         while(mc.numChildren > 0)
         {
            mc.removeChildAt(0);
         }
         mc.graphics.clear();
         for(var i:int = 0; i < targets.length; i++)
         {
            mc.graphics.lineStyle(0,0,0);
            mc.graphics.beginFill(255,0.4);
            mc.graphics.drawCircle(targets[i].x,targets[i].y,5);
            mc.graphics.endFill();
         }
         for(i = 0; i < numCols; i++)
         {
            for(j = 0; j < numRows; j++)
            {
               slot = map[getNodeIndex(i,j)];
               type = slot & TYPE_BITMASK;
               if(type && type != TYPE_OPEN)
               {
                  xx = i * this.resolution;
                  yy = j * this.resolution;
                  if(type != TYPE_OPEN)
                  {
                     mc.graphics.lineStyle(1,11141120,0.5);
                     mc.graphics.beginFill(11141120,0);
                     mc.graphics.drawRect(xx + 1,yy + 1,this.resolution - 2,this.resolution - 2);
                     mc.graphics.endFill();
                  }
                  if((slot & TRIGGER_BITMASK) != 0)
                  {
                     mc.graphics.lineStyle(1,65280,0.5);
                     mc.graphics.beginFill(65280,0);
                     mc.graphics.drawRect(xx + 2,yy + 2,this.resolution - 4,this.resolution - 4);
                     mc.graphics.endFill();
                  }
               }
            }
         }
      }
      
      public function isNodeBlockedForActor(mp:MapPoint, actor:Object) : Boolean
      {
         var slot:uint = 0;
         slot = map[getNodeIndex(mp.getMapX(),mp.getMapY())];
         var type:uint = slot & TYPE_BITMASK;
         if(!type)
         {
            return true;
         }
         if(type == TYPE_OPEN)
         {
            return false;
         }
         if(actor.flying)
         {
            return false;
         }
         return CollisionMap.isTerrianTypeOffLimitsToNonFly(type);
      }
      
      public function getScale() : Number
      {
         return this.scale;
      }
      
      public function getNode(x:Number, y:Number) : uint
      {
         var index:Number = getNodeIndex(x,y);
         if(index < map.length)
         {
            return map[index];
         }
         return TYPE_WALL;
      }
      
      public function dispose() : void
      {
         this.targets = null;
         this.map = null;
         this.drawClip = null;
      }
      
      public function setNodeFromCharCode(row:uint, col:uint, charCode:Number) : void
      {
         if(!_charCodeToSlot)
         {
            initDeserializationLookup();
         }
         map[getNodeIndex(row,col)] = _charCodeToSlot[charCode];
      }
      
      public function getResolution() : Number
      {
         return this.resolution;
      }
      
      public function getNumCols() : Number
      {
         return this.numCols;
      }
      
      public function setResolution(res:Number) : void
      {
         this.resolution = res;
         this.numRows = Math.ceil(gameHeight / this.resolution);
         this.numCols = Math.ceil(gameWidth / this.resolution);
         map.length = this.numRows * this.numCols;
         for(var i:uint = 0; i < map.length; i++)
         {
            map[i] = SLOT_NULL;
         }
      }
      
      public function isTrigger(x:int, y:int) : Boolean
      {
         var slot:uint = 0;
         var index:Number = getNodeIndex(x,y);
         if(index < map.length)
         {
            slot = this.map[index];
            return (slot & TRIGGER_BITMASK) != 0;
         }
         return false;
      }
      
      private function getNodeIndex(row:Number, col:Number) : Number
      {
         return row * this.numCols + col;
      }
      
      public function setRoomScale(scl:Number) : void
      {
         this.scale = scl;
         this.scaleMult = 100 / scale;
      }
      
      public function saveTarget(tn:String, tx:Number, ty:Number) : void
      {
         if(isNaN(tx))
         {
            return;
         }
         var newTar:Object = new Object();
         newTar.tName = tn;
         newTar.x = tx;
         newTar.y = ty;
         this.targets.push(newTar);
      }
   }
}

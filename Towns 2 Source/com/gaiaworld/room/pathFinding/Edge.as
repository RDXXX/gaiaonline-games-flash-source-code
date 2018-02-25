package com.gaiaworld.room.pathFinding
{
   import flash.display.Sprite;
   import flash.geom.Vector3D;
   
   public class Edge extends Sprite
   {
       
      
      private var from:int;
      
      private var to:int;
      
      private var cost:Number;
      
      public function Edge(param1:int, param2:int, param3:Number = 1)
      {
         super();
         this.from = param1;
         this.to = param2;
         this.cost = param3;
         this.z = 1;
      }
      
      public function getFrom() : int
      {
         return this.from;
      }
      
      public function setFrom(param1:int) : *
      {
         this.from = param1;
      }
      
      public function getTo() : int
      {
         return this.to;
      }
      
      public function setTo(param1:int) : void
      {
         this.to = param1;
      }
      
      public function setCost(param1:Number) : void
      {
         this.cost = param1;
      }
      
      public function getCost() : Number
      {
         return this.cost;
      }
      
      public function drawEdge(param1:Vector3D, param2:Vector3D, param3:String = "normal") : *
      {
         switch(param3)
         {
            case "normal":
               this.graphics.clear();
               this.graphics.lineStyle(1,10066329,0.3);
               this.graphics.moveTo(param1.x,param1.y);
               this.graphics.lineTo(param2.x,param2.y);
               break;
            case "path":
               this.graphics.clear();
               this.graphics.lineStyle(2,6749952,1);
               this.graphics.moveTo(param1.x,param1.y);
               this.graphics.lineTo(param2.x,param2.y);
               break;
            case "visited":
               this.graphics.clear();
               this.graphics.lineStyle(1,16711680,1);
               this.graphics.moveTo(param1.x,param1.y);
               this.graphics.lineTo(param2.x,param2.y);
         }
      }
   }
}

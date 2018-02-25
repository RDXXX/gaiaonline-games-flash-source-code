package com.efnx.fps
{
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.utils.Timer;
   
   public class FpsBox extends TextField
   {
       
      
      protected var frames:uint = 0;
      
      protected var format:TextFormat;
      
      protected var averageArray:Array;
      
      protected var targetFPS:int = 0;
      
      public function FpsBox(... rest)
      {
         this.format = new TextFormat();
         this.averageArray = new Array();
         super();
         var _loc2_:Timer = new Timer(1000);
         this.format.font = "Verdana";
         this.format.color = 0;
         this.format.size = 10;
         this.background = true;
         this.backgroundColor = 16777215;
         this.autoSize = TextFieldAutoSize.LEFT;
         this.defaultTextFormat = this.format;
         this.text = "-- FPS ---- AV";
         _loc2_.addEventListener(TimerEvent.TIMER,this.tick);
         if(rest[0] is Stage)
         {
            rest[0].addEventListener(Event.ENTER_FRAME,this.everyFrame,false,0,true);
            this.targetFPS = rest[0].frameRate;
         }
         else
         {
            this.addEventListener(Event.ENTER_FRAME,this.everyFrame,false,0,true);
         }
         _loc2_.start();
      }
      
      public function everyFrame(param1:Event) : void
      {
         this.frames++;
      }
      
      protected function tick(param1:TimerEvent) : void
      {
         var _loc2_:int = 0;
         this.averageArray.push(this.frames);
         if(this.averageArray.length == 4)
         {
            _loc2_ = 1;
            while(_loc2_ < this.averageArray.length)
            {
               this.averageArray[0] = this.averageArray[0] + this.averageArray[_loc2_];
               _loc2_++;
            }
            this.averageArray.splice(1,this.averageArray.length - 1);
            this.averageArray[0] = this.averageArray[0] / 4;
         }
         this.text = this.frames + " FPS " + Math.round(this.averageArray[0]) + " AV";
         if(this.targetFPS != 0)
         {
            this.appendText(" /" + this.targetFPS);
         }
         this.frames = 0;
      }
   }
}

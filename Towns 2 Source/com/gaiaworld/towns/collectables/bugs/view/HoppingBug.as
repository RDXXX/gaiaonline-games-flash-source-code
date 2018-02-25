package com.gaiaworld.towns.collectables.bugs.view
{
   import com.gaiaworld.room.interfaces.ISurfaceObject;
   import com.gaiaworld.towns.collectables.bugs.constants.BugConstants;
   import com.gaiaworld.towns.collectables.bugs.interfaces.IBug;
   import com.gaiaworld.towns.collectables.bugs.vo.BugVo;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class HoppingBug extends BaseBug implements IBug, ISurfaceObject
   {
       
      
      private var resetTimer:Timer;
      
      private var delayTimer:Timer;
      
      private var hopTimer:Timer;
      
      public function HoppingBug()
      {
         this.resetTimer = new Timer(2000);
         this.delayTimer = new Timer(1000);
         this.hopTimer = new Timer(10);
         super();
         this.resetTimer.addEventListener(TimerEvent.TIMER,this.resetMove);
         this.delayTimer.addEventListener(TimerEvent.TIMER,this.stopHop);
         this.hopTimer.addEventListener(TimerEvent.TIMER,this.hopping);
      }
      
      private function resetMove(param1:TimerEvent) : void
      {
         this.speed = 2;
         startMove();
         this.resetTimer.stop();
         this.resetTimer.delay = Math.random() * 3000;
      }
      
      private function hopping(param1:TimerEvent) : *
      {
         this.x = this.x + dx * speed;
         this.y = this.y + dy * speed;
      }
      
      private function stopHop(param1:TimerEvent) : *
      {
         this.hopTimer.stop();
         bugBody.gotoAndStop(1);
         this.delayTimer.stop();
         this.resetTimer.start();
      }
      
      override public function get depth2() : Number
      {
         return this.y;
      }
      
      override public function set dataProvider(param1:BugVo) : void
      {
         _dataProvider = param1;
         this.loadBug(_dataProvider.img);
         this.init();
         this.startMove();
      }
      
      override protected function move(param1:Event) : void
      {
         if(colModel.paused == true)
         {
            return;
         }
         var _loc2_:Number = 1;
         getAngle();
         if(bugBody)
         {
            if(dx >= 0 && dy >= 0)
            {
               _loc2_ = 3;
               scaleX = 1;
            }
            if(dx >= 0 && dy < 0)
            {
               _loc2_ = 3;
               scaleX = 1;
            }
            if(dx < 0 && dy >= 0)
            {
               _loc2_ = 4;
               scaleX = -1;
            }
            if(dx < 0 && dy < 0)
            {
               _loc2_ = 4;
               scaleX = -1;
            }
            if(this.x < 0 || this.x > w)
            {
               dx = -dx;
            }
            if(this.y < 0 || this.y > h)
            {
               dy = -dy;
            }
            bugBody.gotoAndStop(4);
         }
         checkTarget();
         stopMove();
         this.delayTimer.start();
         this.hopTimer.start();
      }
      
      override public function getBugType() : String
      {
         return BugConstants.TYPE_HOPPING;
      }
      
      override public function init() : void
      {
         h = globalModel.mapHeight;
         w = globalModel.mapWidth;
         this.x = int(Math.random() * w);
         this.y = int(Math.random() * h);
         targetX = int(Math.random() * w);
         targetY = int(Math.random() * h);
      }
      
      override protected function destroy() : void
      {
         this.resetTimer.addEventListener(TimerEvent.TIMER,this.resetMove);
         this.delayTimer.addEventListener(TimerEvent.TIMER,this.stopHop);
         this.hopTimer.addEventListener(TimerEvent.TIMER,this.hopping);
      }
   }
}

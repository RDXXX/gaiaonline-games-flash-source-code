package com.gaiaonline.battle.ui.battlewin
{
   import com.gaiaonline.battle.ui.AlertTypes;
   import com.gaiaonline.flexModulesAPIs.globalevent.GlobalEvent;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.utils.Dictionary;
   import flash.utils.getTimer;
   
   public class BattleWinCounters extends MovieClip
   {
       
      
      private var _items:Array;
      
      private var _itemClass:Class;
      
      private var _timerCount:int = 0;
      
      private var _timers:Dictionary;
      
      private var _counterCount:Number = 0;
      
      private var _counters:Dictionary;
      
      public function BattleWinCounters()
      {
         _counters = new Dictionary(true);
         _timers = new Dictionary(true);
         _items = new Array();
         super();
         this.mouseEnabled = this.mouseChildren = false;
         this._itemClass = this.getChildByName("mcItem")["constructor"];
         this.removeChild(MovieClip(this.getChildByName("mcItem")));
      }
      
      private static function onItemFrame(evt:Event) : void
      {
         var item:MovieClip = MovieClip(evt.target);
         if(item.targetY != null && item.y != item.targetY)
         {
            item.y = item.y + (item.targetY - item.y) / 3;
            if(Math.abs(item.targetY - item.y) < 1)
            {
               item.y = item.targetY;
            }
         }
      }
      
      private static function zeroPad(number:int, width:int) : String
      {
         var ret:String = "" + number;
         while(ret.length < width)
         {
            ret = "0" + ret;
         }
         return ret;
      }
      
      private static function updateTimeTextField(mc:MovieClip, time:Date) : void
      {
         mc.txtValue.text = zeroPad(time.hours,2) + ":" + zeroPad(time.minutes,2) + ":" + zeroPad(time.seconds,2);
      }
      
      public function updateTimer(name:String, title:String, startTime:Date, endTime:Date, playing:Boolean, show:Boolean) : void
      {
         var index:int = 0;
         var timer:MovieClip = null;
         if(show)
         {
            if(this._timers[name] == null)
            {
               addTimer(name);
            }
            timer = MovieClip(this._timers[name]);
            if(title != null)
            {
               timer.mcItem.txtTitle.text = title;
            }
            timer.upCount = endTime > startTime;
            timer.startTime = startTime;
            timer.playing = playing;
            timer.startMS = getTimer();
            timer.endMS = timer.startMS + Math.abs(endTime.getTime() - startTime.getTime());
            timer.lastSecondShown = 0;
            updateTimeTextField(timer.mcItem,startTime);
         }
         else if(this._timers[name] != null)
         {
            timer = MovieClip(this._timers[name]);
            updateTimeTextField(timer.mcItem,startTime);
            this._timerCount--;
            timer.addEventListener("OUT",onItemOut);
            timer.gotoAndPlay("out");
            GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.ALERT,{"type":AlertTypes.COUNTER_DONE}));
            index = this._items.indexOf(this._timers[name]);
            if(index >= 0)
            {
               this._items.splice(index,1);
            }
            delete this._timers[name];
            if(this._timerCount <= 0)
            {
               this.removeEventListener(Event.ENTER_FRAME,onTimerFrame);
            }
         }
      }
      
      private function onTimerFrame(evt:Event) : void
      {
         var timer:MovieClip = null;
         var millisElapsed:int = 0;
         var secondsElapsed:int = 0;
         var now:int = getTimer();
         for each(timer in this._timers)
         {
            if(timer.playing)
            {
               millisElapsed = Math.min(now,timer.endMS) - timer.startMS;
               secondsElapsed = millisElapsed / 1000;
               if(secondsElapsed != timer.lastSecondShown)
               {
                  timer.lastSecondShown = secondsElapsed;
                  if(!timer.upCount)
                  {
                     millisElapsed = -millisElapsed;
                  }
                  if(!timer.lastShownTime)
                  {
                     timer.lastShownTime = new Date();
                  }
                  timer.lastShownTime.setTime(timer.startTime.getTime() + millisElapsed);
                  updateTimeTextField(timer.mcItem,timer.lastShownTime);
               }
            }
         }
      }
      
      public function onItemOut(evt:Event) : void
      {
         MovieClip(evt.target).removeEventListener("OUT",onItemOut);
         MovieClip(evt.target).removeEventListener(Event.ENTER_FRAME,onItemFrame);
         this.removeChild(MovieClip(evt.target));
         this.updateItemY();
      }
      
      public function updateCounter(name:String, title:String, value:Number, goal:Number, show:Boolean) : void
      {
         var valueTxt:String = null;
         var index:int = 0;
         if(show)
         {
            if(this._counters[name] == null)
            {
               addCounter(name);
            }
            if(title != null)
            {
               MovieClip(this._counters[name]).mcItem.txtTitle.text = title;
            }
            valueTxt = value.toString();
            if(goal > 0)
            {
               valueTxt = valueTxt + (" / " + goal.toString());
            }
            MovieClip(this._counters[name]).mcItem.txtValue.text = valueTxt;
         }
         else if(this._counters[name] != null)
         {
            this._counterCount--;
            MovieClip(this._counters[name]).addEventListener("OUT",onItemOut);
            MovieClip(this._counters[name]).gotoAndPlay("out");
            GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.ALERT,{"type":AlertTypes.COUNTER_DONE}));
            index = this._items.indexOf(this._counters[name]);
            if(index >= 0)
            {
               this._items.splice(index,1);
            }
            delete this._counters[name];
         }
      }
      
      private function addCounter(name:String) : void
      {
         var item:MovieClip = new _itemClass();
         this._counters[name] = item;
         this._counterCount++;
         item.y = -(this._counterCount * 40);
         item.targetY = item.y;
         this._items.splice(this._counterCount - 1,0,item);
         this.addChild(item);
         item.gotoAndPlay("in");
         item.addEventListener(Event.ENTER_FRAME,onItemFrame,false,0,true);
         this.updateItemY();
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.ALERT,{"type":AlertTypes.COUNTER_START}));
      }
      
      private function addTimer(name:String) : void
      {
         this._timerCount++;
         if(this._timerCount > 0)
         {
            this.addEventListener(Event.ENTER_FRAME,onTimerFrame);
         }
         var item:MovieClip = new _itemClass();
         this._timers[name] = item;
         item.y = -((this._timerCount + this._counterCount) * 40);
         item.targetY = item.y;
         this._items.push(item);
         this.addChild(item);
         item.gotoAndPlay("in");
         item.addEventListener(Event.ENTER_FRAME,onItemFrame,false,0,true);
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.ALERT,{"type":AlertTypes.COUNTER_START}));
      }
      
      private function updateItemY() : void
      {
         for(var i:int = 0; i < this._items.length; i++)
         {
            this._items[i].targetY = -((i + 1) * 40);
         }
      }
   }
}

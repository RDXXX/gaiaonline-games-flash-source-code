package com.gaiaonline.battle.monsters
{
   import com.gaiaonline.battle.newactors.MonsterDisplay;
   import com.gaiaonline.utils.FrameTimer;
   import flash.utils.Dictionary;
   
   public class MonsterAnimQueue
   {
      
      private static var _frameTimer:FrameTimer;
      
      private static var _monsterList:Dictionary = new Dictionary(true);
      
      private static var _queue:Array = new Array();
      
      private static const ANIM_PER_FRAME:int = 3;
       
      
      public function MonsterAnimQueue()
      {
         super();
      }
      
      public static function addToQueue(monster:MonsterDisplay, fn:Function, fnName:String = null, data:Object = null, flush:Boolean = false) : void
      {
         var entry:MonsterDisplayEntry = null;
         if(_monsterList[monster] != null)
         {
            switch(_monsterList[monster].fnName)
            {
               case "die":
                  return;
               case "state":
                  if(fnName != "die")
                  {
                     return;
                  }
                  break;
               case "atk":
                  if(fnName != "die" && fnName != "state")
                  {
                     return;
                  }
                  break;
               case "hit":
                  if(fnName != "die" && fnName != "state" && fnName != "atk")
                  {
                     return;
                  }
                  break;
            }
         }
         if(_monsterList[monster] == null)
         {
            entry = new MonsterDisplayEntry(monster,fn,fnName,data);
            _monsterList[monster] = entry;
            _queue.push(entry);
         }
         else
         {
            _monsterList[monster].fn = fn;
            _monsterList[monster].fnName = fnName;
            _monsterList[monster].data = data;
         }
         if(_frameTimer == null)
         {
            _frameTimer = new FrameTimer(onFrameTimer);
         }
         if(!_frameTimer.running)
         {
            _frameTimer.startPerFrame(2);
         }
         if(flush)
         {
            onFrameTimerCore(Math.min(_queue.length,Number.MAX_VALUE));
         }
      }
      
      private static function onFrameTimer() : void
      {
         var loop:int = Math.min(_queue.length,ANIM_PER_FRAME);
         onFrameTimerCore(loop);
         if(_queue.length <= 0)
         {
            _frameTimer.stop();
         }
      }
      
      private static function onFrameTimerCore(loop:Number) : void
      {
         var entry:MonsterDisplayEntry = null;
         for(var i:Number = 0; i < loop; i++)
         {
            entry = _queue.shift();
            if(!entry.md.isDispose)
            {
               if(entry.data == null)
               {
                  entry.fn();
               }
               else
               {
                  entry.fn(entry.data);
               }
            }
            delete _monsterList[entry.md];
         }
      }
   }
}

import com.gaiaonline.battle.newactors.MonsterDisplay;

final class MonsterDisplayEntry
{
    
   
   public var fnName:String;
   
   public var md:MonsterDisplay;
   
   public var fn:Function;
   
   public var data:Object;
   
   function MonsterDisplayEntry(md:MonsterDisplay, fn:Function, fnName:String, data:Object)
   {
      super();
      this.md = md;
      this.fn = fn;
      this.fnName = fnName;
      this.data = data;
   }
}

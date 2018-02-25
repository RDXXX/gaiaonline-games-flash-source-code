package fl.video
{
   import flash.accessibility.Accessibility;
   import flash.accessibility.AccessibilityImplementation;
   import flash.accessibility.AccessibilityProperties;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.FocusEvent;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   use namespace flvplayback_internal;
   
   public class SeekBarAccImpl extends AccessibilityImplementation
   {
      
      private static const STATE_SYSTEM_NORMAL:uint = 0;
      
      private static const STATE_SYSTEM_FOCUSABLE:uint = 1048576;
      
      private static const STATE_SYSTEM_FOCUSED:uint = 4;
      
      private static const STATE_SYSTEM_SELECTABLE:uint = 2097152;
      
      private static const STATE_SYSTEM_SELECTED:uint = 2;
      
      private static const STATE_SYSTEM_UNAVAILABLE:uint = 1;
      
      private static const EVENT_OBJECT_FOCUS:uint = 32773;
      
      private static const EVENT_OBJECT_VALUECHANGE:uint = 32782;
      
      private static const EVENT_OBJECT_SELECTION:uint = 32774;
      
      private static const EVENT_OBJECT_LOCATIONCHANGE:uint = 32779;
      
      private static const ROLE_SLIDER:uint = 51;
      
      private static const ROLE_SYSTEM_INDICATOR:uint = 39;
      
      private static const ROLE_SYSTEM_PUSHBUTTON:uint = 43;
       
      
      protected var master:Sprite;
      
      protected var role:uint;
      
      private var _vc:FLVPlayback;
      
      private var _cachedPercentage:Number;
      
      private var _timer:Timer;
      
      public function SeekBarAccImpl(param1:Sprite)
      {
         var n:int = 0;
         var i:int = 0;
         var sprite:Sprite = param1;
         super();
         stub = false;
         this.master = sprite;
         if(!this.master.accessibilityProperties)
         {
            this.master.accessibilityProperties = new AccessibilityProperties();
         }
         this.master.accessibilityProperties.forceSimple = true;
         var events:Array = this.eventsToHandle;
         if(events)
         {
            n = events.length;
            i = 0;
            while(i < n)
            {
               this.master.addEventListener(events[i],this.eventHandler);
               i++;
            }
         }
         this.master.addEventListener(FocusEvent.FOCUS_IN,this.focusInHandler);
         try
         {
            this._vc = Object(this.master).uiMgr._vc;
            this._vc.addEventListener(VideoEvent.PLAYHEAD_UPDATE,this.eventHandler);
         }
         catch(e:Error)
         {
         }
         this.role = SeekBarAccImpl.ROLE_SLIDER;
      }
      
      public static function createAccessibilityImplementation(param1:Sprite) : void
      {
         param1.accessibilityImplementation = new SeekBarAccImpl(param1);
      }
      
      public static function enableAccessibility() : void
      {
      }
      
      protected function get eventsToHandle() : Array
      {
         return [];
      }
      
      override public function get_accRole(param1:uint) : uint
      {
         if(param1 == 0)
         {
            return this.role;
         }
         if(param1 == 2)
         {
            return ROLE_SYSTEM_INDICATOR;
         }
         return ROLE_SYSTEM_PUSHBUTTON;
      }
      
      override public function get_accValue(param1:uint) : String
      {
         if(param1 == 0)
         {
            return Math.round(this._vc.playheadPercentage).toString() + "%";
         }
         return null;
      }
      
      override public function get_accName(param1:uint) : String
      {
         var _loc2_:String = "";
         if(param1 == 0 && this.master.accessibilityProperties && this.master.accessibilityProperties.name && this.master.accessibilityProperties.name != "")
         {
            _loc2_ = _loc2_ + (this.master.accessibilityProperties.name + " ");
         }
         _loc2_ = _loc2_ + (this.getName(param1) + this.getStatusName());
         return _loc2_ != null && _loc2_ != ""?_loc2_:null;
      }
      
      protected function getName(param1:uint) : String
      {
         var _loc2_:String = "";
         switch(param1)
         {
            case 1:
               _loc2_ = "Page Left";
               break;
            case 2:
               _loc2_ = "Position";
               break;
            case 3:
               _loc2_ = "Page Right";
               break;
            case 0:
               _loc2_ = "";
         }
         return _loc2_;
      }
      
      override public function getChildIDArray() : Array
      {
         var _loc1_:Array = [];
         var _loc2_:uint = 0;
         while(_loc2_ < 3)
         {
            _loc1_[_loc2_] = _loc2_ + 1;
            _loc2_++;
         }
         return _loc1_;
      }
      
      override public function accLocation(param1:uint) : *
      {
         var _loc2_:Object = this.master;
         var _loc3_:UIManager = this._vc.uiMgr as UIManager;
         var _loc4_:DisplayObject = _loc3_.controls[UIManager.SEEK_BAR] as DisplayObject;
         var _loc5_:Dictionary = UIManager(_loc3_).ctrlDataDict as Dictionary;
         var _loc6_:ControlData = _loc5_[_loc4_];
         switch(param1)
         {
            case 0:
               if(_loc6_.hit_mc)
               {
                  _loc2_ = _loc6_.hit_mc;
               }
               break;
            case 1:
            case 3:
               if(_loc6_.progress_mc)
               {
                  _loc2_ = _loc6_.progress_mc;
               }
         }
         return _loc2_;
      }
      
      override public function get_accState(param1:uint) : uint
      {
         var _loc2_:uint = this.getState(param1);
         return _loc2_;
      }
      
      protected function getState(param1:uint) : uint
      {
         var _loc2_:uint = STATE_SYSTEM_NORMAL;
         if(param1 == 0)
         {
            if(!this.master.mouseEnabled || !this.master.tabEnabled)
            {
               _loc2_ = _loc2_ | STATE_SYSTEM_UNAVAILABLE;
            }
            else
            {
               _loc2_ = _loc2_ | STATE_SYSTEM_FOCUSABLE;
            }
            if(Sprite(this.master).stage.focus == this.master)
            {
               _loc2_ = _loc2_ | STATE_SYSTEM_FOCUSED;
            }
         }
         return _loc2_;
      }
      
      override public function get_accDefaultAction(param1:uint) : String
      {
         if(param1 == 1 || param1 == 3)
         {
            return "Press";
         }
         return null;
      }
      
      override public function accDoDefaultAction(param1:uint) : void
      {
         var nearestCuePoint:Object = null;
         var nextCuePoint:Object = null;
         var childID:uint = param1;
         var percent:Number = this._vc.playheadPercentage;
         nearestCuePoint = this._vc.findNearestCuePoint(this._vc.playheadTime);
         if(childID == 1)
         {
            percent = percent - this._vc.seekBarScrubTolerance * 2;
            this._vc.playheadPercentage = Math.max(percent,0);
         }
         else if(childID == 3)
         {
            if(this._vc.playheadPercentage >= 99)
            {
               return;
            }
            if(nearestCuePoint != null && nearestCuePoint.index < (nearestCuePoint.array as Array).length - 1)
            {
               try
               {
                  nextCuePoint = this._vc.findCuePoint(nearestCuePoint.array[nearestCuePoint.index + 1]);
                  if(nextCuePoint && this._vc.isFLVCuePointEnabled(nextCuePoint))
                  {
                     if(isNaN(Number(this._vc.metadata.videocodecid)))
                     {
                        this._vc.playheadPercentage = Math.max(nextCuePoint.time / this._vc.totalTime * 100,Math.min(99,this._vc.playheadPercentage + this._vc.seekBarScrubTolerance * 2));
                     }
                     else
                     {
                        this._vc.playheadTime = nextCuePoint.time;
                     }
                  }
                  return;
               }
               catch(err:Error)
               {
                  return;
               }
            }
         }
      }
      
      private function getStatusName() : String
      {
         return "";
      }
      
      protected function eventHandler(param1:Event) : void
      {
         var _loc2_:SeekBarAccImpl = null;
         if(Accessibility.active)
         {
            switch(param1.type)
            {
               case VideoEvent.PLAYHEAD_UPDATE:
                  this._cachedPercentage = this._vc.playheadPercentage;
                  _loc2_ = this;
                  if(Accessibility.active)
                  {
                     Accessibility.sendEvent(this.master,0,EVENT_OBJECT_SELECTION);
                     Accessibility.sendEvent(this.master,0,EVENT_OBJECT_VALUECHANGE,true);
                  }
                  if(!this._timer)
                  {
                     this._timer = new Timer(10);
                     this._timer.removeEventListener(TimerEvent.TIMER,this.sendAccessibilityEvent);
                     this._timer.addEventListener(TimerEvent.TIMER,this.sendAccessibilityEvent);
                     this._timer.start();
                  }
            }
         }
      }
      
      private function focusInHandler(param1:Event) : void
      {
         if(Accessibility.active)
         {
            Accessibility.sendEvent(this.master,0,EVENT_OBJECT_FOCUS);
            Accessibility.sendEvent(this.master,0,EVENT_OBJECT_VALUECHANGE,true);
         }
      }
      
      private function secondsToTime(param1:Number) : String
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         _loc5_ = param1 >= 3600?int(param1 / 3600):0;
         _loc6_ = param1 >= 60?int(param1 / 60 - _loc5_ * 60):0;
         _loc7_ = param1 - (_loc5_ * 3600 + _loc6_ * 60);
         _loc2_ = String(_loc5_);
         _loc3_ = String(_loc6_).length == 1 && _loc5_ > 0?"0" + String(_loc6_):String(_loc6_);
         _loc4_ = String(Math.floor(_loc7_)).length == 1?"0" + String(_loc7_):String(_loc7_);
         var _loc8_:String = _loc3_ + ":" + _loc4_;
         if(_loc5_ > 0)
         {
            _loc8_ = _loc2_ + ":" + _loc3_ + ":" + _loc4_;
         }
         return _loc8_;
      }
      
      private function sendAccessibilityEvent(param1:TimerEvent) : void
      {
         if(this._cachedPercentage != this._vc.playheadPercentage)
         {
            param1.target.stop();
            param1.target.removeEventListener(TimerEvent.TIMER,this.sendAccessibilityEvent);
            this._timer = undefined;
            if(Accessibility.active)
            {
               Accessibility.sendEvent(this.master,0,EVENT_OBJECT_SELECTION);
               Accessibility.sendEvent(this.master,0,EVENT_OBJECT_VALUECHANGE,true);
            }
         }
      }
   }
}

package fl.video
{
   import flash.accessibility.Accessibility;
   import flash.accessibility.AccessibilityImplementation;
   import flash.accessibility.AccessibilityProperties;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.FocusEvent;
   import flash.utils.Dictionary;
   
   use namespace flvplayback_internal;
   
   public class VolumeBarAccImpl extends AccessibilityImplementation
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
      
      private static const ROLE_WINDOW:uint = 9;
      
      private static const ROLE_SLIDER:uint = 51;
      
      private static const ROLE_SYSTEM_INDICATOR:uint = 39;
      
      private static const ROLE_SYSTEM_PUSHBUTTON:uint = 43;
       
      
      protected var master:Sprite;
      
      protected var role:uint;
      
      private var _vc:FLVPlayback;
      
      public function VolumeBarAccImpl(param1:Sprite)
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
            this._vc.addEventListener(SoundEvent.SOUND_UPDATE,this.eventHandler);
         }
         catch(e:Error)
         {
         }
         this.role = VolumeBarAccImpl.ROLE_SLIDER;
      }
      
      public static function createAccessibilityImplementation(param1:Sprite) : void
      {
         param1.accessibilityImplementation = new VolumeBarAccImpl(param1);
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
      
      override public function get_accValue(param1:uint) : String
      {
         var _loc2_:Number = NaN;
         if(param1 == 0)
         {
            _loc2_ = Math.round(this._vc.volume * 10000) / 100;
            return String(_loc2_) + "%";
         }
         return null;
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
         var _loc7_:DisplayObject = null;
         var _loc2_:Object = this.master;
         var _loc3_:UIManager = this._vc.uiMgr as UIManager;
         var _loc4_:DisplayObject = _loc3_.controls[UIManager.VOLUME_BAR] as DisplayObject;
         var _loc5_:Dictionary = UIManager(_loc3_).ctrlDataDict as Dictionary;
         var _loc6_:ControlData = _loc5_[_loc4_];
         if(_loc5_[_loc6_.fullness_mc].mask_mc)
         {
            _loc7_ = DisplayObject(_loc5_[_loc6_.fullness_mc].mask_mc);
         }
         switch(param1)
         {
            case 1:
            case 3:
               if(_loc7_)
               {
                  _loc2_ = _loc7_;
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
         var _loc2_:UIManager = this._vc.uiMgr as UIManager;
         var _loc3_:Boolean = _loc2_._isMuted;
         var _loc4_:Number = !!_loc3_?Number(Math.round(_loc2_.cachedSoundLevel * 1000) / 100):Number(Math.round(this._vc.volume * 1000) / 100);
         if(param1 == 1)
         {
            if(Math.floor(_loc4_) != _loc4_)
            {
               this._vc.volume = Math.floor(_loc4_) / 10;
            }
            else
            {
               this._vc.volume = Math.max(0,(_loc4_ - 1) / 10);
            }
         }
         else if(param1 == 3)
         {
            if(Math.round(_loc4_) != _loc4_)
            {
               this._vc.volume = Math.round(_loc4_) / 10;
            }
            else
            {
               this._vc.volume = Math.min(1,(_loc4_ + 1) / 10);
            }
         }
         _loc2_.cachedSoundLevel = this._vc.volume;
         if(_loc3_)
         {
            _loc2_._isMuted = true;
            _loc2_.cachedSoundLevel = this._vc.volume;
            this._vc.volume = 0;
            _loc2_.setEnabledAndVisibleForState(UIManager.MUTE_OFF_BUTTON,VideoState.PLAYING);
            _loc2_.skinButtonControl(_loc2_.controls[UIManager.MUTE_OFF_BUTTON]);
            _loc2_.setEnabledAndVisibleForState(UIManager.MUTE_ON_BUTTON,VideoState.PLAYING);
            _loc2_.skinButtonControl(_loc2_.controls[UIManager.MUTE_ON_BUTTON]);
         }
      }
      
      private function getStatusName() : String
      {
         return "";
      }
      
      protected function eventHandler(param1:Event) : void
      {
         if(param1.type == SoundEvent.SOUND_UPDATE)
         {
            if(Accessibility.active)
            {
               Accessibility.sendEvent(this.master,0,EVENT_OBJECT_SELECTION);
               Accessibility.sendEvent(this.master,0,EVENT_OBJECT_VALUECHANGE,true);
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
   }
}

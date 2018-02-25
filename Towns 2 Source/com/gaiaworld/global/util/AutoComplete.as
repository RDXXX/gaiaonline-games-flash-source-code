package com.gaiaworld.global.util
{
   import com.gaiaworld.global.TheStage;
   import fl.controls.TextInput;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.FocusEvent;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.ui.Keyboard;
   import flash.utils.Timer;
   
   public class AutoComplete extends EventDispatcher
   {
      
      public static const AC_CHANGED:String = "acChanged";
      
      public static const CLEAR_SUGGESTIONS:String = "clearSuggestions";
       
      
      private var _input:TextInput;
      
      private var _dictionary:Vector.<String>;
      
      private var _completions:Vector.<String>;
      
      private var _timer:Timer;
      
      private var _parseDelay:Number = 300;
      
      private var _charBuffer:int = 1;
      
      private var wordArray:Array;
      
      public var lastWord:String = "";
      
      public function AutoComplete(param1:TextInput, param2:Vector.<String>)
      {
         super();
         this._input = param1;
         this._dictionary = param2;
         this._init();
      }
      
      public function get completions() : Vector.<String>
      {
         return this._completions;
      }
      
      public function get parseDelay() : Number
      {
         return this._parseDelay;
      }
      
      public function set parseDelay(param1:Number) : void
      {
         this._parseDelay = param1;
         if(this._timer)
         {
            this._timer.delay = param1;
            if(this._timer.running)
            {
               this._timer.reset();
               this._timer.start();
            }
         }
      }
      
      public function get charBuffer() : int
      {
         return this._charBuffer;
      }
      
      public function set charBuffer(param1:int) : void
      {
         this._charBuffer = param1;
      }
      
      public function get dictionary() : Vector.<String>
      {
         return this._dictionary;
      }
      
      public function set dictionary(param1:Vector.<String>) : void
      {
         this._dictionary = param1;
      }
      
      public function get input() : TextInput
      {
         return this._input;
      }
      
      public function set input(param1:TextInput) : void
      {
         if(this._input && this._input.hasEventListener(FocusEvent.FOCUS_IN))
         {
            this._input.removeEventListener(FocusEvent.FOCUS_IN,this._onFocusIn);
            this._input.removeEventListener(FocusEvent.FOCUS_OUT,this._onFocusOut);
            if(this._input.hasEventListener(KeyboardEvent.KEY_UP))
            {
               this._input.removeEventListener(KeyboardEvent.KEY_UP,this._onKeyUp);
            }
         }
         if(this._timer && this._timer.running)
         {
            this._timer.reset();
         }
         this._input = param1;
      }
      
      public function parseInput() : void
      {
         var _loc7_:int = 0;
         this.wordArray = this.input.text.split(" ");
         var _loc1_:String = this.wordArray[this.wordArray.length - 1];
         this.lastWord = _loc1_;
         if(_loc1_ == "")
         {
            this.dispatchEvent(new Event(CLEAR_SUGGESTIONS,true));
         }
         if(_loc1_.length < this._charBuffer)
         {
            this.dispatchEvent(new Event(CLEAR_SUGGESTIONS,true));
            return;
         }
         var _loc2_:Array = new Array();
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         while(_loc4_ < this._dictionary.length)
         {
            if(this._dictionary[_loc4_].substr(0,_loc1_.length) == _loc1_)
            {
               _loc2_.push({
                  "i":_loc4_,
                  "match":this._dictionary[_loc4_],
                  "numOccurrences":0
               });
            }
            _loc4_++;
         }
         var _loc5_:int = 0;
         while(_loc5_ < _loc2_.length)
         {
            _loc7_ = 0;
            while(_loc7_ < _loc2_.length)
            {
               if(_loc5_ != _loc7_)
               {
                  if(_loc2_[_loc5_].i == _loc2_[_loc7_].i)
                  {
                     _loc2_[_loc5_].numOccurrences = _loc2_[_loc5_].numOccurrences + 1;
                     _loc2_.splice(_loc7_,1);
                  }
               }
               _loc7_++;
            }
            _loc5_++;
         }
         _loc2_.sortOn("numOccurences");
         this._completions = new Vector.<String>();
         var _loc6_:int = 0;
         while(_loc6_ < _loc2_.length)
         {
            this._completions.push(_loc2_[_loc6_].match);
            _loc6_++;
         }
         if(this._timer && this._timer.running)
         {
            this._timer.reset();
         }
         this.dispatchEvent(new Event(AC_CHANGED,true));
      }
      
      public function trash() : void
      {
         if(this._input)
         {
            this._input.removeEventListener(FocusEvent.FOCUS_IN,this._onFocusIn);
            this._input.removeEventListener(FocusEvent.FOCUS_OUT,this._onFocusOut);
            if(this._input.hasEventListener(KeyboardEvent.KEY_UP))
            {
               this._input.removeEventListener(KeyboardEvent.KEY_UP,this._onKeyUp);
            }
            this._input = null;
         }
         if(this._timer)
         {
            if(this._timer.running)
            {
               this._timer.stop();
            }
            this._timer.removeEventListener(TimerEvent.TIMER,this._onTimer);
            this._timer = null;
         }
      }
      
      protected function _init() : void
      {
         this._input.addEventListener(FocusEvent.FOCUS_IN,this._onFocusIn);
         this._input.addEventListener(FocusEvent.FOCUS_OUT,this._onFocusOut);
         this._timer = new Timer(this._parseDelay);
         this._timer.addEventListener(TimerEvent.TIMER,this._onTimer);
      }
      
      private function _onTimer(param1:TimerEvent) : void
      {
         this.parseInput();
      }
      
      private function _onFocusIn(param1:FocusEvent) : void
      {
         this._input.addEventListener(KeyboardEvent.KEY_UP,this._onKeyUp);
      }
      
      private function _onFocusOut(param1:FocusEvent) : void
      {
         this._input.removeEventListener(KeyboardEvent.KEY_UP,this._onKeyUp);
      }
      
      protected function _onKeyUp(param1:KeyboardEvent) : void
      {
         var _loc3_:String = null;
         var _loc2_:uint = param1.charCode;
         switch(_loc2_)
         {
            case Keyboard.TAB:
               if(this._completions && this._completions.length > 0)
               {
                  this.wordArray.pop();
                  _loc3_ = this.wordArray.join(" ") + " " + this._completions[0];
                  this._input.text = _loc3_;
                  TheStage.getInstance().STAGE.focus = this._input;
                  this._input.setSelection(_loc3_.length - 1,_loc3_.length - 1);
               }
               break;
            case Keyboard.SPACE:
               this.dispatchEvent(new Event(CLEAR_SUGGESTIONS,true));
               break;
            default:
               if(this._timer.running)
               {
                  this._timer.reset();
               }
               this._timer.start();
         }
      }
      
      public function completeMe(param1:String) : *
      {
         this.wordArray = this.input.text.split(" ");
         this.wordArray.pop();
         var _loc2_:String = this.wordArray.join(" ") + " " + param1;
         this._input.text = _loc2_;
         TheStage.getInstance().STAGE.focus = this._input;
         this._input.setSelection(_loc2_.length - 1,_loc2_.length - 1);
      }
   }
}

package com.gaiaonline.battle.emotes
{
   import com.gaiaonline.flexModulesAPIs.globalevent.GlobalEvent;
   import com.gaiaonline.utils.DisplayObjectUtils;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class TalkIcon extends MovieClip
   {
       
      
      private var _talkIconLayer:Sprite = null;
      
      private var _state:int = -1;
      
      private var dir:Number = 0;
      
      public var mc:MovieClip;
      
      public function TalkIcon(talkIconLayer:Sprite, s:int = 0)
      {
         super();
         this._talkIconLayer = talkIconLayer;
         this.addEventListener(MouseEvent.MOUSE_OVER,onMouseOver,false,0,true);
         this.addEventListener(MouseEvent.MOUSE_OUT,onMouseOut,false,0,true);
         this.state = s;
      }
      
      private function onMouseOver(evt:MouseEvent) : void
      {
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.MOUSE_OVER_STATE_CHANGED,{"isTalkIcon":true}));
      }
      
      public function set state(s:int) : void
      {
         if(s != this._state)
         {
            this._state = s;
            this.gotoAndStop(s + 1);
         }
      }
      
      private function onMouseOut(evt:MouseEvent) : void
      {
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.MOUSE_OVER_STATE_CHANGED,{"isTalkIcon":false}));
      }
      
      private function setDir(label:String) : void
      {
         if(this.currentLabel != label)
         {
            MovieClip(this.getChildByName("mc")).gotoAndPlay(label);
         }
      }
      
      public function get state() : int
      {
         return this._state;
      }
      
      public function setDirVar(d:Number) : void
      {
         if(d != this.dir && this.currentFrame == this.state + 1 && this.getChildByName("mc") != null)
         {
            this.dir = d;
            if(this.dir <= 0)
            {
               this.setDir("Right");
            }
            else
            {
               this.setDir("Left");
            }
         }
      }
      
      public function dispose() : void
      {
         DisplayObjectUtils.stopAllMovieClips(this,1);
         if(this.parent != null)
         {
            this.parent.removeChild(this);
         }
      }
   }
}

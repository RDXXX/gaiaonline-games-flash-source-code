package com.gaiaonline.battle.map.envobjects
{
   import com.gaiaonline.battle.ui.events.UiEvents;
   import flash.display.MovieClip;
   
   public class BasicSwitch extends MovieClip
   {
       
      
      public var isUsable:Boolean = false;
      
      private var state:int = 0;
      
      private var _mcStates:MovieClip;
      
      public var isCustomLight:Boolean = false;
      
      private var _btn:MovieClip;
      
      public function BasicSwitch()
      {
         super();
         this._btn = this.getChildByName("btn") as MovieClip;
         this._mcStates = this.getChildByName("mcStates") as MovieClip;
         if(this._btn != null)
         {
            this.hitArea = this._btn;
            this._btn.alpha = 0;
            this.mouseEnabled = true;
            this.mouseChildren = false;
         }
         if(this._mcStates != null)
         {
            this._mcStates.gotoAndPlay("s" + String(this.state));
         }
         this.lightOff();
      }
      
      public function btnHitTestPoint(x:int, y:int) : Boolean
      {
         var r:Boolean = false;
         if(this._btn != null)
         {
            r = this._btn.hitTestPoint(x,y,true);
         }
         else
         {
            r = this.hitTestPoint(x,y,true);
         }
         return r;
      }
      
      public function updateState(obj:Object, transition:Boolean = false) : void
      {
         var f:String = null;
         var e:UiEvents = null;
         if(obj.state != null)
         {
            if(this._mcStates != null)
            {
               f = "s0";
               if(transition)
               {
                  f = "t" + String(this.state) + "-" + String(obj.state);
               }
               else
               {
                  f = "s" + String(obj.state);
               }
               if(this.containFrameLabel(this._mcStates,f))
               {
                  this._mcStates.gotoAndPlay(f);
               }
               else
               {
                  this._mcStates.gotoAndPlay("s" + String(obj.state));
               }
            }
            if(this.isCustomLight)
            {
               e = new UiEvents("LightChange",null);
               if(obj.state == 0)
               {
                  e.value = false;
               }
               else
               {
                  e.value = true;
               }
               this.dispatchEvent(e);
            }
         }
         this.state = int(obj.state) || 0;
      }
      
      private function containFrameLabel(mc:MovieClip, frameLabel:String) : Boolean
      {
         var v:Boolean = false;
         for(var i:int = 0; i < mc.currentLabels.length; i++)
         {
            if(mc.currentLabels[i].name == frameLabel)
            {
               v = true;
               break;
            }
         }
         return v;
      }
      
      public function lightOn() : void
      {
         var e:UiEvents = new UiEvents("LightChange",null);
         e.value = true;
         this.dispatchEvent(e);
      }
      
      public function lightOff() : void
      {
         var e:UiEvents = new UiEvents("LightChange",null);
         e.value = false;
         this.dispatchEvent(e);
      }
   }
}

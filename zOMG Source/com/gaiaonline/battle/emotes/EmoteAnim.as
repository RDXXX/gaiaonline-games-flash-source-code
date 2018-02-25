package com.gaiaonline.battle.emotes
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Rectangle;
   
   public class EmoteAnim
   {
       
      
      private var anim:MovieClip;
      
      private var actor:Sprite;
      
      private var sizeRef:Sprite;
      
      private var displayLayer:Sprite;
      
      public function EmoteAnim(id:String, emoteLayer:Sprite, actor:Sprite, sizeRef:Sprite = null)
      {
         super();
         this.actor = actor;
         this.displayLayer = emoteLayer;
         if(sizeRef == null)
         {
            this.sizeRef = actor;
         }
         else
         {
            this.sizeRef = sizeRef;
         }
      }
      
      public function dispose() : void
      {
         this.anim.removeEventListener(Event.ENTER_FRAME,onEnterFrame);
         if(this.displayLayer.contains(this.anim))
         {
            this.displayLayer.removeChild(this.anim);
         }
         this.actor = null;
         this.displayLayer = null;
         this.anim = null;
      }
      
      public function play(anim:MovieClip) : void
      {
         this.anim = anim;
         this.displayLayer.addChild(this.anim);
         this.anim.addEventListener(Event.ENTER_FRAME,onEnterFrame);
      }
      
      private function onEnterFrame(evt:Event) : void
      {
         var r:Rectangle = null;
         if(this.anim.currentLabel != null && this.anim.currentLabel.toLowerCase() == "end")
         {
            this.dispose();
         }
         else
         {
            r = this.sizeRef.getBounds(this.actor);
            this.anim.x = this.actor.x + r.x + r.width / 2;
            this.anim.y = this.actor.y + r.y;
         }
      }
   }
}

package com.gaiaonline.battle.newactors
{
   import flash.events.Event;
   
   public class ActorMoveEvent extends Event
   {
      
      public static const MOVE:String = "ACTOR_MOVE_EVENT";
       
      
      public var scalingDirty:Boolean = false;
      
      private var _actor:BaseActor = null;
      
      public var scaleX:Number = NaN;
      
      public var scaleY:Number = NaN;
      
      public function ActorMoveEvent(type:String, actor:BaseActor, scalingDirty:Boolean = false, scaleX:Number = NaN, scaleY:Number = NaN, bubbles:Boolean = false, cancelable:Boolean = false)
      {
         super(type,bubbles,cancelable);
         this._actor = actor;
         this.scalingDirty = scalingDirty;
         this.scaleX = scaleX;
         this.scaleY = scaleY;
      }
      
      public function get actor() : BaseActor
      {
         return _actor;
      }
   }
}

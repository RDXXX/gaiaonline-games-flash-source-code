package com.gaiaonline.battle.newactors
{
   import com.gaiaonline.battle.newrings.RingAnim;
   
   public class StatusEffect
   {
       
      
      private var status:Object;
      
      private var actor:BaseActor;
      
      public function StatusEffect(baseActor:BaseActor)
      {
         status = new Object();
         super();
         this.actor = baseActor;
      }
      
      public function playStatus(animationId:String = null, playEffectStartAnim:Boolean = true) : void
      {
         var ra:RingAnim = null;
         if(animationId != null && this.status[animationId] == null)
         {
            ra = this.actor.playEffectAnim(animationId,"effect",playEffectStartAnim) as RingAnim;
            this.status[animationId] = {
               "count":1,
               "anim":ra
            };
         }
         else if(animationId != null)
         {
            this.status[animationId].count = this.status[animationId].count + 1;
         }
      }
      
      public function stopStatus(animationId:String) : void
      {
         if(animationId != null && this.status[animationId] != null)
         {
            this.status[animationId].count = this.status[animationId].count - 1;
            if(this.status[animationId].anim != null)
            {
               RingAnim(this.status[animationId].anim).dispell();
            }
            delete this.status[animationId];
         }
      }
      
      public function refresh() : void
      {
         var animationId:* = null;
         var ra:RingAnim = null;
         for(animationId in this.status)
         {
            if(this.status[animationId].anim == null)
            {
               trace(" - ",animationId);
               ra = this.actor.playEffectAnim(animationId) as RingAnim;
               this.status[animationId].anim = ra;
            }
         }
      }
      
      public function dispose() : void
      {
         var id:* = null;
         for(id in this.status)
         {
            RingAnim(this.status[id].anim).dispell();
            delete this.status[id];
         }
         this.status = null;
      }
   }
}

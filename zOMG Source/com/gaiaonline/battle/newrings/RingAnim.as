package com.gaiaonline.battle.newrings
{
   import com.gaiaonline.battle.ApplicationInterfaces.IUIFramework;
   import com.gaiaonline.battle.gateway.BattleGateway;
   import com.gaiaonline.battle.map.MapRoom;
   import com.gaiaonline.battle.newactors.ActorDisplay;
   import com.gaiaonline.battle.newactors.BaseActor;
   import com.gaiaonline.battle.sounds.ActorSound;
   import com.gaiaonline.flexModulesAPIs.globalevent.GlobalEvent;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   
   public class RingAnim extends EventDispatcher
   {
      
      public static const ANIM_DONE:String = "AnimDone";
      
      public static const LOADED:String = "RingAnimLoaded";
      
      public static const HIT_TIME:String = "HitTime";
      
      public static const PRIORITY_CHANGE:String = "Priority_Change";
      
      public static const START_PROJECTILE:String = "StartProjectile";
       
      
      public var loaded:Boolean = false;
      
      private var _uiFramework:IUIFramework = null;
      
      private var _gateway:BattleGateway = null;
      
      public var mcPoint:MovieClip;
      
      public var mcBack:MovieClip;
      
      private var actors:Array;
      
      public var priority:int = 5;
      
      private var parent:ActorDisplay;
      
      public var type:String = "na";
      
      public var mcGround:MovieClip;
      
      private var sounds:ActorSound;
      
      public var mcFront:MovieClip;
      
      public var rage:Number = 0;
      
      private var _ringAnimPoolObject:RingAnimPoolObj;
      
      public var mcDist:MovieClip;
      
      public var actorRef:Sprite;
      
      public var targetActor:Object;
      
      public var ringId:String;
      
      private var projectileSpeed:Number = -1;
      
      private var currentFrame:String;
      
      public function RingAnim(baseUrl:String, gateway:BattleGateway, uiFramework:IUIFramework, parent:ActorDisplay, ringId:String, type:String = "caster", mcRef:Sprite = null, targetActor:Object = null, speed:Number = -1, rage:int = 0)
      {
         var r:Ring = null;
         var rnew:Ring = null;
         actors = new Array();
         super();
         this._uiFramework = uiFramework;
         this._gateway = gateway;
         this.ringId = ringId;
         this.parent = parent;
         this.type = type;
         this.targetActor = targetActor;
         this.projectileSpeed = speed;
         this.rage = rage;
         this.sounds = new ActorSound(this._uiFramework.volumes);
         if(mcRef != null)
         {
            this.init(mcRef);
         }
         else if(RingLoadManager.contain(ringId))
         {
            r = RingLoadManager.getRing(ringId);
            if(r.isAnimLoaded)
            {
               init(r.mcAnimRef);
            }
            else
            {
               r.addEventListener(Ring.LOADED,onRingLoaded);
            }
         }
         else
         {
            rnew = RingLoadManager.LoadSimpleRing(baseUrl,gateway,ringId);
            rnew.addEventListener(Ring.LOADED,onRingLoaded);
         }
      }
      
      private function addRingGroundEffect() : void
      {
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.MAP_ADD_GROUND_RING_EFFECT,{"effect":this.mcGround}));
      }
      
      private function init(mcRef:Sprite) : void
      {
         var avs:Array = null;
         var i:int = 0;
         var ac:Sprite = null;
         if(this.sounds != null && this.parent != null && this.parent.parent != null && this.parent.parent is BaseActor)
         {
            this.sounds.initSound(BaseActor(this.parent.parent),mcRef);
         }
         else if(this.sounds != null)
         {
            this.sounds.initSound(null,mcRef);
         }
         this._ringAnimPoolObject = RingLoadManager.checkOutRingAnim(this.ringId,this.type,mcRef);
         this.mcBack = this._ringAnimPoolObject.mcBack;
         this.mcDist = this._ringAnimPoolObject.mcDist;
         this.mcFront = this._ringAnimPoolObject.mcFront;
         this.mcGround = this._ringAnimPoolObject.mcGround;
         this.mcPoint = this._ringAnimPoolObject.mcPoint;
         if(this.mcDist != null)
         {
            this.mcDist.addEventListener("PriorityChange",onPriorityChange,false,0,true);
            this.mcDist.addEventListener("hitTime",onHitTime,false,0,true);
            if(this.parent != null)
            {
               this.parent.distContainer.addChild(this.mcDist);
            }
         }
         if(this.parent != null)
         {
            if(this.mcBack != null)
            {
               this.parent.backContainer.addChild(this.mcBack);
            }
            if(this.mcFront != null)
            {
               this.parent.frontContainer.addChild(this.mcFront);
            }
            this.actorRef = this.parent.getNewActor();
            if(this.mcDist != null)
            {
               if(this.actorRef != null)
               {
                  avs = Object(this.mcDist).getAvatars();
                  for(i = 0; i < avs.length; i++)
                  {
                     if(i == 0)
                     {
                        this.actors.push(this.actorRef);
                        Sprite(avs[i]).addChild(this.actorRef);
                     }
                     else
                     {
                        ac = this.parent.getNewActor();
                        this.actors.push(ac);
                        Sprite(avs[i]).addChild(ac);
                     }
                  }
               }
            }
            this.parent.playAnim(this.parent.currentActorAnim);
         }
         this.loaded = true;
         this.dispatchEvent(new Event(LOADED));
         if(this.parent != null)
         {
            this.parent.setDirection(this.parent.direction);
         }
         if(this.currentFrame != null)
         {
            this.playAnim(this.currentFrame);
         }
         var r:Ring = RingLoadManager.getRing(this.ringId);
         if(r != null)
         {
            if(this.type == "caster" && this.targetActor != null && mcRef != null)
            {
               if(r.isProjectile && mcRef.getChildByName("projectile") != null && this.mcDist != null)
               {
                  this.mcDist.addEventListener("startProjectile",onStartProjectile,false,0,true);
               }
            }
         }
      }
      
      private function onStartProjectile(evt:Event) : void
      {
         var ba:BaseActor = null;
         var p:Projectile = null;
         this.dispatchEvent(new Event(START_PROJECTILE));
         if(this.mcDist != null)
         {
            this.mcDist.removeEventListener("startProjectile",onStartProjectile);
         }
         if(this.parent && this.parent.parent is BaseActor)
         {
            ba = BaseActor(this.parent.parent);
            p = new Projectile(this._uiFramework,this.ringId,this.rage,this.targetActor,ba.position.x,ba.position.y,this.projectileSpeed);
         }
      }
      
      private function onRingLoaded(evt:Event) : void
      {
         var r:Ring = Ring(evt.target);
         r.removeEventListener(Ring.LOADED,onRingLoaded);
         if(r != null && r.mcAnimRef != null)
         {
            this.init(r.mcAnimRef);
         }
      }
      
      private function onMcPointEnterFrame(evt:Event) : void
      {
         if(this.mcPoint != null && this.mcPoint.currentLabel == "End")
         {
            this.mcPoint.removeEventListener(Event.ENTER_FRAME,onMcPointEnterFrame);
            removeRingPointEffect();
            this.dispatchEvent(new Event(ANIM_DONE));
         }
      }
      
      private function addRingPointEffect() : void
      {
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.MAP_ADD_POINT_RING_EFFECT,{"effect":this.mcPoint}));
      }
      
      public function dipose() : void
      {
         var avs:Array = null;
         var avsI:int = 0;
         var avMc:Sprite = null;
         RingLoadManager.checkInRingAnim(this.ringId,this.type,this._ringAnimPoolObject);
         this._ringAnimPoolObject = null;
         if(this.mcDist != null)
         {
            avs = Object(this.mcDist).getAvatars();
            for(avsI = 0; avsI < avs.length; avsI++)
            {
               avMc = avs[avsI];
               while(avMc != null && avMc.numChildren > 0)
               {
                  avMc.removeChildAt(0);
               }
            }
         }
         for(var i:int = 0; i < this.actors.length; i++)
         {
            this.actors[i] = null;
         }
         this.disposeDispell();
         if(this.sounds != null)
         {
            this.sounds.dispose();
            this.sounds = null;
         }
         this.actorRef = null;
         this.actors = null;
         try
         {
            this.mcFront.dispose();
         }
         catch(e:Error)
         {
         }
         try
         {
            this.mcDist.dispose();
         }
         catch(e:Error)
         {
         }
         try
         {
            this.mcBack.dispose();
         }
         catch(e:Error)
         {
         }
         if(this.parent != null)
         {
            if(this.mcBack != null && this.parent.backContainer != null && this.parent.backContainer.contains(this.mcBack))
            {
               this.parent.backContainer.removeChild(this.mcBack);
            }
            if(this.mcDist != null && this.parent.distContainer != null && this.parent.distContainer.contains(this.mcDist))
            {
               this.parent.distContainer.removeChild(this.mcDist);
            }
            if(this.mcFront != null && this.parent.frontContainer != null && this.parent.frontContainer.contains(this.mcFront))
            {
               this.parent.frontContainer.removeChild(this.mcFront);
            }
         }
         this.mcBack = null;
         this.mcDist = null;
         this.mcFront = null;
         if(this.mcGround != null)
         {
            this.mcGround.stop();
            removeRingGroundEffect();
         }
         if(this.mcPoint != null)
         {
            this.mcPoint.stop();
            addRingPointEffect();
         }
         this.mcGround = null;
         this.mcPoint = null;
         this.parent = null;
         this.targetActor = null;
      }
      
      private function onHitTime(evt:Event) : void
      {
         this.dispatchEvent(new Event(HIT_TIME));
      }
      
      private function disposeDispell() : void
      {
         try
         {
            if(this.mcBack.hasOwnProperty("dispell"))
            {
               this.mcBack.dispell();
            }
         }
         catch(err:Error)
         {
         }
         try
         {
            if(this.mcDist.hasOwnProperty("dispell"))
            {
               this.mcDist.dispell();
            }
         }
         catch(err:Error)
         {
         }
         try
         {
            if(this.mcFront.hasOwnProperty("dispell"))
            {
               this.mcFront.dispell();
            }
         }
         catch(err:Error)
         {
         }
      }
      
      public function setDistVisible(v:Boolean) : Boolean
      {
         if(this.mcDist != null)
         {
            this.mcDist.visible = v;
            return true;
         }
         trace("[RingAnim] setDistVisible ---  Missing mcDist !!!!! ");
         return false;
      }
      
      private function onEnterFrame(evt:Event) : void
      {
         if(MovieClip(evt.target).currentLabel == "End")
         {
            MovieClip(evt.target).removeEventListener(Event.ENTER_FRAME,onEnterFrame);
            this.dispatchEvent(new Event(ANIM_DONE));
            this.currentFrame = null;
         }
      }
      
      private function onPriorityChange(evt:Event) : void
      {
         if(this.mcDist != null && Object(this.mcDist).getPriority != null)
         {
            this.priority = Object(this.mcDist).getPriority();
            this.dispatchEvent(new Event(PRIORITY_CHANGE));
         }
      }
      
      public function dispell() : void
      {
         try
         {
            if(this.mcBack.hasOwnProperty("dispell"))
            {
               this.mcBack.dispell();
            }
         }
         catch(err:Error)
         {
         }
         try
         {
            if(this.mcDist.hasOwnProperty("dispell"))
            {
               this.mcDist.dispell();
            }
         }
         catch(err:Error)
         {
         }
         try
         {
            if(this.mcFront.hasOwnProperty("dispell"))
            {
               this.mcFront.dispell();
            }
         }
         catch(err:Error)
         {
         }
      }
      
      private function onMcGroundEnterFrame(evt:Event) : void
      {
         if(this.mcGround != null && this.mcGround.currentLabel == "End")
         {
            this.mcGround.removeEventListener(Event.ENTER_FRAME,onMcGroundEnterFrame);
            removeRingGroundEffect();
            this.dispatchEvent(new Event(ANIM_DONE));
         }
      }
      
      public function playAnim(frame:String, playEffectStartAnim:Boolean = true) : void
      {
         var soundEvent:String = null;
         if(this.loaded && this.currentFrame != frame)
         {
            this.currentFrame = frame;
            if(this.type == "point")
            {
               if(this.targetActor is Point)
               {
                  this.playPoint(Point(this.targetActor));
               }
               return;
            }
            if(this.mcBack != null)
            {
               if(this.type == "effect" && !playEffectStartAnim && MovieClip(this.mcBack).hasOwnProperty("playEffectWithNoStartAnim"))
               {
                  MovieClip(this.mcBack).playEffectWithNoStartAnim();
               }
               else
               {
                  MovieClip(this.mcBack).gotoAndPlay(this.currentFrame);
               }
            }
            if(this.mcDist != null)
            {
               if(this.type == "effect" && !playEffectStartAnim && MovieClip(this.mcDist).hasOwnProperty("playEffectWithNoStartAnim"))
               {
                  MovieClip(this.mcDist).playEffectWithNoStartAnim();
               }
               else
               {
                  MovieClip(this.mcDist).gotoAndPlay(this.currentFrame);
               }
               mcDist.addEventListener(Event.ENTER_FRAME,onEnterFrame);
            }
            else
            {
               this.dispatchEvent(new Event(ANIM_DONE));
            }
            if(this.mcFront != null)
            {
               if(this.type == "effect" && !playEffectStartAnim && MovieClip(this.mcFront).hasOwnProperty("playEffectWithNoStartAnim"))
               {
                  MovieClip(this.mcFront).playEffectWithNoStartAnim();
               }
               else
               {
                  MovieClip(this.mcFront).gotoAndPlay(this.currentFrame);
               }
            }
            if(this.mcGround != null)
            {
               if(this.parent.parent != null && this.parent.parent is BaseActor)
               {
                  this.mcGround.x = this.parent.parent.x;
                  this.mcGround.y = this.parent.parent.y;
               }
               addRingGroundEffect();
               this.mcGround.addEventListener(Event.ENTER_FRAME,onMcGroundEnterFrame);
               this.mcGround.gotoAndPlay(this.currentFrame);
            }
            if(frame.substr(0,frame.length - 1) == "Down" || frame.substr(0,frame.length - 1) == "Up")
            {
               soundEvent = "";
               if(this.type == "caster")
               {
                  soundEvent = "caster" + parseInt(frame.substr(frame.length - 1,1));
               }
               else if(this.type == "target")
               {
                  soundEvent = "target" + parseInt(frame.substr(frame.length - 1,1));
               }
               if(this.sounds != null)
               {
                  this.sounds.playFrame(soundEvent);
               }
            }
         }
      }
      
      private function playPoint(ta:Point) : void
      {
         var scale:Number = NaN;
         var mapOffsetX:Number = NaN;
         var mapOffsetY:Number = NaN;
         var m:MapRoom = null;
         var mapOffset:Point = null;
         if(this._uiFramework.map != null)
         {
            scale = 0.75;
            mapOffsetX = 0;
            mapOffsetY = 0;
            m = this._uiFramework.map.getCurrentMapRoom();
            if(m != null)
            {
               scale = m.scale / 100;
               mapOffset = m.getRoomOffset();
               mapOffsetX = mapOffset.x;
               mapOffsetY = mapOffset.y;
            }
            if(this.mcPoint != null)
            {
               this.mcPoint.scaleY = this.mcPoint.scaleX = scale;
               this.mcPoint.x = Math.round(ta.x * scale) + mapOffset.x;
               this.mcPoint.y = Math.round(ta.y * scale) + mapOffset.y;
               addRingPointEffect();
               this.mcPoint.addEventListener(Event.ENTER_FRAME,onMcPointEnterFrame);
               this.mcPoint.gotoAndPlay(this.currentFrame);
            }
            else
            {
               this.dispatchEvent(new Event(ANIM_DONE));
            }
            if(this.mcGround != null)
            {
               this.mcGround.scaleY = this.mcGround.scaleX = scale;
               this.mcGround.x = Math.round(ta.x * scale) + mapOffset.x;
               this.mcGround.y = Math.round(ta.y * scale) + mapOffset.y;
               addRingGroundEffect();
               this.mcGround.addEventListener(Event.ENTER_FRAME,onMcGroundEnterFrame);
               this.mcGround.gotoAndPlay(this.currentFrame);
            }
         }
      }
      
      private function removeRingGroundEffect() : void
      {
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.MAP_REMOVE_GROUND_RING_EFFECT,{"effect":this.mcGround}));
      }
      
      private function removeRingPointEffect() : void
      {
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.MAP_REMOVE_POINT_RING_EFFECT,{"effect":this.mcPoint}));
      }
   }
}

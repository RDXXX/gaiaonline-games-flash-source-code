package com.gaiaonline.battle.newactors
{
   import com.gaiaonline.battle.ApplicationInterfaces.IAssetFactory;
   import com.gaiaonline.battle.ApplicationInterfaces.IUIFramework;
   import com.gaiaonline.battle.gateway.BattleGateway;
   import com.gaiaonline.battle.monsters.BaseMonsterLoader;
   import com.gaiaonline.battle.monsters.MonsterAnimQueue;
   import com.gaiaonline.battle.monsters.MonsterLoadManager;
   import com.gaiaonline.battle.monsters.MonsterProjectile;
   import com.gaiaonline.battle.newrings.RingAnim;
   import com.gaiaonline.battle.sounds.ActorSound;
   import com.gaiaonline.battle.ui.events.UiEvents;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class MonsterDisplay extends ActorDisplay
   {
      
      private static const nonRepeatableAnims:Array = ["idle","hit","walk","die","aggroIn","aggroOut","spawn"];
      
      private static var s_defaultMonsterAnim:Sprite;
       
      
      private var pose:String = "idle";
      
      private var state:int = -1;
      
      private var previousPose:String = "idle";
      
      private var _monsters:Array;
      
      private var baseMonster:BaseMonsterLoader;
      
      private var _monsterLoadManager:MonsterLoadManager;
      
      private var projectileSpeed:Number = -1;
      
      private var _sounds:ActorSound;
      
      private var dead:Boolean = false;
      
      private var targetActor:Object;
      
      private var portraitArray:Array;
      
      public function MonsterDisplay(assetFactory:IAssetFactory, baseUrl:String, baseActorId:String = null, monsterLoadManager:MonsterLoadManager = null)
      {
         _monsters = [];
         portraitArray = new Array();
         super(assetFactory,baseUrl,baseActorId);
         this._monsterLoadManager = monsterLoadManager;
         this._frameQueueList.addFrameQueue(fnSetDir);
         this.clearPortraitArray(this.portraitArray);
      }
      
      private function die() : void
      {
         this.pose = "death";
         this.dead = true;
         MonsterAnimQueue.addToQueue(this,fnDie,"die");
      }
      
      override protected function onActorLoaded(evt:Event) : void
      {
         if(this.isDispose)
         {
            return;
         }
         this.removeChild(this.actorBtn);
         this.removeChild(this.mcBound);
         this.clearRingAnimList();
         this.animList.length = 0;
         for(var i:int = 0; i < this._monsters.length; i++)
         {
            this._monsters[i].removeEventListener(Event.REMOVED_FROM_STAGE,onMonsterRemovedFromStage);
            this._monsters[i] = null;
         }
         this._monsters.length = 0;
         this.initMonster();
         super.onActorLoaded(new Event(Event.COMPLETE));
         this.setState(this.state);
         if(this.dead)
         {
            this.dispatchEvent(new Event("MonsterDeath"));
         }
      }
      
      private function onMonsterRemovedFromStage(evt:Event) : void
      {
         var i:int = 0;
         if(this.monsters != null)
         {
            i = this.monsters.indexOf(evt.target);
            if(i >= 0)
            {
               this.monsters[i].removeEventListener(Event.REMOVED_FROM_STAGE,onMonsterRemovedFromStage);
               if(!this.baseMonster.checkInMonster(this.monsters[i]))
               {
                  this.monsters[i].dispose();
               }
               this.monsters.splice(i,1);
            }
         }
      }
      
      override public function getTargetInfoPortrait() : Sprite
      {
         return this.getPortrait();
      }
      
      private function getPortrait() : Sprite
      {
         if(this.isDispose)
         {
            return null;
         }
         var s:Sprite = new Sprite();
         if(this.baseMonster != null && this.baseMonster.loaded)
         {
            s.addChild(this.baseMonster.getPortrait());
            if(!this._isLoaded)
            {
               s.graphics.lineStyle(1,16711680);
               s.graphics.beginFill(0,0);
               s.graphics.drawRect(0,0,42,42);
               s.graphics.endFill();
               this.portraitArray.push(s);
            }
         }
         else
         {
            s.graphics.lineStyle(1,16711680);
            s.graphics.beginFill(0,0);
            s.graphics.drawRect(0,0,42,42);
            s.graphics.endFill();
            this.portraitArray.push(s);
         }
         return s;
      }
      
      private function fnSpawn() : void
      {
         var i:int = 0;
         if(this.monsters.length && MovieClip(this.monsters[0]).hasOwnProperty("spawn"))
         {
            for(i = 0; i < this.monsters.length; i++)
            {
               this.monsters[i].aggro = this.aggro;
               this.monsters[i].spawn();
            }
         }
      }
      
      override protected function refreshPortraits() : void
      {
         var i:int = 0;
         var s:Sprite = null;
         if(this.baseMonster != null && this.baseMonster.loaded)
         {
            for(i = 0; i < this.portraitArray.length; i++)
            {
               s = this.portraitArray[i] as Sprite;
               if(s != null && this.baseMonster != null && this.baseMonster.getPortrait != null)
               {
                  while(s.numChildren > 0)
                  {
                     s.removeChildAt(0);
                  }
                  s.graphics.clear();
                  s.addChild(this.baseMonster.getPortrait());
               }
            }
            this.portraitArray.length = 0;
         }
      }
      
      private function fnPlayHitMinor() : void
      {
         for(var i:int = 0; i < this.monsters.length; i++)
         {
            this.monsters[i].aggro = this.aggro;
            this.monsters[i].hit();
         }
         if(this.sounds)
         {
            this.sounds.playFrame("minorPain");
         }
      }
      
      override public function dispose() : void
      {
         if(this.genericAnim != null && this.genericAnim.actorRef != null && this.genericAnim.actorRef.hasEventListener("MonsterDead"))
         {
            this.genericAnim.actorRef.removeEventListener("MonsterDead",onMonsterDeath);
         }
         if(this.sounds)
         {
            this._sounds.dispose();
            this._sounds = null;
         }
         this.baseMonster.checkInActorBtn(this.actorBtn);
         for(var i:int = 0; i < this.monsters.length; i++)
         {
            this.monsters[i].removeEventListener(Event.REMOVED_FROM_STAGE,onMonsterRemovedFromStage);
            this.baseMonster.checkInMonster(this._monsters[i]);
            this.monsters[i] = null;
         }
         this._monsters.length = 0;
         this.baseMonster = null;
         super.dispose();
      }
      
      private function fnDie() : void
      {
         for(var i:int = 0; i < this.monsters.length; i++)
         {
            this.monsters[i].aggro = this.aggro;
            this.monsters[i].die();
         }
         if(this.sounds)
         {
            this.sounds.playFrame("die",true);
         }
      }
      
      private function fnState() : void
      {
         for(var i:int = 0; i < this.monsters.length; i++)
         {
            if(this.monsters[i].hasOwnProperty("setState"))
            {
               this.monsters[i].setState(this.state);
            }
         }
      }
      
      private function initMonster() : void
      {
         var r:Rectangle = null;
         this.isGlow = this.baseMonster.isGlow;
         this.flip = this.baseMonster.flip;
         this.actorBtn = this.baseMonster.checkOutActorBtn();
         if(this.actorBtn != null)
         {
            this.actorBtn.alpha = 0;
            this.addChild(this.actorBtn);
            if(this.baseMonster.useButtonOnly)
            {
               this.hitArea = this.actorBtn;
               this.mouseChildren = false;
            }
            else
            {
               this.mouseChildren = true;
            }
         }
         if(this.parent != null)
         {
            if(this.parent is BaseActor)
            {
               this.sounds.initSound(BaseActor(this.parent),this.baseMonster.baseMonster);
            }
            else
            {
               this.sounds.initSound(null,this.baseMonster.baseMonster);
            }
         }
         else
         {
            this.addEventListener(Event.ADDED_TO_STAGE,onAddedToStage,false,0,true);
         }
         this.genericAnim = new RingAnim(this.baseUrl,this._gateway,this._uiFramework,this,"GenericMonster","caster",getNewGenericMonsterAnim());
         this.genericAnim.actorRef.addEventListener("MonsterDead",onMonsterDeath,false,0,true);
         this.genericAnim.actorRef.addEventListener("startProjectile",onProjectile,false,0,true);
         this.genericAnim.actorRef.addEventListener("MonsterActionEnd",MonsterActionEnd,false,0,true);
         this.animList.push(this.genericAnim);
         if(this.actorBtn != null)
         {
            r = this.actorBtn.getBounds(this.actorBtn);
         }
         else
         {
            r = this.genericAnim.actorRef.getBounds(this.genericAnim.actorRef);
         }
         this.genericHit.x = r.x + r.width / 2 - r.width * 0.1;
         this.genericHit.y = r.y + r.height / 2 - r.height * 0.2;
         this.mcBound = new Sprite();
         this.mcBound.graphics.beginFill(255);
         this.mcBound.graphics.drawRect(r.x,r.y,r.width,r.height);
         this.mcBound.graphics.endFill();
         this.mcBound.visible = false;
         this.addChild(this.mcBound);
         this.reticle.width = this.genericAnim.actorRef.getBounds(null).width * 1.2;
         if(this.reticle.width < 125)
         {
            this.reticle.width = 125;
         }
         else if(this.reticle.width > 180)
         {
            this.reticle.width = 180;
         }
         this.reticle.height = this.reticle.width * 0.5;
      }
      
      override public function getNewActor(pooling:Boolean = true) : Sprite
      {
         var m:* = undefined;
         if(this.isDispose)
         {
            return null;
         }
         if(this.baseMonster != null)
         {
            if(pooling)
            {
               m = this.baseMonster.checkOutMonster(this.baseActorId);
            }
            else
            {
               m = this.baseMonster.getNewMonster();
            }
            if(m)
            {
               m.x = m.x + 71;
               m.y = m.y + 139;
               if(MovieClip(m).hasOwnProperty("setPoseState"))
               {
                  m.setPoseState(this.pose,this.state);
               }
               else
               {
                  this.playAnim(this.currentActorAnim,null,true);
               }
               this.monsters.push(m);
               m.addEventListener(Event.REMOVED_FROM_STAGE,onMonsterRemovedFromStage,false,0,true);
               m.mouseEnabled = false;
               return m;
            }
         }
         trace(" getNewActor() Missing baseMonster");
         return null;
      }
      
      override public function loadActor(gateway:BattleGateway, uiFramework:IUIFramework, url:String) : void
      {
         super.loadActor(gateway,uiFramework,url);
         if(this.isDispose)
         {
            return;
         }
         this.url = url;
         if(this.url != null)
         {
            this.baseMonster = this._monsterLoadManager.getBaseMonster(this.url);
            if(!this.baseMonster.loaded)
            {
               this.baseMonster.addEventListener(Event.COMPLETE,onActorLoaded,false,0,true);
               this.baseMonster.load();
            }
            this.initMonster();
            super.onActorLoaded(new Event(Event.COMPLETE));
         }
         else
         {
            trace("=== Missing URL for Monster == ");
         }
      }
      
      private function fnAttack(data:Object) : void
      {
         for(var i:int = 0; i < this.monsters.length; i++)
         {
            this.monsters[i].aggro = this.aggro;
            this.monsters[i].attack(data);
         }
         if(this.sounds)
         {
            this.sounds.playFrame(data.toString());
         }
      }
      
      private function MonsterActionEnd(evt:Event) : void
      {
         this.currentActorAnim = this.previousPose;
      }
      
      private function onProjectile(evt:UiEvents) : void
      {
         var mc:MovieClip = null;
         var ba:BaseActor = null;
         if(this.baseMonster != null && this.baseMonster.getNewProjectile != null)
         {
            mc = this.baseMonster.getNewProjectile();
            ba = BaseActor(this.parent);
            new MonsterProjectile(this._uiFramework,mc,this.targetActor,new Point(ba.position.x,ba.position.y),this.projectileSpeed,evt.value);
         }
      }
      
      private function onMonsterDeath(evt:Event) : void
      {
         this.dispatchEvent(new Event("MonsterDeath"));
      }
      
      private function onAddedToStage(evt:Event) : void
      {
         this.removeEventListener(Event.ADDED_TO_STAGE,onAddedToStage);
         if(this.parent is BaseActor)
         {
            this.sounds.initSound(BaseActor(this.parent),this.baseMonster.baseMonster);
         }
         else
         {
            this.sounds.initSound(null,this.baseMonster.baseMonster);
         }
      }
      
      override public function playSound(soundID:String) : void
      {
         if(this.isDispose)
         {
            return;
         }
         this.sounds.playFrame(soundID,false,true);
      }
      
      override public function setDirection(angle:Number) : void
      {
         if(this.isDispose)
         {
            return;
         }
         super.setDirection(angle);
         this._frameQueueList.addToFrameQueue(fnSetDir,angle,true);
      }
      
      public function getNewGenericMonsterAnim() : Sprite
      {
         if(!s_defaultMonsterAnim)
         {
            s_defaultMonsterAnim = this.assetFactory.getInstance("GenericMonsterAnim") as Sprite;
         }
         return s_defaultMonsterAnim;
      }
      
      override public function onQuickMove(type:String, cTime:int = 0, totalTime:int = 0) : Object
      {
         var i:int = 0;
         if(this.isDispose)
         {
            return null;
         }
         var obj:Object = {
            "startFrame":0,
            "frameFromEnd":0
         };
         if(this.monsters[0] != null)
         {
            for(i = 0; i < this.monsters.length; i++)
            {
               if(this.monsters[i].hasOwnProperty("onQuickMove"))
               {
                  obj = this.monsters[i].onQuickMove(type,cTime,totalTime);
               }
            }
         }
         return obj;
      }
      
      private function fnWalk() : void
      {
         for(var i:int = 0; i < this.monsters.length; i++)
         {
            this.monsters[i].aggro = this.aggro;
            this.monsters[i].walk();
         }
         if(this.sounds)
         {
            if(this.aggro)
            {
               this.sounds.playFrame("aggro_walk");
            }
            else
            {
               this.sounds.playFrame("walk");
            }
         }
      }
      
      private function fnSetDir(data:Object) : void
      {
         for(var i:int = 0; i < this.monsters.length; i++)
         {
            this.monsters[i].setAngle(this.direction);
         }
      }
      
      private function fnIdle() : void
      {
         for(var i:int = 0; i < this.monsters.length; i++)
         {
            this.monsters[i].aggro = this.aggro;
            this.monsters[i].idle();
         }
         if(this.sounds)
         {
            if(this.aggro)
            {
               this.sounds.playFrame("aggro_idle");
            }
            else
            {
               this.sounds.playFrame("idle");
            }
         }
      }
      
      private function get sounds() : ActorSound
      {
         if(!this._sounds)
         {
            this._sounds = new ActorSound(this._uiFramework.volumes);
         }
         return this._sounds;
      }
      
      private function aggroIn() : void
      {
         if(!this.dead)
         {
            this.aggro = true;
            if(this.baseMonster.hasAggro)
            {
               this.setState(1);
            }
            else
            {
               this.setState(0);
            }
            this.sounds.playFrame("aggroIn");
         }
      }
      
      private function playHit(param:String) : void
      {
         if(!this.dead)
         {
            this.pose = "hit";
            if(param == "criticalhit")
            {
               MonsterAnimQueue.addToQueue(this,fnPlayHitMajor,"hit");
            }
            else
            {
               MonsterAnimQueue.addToQueue(this,fnPlayHitMinor,"hit");
            }
         }
      }
      
      private function idle() : void
      {
         if(!this.dead)
         {
            this.pose = "idle";
            this.previousPose = "idle";
            MonsterAnimQueue.addToQueue(this,fnIdle,"idle");
         }
      }
      
      override public function setState(state:int = 0) : void
      {
         if(this.isDispose)
         {
            return;
         }
         if(this.state != state)
         {
            this.state = state;
            if(!this.dead)
            {
               fnState();
            }
         }
         this.mouseChildren = false;
         this.mouseEnabled = true;
      }
      
      private function attack(atk:String, targetActor:Object = null, speed:Number = -1) : void
      {
         if(!this.dead)
         {
            this.pose = atk;
            this.targetActor = targetActor;
            this.projectileSpeed = speed;
            MonsterAnimQueue.addToQueue(this,fnAttack,"atk",atk);
         }
      }
      
      private function walk() : void
      {
         if(!this.dead)
         {
            this.pose = "walk";
            this.previousPose = "walk";
            MonsterAnimQueue.addToQueue(this,fnWalk,"walk");
         }
      }
      
      public function get monsters() : Array
      {
         return _monsters;
      }
      
      private function fnPlayHitMajor() : void
      {
         for(var i:int = 0; i < this.monsters.length; i++)
         {
            this.monsters[i].aggro = this.aggro;
            this.monsters[i].hit();
         }
         if(this.sounds)
         {
            this.sounds.playFrame("minorPain");
         }
      }
      
      override public function playAnim(action:String, param:Object = null, allowRepeatAnim:Boolean = false) : void
      {
         var type:String = null;
         var target:Object = null;
         var s:Number = NaN;
         if(this.isDispose)
         {
            trace("[MonsterDisplay playAnim ] already dispose ",this.name);
            return;
         }
         var prevAnim:String = this.currentActorAnim;
         super.playAnim(action);
         if(!this.dead)
         {
            if(allowRepeatAnim || MonsterDisplay.nonRepeatableAnims.indexOf(this.currentActorAnim) == -1 || prevAnim != action)
            {
               switch(this.currentActorAnim)
               {
                  case "idle":
                     this.idle();
                     break;
                  case "hit":
                     type = "hit";
                     if(param != null)
                     {
                        type = String(param);
                     }
                     this.playHit(type);
                     break;
                  case "walk":
                     this.walk();
                     break;
                  case "die":
                     this.die();
                     break;
                  case "aggroIn":
                     this.aggroIn();
                     break;
                  case "aggroOut":
                     this.aggroOut();
                     break;
                  case "spawn":
                     this.spawn();
                     break;
                  case "sit":
                     this.sit();
                     break;
                  case null:
                     break;
                  default:
                     target = null;
                     s = -1;
                     if(param != null)
                     {
                        if(param.target != null)
                        {
                           target = param.target;
                        }
                        if(param.speed != null)
                        {
                           s = param.speed;
                        }
                     }
                     this.attack(action,target,s);
               }
            }
         }
         else
         {
            this.die();
         }
      }
      
      private function sit() : void
      {
         if(!this.dead)
         {
            this.pose = "sit";
            this.previousPose = "sit";
            MonsterAnimQueue.addToQueue(this,fnSit,"sit");
         }
      }
      
      private function fnSit() : void
      {
         for(var i:int = 0; i < this.monsters.length; i++)
         {
            this.monsters[i].aggro = this.aggro;
            this.monsters[i].sit();
         }
         if(this.sounds)
         {
            if(this.aggro)
            {
               this.sounds.playFrame("aggro_sit");
            }
            else
            {
               this.sounds.playFrame("sit");
            }
         }
      }
      
      private function aggroOut() : void
      {
         if(!this.dead)
         {
            this.aggro = false;
            this.setState(0);
            if(this.sounds)
            {
               this.sounds.playFrame("aggroOut");
            }
         }
      }
      
      override public function getDialogPortrait() : Sprite
      {
         return this.getPortrait();
      }
      
      private function spawn() : void
      {
         if(!this.dead)
         {
            this.pose = "spawn";
            MonsterAnimQueue.addToQueue(this,fnSpawn,"spawn",null,true);
         }
      }
   }
}

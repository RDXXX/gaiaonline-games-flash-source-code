package com.gaiaonline.battle.newrings
{
   import com.gaiaonline.objectPool.IObjectPoolCleanUp;
   import com.gaiaonline.objectPool.IObjectPoolDeconstructor;
   import com.gaiaonline.objectPool.IObjectPoolFactory;
   import com.gaiaonline.objectPool.IObjectPoolInitializer;
   import com.gaiaonline.utils.DisplayObjectStopper;
   import com.gaiaonline.utils.DisplayObjectStopperModes;
   import com.gaiaonline.utils.DisplayObjectUtils;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class RingAnimPoolObj implements IObjectPoolFactory, IObjectPoolCleanUp, IObjectPoolInitializer, IObjectPoolDeconstructor
   {
       
      
      public var mcFront:MovieClip;
      
      private var _ringGarbageStopper:DisplayObjectStopper;
      
      public var mcPoint:MovieClip;
      
      private var _ringGarbageStopperDist:DisplayObjectStopper;
      
      public var mcBack:MovieClip;
      
      public var mcDist:MovieClip;
      
      public var mcRef:Sprite;
      
      public var type:String;
      
      public var mcGround:MovieClip;
      
      public function RingAnimPoolObj(mcRef:Sprite, type:String)
      {
         _ringGarbageStopper = new DisplayObjectStopper(DisplayObjectStopperModes.SHOW_NO_ANIM,true);
         _ringGarbageStopperDist = new DisplayObjectStopper(DisplayObjectStopperModes.SHOW_NO_ANIM,true);
         super();
         this.mcRef = mcRef;
         this.type = type;
      }
      
      public function deconstruct(obj:*) : void
      {
         RingAnimPoolObj(obj).mcBack = null;
         RingAnimPoolObj(obj).mcDist = null;
         RingAnimPoolObj(obj).mcFront = null;
         RingAnimPoolObj(obj).mcGround = null;
         RingAnimPoolObj(obj).mcPoint = null;
         RingAnimPoolObj(obj).mcRef = null;
      }
      
      public function objectPoolCleanUp(obj:*) : void
      {
         if(obj.mcDist != null)
         {
            DisplayObjectUtils.stopAllMovieClips(RingAnimPoolObj(obj).mcDist,1);
            obj.mcDist.visible = true;
         }
         if(obj.mcFront != null)
         {
            DisplayObjectUtils.stopAllMovieClips(RingAnimPoolObj(obj).mcFront,1);
            obj.mcFront.visible = true;
         }
         if(obj.mcBack != null)
         {
            DisplayObjectUtils.stopAllMovieClips(RingAnimPoolObj(obj).mcBack,1);
            obj.mcBack.visible = true;
         }
         if(obj.mcGround != null)
         {
            DisplayObjectUtils.stopAllMovieClips(RingAnimPoolObj(obj).mcGround,1);
            obj.mcGround.visible = true;
         }
         if(obj.mcPoint != null)
         {
            DisplayObjectUtils.stopAllMovieClips(RingAnimPoolObj(obj).mcPoint,1);
            obj.mcPoint.visible = true;
         }
      }
      
      public function init() : void
      {
         var classBack:Class = null;
         var classDist:Class = null;
         var classFront:Class = null;
         var classGround:Class = null;
         var classPoint:Class = null;
         var mcDistAvatars:Array = null;
         if(this.type == "caster")
         {
            if(mcRef.getChildByName("cBack") != null)
            {
               classBack = Sprite(mcRef.getChildByName("cBack"))["constructor"];
            }
            if(mcRef.getChildByName("cDist") != null)
            {
               classDist = Sprite(mcRef.getChildByName("cDist"))["constructor"];
            }
            if(mcRef.getChildByName("cFront") != null)
            {
               classFront = Sprite(mcRef.getChildByName("cFront"))["constructor"];
            }
            if(mcRef.getChildByName("cGround") != null)
            {
               classGround = Sprite(mcRef.getChildByName("cGround"))["constructor"];
            }
         }
         else if(this.type == "target")
         {
            if(mcRef.getChildByName("tBack") != null)
            {
               classBack = Sprite(mcRef.getChildByName("tBack"))["constructor"];
            }
            if(mcRef.getChildByName("tDist") != null)
            {
               classDist = Sprite(mcRef.getChildByName("tDist"))["constructor"];
            }
            if(mcRef.getChildByName("tFront") != null)
            {
               classFront = Sprite(mcRef.getChildByName("tFront"))["constructor"];
            }
            if(mcRef.getChildByName("tGround") != null)
            {
               classGround = Sprite(mcRef.getChildByName("tGround"))["constructor"];
            }
         }
         else if(this.type == "effect")
         {
            if(mcRef.getChildByName("eBack") != null)
            {
               classBack = Sprite(mcRef.getChildByName("eBack"))["constructor"];
            }
            if(mcRef.getChildByName("eDist") != null)
            {
               classDist = Sprite(mcRef.getChildByName("eDist"))["constructor"];
            }
            if(mcRef.getChildByName("eFront") != null)
            {
               classFront = Sprite(mcRef.getChildByName("eFront"))["constructor"];
            }
            if(mcRef.getChildByName("eGround") != null)
            {
               classGround = Sprite(mcRef.getChildByName("eGround"))["constructor"];
            }
         }
         else if(this.type == "point")
         {
            if(mcRef.getChildByName("point"))
            {
               classPoint = Sprite(mcRef.getChildByName("point"))["constructor"];
            }
            if(mcRef.getChildByName("pointGround") != null)
            {
               classGround = Sprite(mcRef.getChildByName("pointGround"))["constructor"];
            }
         }
         if(classBack != null)
         {
            this.mcBack = new classBack();
            this._ringGarbageStopper.addGarbageStopper(this.mcBack);
         }
         if(classDist != null)
         {
            this.mcDist = new classDist();
            mcDistAvatars = this.mcDist.getAvatars();
            _ringGarbageStopperDist.addGarbageStopper(this.mcDist,mcDistAvatars);
         }
         if(classFront != null)
         {
            this.mcFront = new classFront();
            _ringGarbageStopper.addGarbageStopper(this.mcFront);
         }
         if(classGround != null)
         {
            this.mcGround = new classGround();
            _ringGarbageStopper.addGarbageStopper(this.mcGround);
         }
         if(classPoint != null)
         {
            this.mcPoint = new classPoint();
            _ringGarbageStopper.addGarbageStopper(this.mcPoint);
         }
      }
      
      public function initializeObjectPool(obj:*, args:Array = null) : void
      {
      }
      
      public function create() : *
      {
         var obj:RingAnimPoolObj = new RingAnimPoolObj(this.mcRef,this.type);
         obj.init();
         return obj;
      }
   }
}

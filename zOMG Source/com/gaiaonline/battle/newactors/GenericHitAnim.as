package com.gaiaonline.battle.newactors
{
   import com.gaiaonline.battle.ApplicationInterfaces.IAssetFactory;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   import flash.geom.Rectangle;
   
   public class GenericHitAnim extends MovieClip
   {
      
      private static const s_hitNumColorTransform:ColorTransform = new ColorTransform(0.5,0.5,0.5,1,0,0,0,0);
      
      private static const s_emptyColorTransform:ColorTransform = new ColorTransform();
       
      
      private var _mcHitCountNumbers:Sprite;
      
      private var _hitNumAnimCount:int = 0;
      
      private var _sparkPlaying:Boolean = false;
      
      private var _assetFactory:IAssetFactory;
      
      private var _lastHitNumMc:MovieClip;
      
      public function GenericHitAnim(assetFactory:IAssetFactory)
      {
         super();
         this.cacheAsBitmap = true;
         this._assetFactory = assetFactory;
      }
      
      public function miss() : void
      {
         var mc:MovieClip = this._assetFactory.checkOut("McMiss") as MovieClip;
         mc.cacheAsBitmap = true;
         mc.alpha = 1;
         mc.y = 0;
         this.addChild(mc);
         mc.addEventListener(Event.ENTER_FRAME,onMcAlphaEnterFrame);
      }
      
      public function deflects() : void
      {
         var mc:MovieClip = this._assetFactory.checkOut("McDeflects") as MovieClip;
         mc.cacheAsBitmap = true;
         mc.alpha = 1;
         mc.y = 0;
         this.addChild(mc);
         mc.addEventListener(Event.ENTER_FRAME,onMcAlphaEnterFrame);
      }
      
      public function hitCountNumber(num:int) : void
      {
         var n:MovieClip = null;
         if(this._mcHitCountNumbers == null)
         {
            this._mcHitCountNumbers = new Sprite();
            this.addChild(this._mcHitCountNumbers);
         }
         this._mcHitCountNumbers.y = 0;
         while(this._mcHitCountNumbers.numChildren > 0)
         {
            this._assetFactory.checkIn(this._mcHitCountNumbers.getChildAt(0));
            this._mcHitCountNumbers.removeChildAt(0);
         }
         var sNum:String = String(Math.abs(num));
         var nx:int = 0;
         for(var i:int = 0; i < sNum.length; i++)
         {
            n = this._assetFactory.checkOut("number_" + sNum.substr(i,1)) as MovieClip;
            n.gotoAndStop(1);
            n.x = nx;
            this._mcHitCountNumbers.addChild(n);
            nx = nx + n.width;
         }
         this._mcHitCountNumbers.scaleX = this._mcHitCountNumbers.scaleY = 0.7;
         this._mcHitCountNumbers.x = -this._mcHitCountNumbers.width / 2;
         this._mcHitCountNumbers.y = -10;
      }
      
      private function onMcNumberAnimEnterFrame(evt:Event) : void
      {
         var mc:MovieClip = evt.target as MovieClip;
         if(mc.currentLabel == "end")
         {
            if(mc.hasEventListener(Event.ENTER_FRAME))
            {
               mc.removeEventListener(Event.ENTER_FRAME,onMcNumberAnimEnterFrame);
            }
            if(this._mcHitCountNumbers.contains(mc))
            {
               this._mcHitCountNumbers.removeChild(mc);
            }
            this._hitNumAnimCount--;
            if(this._hitNumAnimCount <= 0)
            {
               this._hitNumAnimCount = 0;
               this._lastHitNumMc = null;
            }
            while(MovieClip(mc.mcContainer).numChildren > 0)
            {
               this._assetFactory.checkIn(MovieClip(mc.mcContainer).getChildAt(0));
               MovieClip(mc.mcContainer).removeChildAt(0);
            }
            mc.transform.colorTransform = s_emptyColorTransform;
            this._assetFactory.checkIn(mc);
         }
      }
      
      public function invalidTarget() : void
      {
         var mc:MovieClip = this._assetFactory.checkOut("McInvalidTarget") as MovieClip;
         mc.cacheAsBitmap = true;
         mc.alpha = 1;
         mc.y = 0;
         this.addChild(mc);
         mc.addEventListener(Event.ENTER_FRAME,onMcAlphaEnterFrame);
      }
      
      public function resists() : void
      {
         var mc:MovieClip = this._assetFactory.checkOut("McResists") as MovieClip;
         mc.cacheAsBitmap = true;
         mc.alpha = 1;
         mc.y = 0;
         this.addChild(mc);
         mc.addEventListener(Event.ENTER_FRAME,onMcAlphaEnterFrame);
      }
      
      public function hitNumber(num:int, type:int = 1) : void
      {
         var n:MovieClip = null;
         if(this._mcHitCountNumbers == null)
         {
            this._mcHitCountNumbers = new Sprite();
            this.addChild(this._mcHitCountNumbers);
         }
         if(type < 3)
         {
            this.spark();
         }
         if(type <= 0)
         {
            type = 1;
         }
         var mc:MovieClip = this._assetFactory.checkOut("McNumberAnim") as MovieClip;
         mc.cacheAsBitmap = true;
         var sNum:String = String(Math.abs(num));
         var nx:int = 0;
         for(var i:int = 0; i < sNum.length; i++)
         {
            n = this._assetFactory.checkOut("number_" + sNum.substr(i,1)) as MovieClip;
            n.cacheAsBitmap = true;
            n.gotoAndStop(type);
            n.x = nx;
            MovieClip(mc.mcContainer).addChild(n);
            nx = nx + n.width;
         }
         if(this._lastHitNumMc != null)
         {
            this._lastHitNumMc.transform.colorTransform = s_hitNumColorTransform;
         }
         mc.addEventListener(Event.ENTER_FRAME,onMcNumberAnimEnterFrame);
         mc.gotoAndPlay(1);
         var rec:Rectangle = mc.mcContainer.getBounds(mc.mcContainer);
         mc.x = -(rec.width / 2) - rec.left;
         mc.y = this._hitNumAnimCount * 15;
         this._mcHitCountNumbers.y = -(this._hitNumAnimCount * 15);
         this._hitNumAnimCount++;
         this._lastHitNumMc = mc;
         this._mcHitCountNumbers.addChild(mc);
      }
      
      private function onMcAlphaEnterFrame(evt:Event) : void
      {
         var mc:MovieClip = evt.target as MovieClip;
         mc.alpha = mc.alpha - 0.1;
         mc.y = mc.y - 5;
         if(mc.alpha <= 0)
         {
            if(mc.hasEventListener(Event.ENTER_FRAME))
            {
               mc.removeEventListener(Event.ENTER_FRAME,onMcAlphaEnterFrame);
            }
            if(this.contains(mc))
            {
               this.removeChild(mc);
            }
            this._assetFactory.checkIn(mc);
         }
      }
      
      public function dispose() : void
      {
         var mc:MovieClip = null;
         if(this._mcHitCountNumbers != null)
         {
            while(this._mcHitCountNumbers.numChildren > 0)
            {
               this._assetFactory.checkIn(this._mcHitCountNumbers.getChildAt(0));
               this._mcHitCountNumbers.removeChildAt(0);
               if(mc && mc.hasEventListener(Event.ENTER_FRAME))
               {
                  mc.removeEventListener(Event.ENTER_FRAME,onMcNumberAnimEnterFrame);
               }
            }
            if(this._mcHitCountNumbers.parent == this)
            {
               this.removeChild(this._mcHitCountNumbers);
            }
         }
         for(var i:int = 0; i < this.numChildren; i++)
         {
            mc = this.getChildAt(i) as MovieClip;
            if(mc.hasEventListener(Event.ENTER_FRAME))
            {
               mc.removeEventListener(Event.ENTER_FRAME,onMcNumberAnimEnterFrame);
            }
            if(mc.hasEventListener(Event.ENTER_FRAME))
            {
               mc.removeEventListener(Event.ENTER_FRAME,onMcAlphaEnterFrame);
            }
            if(mc.hasEventListener(Event.ENTER_FRAME))
            {
               mc.removeEventListener(Event.ENTER_FRAME,onMcEndEnterFrame);
            }
            if(mc["constructor"] == this._assetFactory.getClass("McNumberAnim"))
            {
               while(MovieClip(mc.mcContainer).numChildren > 0)
               {
                  this._assetFactory.checkIn(MovieClip(mc.mcContainer).getChildAt(0));
                  MovieClip(mc.mcContainer).removeChildAt(0);
               }
            }
            if(this.contains(mc))
            {
               this.removeChild(mc);
            }
            this._assetFactory.checkIn(mc);
         }
      }
      
      public function reflects() : void
      {
         var mc:MovieClip = this._assetFactory.checkOut("McReflects") as MovieClip;
         mc.cacheAsBitmap = true;
         mc.alpha = 1;
         mc.y = 0;
         this.addChild(mc);
         mc.addEventListener(Event.ENTER_FRAME,onMcAlphaEnterFrame);
      }
      
      public function outOfRange() : void
      {
         var mc:MovieClip = this._assetFactory.checkOut("McOutOfRange") as MovieClip;
         mc.cacheAsBitmap = true;
         mc.alpha = 1;
         mc.y = 0;
         this.addChild(mc);
         mc.addEventListener(Event.ENTER_FRAME,onMcAlphaEnterFrame);
      }
      
      private function onMcEndEnterFrame(evt:Event) : void
      {
         var mc:MovieClip = evt.target as MovieClip;
         if(mc.currentLabel == "end")
         {
            if(mc.hasEventListener(Event.ENTER_FRAME))
            {
               mc.removeEventListener(Event.ENTER_FRAME,onMcEndEnterFrame);
            }
            if(this.contains(mc))
            {
               this.removeChild(mc);
            }
            if(mc.hasOwnProperty("isSpark"))
            {
               mc.isSpark = false;
               this._sparkPlaying = false;
            }
            this._assetFactory.checkIn(mc);
         }
      }
      
      public function spark(type:String = "NormalHit") : void
      {
         var mc:MovieClip = null;
         if(!this._sparkPlaying)
         {
            this._sparkPlaying = true;
            mc = this._assetFactory.checkOut("McSpark") as MovieClip;
            mc.isSpark = true;
            mc.cacheAsBitmap = true;
            this.addChild(mc);
            mc.gotoAndPlay(type);
            mc.addEventListener(Event.ENTER_FRAME,onMcEndEnterFrame);
         }
      }
   }
}

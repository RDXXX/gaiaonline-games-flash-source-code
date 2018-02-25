package com.gaiaonline.battle.newactors
{
   import com.gaiaonline.utils.FrameTimer;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.geom.Matrix;
   
   public class BaseAvatar extends Sprite
   {
       
      
      private var img:Bitmap;
      
      private var pose:String = "stand";
      
      private var top:Sprite;
      
      public var facingUp:Boolean = false;
      
      private var mTop:Matrix;
      
      private var bottom:Sprite;
      
      private var wFrame:int = 6;
      
      private var _frameTimer:FrameTimer;
      
      private var bmd:BitmapData;
      
      private var mBottom:Matrix;
      
      public function BaseAvatar(bmd:BitmapData)
      {
         mTop = new Matrix();
         mBottom = new Matrix();
         _frameTimer = new FrameTimer(enterFrameListener);
         super();
         this.bmd = bmd;
         this.initAv();
         this.mouseEnabled = false;
         this.mouseChildren = false;
      }
      
      private function enterFrameListener() : void
      {
         if(this.pose == "walk")
         {
            this.drawBottom(wFrame);
            this.wFrame++;
            if(this.wFrame > 9)
            {
               this.wFrame = 6;
            }
         }
      }
      
      private function drawBottom(frame:int = 0) : void
      {
         mBottom.identity();
         mBottom.translate(-(frame * 120),0);
         this.bottom.graphics.clear();
         this.bottom.graphics.beginBitmapFill(this.bmd,mBottom);
         this.bottom.graphics.drawRect(0,0,120,150);
         this.bottom.graphics.endFill();
      }
      
      private function setPose(pose:String) : void
      {
         var offset:int = 0;
         if(this.facingUp)
         {
            offset = 120;
         }
         if(pose == "stand")
         {
            if(this.facingUp)
            {
               this.drawTop(5);
            }
            else
            {
               this.drawTop(4);
            }
            this.top.y = 0;
            this.bottom.visible = false;
         }
         else if(pose == "sit")
         {
            if(this.facingUp)
            {
               this.drawTop(3);
            }
            else
            {
               this.drawTop(2);
            }
            this.top.y = 20;
            this.bottom.visible = false;
         }
         else if(pose == "walk")
         {
            if(this.facingUp)
            {
               this.drawTop(1);
            }
            else
            {
               this.drawTop(0);
            }
            this.top.y = 0;
            this.bottom.visible = true;
         }
      }
      
      public function faceUp() : void
      {
         if(!this.facingUp)
         {
            this.facingUp = true;
            this.setZIndex();
            this.setPose(this.pose);
         }
      }
      
      public function stand() : void
      {
         if(this.pose != "stand")
         {
            this.pose = "stand";
            this._frameTimer.stop();
            this.setPose(this.pose);
         }
      }
      
      public function sit() : void
      {
         if(this.pose != "sit")
         {
            this.pose = "sit";
            this._frameTimer.stop();
            this.setPose(this.pose);
         }
      }
      
      public function faceDown() : void
      {
         if(this.facingUp)
         {
            this.facingUp = false;
            this.setZIndex();
            this.setPose(this.pose);
         }
      }
      
      public function walk() : void
      {
         if(this.pose != "walk")
         {
            this.pose = "walk";
            this.setPose(this.pose);
            this._frameTimer.startPerFrame();
         }
      }
      
      public function initAv() : void
      {
         this.top = new Sprite();
         this.bottom = new Sprite();
         this.drawTop(4);
         this.drawBottom(6);
         this.addChild(this.top);
         this.addChild(this.bottom);
         this.facingUp = false;
         this.pose = "stand";
         this.setZIndex();
         this.setPose(this.pose);
      }
      
      public function dispose() : void
      {
         this.pose = "stand";
         this.setPose(this.pose);
         this._frameTimer.stop();
      }
      
      public function updateBitmapData(bmd:BitmapData) : void
      {
         this.bmd = bmd;
         this.setPose(this.pose);
         this.drawBottom(this.wFrame);
      }
      
      private function drawTop(frame:int = 0) : void
      {
         this.mTop.identity();
         mTop.translate(-(frame * 120),0);
         this.top.graphics.clear();
         this.top.graphics.beginBitmapFill(this.bmd,mTop);
         this.top.graphics.drawRect(0,0,120,150);
         this.top.graphics.endFill();
      }
      
      private function setZIndex() : void
      {
      }
   }
}

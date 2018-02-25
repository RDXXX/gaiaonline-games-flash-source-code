package com.gaiaonline.display.wordbubble
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.getTimer;
   
   public class ChatBubble extends Sprite implements IBubble
   {
      
      private static var colorsMap:Object = new Object();
       
      
      private var tPos:Point;
      
      private var size:Point;
      
      private var maxMsg:int = 3;
      
      private var nameLable;
      
      private var bubbleContainer:Sprite;
      
      private var lappet:MovieClip;
      
      private var posArray:Array;
      
      private var bubbles:Array;
      
      private var mcBounds:Sprite;
      
      private var myMcActor:Sprite;
      
      private var mcSize:Sprite;
      
      private var type:String = "";
      
      private var firstRun:Boolean = true;
      
      private var userName:String;
      
      public function ChatBubble()
      {
         size = new Point(0,0);
         super();
         this.bubbles = new Array();
         this.bubbleContainer = new Sprite();
         this.hitArea = null;
         this.mouseEnabled = false;
         this.mouseChildren = false;
         colorsMap["room"] = 3355443;
         colorsMap["area"] = 16744319;
         colorsMap["team"] = 8355839;
         colorsMap["whisper"] = 16744447;
         colorsMap["clan"] = 16711680;
      }
      
      private function onEnterFrame(evt:Event) : void
      {
         var tx:int = 0;
         var ty:int = 0;
         var dx:int = 0;
         var dy:int = 0;
         var dist:int = 0;
         var angle:Number = NaN;
         var vx:int = 0;
         var vy:int = 0;
         if(this.bubbles.length > 0)
         {
            if(getTimer() > this.bubbles[0].time)
            {
               this.removeTopBubble();
            }
         }
         else
         {
            this.removeEventListener(Event.ENTER_FRAME,onEnterFrame);
         }
         if(this.myMcActor != null)
         {
            this.tPos = this.getTargetPos();
            if(this.x != tPos.x || this.y != tPos.y)
            {
               tx = tPos.x;
               ty = tPos.y;
               dx = tx - this.x;
               dy = ty - this.y;
               dist = Math.sqrt(dx * dx + dy * dy);
               if(dist >= 3)
               {
                  angle = Math.atan2(dy,dx);
                  vx = dist / 2 * Math.cos(angle);
                  vy = dist / 2 * Math.sin(angle);
                  this.x = this.x + vx;
                  this.y = this.y + vy;
               }
               else
               {
                  this.x = tPos.x;
                  this.y = tPos.y;
               }
            }
            this.setLappet();
         }
      }
      
      public function get mcActor() : Sprite
      {
         return this.myMcActor;
      }
      
      private function getTargetPos() : Point
      {
         var pOk:Boolean = false;
         var p:int = 0;
         var offset:Point = null;
         var x:int = 0;
         var y:int = 0;
         var myr:Rectangle = null;
         var outOfBound:* = false;
         var rBounds:Rectangle = null;
         var wbok:Boolean = false;
         var i:int = 0;
         var wb:* = undefined;
         var r:Rectangle = null;
         if(this.parent != null)
         {
            if(this.firstRun)
            {
               this.addChild(this.bubbleContainer);
               this.addChild(this.nameLable);
               this.firstRun = false;
               this.setArray();
               this.setPos();
            }
            pOk = false;
            for(p = 0; p < this.posArray.length; p++)
            {
               offset = this.posArray[p];
               x = this.myMcActor.x + offset.x;
               y = this.myMcActor.y + offset.y;
               myr = new Rectangle(x,y,this.width,this.height);
               outOfBound = false;
               if(this.mcBounds != null)
               {
                  rBounds = this.mcBounds.getBounds(this.parent);
                  outOfBound = !rBounds.containsRect(myr);
               }
               if(!outOfBound)
               {
                  wbok = true;
                  for(i = 0; i < this.parent.numChildren; i++)
                  {
                     wb = this.parent.getChildAt(i);
                     if(wb != this)
                     {
                        r = wb.getBubbleBounds();
                        if(myr.intersects(r))
                        {
                           wbok = false;
                           break;
                        }
                     }
                  }
                  if(wbok)
                  {
                     pOk = true;
                     break;
                  }
               }
               else
               {
                  pOk = false;
               }
            }
            if(!pOk)
            {
               offset = this.posArray[0];
               x = this.myMcActor.x + offset.x;
               y = this.myMcActor.y + offset.y;
            }
         }
         return new Point(x,y);
      }
      
      public function removeText() : void
      {
         this.dispatchEvent(new BubbleEvent(BubbleEvent.DONE,this.myMcActor));
         this.dispose();
      }
      
      private function setPos() : void
      {
         var tp:Point = null;
         if(this.myMcActor != null)
         {
            tp = getTargetPos();
            this.x = tp.x;
            this.y = tp.y;
         }
      }
      
      private function setArray() : void
      {
         var r:Rectangle = null;
         var c:Point = null;
         var h:int = 0;
         var w:int = 0;
         if(this.mcSize != null)
         {
            this.posArray = new Array();
            r = this.mcSize.getBounds(this.mcActor);
            c = new Point(r.left + r.width / 2,r.top + r.height / 2);
            h = this.bubbleContainer.height + this.nameLable.height / 2;
            w = this.bubbleContainer.width;
            this.posArray.push(new Point(c.x,c.y - this.size.y / 2 - h));
            this.posArray.push(new Point(c.x + this.size.x / 2,c.y - this.size.y / 2 - h));
            this.posArray.push(new Point(c.x - w,c.y - this.size.y / 2 - h));
            this.posArray.push(new Point(c.x - this.size.x / 2 - w,c.y - this.size.y / 2 - h));
            this.posArray.push(new Point(c.x - this.size.x / 2 - w,c.y - this.size.y * 0.25 - h));
            this.posArray.push(new Point(c.x + this.size.x / 2,c.y - this.size.y * 0.25 - h));
            this.posArray.push(new Point(c.x - this.size.x / 2 - w,c.y + this.size.y * 0.25 - h));
            this.posArray.push(new Point(c.x + this.size.x / 2,c.y + this.size.y * 0.25 - h));
            this.posArray.push(new Point(c.x,c.y + this.size.y / 2));
            this.posArray.push(new Point(c.x + this.size.x / 2,c.y + this.size.y / 2));
            this.posArray.push(new Point(c.x - w,c.y + this.size.y / 2));
            this.posArray.push(new Point(c.x - this.size.x / 2 - w,c.y + this.size.y / 2));
         }
      }
      
      private function onActorGone(evt:Event) : void
      {
         this.dispatchEvent(new BubbleEvent(BubbleEvent.DONE,this.myMcActor));
         this.dispose();
      }
      
      public function setBubble(userName:String, mcActor:Sprite, mcSize:Sprite = null, mcBounds:Sprite = null, maxMessages:int = 3) : void
      {
         this.userName = userName;
         this.myMcActor = mcActor;
         if(mcSize == null)
         {
            this.mcSize = mcActor;
         }
         else
         {
            this.mcSize = mcSize;
         }
         this.size = new Point(this.mcSize.width,this.mcSize.height);
         this.mcBounds = mcBounds;
         this.maxMsg = maxMessages;
         this.nameLable = new NameLabel();
         var tf:TextField = new TextField();
         tf.mouseEnabled = false;
         tf.autoSize = TextFieldAutoSize.LEFT;
         tf.htmlText = this.userName;
         if(tf.width <= 122)
         {
            TextField(this.nameLable.txtName).autoSize = TextFieldAutoSize.LEFT;
         }
         else
         {
            TextField(this.nameLable.txtName).autoSize = TextFieldAutoSize.NONE;
         }
         TextField(this.nameLable.txtName).htmlText = this.userName;
         this.nameLable.bubble.width = TextField(this.nameLable.txtName).width + 10;
         this.addEventListener(Event.ENTER_FRAME,onEnterFrame);
         this.myMcActor.addEventListener(Event.REMOVED_FROM_STAGE,onActorGone);
      }
      
      public function getBubbleBounds() : Rectangle
      {
         var offset:Point = null;
         var x:int = 0;
         var y:int = 0;
         var r:Rectangle = new Rectangle();
         if(this.posArray != null)
         {
            if(tPos == null)
            {
               offset = this.posArray[0];
               x = this.myMcActor.x - this.size.x / 2 + offset.x;
               y = this.myMcActor.y - this.size.y * 0.75 - this.height + offset.y;
               this.tPos = new Point(x,y);
            }
            r = new Rectangle(tPos.x,tPos.y,this.width,this.height);
         }
         return r;
      }
      
      public function dispose() : void
      {
         this.removeEventListener(Event.ENTER_FRAME,onEnterFrame);
         this.myMcActor = null;
         this.mcSize = null;
         this.size = null;
         this.bubbles = new Array();
      }
      
      private function setLappet() : void
      {
         if(this.lappet == null)
         {
            this.lappet = new Lappet();
            this.addChild(this.lappet);
            this.setChildIndex(this.lappet,this.numChildren - 1);
         }
         var lappetStroke:MovieClip = lappet.lappetStroke;
         var ct:ColorTransform = lappetStroke.transform.colorTransform;
         ct.color = colorsMap[type];
         lappetStroke.transform.colorTransform = ct;
         var r:Rectangle = this.myMcActor.getBounds(this.myMcActor);
         var rc:Point = new Point(r.x + this.size.x / 2,r.y + this.size.y / 2);
         if(this.y + this.height > this.myMcActor.y - rc.y + this.size.y)
         {
            this.lappet.visible = false;
         }
         else
         {
            this.lappet.visible = true;
         }
         this.lappet.y = Math.round(this.bubbleContainer.y + this.bubbleContainer.height + this.nameLable.height / 2);
         var c:int = this.bubbleContainer.width / 2;
         var d:int = this.x + c - (this.myMcActor.x + rc.x);
         this.lappet.x = c - d;
         if(this.lappet.x >= this.bubbleContainer.width / 2)
         {
            this.lappet.scaleX = -1;
         }
         else
         {
            this.lappet.scaleX = 1;
         }
         if(this.lappet.x < this.lappet.width)
         {
            this.lappet.x = this.lappet.width;
         }
         else if(this.lappet.x > this.bubbleContainer.width - this.lappet.width)
         {
            this.lappet.x = this.bubbleContainer.width - this.lappet.width;
         }
      }
      
      public function addText(txt:String, type:String = "") : void
      {
         if(colorsMap[type] == undefined)
         {
            type = "room";
         }
         this.type = type;
         var wb:WordBubble = new WordBubble();
         wb.mouseEnabled = false;
         wb.mouseChildren = false;
         var bubbleStroke:MovieClip = wb.bubble.bubbleStroke;
         var ct:ColorTransform = bubbleStroke.transform.colorTransform;
         ct.color = colorsMap[type];
         bubbleStroke.transform.colorTransform = ct;
         TextField(wb.txtChat).autoSize = TextFieldAutoSize.LEFT;
         TextField(wb.txtChat).text = txt;
         if(this.bubbles.length == 0)
         {
            TextField(wb.txtChat).y = this.nameLable.height / 2;
            wb.bubble.height = Math.round(TextField(wb.txtChat).textHeight + 10 + this.nameLable.height / 2);
            wb.y = Math.round(this.nameLable.height / 2);
            this.addEventListener(Event.ENTER_FRAME,onEnterFrame);
         }
         else
         {
            TextField(wb.txtChat).y = 4;
            wb.bubble.height = Math.round(TextField(wb.txtChat).textHeight + 12);
            wb.y = Math.round(this.bubbleContainer.height - 1 + this.nameLable.height / 2);
         }
         var readTime:int = txt.length * 70;
         var readCurved:int = -1 / (200 * 60) * readTime * readTime + 2 * readTime;
         var lifespan:int = Math.max(Math.max(readCurved + 400,3400),readTime);
         wb.time = getTimer() + lifespan;
         this.bubbles.push(wb);
         this.bubbleContainer.addChild(wb);
         if(this.bubbles.length > this.maxMsg)
         {
            this.removeTopBubble();
         }
         setArray();
      }
      
      private function removeTopBubble() : void
      {
         var y:int = 0;
         var i:int = 0;
         var h:int = Sprite(this.bubbles[0]).height;
         this.bubbleContainer.removeChild(Sprite(this.bubbles[0]));
         this.bubbles.shift();
         if(this.bubbles.length > 0)
         {
            this.bubbles[0].bubble.height = TextField(this.bubbles[0].txtChat).textHeight + 10 + this.nameLable.height / 2;
            TextField(this.bubbles[0].txtChat).y = this.nameLable.height / 2;
            y = Math.round(this.nameLable.height / 2);
            for(i = 0; i < this.bubbles.length; i++)
            {
               Sprite(this.bubbles[i]).y = y;
               y = y + Math.round(Sprite(this.bubbles[i]).height - 1);
               this.setArray();
            }
         }
         else
         {
            this.dispatchEvent(new BubbleEvent(BubbleEvent.DONE,this.myMcActor));
         }
      }
   }
}

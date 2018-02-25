package com.gaiaonline.display.wordbubble
{
   import com.gaiaworld.global.model.GlobalModel;
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
       
      
      private var nameLable;
      
      private var bubbles:Array;
      
      private var userName:String;
      
      private var maxMsg:int = 3;
      
      private var bubbleContainer:Sprite;
      
      private var myMcActor:Sprite;
      
      private var mcSize:Sprite;
      
      private var size:Point;
      
      private var type:String = "";
      
      private var posArray:Array;
      
      private var tPos:Point;
      
      private var mcBounds:Sprite;
      
      private var firstRun:Boolean = true;
      
      private var lappet:MovieClip;
      
      public function ChatBubble()
      {
         this.size = new Point(0,0);
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
      
      public function setBubble(param1:String, param2:Sprite, param3:Sprite = null, param4:Sprite = null, param5:int = 3) : void
      {
         this.userName = param1;
         this.myMcActor = param2;
         if(param3 == null)
         {
            this.mcSize = param2;
         }
         else
         {
            this.mcSize = param3;
         }
         this.size = new Point(this.mcSize.width,this.mcSize.height);
         this.mcBounds = param4;
         this.maxMsg = param5;
         this.nameLable = new NameLabel();
         var _loc6_:TextField = new TextField();
         _loc6_.mouseEnabled = false;
         _loc6_.autoSize = TextFieldAutoSize.LEFT;
         _loc6_.htmlText = this.userName;
         if(_loc6_.width <= 122)
         {
            TextField(this.nameLable.txtName).autoSize = TextFieldAutoSize.LEFT;
         }
         else
         {
            TextField(this.nameLable.txtName).autoSize = TextFieldAutoSize.NONE;
         }
         TextField(this.nameLable.txtName).htmlText = this.userName;
         this.nameLable.bubble.width = TextField(this.nameLable.txtName).width + 10;
         this.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         this.myMcActor.addEventListener(Event.REMOVED_FROM_STAGE,this.onActorGone);
      }
      
      private function onActorGone(param1:Event) : void
      {
         this.dispatchEvent(new BubbleEvent(BubbleEvent.DONE,this.myMcActor));
         this.dispose();
      }
      
      public function addText(param1:String, param2:String = "") : void
      {
         if(colorsMap[param2] == undefined)
         {
            param2 = "room";
         }
         this.type = param2;
         var _loc3_:WordBubble = new WordBubble();
         _loc3_.mouseEnabled = false;
         _loc3_.mouseChildren = false;
         var _loc4_:MovieClip = _loc3_.bubble.bubbleStroke;
         var _loc5_:ColorTransform = _loc4_.transform.colorTransform;
         _loc5_.color = colorsMap[param2];
         _loc4_.transform.colorTransform = _loc5_;
         var _loc6_:GlobalModel = GlobalModel.getInstance();
         TextField(_loc3_.txtChat).embedFonts = _loc6_.useEmbed;
         TextField(_loc3_.txtChat).rotation = 0;
         TextField(_loc3_.txtChat).autoSize = TextFieldAutoSize.LEFT;
         TextField(_loc3_.txtChat).text = param1;
         if(this.bubbles.length == 0)
         {
            TextField(_loc3_.txtChat).y = this.nameLable.height / 2;
            _loc3_.bubble.height = Math.round(TextField(_loc3_.txtChat).textHeight + 10 + this.nameLable.height / 2);
            _loc3_.y = Math.round(this.nameLable.height / 2);
            this.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         }
         else
         {
            TextField(_loc3_.txtChat).y = 4;
            _loc3_.bubble.height = Math.round(TextField(_loc3_.txtChat).textHeight + 12);
            _loc3_.y = Math.round(this.bubbleContainer.height - 1 + this.nameLable.height / 2);
         }
         var _loc7_:int = param1.length * 70;
         var _loc8_:int = -1 / (200 * 60) * _loc7_ * _loc7_ + 2 * _loc7_;
         var _loc9_:int = Math.max(Math.max(_loc8_ + 400,3400),_loc7_);
         _loc3_.time = getTimer() + _loc9_;
         this.bubbles.push(_loc3_);
         this.bubbleContainer.addChild(_loc3_);
         if(this.bubbles.length > this.maxMsg)
         {
            this.removeTopBubble();
         }
         this.setArray();
      }
      
      public function removeText() : void
      {
         this.dispatchEvent(new BubbleEvent(BubbleEvent.DONE,this.myMcActor));
         this.dispose();
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         if(this.bubbles.length > 0)
         {
            if(getTimer() > this.bubbles[0].time)
            {
               this.removeTopBubble();
            }
         }
         else
         {
            this.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         }
         if(this.myMcActor != null)
         {
            this.tPos = this.getTargetPos();
            if(this.x != this.tPos.x || this.y != this.tPos.y)
            {
               _loc2_ = this.tPos.x;
               _loc3_ = this.tPos.y;
               _loc4_ = _loc2_ - this.x;
               _loc5_ = _loc3_ - this.y;
               _loc6_ = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
               if(_loc6_ >= 3)
               {
                  _loc7_ = Math.atan2(_loc5_,_loc4_);
                  _loc8_ = _loc6_ / 2 * Math.cos(_loc7_);
                  _loc9_ = _loc6_ / 2 * Math.sin(_loc7_);
                  this.x = this.x + _loc8_;
                  this.y = this.y + _loc9_;
               }
               else
               {
                  this.x = this.tPos.x;
                  this.y = this.tPos.y;
               }
            }
            this.setLappet();
         }
      }
      
      private function setPos() : void
      {
         var _loc1_:Point = null;
         if(this.myMcActor != null)
         {
            _loc1_ = this.getTargetPos();
            this.x = _loc1_.x;
            this.y = _loc1_.y;
         }
      }
      
      private function setArray() : void
      {
         var _loc1_:Rectangle = null;
         var _loc2_:Point = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.mcSize != null)
         {
            this.posArray = new Array();
            _loc1_ = this.mcSize.getBounds(this.mcActor);
            _loc2_ = new Point(_loc1_.left + _loc1_.width / 2,_loc1_.top + _loc1_.height / 2);
            _loc3_ = this.bubbleContainer.height + this.nameLable.height / 2;
            _loc4_ = this.bubbleContainer.width;
            this.posArray.push(new Point(_loc2_.x,_loc2_.y - this.size.y / 2 - _loc3_));
            this.posArray.push(new Point(_loc2_.x + this.size.x / 2,_loc2_.y - this.size.y / 2 - _loc3_));
            this.posArray.push(new Point(_loc2_.x - _loc4_,_loc2_.y - this.size.y / 2 - _loc3_));
            this.posArray.push(new Point(_loc2_.x - this.size.x / 2 - _loc4_,_loc2_.y - this.size.y / 2 - _loc3_));
            this.posArray.push(new Point(_loc2_.x - this.size.x / 2 - _loc4_,_loc2_.y - this.size.y * 0.25 - _loc3_));
            this.posArray.push(new Point(_loc2_.x + this.size.x / 2,_loc2_.y - this.size.y * 0.25 - _loc3_));
            this.posArray.push(new Point(_loc2_.x - this.size.x / 2 - _loc4_,_loc2_.y + this.size.y * 0.25 - _loc3_));
            this.posArray.push(new Point(_loc2_.x + this.size.x / 2,_loc2_.y + this.size.y * 0.25 - _loc3_));
            this.posArray.push(new Point(_loc2_.x,_loc2_.y + this.size.y / 2));
            this.posArray.push(new Point(_loc2_.x + this.size.x / 2,_loc2_.y + this.size.y / 2));
            this.posArray.push(new Point(_loc2_.x - _loc4_,_loc2_.y + this.size.y / 2));
            this.posArray.push(new Point(_loc2_.x - this.size.x / 2 - _loc4_,_loc2_.y + this.size.y / 2));
         }
      }
      
      private function getTargetPos() : Point
      {
         var _loc1_:Boolean = false;
         var _loc2_:int = 0;
         var _loc3_:Point = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:Rectangle = null;
         var _loc7_:* = false;
         var _loc8_:Rectangle = null;
         var _loc9_:Boolean = false;
         var _loc10_:int = 0;
         var _loc11_:* = undefined;
         var _loc12_:Rectangle = null;
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
            _loc1_ = false;
            _loc2_ = 0;
            while(_loc2_ < this.posArray.length)
            {
               _loc3_ = this.posArray[_loc2_];
               _loc4_ = this.myMcActor.x + _loc3_.x;
               _loc5_ = this.myMcActor.y + _loc3_.y;
               _loc6_ = new Rectangle(_loc4_,_loc5_,this.width,this.height);
               _loc7_ = false;
               if(this.mcBounds != null)
               {
                  _loc8_ = this.mcBounds.getBounds(this.parent);
                  _loc7_ = !_loc8_.containsRect(_loc6_);
               }
               if(!_loc7_)
               {
                  _loc9_ = true;
                  _loc10_ = 0;
                  while(_loc10_ < this.parent.numChildren)
                  {
                     _loc11_ = this.parent.getChildAt(_loc10_);
                     if(_loc11_ != this)
                     {
                        _loc12_ = _loc11_.getBubbleBounds();
                        if(_loc6_.intersects(_loc12_))
                        {
                           _loc9_ = false;
                           break;
                        }
                     }
                     _loc10_++;
                  }
                  if(_loc9_)
                  {
                     _loc1_ = true;
                     break;
                  }
               }
               else
               {
                  _loc1_ = false;
               }
               _loc2_++;
            }
            if(!_loc1_)
            {
               _loc3_ = this.posArray[0];
               _loc4_ = this.myMcActor.x + _loc3_.x;
               _loc5_ = this.myMcActor.y + _loc3_.y;
            }
         }
         return new Point(_loc4_,_loc5_);
      }
      
      private function setLappet() : void
      {
         if(this.lappet == null)
         {
            this.lappet = new Lappet();
            this.addChild(this.lappet);
            this.setChildIndex(this.lappet,this.numChildren - 1);
         }
         var _loc1_:MovieClip = this.lappet.lappetStroke;
         var _loc2_:ColorTransform = _loc1_.transform.colorTransform;
         _loc2_.color = colorsMap[this.type];
         _loc1_.transform.colorTransform = _loc2_;
         var _loc3_:Rectangle = this.myMcActor.getBounds(this.myMcActor);
         var _loc4_:Point = new Point(_loc3_.x + this.size.x / 2,_loc3_.y + this.size.y / 2);
         if(this.y + this.height > this.myMcActor.y - _loc4_.y + this.size.y)
         {
            this.lappet.visible = false;
         }
         else
         {
            this.lappet.visible = true;
         }
         this.lappet.y = Math.round(this.bubbleContainer.y + this.bubbleContainer.height + this.nameLable.height / 2);
         var _loc5_:int = this.bubbleContainer.width / 2;
         var _loc6_:int = this.x + _loc5_ - (this.myMcActor.x + _loc4_.x);
         this.lappet.x = _loc5_ - _loc6_;
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
      
      private function removeTopBubble() : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc1_:int = Sprite(this.bubbles[0]).height;
         this.bubbleContainer.removeChild(Sprite(this.bubbles[0]));
         this.bubbles.shift();
         if(this.bubbles.length > 0)
         {
            this.bubbles[0].bubble.height = TextField(this.bubbles[0].txtChat).textHeight + 10 + this.nameLable.height / 2;
            TextField(this.bubbles[0].txtChat).y = this.nameLable.height / 2;
            _loc2_ = Math.round(this.nameLable.height / 2);
            _loc3_ = 0;
            while(_loc3_ < this.bubbles.length)
            {
               Sprite(this.bubbles[_loc3_]).y = _loc2_;
               _loc2_ = _loc2_ + Math.round(Sprite(this.bubbles[_loc3_]).height - 1);
               this.setArray();
               _loc3_++;
            }
         }
         else
         {
            this.dispatchEvent(new BubbleEvent(BubbleEvent.DONE,this.myMcActor));
         }
      }
      
      public function dispose() : void
      {
         this.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         this.myMcActor = null;
         this.mcSize = null;
         this.size = null;
         this.bubbles = new Array();
      }
      
      public function getBubbleBounds() : Rectangle
      {
         var _loc2_:Point = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:Rectangle = new Rectangle();
         if(this.posArray != null)
         {
            if(this.tPos == null)
            {
               _loc2_ = this.posArray[0];
               _loc3_ = this.myMcActor.x - this.size.x / 2 + _loc2_.x;
               _loc4_ = this.myMcActor.y - this.size.y * 0.75 - this.height + _loc2_.y;
               this.tPos = new Point(_loc3_,_loc4_);
            }
            _loc1_ = new Rectangle(this.tPos.x,this.tPos.y,this.width,this.height);
         }
         return _loc1_;
      }
      
      public function get mcActor() : Sprite
      {
         return this.myMcActor;
      }
   }
}

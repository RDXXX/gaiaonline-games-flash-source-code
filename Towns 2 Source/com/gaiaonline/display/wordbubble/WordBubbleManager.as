package com.gaiaonline.display.wordbubble
{
   import flash.display.Sprite;
   import flash.events.EventDispatcher;
   import flash.utils.Dictionary;
   
   public class WordBubbleManager extends EventDispatcher
   {
      
      public static const LOADED:String = "WordBubbleLoaded";
       
      
      private var wbContainer:Sprite;
      
      private var chatBubbleClass:Class;
      
      private var wordBubbles:Dictionary;
      
      private var mcBounds:Sprite;
      
      private var chatBubbleFile:String;
      
      public function WordBubbleManager(param1:Sprite, param2:Sprite = null)
      {
         super();
         this.wbContainer = param1;
         this.mcBounds = param2;
         this.wordBubbles = new Dictionary(true);
      }
      
      public function setBounds(param1:Sprite) : void
      {
         this.mcBounds = param1;
      }
      
      public function addText(param1:String, param2:String, param3:Sprite, param4:Sprite = null, param5:String = "") : void
      {
         var _loc6_:ChatBubble = null;
         if(this.wordBubbles[param3] != null)
         {
            this.wordBubbles[param3].addText(param2,param5);
         }
         else
         {
            _loc6_ = new ChatBubble();
            _loc6_.addEventListener(BubbleEvent.DONE,this.onWbDone);
            _loc6_.setBubble(param1,param3,param4,this.mcBounds);
            _loc6_.addText(param2,param5);
            this.wbContainer.addChild(_loc6_);
            this.wordBubbles[param3] = _loc6_;
         }
      }
      
      public function removeText(param1:Sprite) : void
      {
         if(this.wordBubbles[param1] != null)
         {
            ChatBubble(this.wordBubbles[param1]).removeText();
         }
      }
      
      private function onWbDone(param1:BubbleEvent) : void
      {
         this.disposeBubble(ChatBubble(param1.target),true);
      }
      
      public function clear() : void
      {
         var _loc1_:ChatBubble = null;
         for each(_loc1_ in this.wordBubbles)
         {
            this.disposeBubble(_loc1_,false);
         }
         this.wordBubbles = new Dictionary();
      }
      
      private function disposeBubble(param1:ChatBubble, param2:Boolean = true) : void
      {
         if(param1)
         {
            if(param1.parent == this.wbContainer)
            {
               this.wbContainer.removeChild(param1);
            }
            if(param2)
            {
               delete this.wordBubbles[param1.mcActor];
            }
            param1.dispose();
         }
      }
   }
}

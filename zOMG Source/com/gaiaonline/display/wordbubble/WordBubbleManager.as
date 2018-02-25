package com.gaiaonline.display.wordbubble
{
   import flash.display.Sprite;
   import flash.events.EventDispatcher;
   import flash.utils.Dictionary;
   
   public class WordBubbleManager extends EventDispatcher
   {
      
      public static const LOADED:String = "WordBubbleLoaded";
       
      
      private var chatBubbleFile:String;
      
      private var wordBubbles:Dictionary;
      
      private var mcBounds:Sprite;
      
      private var chatBubbleClass:Class;
      
      private var wbContainer:Sprite;
      
      public function WordBubbleManager(wbContainer:Sprite, mcBounds:Sprite = null)
      {
         super();
         this.wbContainer = wbContainer;
         this.mcBounds = mcBounds;
         this.wordBubbles = new Dictionary(true);
      }
      
      public function clear() : void
      {
         var chatBubble:ChatBubble = null;
         for each(chatBubble in this.wordBubbles)
         {
            disposeBubble(chatBubble,false);
         }
         wordBubbles = new Dictionary();
      }
      
      public function addText(actorName:String, txt:String, mcActor:Sprite, sizeRef:Sprite = null, type:String = "") : void
      {
         var cb:ChatBubble = null;
         if(this.wordBubbles[mcActor] != null)
         {
            this.wordBubbles[mcActor].addText(txt,type);
         }
         else
         {
            cb = new ChatBubble();
            cb.addEventListener(BubbleEvent.DONE,onWbDone);
            cb.setBubble(actorName,mcActor,sizeRef,this.mcBounds);
            cb.addText(txt,type);
            this.wbContainer.addChild(cb);
            this.wordBubbles[mcActor] = cb;
         }
      }
      
      public function removeText(mcActor:Sprite) : void
      {
         if(this.wordBubbles[mcActor] != null)
         {
            ChatBubble(this.wordBubbles[mcActor]).removeText();
         }
      }
      
      private function disposeBubble(chatBubble:ChatBubble, deleteFromDictionary:Boolean = true) : void
      {
         if(chatBubble)
         {
            if(chatBubble.parent == wbContainer)
            {
               this.wbContainer.removeChild(chatBubble);
            }
            if(deleteFromDictionary)
            {
               delete wordBubbles[chatBubble.mcActor];
            }
            chatBubble.dispose();
         }
      }
      
      public function setBounds(mcBounds:Sprite) : void
      {
         this.mcBounds = mcBounds;
      }
      
      private function onWbDone(evt:BubbleEvent) : void
      {
         disposeBubble(ChatBubble(evt.target),true);
      }
   }
}

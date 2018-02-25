package com.gaiaonline.battle.emotes
{
   import com.gaiaonline.battle.ApplicationInterfaces.IUIFramework;
   import com.gaiaonline.flexModulesAPIs.globalevent.GlobalEvent;
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class EmoteManagerOld
   {
       
      
      private var _uiFramework:IUIFramework = null;
      
      private var displayLayer:Sprite;
      
      private var _emotes:Object;
      
      private var _baseUrl:String = null;
      
      public function EmoteManagerOld(uiFramework:IUIFramework, baseUrl:String)
      {
         _emotes = {};
         super();
         this.init(uiFramework,baseUrl);
      }
      
      private function getEmote(id:String) : EmoteOld
      {
         var e:EmoteOld = null;
         if(this._emotes[id] != null)
         {
            e = this._emotes[id];
         }
         return e;
      }
      
      private function onEmoteLoaded(evt:Event, emoteAnim:EmoteAnim) : void
      {
         var e:EmoteOld = EmoteOld(evt.target);
         emoteAnim.play(e.getEmoteAnim());
         e.removeEventListener(Event.COMPLETE,onEmoteLoaded);
      }
      
      public function init(uiFramework:IUIFramework, baseUrl:String) : void
      {
         this._uiFramework = uiFramework;
         this._baseUrl = baseUrl;
      }
      
      private function loadEmote(id:String, url:String, order:int) : EmoteOld
      {
         if(url.substr(url.length - 3,3) != "swf")
         {
            url = url + ".swf";
         }
         this._emotes[id] = new EmoteOld(this._uiFramework,id,order);
         EmoteOld(this._emotes[id]).init(url);
         return this._emotes[id];
      }
      
      public function playEmoteAnim(id:String, layer:Sprite, actor:Sprite, sizeRef:Sprite) : void
      {
         var emoteAnim:EmoteAnim = null;
         emoteAnim = new EmoteAnim(id,layer,actor,sizeRef);
         var e:EmoteOld = this.getEmote(id);
         if(this.containsEmote(id))
         {
            emoteAnim.play(e.getEmoteAnim());
         }
         else
         {
            e.addEventListener(Event.COMPLETE,function(evt:Event):void
            {
               onEmoteLoaded(evt,emoteAnim);
            });
         }
      }
      
      private function containsEmote(id:String) : Boolean
      {
         if(this._emotes[id] != null && EmoteOld(this._emotes[id]).Loaded)
         {
            return true;
         }
         return false;
      }
      
      public function get emotes() : Object
      {
         if(this._emotes == null)
         {
            this._emotes = new Object();
         }
         return this._emotes;
      }
      
      public function setEmotes(emotes:Array) : void
      {
         var emoteInfo:Object = null;
         var order:int = 0;
         var e:EmoteOld = null;
         for each(emoteInfo in emotes)
         {
            order = !!emoteInfo.order?int(int(emoteInfo.order)):0;
            e = this.loadEmote(emoteInfo.emoticonID,this._baseUrl + "emotes/" + emoteInfo.url,order);
         }
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.EMOTES_LOADED,{}));
      }
   }
}

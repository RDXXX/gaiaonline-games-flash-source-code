package com.gaiaonline.battle.ui
{
   import com.gaiaonline.battle.ApplicationInterfaces.IFileVersionManager;
   import flash.events.Event;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   
   public class HelpList
   {
       
      
      private var _fileVersionManager:IFileVersionManager = null;
      
      private var xml:XML;
      
      private var _baseUrl:String = null;
      
      public function HelpList(fileVersionManager:IFileVersionManager, baseUrl:String)
      {
         super();
         this._fileVersionManager = fileVersionManager;
         this._baseUrl = baseUrl;
      }
      
      private function onLoaded(evt:Event) : void
      {
         this.xml = new XML(URLLoader(evt.target).data);
         this.getTopics();
         URLLoader(evt.target).removeEventListener(Event.COMPLETE,onLoaded);
      }
      
      public function getTopics() : Array
      {
         var topic:XML = null;
         var t:Object = null;
         var name:XML = null;
         var topics:Array = new Array();
         for each(topic in this.xml..topic)
         {
            t = {
               "title":topic.@title,
               "contentLink":topic.@link,
               "relatedNames":new Array()
            };
            for each(name in topic..relateName)
            {
               t.relatedNames.push(name);
            }
            topics.push(t);
         }
         return topics;
      }
      
      public function load() : void
      {
         var l:URLLoader = new URLLoader();
         l.addEventListener(Event.COMPLETE,onLoaded);
         var vUrl:String = "?v=" + this._fileVersionManager.getClientVersion("help-files/helpList.xml");
         l.load(new URLRequest(this._baseUrl + "help-files/helpList.xml" + vUrl));
      }
   }
}

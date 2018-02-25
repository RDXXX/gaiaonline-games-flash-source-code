package com.gaiaonline.utils.wordfilter
{
   import com.gaiaonline.gsi.GSIEvent;
   import com.gaiaonline.gsi.GSIGateway;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class WordFilter extends EventDispatcher
   {
      
      private static const GSI_FILTER_CALL:uint = 3004;
      
      private static var _requestPending:Boolean = false;
      
      private static var _instance:WordFilter;
      
      private static var _dictionary:Array = null;
       
      
      public function WordFilter(se:SingletonEnforcer#35)
      {
         super();
      }
      
      public static function clean(dirty:String, filterLevel:int) : String
      {
         if(filterLevel == 0 || !WordFilter._dictionary)
         {
            return dirty;
         }
         var dictionary:Array = WordFilter.getDictionary(filterLevel);
         var nWords:int = dictionary.length;
         var clean:String = new String(dirty);
         for(var i:int = 0; i < nWords; i++)
         {
            clean = clean.replace(new RegExp(dictionary[i].word,"gi"),dictionary[i].replacement);
         }
         return clean;
      }
      
      public static function getInstance() : WordFilter
      {
         if(!WordFilter._instance)
         {
            _instance = new WordFilter(new SingletonEnforcer#35());
         }
         return _instance;
      }
      
      public static function getDictionary(filterLevel:int) : Array
      {
         var index:int = 0;
         switch(filterLevel)
         {
            case 1:
               index = 0;
               break;
            case 4:
               index = 1;
               break;
            case 9:
               index = 2;
               break;
            default:
               index = 0;
         }
         return WordFilter._dictionary[index] as Array;
      }
      
      public static function init(gsiSubdomain:String = "www") : void
      {
         var g:GSIGateway = null;
         var ce:Event = null;
         if(!_requestPending && _dictionary == null)
         {
            _requestPending = true;
            g = new GSIGateway();
            g.subdomain = gsiSubdomain;
            g.addEventListener(GSIEvent.LOADED,WordFilter.getInstance().onGSILoaded);
            g.invoke(WordFilter.GSI_FILTER_CALL);
         }
         if(_dictionary != null)
         {
            ce = new Event(Event.COMPLETE);
            WordFilter._instance.dispatchEvent(ce);
         }
      }
      
      private function onGSILoaded(event:GSIEvent) : void
      {
         var filterSet:Array = null;
         var nFilterSets:int = 0;
         var entry:Array = null;
         var k:int = 0;
         if(!event.gsiData)
         {
            return;
         }
         var nDictionaries:int = event.gsiData.length;
         _dictionary = new Array();
         for(var i:int = 1; i < nDictionaries; i++)
         {
            filterSet = new Array();
            nFilterSets = event.gsiData[i].length;
            for(k = 0; k < nFilterSets; k++)
            {
               entry = String(event.gsiData[i][k]).split(",");
               filterSet.push({
                  "word":entry[0],
                  "replacement":entry[1]
               });
            }
            _dictionary.push(filterSet);
         }
         _requestPending = false;
         var ce:Event = new Event(Event.COMPLETE);
         dispatchEvent(ce);
      }
   }
}

class SingletonEnforcer#35
{
    
   
   function SingletonEnforcer#35()
   {
      super();
   }
}

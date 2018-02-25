package com.gaiaonline.battle.ui
{
   import com.gaiaonline.battle.ApplicationInterfaces.IUIFramework;
   
   public class MiniMapMarkerType
   {
      
      public static var PLAYER:MiniMapMarkerType;
      
      public static var FRIEND:MiniMapMarkerType;
      
      private static var UNKNOWN:MiniMapMarkerType;
      
      private static var s_uiFramework:IUIFramework;
      
      public static var AVAILABLE_QUEST:MiniMapMarkerType;
      
      public static var GOOFBALL:MiniMapMarkerType;
      
      public static var PHANTOM_FRIEND:MiniMapMarkerType;
      
      public static var QUEST:MiniMapMarkerType;
      
      private static var s_inited:CONSTRUCTORHIDER;
      
      private static var s_custom:Object = {};
      
      public static var GROUP:MiniMapMarkerType;
       
      
      private var _class:Class;
      
      public function MiniMapMarkerType(hider:CONSTRUCTORHIDER, className:String)
      {
         super();
         if(!hider)
         {
            throw "this class is factory-generated only";
         }
         _class = s_uiFramework.assetFactory.getClass(className);
         if(!_class)
         {
            _class = s_uiFramework.assetFactory.getClass("markerNew");
            if(!_class)
            {
               throw "Minimap marker type unresolved";
            }
         }
      }
      
      public static function getCustomType(typeName:String) : MiniMapMarkerType
      {
         if(!s_inited)
         {
            throw "not yet inited";
         }
         if(!s_custom[typeName] && typeName && typeName.length)
         {
            s_custom[typeName] = new MiniMapMarkerType(s_inited,typeName);
         }
         var retval:MiniMapMarkerType = s_custom[typeName];
         return !!retval?retval:UNKNOWN;
      }
      
      public static function init(fw:IUIFramework) : void
      {
         if(!s_inited)
         {
            s_uiFramework = fw;
            s_inited = new CONSTRUCTORHIDER();
            PLAYER = new MiniMapMarkerType(s_inited,"markerPlayer");
            GROUP = new MiniMapMarkerType(s_inited,"markerGroup");
            FRIEND = new MiniMapMarkerType(s_inited,"markerFriend");
            PHANTOM_FRIEND = new MiniMapMarkerType(s_inited,"markerPhantomFriend");
            QUEST = new MiniMapMarkerType(s_inited,"markerQuest");
            AVAILABLE_QUEST = new MiniMapMarkerType(s_inited,"markerAvailableQuest");
            GOOFBALL = new MiniMapMarkerType(s_inited,"markerGoofBall");
            UNKNOWN = new MiniMapMarkerType(s_inited,"markerOther");
         }
      }
      
      public function getClass() : Class
      {
         return _class;
      }
   }
}

class CONSTRUCTORHIDER
{
    
   
   function CONSTRUCTORHIDER()
   {
      super();
   }
}

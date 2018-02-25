package com.gaiaworld.hangouts.model
{
   import com.gaiaworld.hangouts.constants.QuestConstants;
   import com.gaiaworld.hangouts.vo.GrantItemVo;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class QuestModel extends EventDispatcher
   {
      
      private static var instance:QuestModel;
       
      
      public var questStatus:String;
      
      public var itemKey:String = "";
      
      private var _grantItemVo:GrantItemVo;
      
      private var _npcText:String;
      
      public function QuestModel()
      {
         super();
      }
      
      public static function getInstance() : QuestModel
      {
         if(instance == null)
         {
            instance = new QuestModel();
         }
         return instance;
      }
      
      public function grantItem() : *
      {
         this.dispatchEvent(new Event(QuestConstants.GRANT_ITEM,true));
      }
      
      public function get grantItemVo() : GrantItemVo
      {
         return this._grantItemVo;
      }
      
      public function set grantItemVo(param1:GrantItemVo) : void
      {
         this._grantItemVo = param1;
         this.dispatchEvent(new Event(QuestConstants.ITEM_GRANTED,true));
      }
      
      public function get npcText() : String
      {
         return this._npcText;
      }
      
      public function set npcText(param1:String) : void
      {
         this._npcText = param1;
         this.dispatchEvent(new Event(QuestConstants.NPC_SPEECH_UPDATED,true));
      }
   }
}

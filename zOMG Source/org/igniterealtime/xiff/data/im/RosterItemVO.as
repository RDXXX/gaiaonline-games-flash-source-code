package org.igniterealtime.xiff.data.im
{
   import flash.events.EventDispatcher;
   import org.igniterealtime.xiff.core.UnescapedJID;
   import org.igniterealtime.xiff.events.PropertyChangeEvent;
   
   public class RosterItemVO extends EventDispatcher implements Contact
   {
      
      private static var allContacts:Object = {};
       
      
      private var _priority:int;
      
      private var _jid:UnescapedJID;
      
      private var _status:String;
      
      private var _askType:String;
      
      private var _show:String;
      
      private var _subscribeType:String;
      
      private var _displayName:String;
      
      private var _online:Boolean = false;
      
      private var _groups:Array;
      
      public function RosterItemVO(newJID:UnescapedJID)
      {
         _groups = [];
         super();
         jid = newJID;
      }
      
      public static function get(jid:UnescapedJID, create:Boolean = false) : RosterItemVO
      {
         var bareJID:String = jid.bareJID;
         var item:RosterItemVO = allContacts[bareJID];
         if(!item && create)
         {
            allContacts[bareJID] = item = new RosterItemVO(new UnescapedJID(bareJID));
         }
         return item;
      }
      
      public function set show(value:String) : void
      {
         var oldShow:String = show;
         _show = value;
         dispatchChangeEvent("show",_show,oldShow);
      }
      
      public function get jid() : UnescapedJID
      {
         return _jid;
      }
      
      public function get subscribeType() : String
      {
         return _subscribeType;
      }
      
      public function set priority(value:int) : void
      {
         var oldPriority:int = priority;
         _priority = value;
         dispatchChangeEvent("priority",_priority,oldPriority);
      }
      
      public function get uid() : String
      {
         return _jid.toString();
      }
      
      public function get askType() : String
      {
         return _askType;
      }
      
      public function get pending() : Boolean
      {
         return askType == RosterExtension.ASK_TYPE_SUBSCRIBE && (subscribeType == RosterExtension.SUBSCRIBE_TYPE_NONE || subscribeType == RosterExtension.SUBSCRIBE_TYPE_FROM);
      }
      
      public function set jid(value:UnescapedJID) : void
      {
         var oldjid:UnescapedJID = _jid;
         _jid = value;
         if(!_displayName)
         {
            dispatchChangeEvent("jid",value,oldjid);
         }
      }
      
      public function set displayName(value:String) : void
      {
         var olddisplayname:String = displayName;
         _displayName = value;
         dispatchChangeEvent("displayName",displayName,olddisplayname);
      }
      
      public function set subscribeType(value:String) : void
      {
         var oldSub:String = subscribeType;
         _subscribeType = value;
         dispatchChangeEvent("subscribeType",_subscribeType,oldSub);
      }
      
      public function set uid(value:String) : void
      {
      }
      
      public function set status(value:String) : void
      {
         var oldStatus:String = status;
         _status = value;
         dispatchChangeEvent("status",_status,oldStatus);
      }
      
      public function get online() : Boolean
      {
         return _online;
      }
      
      override public function toString() : String
      {
         return jid.toString();
      }
      
      private function dispatchChangeEvent(name:String, newValue:*, oldValue:*) : void
      {
         var event:PropertyChangeEvent = new PropertyChangeEvent(PropertyChangeEvent.CHANGE);
         event.name = name;
         event.newValue = newValue;
         event.oldValue = oldValue;
         dispatchEvent(event);
      }
      
      public function get displayName() : String
      {
         return !!_displayName?_displayName:_jid.node;
      }
      
      public function set askType(value:String) : void
      {
         var oldasktype:String = askType;
         var oldPending:Boolean = pending;
         _askType = value;
         dispatchChangeEvent("askType",askType,oldasktype);
         dispatchChangeEvent("pending",pending,oldPending);
      }
      
      public function get status() : String
      {
         if(!online)
         {
            return "Offline";
         }
         return !!_status?_status:"Available";
      }
      
      public function get priority() : int
      {
         return _priority;
      }
      
      public function get show() : String
      {
         return _show;
      }
      
      public function set online(value:Boolean) : void
      {
         if(value == online)
         {
            return;
         }
         var oldOnline:Boolean = online;
         _online = value;
         dispatchChangeEvent("online",_online,oldOnline);
      }
   }
}

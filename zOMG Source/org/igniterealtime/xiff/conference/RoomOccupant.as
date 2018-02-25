package org.igniterealtime.xiff.conference
{
   import flash.events.EventDispatcher;
   import org.igniterealtime.xiff.core.UnescapedJID;
   import org.igniterealtime.xiff.data.im.Contact;
   import org.igniterealtime.xiff.data.im.RosterItemVO;
   
   public class RoomOccupant extends EventDispatcher implements Contact
   {
       
      
      private var _jid:UnescapedJID;
      
      private var _nickname:String;
      
      private var _uid:String;
      
      private var _role:String;
      
      private var _show:String;
      
      private var _affiliation:String;
      
      private var _room:JabberRoom;
      
      public function RoomOccupant(nickname:String, show:String, affiliation:String, role:String, jid:UnescapedJID, room:JabberRoom)
      {
         super();
         this.displayName = nickname;
         this.show = show;
         this.affiliation = affiliation;
         this.role = role;
         this.jid = jid;
         _room = room;
      }
      
      public function set show(value:String) : void
      {
         _show = value;
      }
      
      public function get show() : String
      {
         return _show;
      }
      
      public function get jid() : UnescapedJID
      {
         return _jid;
      }
      
      public function get uid() : String
      {
         return _uid;
      }
      
      public function get online() : Boolean
      {
         return true;
      }
      
      public function set jid(value:UnescapedJID) : void
      {
         _jid = value;
      }
      
      public function get room() : JabberRoom
      {
         return _room;
      }
      
      public function set affiliation(value:String) : void
      {
         _affiliation = value;
      }
      
      public function set online(value:Boolean) : void
      {
      }
      
      public function set uid(value:String) : void
      {
         _uid = value;
      }
      
      public function set role(value:String) : void
      {
         _role = value;
      }
      
      public function get displayName() : String
      {
         return _nickname;
      }
      
      public function get affiliation() : String
      {
         return _affiliation;
      }
      
      public function set displayName(value:String) : void
      {
         _nickname = value;
      }
      
      public function get role() : String
      {
         return _role;
      }
      
      public function set room(value:JabberRoom) : void
      {
         _room = value;
      }
      
      public function get rosterItem() : RosterItemVO
      {
         if(!_jid)
         {
            return null;
         }
         return RosterItemVO.get(_jid,true);
      }
   }
}

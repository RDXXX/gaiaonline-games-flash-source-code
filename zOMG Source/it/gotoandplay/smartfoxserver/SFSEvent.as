package it.gotoandplay.smartfoxserver
{
   import flash.events.Event;
   
   public class SFSEvent extends Event
   {
      
      public static const onExtensionResponse:String = "onExtensionResponse";
      
      public static const onRoomLeft:String = "onRoomLeft";
      
      public static const onBuddyListUpdate:String = "onBuddyListUpdate";
      
      public static const onRoomListUpdate:String = "onRoomListUpdate";
      
      public static const onRoundTripResponse:String = "onRoundTripResponse";
      
      public static const onUserLeaveRoom:String = "onUserLeaveRoom";
      
      public static const onConnection:String = "onConnection";
      
      public static const onBuddyListError:String = "onBuddyListError";
      
      public static const onJoinRoom:String = "onJoinRoom";
      
      public static const onBuddyRoom:String = "onBuddyRoom";
      
      public static const onUserEnterRoom:String = "onUserEnterRoom";
      
      public static const onDebugMessage:String = "onDebugMessage";
      
      public static const onAdminMessage:String = "onAdminMessage";
      
      public static const onPublicMessage:String = "onPublicMessage";
      
      public static const onModeratorMessage:String = "onModMessage";
      
      public static const onPrivateMessage:String = "onPrivateMessage";
      
      public static const onLogout:String = "onLogout";
      
      public static const onJoinRoomError:String = "onJoinRoomError";
      
      public static const onRoomAdded:String = "onRoomAdded";
      
      public static const onLogin:String = "onLogin";
      
      public static const onSpectatorSwitched:String = "onSpectatorSwitched";
      
      public static const onRoomDeleted:String = "onRoomDeleted";
      
      public static const onConnectionLost:String = "onConnectionLost";
      
      public static const onBuddyList:String = "onBuddyList";
      
      public static const onRoomVariablesUpdate:String = "onRoomVariablesUpdate";
      
      public static const onCreateRoomError:String = "onCreateRoomError";
      
      public static const onUserCountChange:String = "onUserCountChange";
      
      public static const onUserVariablesUpdate:String = "onUserVariablesUpdate";
      
      public static const onRandomKey:String = "onRandomKey";
      
      public static const onObjectReceived:String = "onObjectReceived";
       
      
      public var params:Object;
      
      public function SFSEvent(type:String, params:Object)
      {
         super(type);
         this.params = params;
      }
      
      override public function toString() : String
      {
         return formatToString("SFSEvent","type","bubbles","cancelable","eventPhase","params");
      }
      
      override public function clone() : Event
      {
         return new SFSEvent(this.type,this.params);
      }
   }
}

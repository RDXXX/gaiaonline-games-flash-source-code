package com.rawfishsoftware.sushi
{
   public class Event
   {
       
      
      public var onNewMember:$Event;
      
      public var onUpdateMember:$Event;
      
      public var onIndexUpdateMember:$Event;
      
      public var onMemberChangesRoom:$Event;
      
      public var onRemoveMember:$Event;
      
      public var onNewMob:$Event;
      
      public var onMaster:$Event;
      
      public var onSlave:$Event;
      
      public var onUpdateMob:$Event;
      
      public var onIndexUpdateMob:$Event;
      
      public var onRemoveMob:$Event;
      
      public var onNewRoom:$Event;
      
      public var onRemoveRoom:$Event;
      
      public var onUpdateRoom:$Event;
      
      public var onIndexUpdateRoom:$Event;
      
      public var onUpdateWaitingQueue:$Event;
      
      public var onUpdateTeam:$Event;
      
      public var onIndexUpdateTeam:$Event;
      
      public var onMemberChangesTeam:$Event;
      
      public var onChatMessage:$Event;
      
      public var onUserMessage:$Event;
      
      public var onSystemMessage:$Event;
      
      public var onDisconnect:$Event;
      
      public var onServerRestart:$Event;
      
      public var onUpdateSession:$Event;
      
      public var onIndexUpdateSession:$Event;
      
      public var onChallengeRequest:$Event;
      
      public var onAnswerChallengeRequest:$Event;
      
      public var onCancelChallenge:$Event;
      
      public var onModeratorChanged:$Event;
      
      public var onIncludeMember:$Event;
      
      public var onExcludeMember:$Event;
      
      public var onRoomLocked:$Event;
      
      public var onStartChallenge:$Event;
      
      public var onPlay:$Event;
      
      public var onBeSpectator:$Event;
      
      public var onMemberKicked:$Event;
      
      public var onBadwordDetected:$Event;
      
      public var onMemberNameChanged:$Event;
      
      public var onObjectReceived:$Event;
      
      private var ref:Object;
      
      public function Event(param1:*)
      {
         super();
         this.ref = param1;
         this.$init();
      }
      
      public function $init() : void
      {
         this.onNewMember = new $Event(this.ref,"onNewMember","member");
         this.onUpdateMember = new $Event(this.ref,"onUpdateMember","member");
         this.onIndexUpdateMember = new $Event(this.ref,"onIndexUpdateMember","member");
         this.onMemberChangesRoom = new $Event(this.ref,"onMemberChangesRoom","member");
         this.onRemoveMember = new $Event(this.ref,"onRemoveMember","member");
         this.onNewMob = new $Event(this.ref,"onNewMob","mob");
         this.onMaster = new $Event(this.ref,"onMaster");
         this.onSlave = new $Event(this.ref,"onSlave");
         this.onUpdateMob = new $Event(this.ref,"onUpdateMob","mob");
         this.onIndexUpdateMob = new $Event(this.ref,"onIndexUpdateMob","mob");
         this.onRemoveMob = new $Event(this.ref,"onRemoveMob","mob");
         this.onNewRoom = new $Event(this.ref,"onNewRoom");
         this.onRemoveRoom = new $Event(this.ref,"onRemoveRoom","room");
         this.onUpdateRoom = new $Event(this.ref,"onUpdateRoom","room");
         this.onIndexUpdateRoom = new $Event(this.ref,"onIndexUpdateRoom","room");
         this.onUpdateWaitingQueue = new $Event(this.ref,"onUpdateWaitingQueue","room");
         this.onUpdateTeam = new $Event(this.ref,"onUpdateTeam","team");
         this.onIndexUpdateTeam = new $Event(this.ref,"onIndexUpdateTeam","team");
         this.onMemberChangesTeam = new $Event(this.ref,"onMemberChangesTeam","team");
         this.onChatMessage = new $Event(this.ref,"onChatMessage","member");
         this.onUserMessage = new $Event(this.ref,"onUserMessage");
         this.onSystemMessage = new $Event(this.ref,"onSystemMessage");
         this.onDisconnect = new $Event(this.ref,"onDisconnect");
         this.onServerRestart = new $Event(this.ref,"onServerRestart");
         this.onUpdateSession = new $Event(this.ref,"onUpdateSession","session");
         this.onIndexUpdateSession = new $Event(this.ref,"onIndexUpdateSession","session");
         this.onChallengeRequest = new $Event(this.ref,"onChallengeRequest");
         this.onAnswerChallengeRequest = new $Event(this.ref,"onAnswerChallengeRequest");
         this.onCancelChallenge = new $Event(this.ref,"onCancelChallenge");
         this.onModeratorChanged = new $Event(this.ref,"onModeratorChanged");
         this.onIncludeMember = new $Event(this.ref,"onIncludeMember");
         this.onExcludeMember = new $Event(this.ref,"onExcludeMember");
         this.onRoomLocked = new $Event(this.ref,"onRoomLocked","room");
         this.onStartChallenge = new $Event(this.ref,"onStartChallenge");
         this.onPlay = new $Event(this.ref,"onPlay");
         this.onBeSpectator = new $Event(this.ref,"onBeSpectator","member");
         this.onMemberKicked = new $Event(this.ref,"onMemberKicked","member");
         this.onBadwordDetected = new $Event(this.ref,"onBadwordDetected");
         this.onMemberNameChanged = new $Event(this.ref,"onMemberNameChanged");
         this.onObjectReceived = new $Event(this.ref,"onObjectReceived");
      }
   }
}

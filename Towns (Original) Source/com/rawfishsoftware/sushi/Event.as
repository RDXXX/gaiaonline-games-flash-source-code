class com.rawfishsoftware.sushi.Event
{
   function Event(r)
   {
      this.ref = r;
      this.$init();
   }
   function $init()
   {
      this.onNewMember = new com.rawfishsoftware.sushi.$Event(this.ref,"onNewMember","member");
      this.onUpdateMember = new com.rawfishsoftware.sushi.$Event(this.ref,"onUpdateMember","member");
      this.onIndexUpdateMember = new com.rawfishsoftware.sushi.$Event(this.ref,"onIndexUpdateMember","member");
      this.onMemberChangesRoom = new com.rawfishsoftware.sushi.$Event(this.ref,"onMemberChangesRoom","member");
      this.onRemoveMember = new com.rawfishsoftware.sushi.$Event(this.ref,"onRemoveMember","member");
      this.onNewMob = new com.rawfishsoftware.sushi.$Event(this.ref,"onNewMob","mob");
      this.onMaster = new com.rawfishsoftware.sushi.$Event(this.ref,"onMaster");
      this.onSlave = new com.rawfishsoftware.sushi.$Event(this.ref,"onSlave");
      this.onUpdateMob = new com.rawfishsoftware.sushi.$Event(this.ref,"onUpdateMob","mob");
      this.onIndexUpdateMob = new com.rawfishsoftware.sushi.$Event(this.ref,"onIndexUpdateMob","mob");
      this.onRemoveMob = new com.rawfishsoftware.sushi.$Event(this.ref,"onRemoveMob","mob");
      this.onNewRoom = new com.rawfishsoftware.sushi.$Event(this.ref,"onNewRoom");
      this.onRemoveRoom = new com.rawfishsoftware.sushi.$Event(this.ref,"onRemoveRoom","room");
      this.onUpdateRoom = new com.rawfishsoftware.sushi.$Event(this.ref,"onUpdateRoom","room");
      this.onIndexUpdateRoom = new com.rawfishsoftware.sushi.$Event(this.ref,"onIndexUpdateRoom","room");
      this.onUpdateWaitingQueue = new com.rawfishsoftware.sushi.$Event(this.ref,"onUpdateWaitingQueue","room");
      this.onUpdateTeam = new com.rawfishsoftware.sushi.$Event(this.ref,"onUpdateTeam","team");
      this.onIndexUpdateTeam = new com.rawfishsoftware.sushi.$Event(this.ref,"onIndexUpdateTeam","team");
      this.onMemberChangesTeam = new com.rawfishsoftware.sushi.$Event(this.ref,"onMemberChangesTeam","team");
      this.onChatMessage = new com.rawfishsoftware.sushi.$Event(this.ref,"onChatMessage","member");
      this.onUserMessage = new com.rawfishsoftware.sushi.$Event(this.ref,"onUserMessage");
      this.onSystemMessage = new com.rawfishsoftware.sushi.$Event(this.ref,"onSystemMessage");
      this.onDisconnect = new com.rawfishsoftware.sushi.$Event(this.ref,"onDisconnect");
      this.onServerRestart = new com.rawfishsoftware.sushi.$Event(this.ref,"onServerRestart");
      this.onUpdateSession = new com.rawfishsoftware.sushi.$Event(this.ref,"onUpdateSession","session");
      this.onIndexUpdateSession = new com.rawfishsoftware.sushi.$Event(this.ref,"onIndexUpdateSession","session");
      this.onChallengeRequest = new com.rawfishsoftware.sushi.$Event(this.ref,"onChallengeRequest");
      this.onAnswerChallengeRequest = new com.rawfishsoftware.sushi.$Event(this.ref,"onAnswerChallengeRequest");
      this.onCancelChallenge = new com.rawfishsoftware.sushi.$Event(this.ref,"onCancelChallenge");
      this.onModeratorChanged = new com.rawfishsoftware.sushi.$Event(this.ref,"onModeratorChanged");
      this.onIncludeMember = new com.rawfishsoftware.sushi.$Event(this.ref,"onIncludeMember");
      this.onExcludeMember = new com.rawfishsoftware.sushi.$Event(this.ref,"onExcludeMember");
      this.onRoomLocked = new com.rawfishsoftware.sushi.$Event(this.ref,"onRoomLocked","room");
      this.onStartChallenge = new com.rawfishsoftware.sushi.$Event(this.ref,"onStartChallenge");
      this.onPlay = new com.rawfishsoftware.sushi.$Event(this.ref,"onPlay");
      this.onBeSpectator = new com.rawfishsoftware.sushi.$Event(this.ref,"onBeSpectator","member");
      this.onMemberKicked = new com.rawfishsoftware.sushi.$Event(this.ref,"onMemberKicked","member");
      this.onBadwordDetected = new com.rawfishsoftware.sushi.$Event(this.ref,"onBadwordDetected");
      this.onMemberNameChanged = new com.rawfishsoftware.sushi.$Event(this.ref,"onMemberNameChanged");
      this.onObjectReceived = new com.rawfishsoftware.sushi.$Event(this.ref,"onObjectReceived");
   }
}

class classes.npc.NPCEmote
{
   function NPCEmote(mc, emoteList, scaling)
   {
      this.emoteListing = emoteList;
      this.emoteBubble = new classes.environment.EmoteBubble(mc,"character",scaling);
      this.start();
   }
   function start()
   {
      this.interval = setInterval(this,"goEmote",6000);
   }
   function goEmote()
   {
      var _loc3_ = random(this.emoteListing.length);
      if(_global.gAvMan.getMyAvatar().walkLock == false)
      {
         this.emoteBubble.playEmote(this.emoteListing[_loc3_][0],this.emoteListing[_loc3_][1]);
      }
   }
   function destroy()
   {
      clearInterval(this.interval);
      this.emoteBubble.remove();
      delete this.emoteBubble;
   }
}

class debugTools.agentSmith.WireTap
{
   var thing = "fish";
   var read = 0;
   function WireTap(tg)
   {
      this.target = tg;
      this.thing = "agentsmith";
      Key.addListener(this);
   }
   function onKeyDown()
   {
      if(Key.isDown(40) && Key.getAscii() == this.thing.charCodeAt(this.read))
      {
         this.read = this.read + 1;
      }
      else if(Key.getAscii() == 40)
      {
         this.read = this.read;
      }
      else
      {
         this.read = 0;
      }
      if(this.read == this.thing.length)
      {
         trace("<agent smith>");
         this.target.loadMovie("AgentStub.swf");
         this.read = 0;
      }
   }
}

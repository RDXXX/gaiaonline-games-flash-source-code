class com.rawfishsoftware.sushi.SushiSocket extends XMLSocket
{
   function SushiSocket(ip, p, r)
   {
      super();
      this.ref = r;
      this.mc = _root.createEmptyMovieClip("$$sushimc",9999998);
      this.mc.sushi = this.ref;
      this.mc.socket = this;
      this.mc.onEnterFrame = function()
      {
         var _loc2_ = this.sushi;
         if(_loc2_.$sts != "")
         {
            if(_loc2_.logging)
            {
               _loc2_.logger.log(_loc2_.$sts,"FLASH");
            }
            this.socket.send(_loc2_.$sts);
            _loc2_.$sts = "";
         }
         if(_loc2_.$fps)
         {
            _loc2_.$getFPS();
         }
      };
      this.connect(ip,p);
   }
   function onConnect(s)
   {
      if(s)
      {
         var _loc2_ = this.ref.$d;
         this.ref.connectionType = "SOCKET";
         this.ref.$connected = 1;
         this.ref.$sts = this.ref.$sts + ("S55" + _loc2_ + "FLASH" + _loc2_ + "1" + _loc2_ + this.ref.LIMIT + this.ref.$e + "2" + _loc2_ + this.ref.$clientSpeed + this.ref.$e);
         this.ref.$netTimer = getTimer();
      }
      else
      {
         this.ref.$cb.apply(this.ref.$sc,[1]);
      }
   }
   function onData(m)
   {
      this.ref.$p.apply(this.ref,[m]);
   }
   function onClose()
   {
      this.ref.$connected = 0;
      _root.$$sushimc.swapDepths(0);
      _root.$$sushimc.removeMovieClip();
      this.ref.event.onDisconnect.$call();
      this.ref.$init();
      this.ref.sessionList = [];
   }
}

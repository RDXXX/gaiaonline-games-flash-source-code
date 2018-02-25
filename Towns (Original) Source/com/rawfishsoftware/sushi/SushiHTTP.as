class com.rawfishsoftware.sushi.SushiHTTP
{
   var pon = false;
   function SushiHTTP(i, r)
   {
      this.ref = r;
      this.ip = i;
      this.lv = new LoadVars();
      this.pf = this.ref.$pollFreq;
      this.connect();
   }
   function connect()
   {
      var _loc2_ = this.ref.$d;
      var _loc3_ = 0;
      this.lv.onLoad = function(s)
      {
         if(s)
         {
            this.ref.$http.communicate();
            this.ref.$p(this.m);
         }
         else
         {
            this.ref.$cb.apply(this.ref.$sc,[1]);
         }
      };
      this.lv.ref = this.ref;
      this.lv.m = "55" + _loc2_ + "FLASH" + _loc2_ + "1" + _loc2_ + this.ref.LIMIT + this.ref.$e + "2" + _loc2_ + this.ref.$clientSpeed + this.ref.$e;
      this.lv.i = this.ref.me.id;
      this.lv.sendAndLoad(this.ip,this.lv,"POST");
   }
   function communicate()
   {
      _root.createEmptyMovieClip("$$sushimc",9999998);
      _root.$$sushimc.ref = this;
      _root.$$sushimc.onEnterFrame = function()
      {
         this.ref.poll();
         if(this.ref.$fps)
         {
            this.ref.$getFPS();
         }
      };
      this.ref.connectionType = "HTTP";
      this.ref.$connected = 1;
      this.ref.$netTimer = getTimer();
      this.lv.onLoad = function(s)
      {
         if(this.m != "")
         {
            this.ref.$p(this.m);
         }
         this.ref.$http.pon = false;
         this.ref.$http.pf = this.ref.$pollFreq;
      };
   }
   function poll()
   {
      if(!this.pon)
      {
         if(this.ref.$sts != "")
         {
            this.update();
         }
         else if(!(this.pf = this.pf - 1))
         {
            this.update();
         }
      }
   }
   function update()
   {
      this.lv.m = this.ref.$sts;
      this.pon = true;
      this.ref.$sts = "";
      if(this.ref.logging)
      {
         this.ref.logger.log(this.lv.m,"FLASH");
      }
      this.lv.sendAndLoad(this.ip,this.lv,"POST");
   }
}

class classes.environment.EmoteBubble
{
   static var count = 0;
   function EmoteBubble(m, emoteSet, avScale, xOff, yOff)
   {
      this.xOffset = xOff != undefined?xOff:0;
      this.yOffset = yOff != undefined?yOff:140;
      this.avatar = m;
      this.curScale = avScale;
      switch(emoteSet)
      {
         case "character":
            this.mc = _global.gCanvas.createEmptyMovieClip("emote" + classes.environment.EmoteBubble.count++,_global.gCanvas.getNextHighestDepth());
            loadMovie("emotes/emotes.swf",this.mc);
            break;
         case "equipment":
            this.mc = this.avatar.createEmptyMovieClip("emote" + classes.environment.EmoteBubble.count++,this.avatar.getNextHighestDepth());
            loadMovie("emotes/equipment.swf",this.mc);
            break;
         default:
            this.mc = _global.gCanvas.createEmptyMovieClip("emote" + classes.environment.EmoteBubble.count++,_global.gCanvas.getNextHighestDepth());
            loadMovie("emotes/emotes.swf",this.mc);
      }
   }
   function playEmote(bubType, whichEmote)
   {
      this.mc.bubble.showExpressEmote(bubType,"characters",whichEmote,this);
      _global.gBroadcaster.removeListener(this);
      _global.gBroadcaster.addListener(this);
      this.xOffScaled = this.xOffset * this.curScale / 100;
      this.yOffScaled = this.yOffset * this.curScale / 100;
      this.mc._xscale = this.curScale;
      this.mc._yscale = this.mc._xscale;
      this.run();
   }
   function playCollectEmote(collectType, swfsrc, amount)
   {
      this.mc.bubble.showCollectEmote(2,collectType,swfsrc,this,amount);
      _global.gBroadcaster.removeListener(this);
      _global.gBroadcaster.addListener(this);
      this.xOffScaled = this.xOffset * this.curScale / 100;
      this.yOffScaled = this.yOffset * this.curScale / 100;
      this.mc._xscale = this.curScale;
      this.mc._yscale = this.mc._xscale;
      this.run();
   }
   function playEquip(equip)
   {
      this.mc[equip].gotoAndPlay(2);
   }
   function playEquipMiss()
   {
      this.mc.attachMovie("miss","miss",this.mc.getNextHighestDepth());
   }
   function playEquipFull()
   {
      this.mc.attachMovie("full","full",this.mc.getNextHighestDepth());
   }
   function playFade(equip)
   {
      this.mc[equip].gotoAndPlay("fOut");
   }
   function done()
   {
      _global.gBroadcaster.removeListener(this);
   }
   function run()
   {
      if(_global.mapData[10].indexOf("Hive") == -1 || _global.mapData[10] == undefined)
      {
         this.mc._x = this.avatar._x - this.xOffScaled;
         this.mc._y = this.avatar._y - this.yOffScaled;
      }
      else
      {
         this.mc._x = this.avatar._x - this.xOffScaled;
         this.mc._y = this.avatar._y - this.yOffScaled - 60;
      }
   }
   function remove()
   {
      _global.gBroadcaster.removeListener(this);
      this.mc.removeMovieClip();
   }
}

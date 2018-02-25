class classes.npc.NPC
{
   static var botCount = 0;
   function NPC(npc, spch, walk, npcAtt, emoteList)
   {
      this.npcName = npc;
      var _loc4_ = !(npcAtt[2] == undefined || npcAtt[2] == null)?npcAtt[2]:75;
      this.setUp(npc,_loc4_);
      var _loc5_ = !(npcAtt[3] == undefined || npcAtt[3] == null)?false:true;
      this.loadAvatar("npc/characters/" + npc + ".swf",walk,_loc5_);
      var _loc7_ = spch[1] != undefined?spch[1]:25;
      var _loc6_ = spch[2] != undefined?spch[2]:120;
      this.speech = new classes.npc.NPCSpeech(spch[0],this,_loc7_,_loc6_,_loc5_,spch[3]);
      if(emoteList != undefined || emoteList[0].length > 1)
      {
         this.emoteBubble = new classes.npc.NPCEmote(this.mc,emoteList,_loc4_);
      }
      this.mc._x = npcAtt[0];
      this.mc._y = npcAtt[1];
      this.mc._xscale = this.mc._yscale = _loc4_;
   }
   function setUp(npc, scaling)
   {
      if(scaling == undefined)
      {
         scaling = 0;
      }
      this.mc = _global.gCanvas.clipping_canvas.createEmptyMovieClip("npc" + classes.npc.NPC.botCount++,_global.gCanvas.clipping_canvas.getNextHighestDepth());
      var _loc6_ = scaling < 120?5:30;
      this.mc.createTextField("nameTag",1,-50,_loc6_,130,20);
      var _loc3_ = new TextFormat();
      _loc3_.align = "center";
      _loc3_.font = "Arial";
      this.mc.nameTag.selectable = false;
      this.mc.nameTag.text = npc.toUpperCase();
      this.mc.nameTag.setTextFormat(_loc3_);
      var _loc5_ = scaling < 120?0:15;
      this.mc.attachMovie("avatar_shadow","dropShadow",-10);
      this.mc.dropShadow._y = _loc5_;
   }
   function loadAvatar(whoSwf, motion, cFace)
   {
      var walkType = motion;
      var thisNPC = this;
      var canFace = cFace;
      var _loc3_ = new Object();
      var _loc2_ = new MovieClipLoader();
      _loc3_.onLoadInit = function(target_mc)
      {
         target_mc.gotoAndStop(1);
         thisNPC.setTint();
         if(canFace == true)
         {
            target_mc._xscale = -100;
         }
         thisNPC.wc = new classes.npc.WalkCycle(thisNPC.mc,walkType,walkType[2]);
      };
      _loc2_.addListener(_loc3_);
      _loc2_.loadClip(whoSwf,this.mc.createEmptyMovieClip("asset",this.mc.getNextHighestDepth()));
   }
   function destroy()
   {
      delete this.wc;
      this.speech.remove();
      delete this.speech;
      this.emoteBubble.destroy();
      delete this.emoteBubble;
      this.mc.removeMovieClip();
      false;
   }
   function setTint()
   {
      _global.gst.tintMe(this.mc);
   }
}

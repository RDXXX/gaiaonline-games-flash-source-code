class classes.npc.NPCGenarator
{
   var patternDelta = new Array([125,730],[250,500]);
   var patternMarch = new Array([400,520],[740,520]);
   var bunnyMarch = new Array([350,675],[670,675]);
   var emoteList = new Array([2,"wave"],[1,"heart"],[2,"hug"],[2,"wink"],[2,"kiss"],[2,"cute"]);
   function NPCGenarator(setting, pClass)
   {
      switch(setting)
      {
         case "train":
         case "toTrain":
            _global.gBots[0] = new classes.npc.NPC("rina",[40],[2,true,this.patternMarch],[400,520]);
            _global.gBots[1] = new classes.npc.NPC("ian",[39],[0],[550,410]);
            _global.gBots[2] = new classes.npc.NPC("moira",[41],[0],[650,640],this.emoteList);
            _global.gBots[3] = new classes.npc.NPC("leon",[42],[1,null,this.patternDelta],[125,730]);
            _global.gBots[4] = new classes.npc.NPC("directory",[38],[0],[300,380,null,false]);
            break;
         case "toMap":
         case "town":
            trace("MAP DATA=" + _global.mapData[13]);
            if(_global.mapData[13] == 1)
            {
               if(parseInt(_global.eventID) == 10)
               {
                  _global.gBots[0] = new classes.npc.NPC("jack",[58,20,80,170],[1,null,null],[500,500,150]);
               }
               if(_global.sponsorshipEvent == "housebunny")
               {
                  _global.sponsorBot[0] = new classes.npc.NPCMain("shelley",[4],[0],[734,574]);
               }
            }
            if(_global.isInChess == true)
            {
            }
      }
      pClass.nextSequence();
   }
   function destroy()
   {
      var _loc4_ = _global.gBots.length;
      var _loc3_ = 0;
      while(_loc3_ < _loc4_)
      {
         _global.gBots[_loc3_].destroy();
         _loc3_ = _loc3_ + 1;
      }
      _global.gBots = [];
      false;
      var _loc5_ = _global.sponsorBot.length;
      _loc3_ = 0;
      while(_loc3_ < _loc5_)
      {
         _global.sponsorBot[_loc3_].destroy();
         _loc3_ = _loc3_ + 1;
      }
      _global.sponsorBot = [];
      false;
   }
}

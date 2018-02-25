class classes.npc.NPCSpeechHouseBunny
{
   var nextDialog = 0;
   var nextReplyDialog = 0;
   var flowerQty = 0;
   var flowerMax = 3;
   function NPCSpeechHouseBunny(wd, npcObj, headX, headY, cFace, textY)
   {
      if(wd != 39)
      {
         this.hasButtonBeenAdded = true;
      }
      this.character = npcObj;
      this.canFace = cFace;
      this.character.mc.ref = this;
      this.character.mc.onPress = function()
      {
         this.ref.onPress();
      };
      this.character.mc.enabled = false;
      this.textBubble = new classes.npc.NPCTextBubbleSponsor(this.character,this,headX,headY,textY);
      this.range = new classes.range.Range(this.character.mc,75,0,-50);
      this.loadInfo();
   }
   function loadInfo()
   {
      var _loc3_ = _global.gsiMethod.queue(4000,[_global.gaiaSessionID,543],this.invGameData,this);
      _global.gsiMethod.queue(311,[_global.gaiaSessionID,_global.myUserData[0],100074],_loc3_);
      _global.gsiMethod.queue(4011,[_global.gaiaSessionID,543],_loc3_);
      _global.gsiMethod.send();
   }
   function invGameData(noErr, info, thisClass)
   {
      if(noErr == true)
      {
         var _loc3_ = info[0].data;
         var _loc4_ = info[1].data;
         var _loc2_ = info[2].data;
         trace(_loc3_[0] + "  " + _loc4_[0]);
         thisClass.flowerQty = Number(_loc4_[0]);
         if(Number(_loc3_[0]) == 0)
         {
            if(Number(_loc2_[0]) >= 3)
            {
               var _loc7_ = "Thanks for completing all my House Bunny quests. You did a great job! ";
               thisClass.dialogType = "tutorial";
               thisClass.dialog = [_loc7_];
               thisClass.character.mc.enabled = true;
            }
            else
            {
               thisClass.dialogType = "start";
               thisClass.dialog = ["Want to rush our House Bunny sorority? Show some love by gathering 3 Pink Daffodils.","When you\'ve got 3 Pink Daffodils, click \'Items\' in the bottom right and then clck on the robot to move the items to you inventory.","When you\'re done, come and see me."];
               thisClass.character.mc.enabled = true;
            }
         }
         else if(Number(_loc2_[0]) >= 3)
         {
            _loc7_ = "Thanks for completing all my House Bunny quests. You did a great job! ";
            thisClass.dialogType = "tutorial";
            thisClass.dialog = [_loc7_];
            thisClass.character.mc.enabled = true;
         }
         else if(thisClass.flowerQty >= thisClass.flowerMax)
         {
            thisClass.dialogType = "submit";
            thisClass.dialog = ["Good job! Here\'s a little something special for you.  Don\'t forget to head inside the Zeta House to check out a new House Bunny preview!"];
            thisClass.character.mc.enabled = true;
         }
         else
         {
            var _loc6_ = thisClass.flowerMax - thisClass.flowerQty;
            _loc7_ = "Aww, you still need to gather " + _loc6_ + " Pink Daffodils.  Look around town a little more and you\'ll find some.";
            thisClass.dialogType = "tutorial";
            thisClass.dialog = [_loc7_,"When you get them, click \'Items\' in the bottom right, then click the robot to move the flowers to your inventory.","Come see me when you\'re done!"];
            thisClass.character.mc.enabled = true;
         }
      }
   }
   function onUserMessage(theMessage)
   {
      this.textBubble.chat(unescape(theMessage));
   }
   function onPress()
   {
      var _loc3_ = this.range.testRange(_global.gAvMan.getMyAvatar().range);
      if(_loc3_)
      {
         this.startDialog();
      }
   }
   function startDialog()
   {
      if(this.dialog != undefined)
      {
         _global.gAvMan.getMyAvatar().lockWalking(true);
         if(this.canFace == true)
         {
            this.character.wc.facingAt(_global.gAvMan.getMyAvatar().getX(),_global.gAvMan.getMyAvatar().getY());
         }
         trace(this.dialog);
         switch(this.dialogType)
         {
            case "random":
               var _loc3_ = random(this.dialog.length);
               this.displayDialog(this.dialog[_loc3_]);
               break;
            case "submit":
               if(this.nextDialog == this.dialog.length - 1)
               {
                  this.textBubble.changeActionBtn();
               }
            case "start":
               trace("START BUTTON" + this.nextDialog + "  " + (this.dialog.length - 1));
               if(this.nextDialog == this.dialog.length - 1)
               {
                  this.textBubble.changeActionBtn("start");
               }
            case "tutorial":
               if(!this.hasButtonBeenAdded)
               {
                  this.dialog[this.nextDialog] = this.dialog[this.nextDialog] + "<p>&nbsp;</p><p>&nbsp;</p><p><A HREF=\"asfunction:_root.stream.makeAutoConnection, \"><font color=\'#0000CC\'><b> Find me a room </b></font></A></p>";
                  this.dialog[this.nextDialog] = this.dialog[this.nextDialog] + "<p><A HREF=\"asfunction:_root.stream.goToDirectory, \"><font color=\'#0000CC\'><b> Go to the Town Directory </b></font></A></p>";
                  this.hasButtonBeenAdded = true;
               }
               this.displayDialog(this.dialog[this.nextDialog]);
         }
         this.enableOtherNPC(false);
      }
      else
      {
         _global.gBroadcaster.addListener(this);
      }
   }
   function run()
   {
      if(this.dialog != undefined && this.textBubble.bubLoaded == true)
      {
         _global.gBroadcaster.removeListener(this);
         this.startDialog();
      }
   }
   function displayDialog(d)
   {
      this.onUserMessage(d);
      _root.ui_mc.historyPanel.echo("<FONT COLOR = \'#FFCCCC\'><B>" + this.character.npcName.toUpperCase() + ":</B> " + d + "</FONT><BR>");
   }
   function tutorialDialog()
   {
      this.nextDialog = this.nextDialog + 1;
      if(this.nextDialog == this.dialog.length)
      {
         this.nextDialog = 0;
         this.textBubble.off();
         _global.gAvMan.getMyAvatar().lockWalking(false);
         this.enableOtherNPC(true);
         this.character.wc.restartMotion();
      }
      else
      {
         this.textBubble.continueChat(this.dialog[this.nextDialog]);
         _root.ui_mc.historyPanel.echo("<FONT COLOR = \'#FFCCCC\'><B>" + this.character.npcName.toUpperCase() + ":</B> " + this.dialog[this.nextDialog] + "</FONT><BR>");
         if(this.nextDialog == this.dialog.length - 1 && this.dialogType == "submit")
         {
            this.textBubble.changeActionBtn("save");
         }
         trace("START BUTTON" + this.nextDialog + "  " + (this.dialog.length - 1) + "  " + this.dialogType);
         if(this.nextDialog == this.dialog.length - 1 && this.dialogType == "start")
         {
            trace("YO");
            this.textBubble.changeActionBtn("start",true);
         }
      }
   }
   function enableOtherNPC(s)
   {
      var _loc2_ = 0;
      do
      {
         _global.gBots[_loc2_].mc.enabled = s;
         _loc2_ = _loc2_ + 1;
      }
      while(_loc2_ < _global.gBots.length);
      
   }
   function saveRequest()
   {
      trace("[NPCSpeechHouseBunny] Grant House Bunny Item.");
      var _loc3_ = "give_items-100074";
      _global.gsiMethod.invoke(1125,[_global.gaiaSessionID,9,_loc3_],this.r1125,this);
   }
   function startRequest()
   {
      trace("START QUEST");
      this.textBubble.closeBubble();
      var _loc3_ = "http://" + _global.domainURL + "/quest/?action=accept&quest_id=543";
      getURL(_loc3_,"_blank");
      this.loadInfo();
   }
   function r1125(noError, rData, obj)
   {
      obj.replyDialogType = "tutorial";
      var _loc5_ = "Follow me and claim your reward. (A new browser tab or window will open to complete the quest.)";
      obj.replyDialog = [_loc5_];
      obj.onUserMessage(_loc5_);
      _root.ui_mc.historyPanel.echo("<FONT COLOR = \'#FFCCCC\'><B>" + obj.character.npcName.toUpperCase() + ":</B> " + _loc5_ + "</FONT><BR>");
      obj.textBubble.replyActionBtn();
      var _loc6_ = "http://" + _global.domainURL + "/npc/talk/?npc_id=373";
      getURL(_loc6_,"_blank");
      this.loadInfo();
   }
   function r364(noError, rData, obj)
   {
      if(noError == false)
      {
         var _loc3_ = "...";
         obj.onUserMessage(_loc3_);
         _root.ui_mc.historyPanel.echo("<FONT COLOR = \'#FFCCCC\'><B>" + obj.npcName.toUpperCase() + ":</B> " + _loc3_ + "</FONT><BR>");
         obj.textBubble.closeActionBtn();
      }
      else
      {
         obj.replyDialogType = "";
         obj.replyDialog = rData;
         obj.replyDialog.shift();
         obj.onUserMessage(obj.replyDialog[obj.nextReplyDialog]);
         _root.ui_mc.historyPanel.echo("<FONT COLOR = \'#FFCCCC\'><B>" + obj.character.npcName.toUpperCase() + ":</B> " + obj.replyDialog[obj.nextReplyDialog] + "</FONT><BR>");
         obj.textBubble.replyActionBtn();
      }
   }
   function showReplyDialog()
   {
      this.nextReplyDialog = this.nextReplyDialog + 1;
      if(this.nextReplyDialog == this.replyDialog.length)
      {
         this.nextDialog = this.nextReplyDialog = 0;
         this.textBubble.off();
         _global.gAvMan.getMyAvatar().lockWalking(false);
         this.enableOtherNPC(true);
         this.character.wc.restartMotion();
         if(parseInt(_global.eventID) == 10 && _root.ui_mc.mapInfo.eventInv.qty == "Max")
         {
            _root.ui_mc.mapInfo.eventInv.qty = "0/" + _global.halloweenMax;
         }
      }
      else
      {
         this.textBubble.continueChat(this.replyDialog[this.nextReplyDialog]);
         _root.ui_mc.historyPanel.echo("<FONT COLOR = \'#FFCCCC\'><B>" + this.character.npcName.toUpperCase() + ":</B> " + this.replyDialog[this.nextReplyDialog] + "</FONT><BR>");
      }
   }
   function remove()
   {
      this.textBubble.remove();
      false;
   }
}

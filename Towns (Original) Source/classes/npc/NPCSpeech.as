class classes.npc.NPCSpeech
{
   var nextDialog = 0;
   var nextReplyDialog = 0;
   function NPCSpeech(wd, npcObj, headX, headY, cFace, textY)
   {
      trace("wd=" + wd);
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
         this.capturePress();
      };
      this.character.mc.enabled = false;
      this.textBubble = new classes.npc.NPCTextBubble(this.character,this,headX,headY,textY);
      this.range = new classes.range.Range(this.character.mc,75,0,-50);
      _global.gsiMethod.invoke("340",[wd,_global.gaiaSessionID],this.r340,this);
   }
   function r340(noErr, rData, obj)
   {
      obj.dialogType = rData[0];
      obj.dialog = rData;
      obj.dialog.shift();
      obj.character.mc.enabled = true;
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
   function checkForGrant(currentDialog)
   {
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
      this.checkForGrant(this.nextDialog);
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
      trace("SAVE CANDY to INV!!!");
      if(parseInt(_global.eventID) == 10)
      {
         _global.gsiMethod.invoke("364",[7,_global.gaiaSessionID],this.r364,this);
      }
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
         obj.replyDialogType = rData[0];
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
         if(parseInt(_global.eventID) == 10 && _root.ui_mc.mapInfo.eventHalloweenInv.qty.text == "Max")
         {
            _root.ui_mc.mapInfo.eventHalloweenInv.qty.text = "0/" + _global.halloweenMax;
         }
         if(parseInt(_global.eventID) == 19)
         {
            if(this.replyDialog[0].charAt(0) != "J")
            {
               _root.stream.townEvent.clearInv();
               if(_global.sushi.connectionType != "")
               {
                  _global.gsc.sendUserMessage(200,1,parseInt(_global.sushi.me.room),["easter","basket"]);
               }
               else
               {
                  _global.gAvMan.getMyAvatar().emoteBubble.playCollectEmote("easter","basket");
               }
            }
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

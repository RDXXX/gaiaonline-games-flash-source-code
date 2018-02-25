class classes.npc.NPCTextBubbleSponsor
{
   static var count = 0;
   function NPCTextBubbleSponsor(npcObj, speechObj, hX, hY, tY)
   {
      this.bubLoaded = false;
      var thisClass = this;
      this.character = npcObj;
      this.speech = speechObj;
      this.activateSave = false;
      this.activateStart = false;
      this.headX = hX;
      this.headY = hY;
      this.textY = !(tY == undefined || tY == "")?tY:100;
      this.mc = _global.gCanvas.createEmptyMovieClip("npc_bubble" + classes.npc.NPCTextBubbleSponsor.count++,_global.gCanvas.getNextHighestDepth());
      var _loc4_ = new Object();
      _loc4_.onLoadInit = function(target_mc)
      {
         thisClass.bubLoaded = true;
      };
      var _loc3_ = new MovieClipLoader();
      _loc3_.addListener(_loc4_);
      _loc3_.loadClip(_global.filePath + "wordbubble/wordbubble_npc.swf",this.mc);
      _global.gBroadcaster.addListener(this);
   }
   function run()
   {
      this.mc._x = this.character.mc._x;
      this.mc._y = this.character.mc._y - this.textY;
      _global.gBroadcaster.removeListener(this);
   }
   function loadHeadshot(whoSwf, thisBubble)
   {
      var _loc3_ = new Object();
      _loc3_.onLoadStart = function(target_mc)
      {
         target_mc._y = thisBubble.headY;
         target_mc._x = thisBubble.headX;
      };
      var _loc2_ = new MovieClipLoader();
      _loc2_.addListener(_loc3_);
      _loc2_.loadClip(whoSwf,this.mc.headshot.head);
   }
   function changeActionBtn(action, force)
   {
      if(action == "start")
      {
         this.activateStart = true;
      }
      else
      {
         this.activateSave = true;
      }
      if(force == true)
      {
         var thisBubble = this;
         this.mc.actionBtns.gotoAndStop(3);
         this.mc.actionBtns.next_btn.onRelease = function()
         {
            thisBubble.speech.startRequest();
         };
      }
   }
   function replyActionBtn()
   {
      this.mc.actionBtns.gotoAndStop("next");
      var thisBubble = this;
      this.mc.actionBtns.next_btn.onRelease = function()
      {
         thisBubble.speech.showReplyDialog();
      };
   }
   function closeActionBtn()
   {
      this.mc.actionBtns.gotoAndStop("next");
      var thisBubble = this;
      this.mc.actionBtns.next_btn.onRelease = function()
      {
         thisBubble.speech.nextDialog = 0;
         thisBubble.off();
         _global.gAvMan.getMyAvatar().lockWalking(false);
         thisBubble.speech.enableOtherNPC(true);
      };
   }
   function closeBubble()
   {
      this.mc.actionBtns.gotoAndStop("next");
      var _loc3_ = this;
      _loc3_.speech.nextDialog = 0;
      _loc3_.off();
      _global.gAvMan.getMyAvatar().lockWalking(false);
      _loc3_.speech.enableOtherNPC(true);
   }
   function chat(s)
   {
      this.mc._x = this.character.mc._x;
      this.mc._y = this.character.mc._y - this.textY;
      this.mc.gotoAndStop(2);
      var thisBubble = this;
      this.loadHeadshot("npc/characters/" + this.character.npcName + ".swf",this);
      this.mc.nameTag = this.character.npcName.toUpperCase();
      this.mc.cancelbtn.onRelease = function()
      {
         thisBubble.closeBubble();
      };
      this.mc.directory.onRelease = function()
      {
         thisBubble.closeBubble();
         _global.uiCtrl.dirState();
      };
      if(this.activateSave == true)
      {
         this.activateSave = false;
         this.mc.actionBtns.gotoAndStop(2);
         this.mc.actionBtns.next_btn.onRelease = function()
         {
            thisBubble.speech.saveRequest();
         };
      }
      else if(this.activateStart == true)
      {
         this.activateStart = false;
         this.mc.actionBtns.gotoAndStop(3);
         this.mc.actionBtns.next_btn.onRelease = function()
         {
            thisBubble.speech.startRequest();
         };
      }
      else
      {
         this.mc.actionBtns.next_btn.onRelease = function()
         {
            thisBubble.speech.dialogType != "random"?thisBubble.speech.tutorialDialog():thisBubble.off();
         };
      }
      this.mc.NPCmess.htmlText = s;
      this.posBubble();
   }
   function continueChat(s)
   {
      this.mc.NPCmess.htmlText = s;
      this.posBubble();
   }
   function posBubble()
   {
      this.mc._y = this.character.mc._y - 50;
   }
   function off()
   {
      this.mc._x = this.character.mc._x;
      this.mc._y = this.character.mc._y - this.textY;
      this.mc.gotoAndStop(1);
   }
   function remove()
   {
      this.mc.removeMovieClip();
   }
}

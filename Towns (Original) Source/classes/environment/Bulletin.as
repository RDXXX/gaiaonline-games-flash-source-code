class classes.environment.Bulletin
{
   static var houseCount = 1;
   function Bulletin(pClass)
   {
      this.parentClass = pClass;
      this.bBoard = _global.gCanvas.clipping_canvas.bulletin;
      this.bBoard.loadMovie(_global.filePath + "structures/bulletin.swf");
      _global.gBroadcaster.addListener(this);
   }
   function run()
   {
      if(this.bBoard._currentframe != 0)
      {
         _global.gBroadcaster.removeListener(this);
         this.range = new classes.range.Range(this.bBoard,30);
         this.bBoard.sensor.ref = this;
         this.bBoard.sensor.onPress = function()
         {
            this.ref.showMenu();
         };
      }
   }
   function showMenu()
   {
      var _loc3_ = this.range.testRange(_global.gAvMan.getMyAvatar().feet);
      if(_loc3_)
      {
         var thisClass = this;
         this.bBoard.sensor.enabled = false;
         this.boardPanel = _global.uiCtrl.bulletinBoard(this.bBoard,true,[]);
         this.getBoardData();
         this.bBoard.onEnterFrame = function()
         {
            var _loc3_ = thisClass.range.testRange(_global.gAvMan.getMyAvatar().feet);
            if(_loc3_ == false)
            {
               delete this.onEnterFrame;
               thisClass.hideMenu();
            }
         };
      }
   }
   function getBoardData()
   {
      var _loc4_ = _global.mapData[0];
      var _loc3_ = _global.gsiMethod.queue(113,[_global.gaiaSessionID],this.boardData,this);
      _global.gsiMethod.queue(2031,[_loc4_,_global.gaiaSessionID],_loc3_,this);
      _global.gsiMethod.queue(2014,[_loc4_,_global.gaiaSessionID],_loc3_,this);
      _global.gsiMethod.send();
   }
   function boardPage1(boardPanel)
   {
      boardPanel.gotoAndStop(1);
      boardPanel.address.text = boardPanel.townName;
      boardPanel.topic.text = boardPanel.topicName;
      var thisClass = this;
      if(boardPanel.townCost == "-1" || boardPanel.townCost == "0")
      {
         boardPanel.nameEdit._visible = false;
         boardPanel.townName_desc._visible = false;
      }
      else
      {
         boardPanel.nameEdit._visible = true;
         boardPanel.townName_desc._visible = true;
      }
      boardPanel.topicName_desc._visible = true;
      boardPanel.townTopic_desc._visible = true;
      boardPanel.topicEdit._visible = true;
      boardPanel.nameEdit.onRelease = function()
      {
         thisClass.boardPage2(boardPanel);
      };
      boardPanel.topicEdit.onRelease = function()
      {
         thisClass.boardPage3(boardPanel);
      };
   }
   function boardPage2(boardPanel)
   {
      boardPanel.gotoAndStop(2);
      boardPanel.address.text = boardPanel.townName;
      boardPanel.gaiaGold = "Your Gold: " + boardPanel.myGold;
      boardPanel.cost.text = boardPanel.townCost;
      var thisClip = this;
      boardPanel.ok.onRelease = function()
      {
         thisClip.saveTitle(boardPanel);
      };
   }
   function boardPage3(boardPanel)
   {
      boardPanel.gotoAndStop(3);
      boardPanel.topic.text = boardPanel.topicName;
      boardPanel.gaiaGold = "Your Gold: " + boardPanel.myGold;
      boardPanel.cost.text = boardPanel.anchorCost;
      var thisClip = this;
      boardPanel.ok.onRelease = function()
      {
         thisClip.saveTopic(boardPanel);
      };
   }
   function saveTopic()
   {
      trace("------ DATA FOR NEW TOPIC NAME ------");
      var _loc5_ = _global.mapData[0];
      trace("Town Address:  " + _loc5_);
      var _loc3_ = this.boardPanel.newTopic.text;
      trace("Topic Name:  " + _loc3_);
      var _loc4_ = random(100000000);
      trace("Event Key:  " + _loc4_);
      trace("Gaia SID:  " + _global.gaiaSessionID);
      if(_loc3_ != undefined && _loc3_ != "")
      {
         this.boardPanel.gotoAndStop(4);
         var _loc6_ = _global.gsiMethod.queue(2013,[_loc5_,_loc3_,_loc4_,_global.gaiaSessionID],this.topicData,this);
         _global.gsiMethod.invoke(113,[_global.gaiaSessionID],_loc6_);
      }
   }
   function saveTitle()
   {
      trace("WTF");
      var _loc6_ = _global.mapData[0];
      var _loc3_ = this.boardPanel.titleName.text;
      var _loc4_ = random(100000000);
      if(_loc3_ != undefined)
      {
         if(_loc3_ != "")
         {
            this.boardPanel.gotoAndStop(4);
            var _loc5_ = _global.gsiMethod.queue(2032,[_loc6_,_loc3_,_loc4_,_global.gaiaSessionID],this.titleData,this);
            _global.gsiMethod.invoke(113,[_global.gaiaSessionID],_loc5_);
         }
      }
   }
   function boardData(noErr, info, thisClass)
   {
      this.boardPanel.myGold = info[0].data;
      var _loc3_ = info[1].data;
      var _loc5_ = info[2].data;
      if(_loc3_[0] == 0)
      {
         this.boardPanel.topicName = "";
      }
      else
      {
         this.boardPanel.topicName = gaiaWordFilter.WordFilter.cleanBadWords(_loc3_[0][0],_global.myUserData[4]);
      }
      this.boardPanel.townName = gaiaWordFilter.WordFilter.cleanBadWords(_loc3_[1],_global.myUserData[4]);
      this.boardPanel.townCost = _loc3_[5];
      this.boardPanel.anchorCost = _loc5_[4];
      thisClass.boardPage1(this.boardPanel);
   }
   function topicData(noErr, info, thisClass)
   {
      if(info[0].success == true)
      {
         _global.myGold = info[1].data;
         _root.ui_mc.mapInfo.goldAmount = _global.myGold + " g";
         thisClass.boardPage1(thisClass.boardPanel);
         var _loc6_ = info[0].data;
         thisClass.boardPanel.topic.text = thisClass.boardPanel.topicName = gaiaWordFilter.WordFilter.cleanBadWords(_loc6_[1],_global.myUserData[4]);
      }
      else
      {
         thisClass.boardPanel.gotoAndStop(5);
         var _loc5_ = info[0].data;
         thisClass.boardPanel.err.text = _loc5_[1];
      }
   }
   function titleData(noErr, info, thisClass)
   {
      if(info[0].success == true)
      {
         _global.myGold = info[1].data;
         _root.ui_mc.mapInfo.goldAmount = _global.myGold + " g";
         var _loc5_ = gaiaWordFilter.WordFilter.cleanBadWords(thisClass.boardPanel.titleName.text,_global.myUserData[4]);
         thisClass.boardPage1(thisClass.boardPanel);
         thisClass.boardPanel.townName = thisClass.boardPanel.address.text = _loc5_;
      }
      else
      {
         thisClass.boardPanel.gotoAndStop(5);
         var _loc6_ = info[0].data;
         thisClass.boardPanel.err.text = _loc6_[1];
      }
   }
   function hideMenu()
   {
      this.bBoard.sensor.enabled = true;
      _global.uiCtrl.bulletinBoard(this.bBoard,false);
   }
   function remove()
   {
      this.bound.unloadMovie();
      delete this.range;
      false;
   }
}

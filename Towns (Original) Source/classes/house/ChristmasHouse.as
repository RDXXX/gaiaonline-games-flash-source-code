class classes.house.ChristmasHouse
{
   var disableClick = false;
   function ChristmasHouse(houseNum, house_mc, houseData)
   {
      var thisClass = this;
      var _loc2_ = house_mc.pumpkin;
      this.carolID = "";
      this.addCandy(houseNum,house_mc);
      _loc2_.gotoAndStop(2);
      _loc2_.onRelease = function()
      {
         thisClass.giveCandy(this);
      };
   }
   function addCandy(houseNum, house)
   {
      var _loc4_ = _global.eventData.length;
      if(_loc4_ == undefined)
      {
         _loc4_ = 0;
      }
      var _loc3_ = 0;
      while(_loc3_ <= _loc4_)
      {
         if(parseInt(_global.eventData[_loc3_][1]) == houseNum)
         {
            this.carolID = _global.eventData[_loc3_][0];
            trace("[CHouse] setting carolID: " + this.carolID);
            break;
         }
         _loc3_ = _loc3_ + 1;
      }
   }
   function giveCandy(dispenser)
   {
      var thisClass = this;
      if(dispenser.hitTest(_global.gAvMan.getMyAvatar().avClip))
      {
         if(this.disableClick == false)
         {
            dispenser.gotoAndStop(3);
            this.disableClick = true;
            dispenser.onEnterFrame = function()
            {
               if(this._currentframe == 2)
               {
                  if(Number(_global.eventQty[0]) >= Number(_global.eventQty[1]))
                  {
                     trace("[CHouse] quantity is MAX " + _global.eventQty[0] + " " + _global.eventQty[1]);
                     thisClass.carolID = "";
                  }
                  thisClass.saveCandy(this._parent);
                  delete this.onEnterFrame;
               }
            };
         }
      }
   }
   function saveCandy(house)
   {
      trace("[CHouse] saving carol: " + this.carolID.toString());
      if(_global.sushi.connectionType != "")
      {
         _global.gsc.sendUserMessage(1,1,parseInt(_global.sushi.me.room),["1","notes"]);
      }
      else
      {
         _global.gAvMan.getMyAvatar().emoteBubble.playEmote(1,"notes");
      }
      if(this.carolID != "")
      {
         _global.gsiMethod.invoke(367,[_global.jumpZip,this.carolID,8,_global.gaiaSessionID],this.saveCandyResult,this);
      }
      else
      {
         this.miss();
      }
   }
   function saveCandyResult(noErr, info, thisClass)
   {
      if(noErr == true)
      {
         thisClass.carolID = "";
         trace("[CHouse] move caroling inventory: " + info[0].toString());
         _global.eventQty[0] = parseInt(info[0]);
         _global.uiCtrl.moveEventInv(parseInt(info[0]));
         this.interval = setInterval(this,"cheer",1000);
      }
      else
      {
         thisClass.miss();
      }
   }
   function miss()
   {
      this.interval = setInterval(this,"cry",1000);
   }
   function cry()
   {
      _global.gAvMan.getMyAvatar().emoteBubble.playEmote(2,"cry");
      clearInterval(this.interval);
      this.interval = null;
      this.disableClick = false;
   }
   function cheer()
   {
      _global.gAvMan.getMyAvatar().emoteBubble.playCollectEmote("cheer","cheer_1");
      clearInterval(this.interval);
      this.interval = null;
      this.disableClick = false;
   }
   function grantEnabled()
   {
   }
   function grant()
   {
   }
}

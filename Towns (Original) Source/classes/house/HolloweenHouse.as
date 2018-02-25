class classes.house.HolloweenHouse
{
   var disableClick = false;
   function HolloweenHouse(houseNum, house_mc, houseData)
   {
      var thisClass = this;
      _root.ui_mc.mapInfo.eventHalloweenInv._visible = true;
      var _loc3_ = house_mc.pumpkin;
      this.candyID = this.candyType = "";
      this.addCandy(houseNum,house_mc);
      _loc3_.gotoAndStop(2);
      _loc3_.onRelease = function()
      {
         thisClass.giveCandy(this);
      };
   }
   function addCandy(houseNum, house)
   {
      var _loc5_ = _global.eventData.length;
      if(_loc5_ == undefined)
      {
         _loc5_ = 0;
      }
      var _loc3_ = 0;
      while(_loc3_ <= _loc5_)
      {
         if(parseInt(_global.eventData[_loc3_][1]) == houseNum)
         {
            var _loc4_ = _global.eventData[_loc3_][2];
            trace("[HHouse] candy img: " + _loc4_);
            this.candyID = _global.eventData[_loc3_][0];
            this.candyType = "h2k10_candy_" + Math.ceil(Math.random() * 8).toString();
            trace("[HHouse] candy type: " + this.candyType);
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
                  thisClass.disableClick = false;
                  if(_root.ui_mc.mapInfo.eventHalloweenInv.qty.text == "Max")
                  {
                     thisClass.candyID = "";
                  }
                  thisClass.saveCandy(this._parent);
                  delete this.onEnterFrame;
               }
            };
            trace("[HHouse] I\'m giving candy!!");
         }
      }
   }
   function saveCandy(house)
   {
      if(this.candyID != "")
      {
         trace("[HHouse] SAVING CANDY ID:  " + this.candyID);
         _global.gsiMethod.invoke(367,[_global.jumpZip,this.candyID,7,_global.gaiaSessionID],this.saveCandyResult,this);
      }
      else
      {
         this.missCandy();
      }
   }
   function saveCandyResult(noErr, info, thisClass)
   {
      if(noErr == true)
      {
         _global.gAvMan.getMyAvatar().emoteBubble.playCollectEmote("candy",thisClass.candyType);
         if(_global.sushi.connectionType != "")
         {
            _global.gsc.sendUserMessage("611",1,parseInt(_global.sushi.me.room),["candy",thisClass.candyType]);
         }
         thisClass.candyType = thisClass.candyID = "";
         var _loc4_ = parseInt(info[0]) < _global.halloweenMax?info + "/" + _global.halloweenMax:"Max";
         _root.ui_mc.mapInfo.eventHalloweenInv.qty.text = _loc4_;
      }
      else
      {
         thisClass.missCandy();
      }
   }
   function missCandy()
   {
      _global.gAvMan.getMyAvatar().emoteBubble.playEmote(2,"cry");
   }
   function grantEnabled()
   {
      trace("[HHouse] ENABLE GRANT");
   }
   function grant()
   {
   }
}

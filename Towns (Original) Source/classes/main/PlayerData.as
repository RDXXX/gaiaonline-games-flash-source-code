class classes.main.PlayerData
{
   function PlayerData(pClass)
   {
      this.parentClass = pClass;
      this.retry107 = this.retry112 = this.retry113 = 0;
      this.getUserData();
   }
   function getUserData()
   {
      var _loc3_ = _global.gsiMethod.queue(112,["towns"],this.userData,this);
      _global.gsiMethod.invoke(107,[_global.gaiaSessionID],_loc3_);
   }
   function getGold()
   {
      _global.gsiMethod.invoke(113,[_global.gaiaSessionID],this.goldData,this);
   }
   function userData(noErr, info, thisClass)
   {
      if(info[0].success == true && info[1].success == true)
      {
         thisClass.retry107 = thisClass.retry112 = 0;
         _global.eventID = info[0].data;
         trace("[PlayerData] _global.eventID " + _global.eventID);
         if(_global.eventID == _global.EVENT_SUMMER)
         {
            _global.POOL = true;
         }
         _global.myUserData = info[1].data;
         thisClass.getGold();
      }
      else if(info[1].success == false)
      {
         var _loc5_ = info[1].data;
         switch(_loc5_[0])
         {
            case "-2":
               if(thisClass.retry107 <= 3)
               {
                  thisClass.getUserData();
               }
               else
               {
                  this.parentClass.errorMsg("107",_loc5_[0],_loc5_[1]);
               }
               thisClass.retry107 = thisClass.retry107 + 1;
               break;
            case "-3":
            case "-4":
            case "-7":
               this.logging = new classes.main.LogIn();
               break;
            default:
               if(thisClass.retry107 <= 3)
               {
                  thisClass.getUserData();
               }
               this.parentClass.errorMsg("107",_loc5_[0],_loc5_[1]);
               thisClass.retry107 = thisClass.retry107 + 1;
         }
      }
      else if(info[0].success == false)
      {
         _loc5_ = info[0].data;
         if((_loc0_ = _loc5_[0]) !== "0")
         {
            if(thisClass.retry112 <= 3)
            {
               thisClass.getUserData();
            }
            this.parentClass.errorMsg("112",_loc5_[0],_loc5_[1]);
            thisClass.retry112 = thisClass.retry112 + 1;
         }
         else
         {
            thisClass.retry112 = _loc0_ = 0;
            thisClass.retry107 = _loc0_;
            _global.eventID = info[0].data;
            trace("[PlayerData] _global.eventID " + _global.eventID);
            if(_global.eventID == _global.EVENT_SUMMER)
            {
               _global.POOL = true;
            }
            _global.myUserData = info[1].data;
            thisClass.getGold();
         }
      }
   }
   function goldData(noErr, info, thisClass)
   {
      _root.loadBar.info = "";
      _root.loadBar._visible = false;
      if(noErr == true)
      {
         thisClass.retry113 = 0;
         _global.myGold = info;
         this.parentClass.nextSequence();
      }
      else
      {
         if(thisClass.retry113 <= 3)
         {
            thisClass.getGold();
         }
         this.parentClass.errorMsg("113",info[0],info[1]);
         thisClass.retry113 = thisClass.retry113 + 1;
      }
   }
}

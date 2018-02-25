class classes.chat.SubChat
{
   var roomTries = 0;
   var TOTAL_ROOM_TRIES = 4;
   var ROOM_RETRY_PAUSE = 150;
   function SubChat(pClass)
   {
      this.parentClass = pClass;
      this.sushi = _global.sushi;
      this.roomName = _global.mapData[0] + "S" + _global.gHouseOwnerId + "#" + _global.gHouseOwnerName;
      this.findSubChat();
   }
   function findSubChat()
   {
      trace("[SubChat] ----- FIND ROOM ----------- (" + this.roomName + ")");
      this.roomTries = this.roomTries + 1;
      this.findRoomID(this.roomName);
   }
   function findRoomID(rmName)
   {
      var _loc3_ = this.sushi.session.getRoomIDs();
      var _loc2_ = 0;
      while(_loc2_ < _loc3_.length)
      {
         if(this.sushi.room.getName(_loc3_[_loc2_]) == rmName)
         {
            this.onRoomFound(_loc3_[_loc2_]);
            return undefined;
         }
         _loc2_ = _loc2_ + 1;
      }
      this.onRoomFound("-1");
   }
   function onRoomFound(roomNum)
   {
      trace("[SubChat] ----- ROOM FOUND ----------- (" + roomNum + ")");
      this.roomID = roomNum;
      if(roomNum == "-1")
      {
         this.createRoom();
      }
      else
      {
         this.changeRoom();
      }
   }
   function createRoom(houseData)
   {
      trace("[SubChat] ----- CREATING ROOM NAME: " + this.roomName);
      this.sushi.me.createRoom(this.roomName,"gaia",this.onNewRoom,this);
   }
   function onNewRoom(error, id)
   {
      switch(error)
      {
         case 0:
            this.roomID = id;
            trace("[SubChat] ----- NEW ROOM ----------- (" + this.roomID + ")");
            this.roomTries = 0;
            this.changeRoom();
            break;
         case 1:
            trace("[SubChat] ----- Create Room Failed (" + error + ")");
            if(this.roomTries <= this.TOTAL_ROOM_TRIES)
            {
               this.clearPauseProc();
               this.retryPause = setInterval(this,"retryRoom",this.ROOM_RETRY_PAUSE);
            }
            else
            {
               this.gotoTrain();
            }
            break;
         case 2:
         default:
            trace("[SubChat] ----- Create Room Failed (" + error + ")");
            this.gotoTrain();
      }
   }
   function changeRoom()
   {
      if(this.sushi.me.room == this.roomID)
      {
         this.saveUserInfo();
         trace("[SubChat] ----- OOPS!! I\'m already in this room ----------- (" + this.roomID + ")");
      }
      else
      {
         trace("[SubChat] ----- CHANGING ROOM ----------- (" + this.roomID + ")");
         var _loc4_ = _global.myUserData[1];
         var _loc6_ = _global.myUserData[2];
         var _loc3_ = _global.myUserData[3];
         var _loc5_ = _global.myUserData[0];
         if(parseInt(_loc3_) >= 50)
         {
            this.sushi.room.lock(this.roomID,0);
         }
         var _loc7_ = ["-1","-1","-1","",_loc6_,_loc4_,_loc5_,"",_loc3_,!_global.isMiniAvatar?"0":"1",""];
         this.sushi.me.changeRoom(this.roomID,_loc7_,this.onRoomChanged,this);
      }
   }
   function onRoomChanged(error)
   {
      switch(error)
      {
         case 0:
            this.roomTries = 0;
            this.saveUserInfo();
            break;
         case 3:
            trace("[SubChat] ----- Change Room Failed (" + error + ")");
            if(this.roomTries <= this.TOTAL_ROOM_TRIES)
            {
               this.clearPauseProc();
               this.retryPause = setInterval(this,"retryRoom",this.ROOM_RETRY_PAUSE);
            }
            else
            {
               this.gotoTrain();
            }
            break;
         case 1:
         default:
         case 2:
         default:
         case 4:
         default:
            trace("[SubChat] ----- Change Room Failed (" + error + ")");
            this.gotoTrain();
      }
   }
   function saveUserInfo()
   {
      _global.gsiMethod.invoke(200,[_global.gaiaSessionID,_global.mapData[6],this.sushi.me.id,this.sushi.me.session,this.sushi.me.room],this.writeFinished,this);
   }
   function writeFinished()
   {
      this.parentClass.nextSequence();
   }
   function gotoTrain()
   {
      trace("[SubChat] ----- BACK TO TRAINSTATION -----");
      _root.stream.destroySequence();
      _global.scene = "toTrain";
      _root.stream.loadSequence(_global.scene);
   }
   function clearPauseProc()
   {
      if(this.retryPause != null)
      {
         clearInterval(this.retryPause);
         this.retryPause = null;
      }
   }
   function retryRoom()
   {
      this.clearPauseProc();
      this.findSubChat();
   }
}

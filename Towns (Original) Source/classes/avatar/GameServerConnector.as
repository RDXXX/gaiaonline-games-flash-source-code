class classes.avatar.GameServerConnector
{
   function GameServerConnector()
   {
      this.sushi = _global.sushi;
   }
   function myID()
   {
      return this.sushi.me.id;
   }
   function myRoom()
   {
      return this.sushi.me.room;
   }
   function getMemberIDs(room)
   {
      return this.sushi.room.getMemberIDs(room);
   }
   function getMemberData(id)
   {
      var _loc2_ = this.sushi.member.getData(id);
      return _loc2_;
   }
   function getMemberAvUrl(avServerID, index)
   {
      if(avServerID == this.getMySID())
      {
         return _global.myUserData[2];
      }
      var _loc3_ = this.getMemberData(avServerID);
      if(_loc3_ && _loc3_[index] != undefined)
      {
         return _loc3_[index];
      }
      return null;
   }
   function getName(avServerID)
   {
      if(avServerID == this.getMySID())
      {
         return _global.myUserData[1];
      }
      var _loc3_ = this.getMemberData(avServerID);
      var _loc4_ = 5;
      if(_loc3_ && _loc3_[_loc4_] != undefined)
      {
         return _loc3_[_loc4_];
      }
      return null;
   }
   function resetListeners(avClass)
   {
      this.sushi.event.onNewMember.removeListener(avClass);
      this.sushi.event.onMemberChangesRoom.removeListener(avClass);
      this.sushi.event.onRemoveMember.removeListener(avClass);
      this.sushi.event.onMemberKicked.removeListener(avClass);
      this.sushi.event.onNewMember.addListener(avClass);
      this.sushi.event.onMemberChangesRoom.addListener(avClass);
      this.sushi.event.onRemoveMember.addListener(avClass);
      this.sushi.event.onMemberKicked.addListener(avClass);
   }
   function removeListeners(removeFrom)
   {
      this.sushi.event.onUserMessage.removeListener(removeFrom);
   }
   function regEvent(id, regTo)
   {
      this.sushi.member.registerEvents(id,regTo);
   }
   function deregEvent(id)
   {
      this.sushi.member.deregisterEvents(id);
   }
   function update(from, to, avPose)
   {
      var _loc3_ = _global.myUserData[1];
      var _loc6_ = _global.myUserData[2];
      var _loc5_ = _global.myUserData[3];
      var _loc4_ = _global.myUserData[0];
      var _loc7_ = [from,to,avPose,"",_loc6_,_loc3_,_loc4_,"",_loc5_,!_global.isMiniAvatar?"0":"1",""];
      this.sushi.me.update(_loc7_);
   }
   function sendUserMessage(messageID, routingID, target, array)
   {
      this.sushi.sendUserMessage(messageID.toString(),routingID,target,array);
   }
   function getUserMessage(dataArray)
   {
      return dataArray;
   }
   function silentUpdate(xyData)
   {
   }
   function broadcastAvatarToy(actionInfo)
   {
      this.sendUserMessage(3000,1,parseInt(_global.sushi.me.room),actionInfo);
   }
   function killTheWaterGun(actionInfo)
   {
      this.sendUserMessage(3001,1,parseInt(_global.sushi.me.room),actionInfo);
   }
   function getMySID()
   {
      return !(this.myID() == undefined || this.myID() == -1)?this.myID():0;
   }
}

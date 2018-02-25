class classes.main.IgnoreUserManager
{
   var activeIgnoredUsers = [];
   function IgnoreUserManager()
   {
      this.ignoredUsers = [];
      this.getIgnoredUsers();
   }
   function getIgnoredUsers()
   {
      this.ignoredUsers = [];
      _global.gsiMethod.invoke(132,[_global.gaiaSessionID],this.ignoreUsersReceived,this);
   }
   function ignoreUsersReceived(noErr, info)
   {
      var _loc2_ = 0;
      while(_loc2_ < info.length)
      {
         this.ignoredUsers.push({gaiaID:info[_loc2_],serverID:""});
         _loc2_ = _loc2_ + 1;
      }
   }
   function isUserIgnoredByGaiaID(gaiaServerID, avServerID)
   {
      var _loc3_ = this.activeIgnoredUsers.length;
      var _loc2_ = 0;
      while(_loc2_ < _loc3_)
      {
         if(gaiaServerID == this.activeIgnoredUsers[_loc2_].gaiaID)
         {
            this.activeIgnoredUsers[_loc2_].serverID = avServerID;
            return true;
         }
         _loc2_ = _loc2_ + 1;
      }
      return false;
   }
   function shouldIgnoreUser(gaiaServerID, avServerID)
   {
      var _loc7_ = this.ignoredUsers.length;
      var _loc2_ = 0;
      while(_loc2_ < _loc7_)
      {
         if(gaiaServerID == this.ignoredUsers[_loc2_].gaiaID)
         {
            trace("[IUM] user to ignore: " + gaiaServerID);
            this.ignoredUsers[_loc2_].serverID = avServerID;
            this.activeIgnoredUsers.push({gaiaID:gaiaServerID,serverID:avServerID});
            this.updateIgnoredAvatar(avServerID,20);
            return true;
         }
         _loc2_ = _loc2_ + 1;
      }
      return false;
   }
   function isUserIgnoredByServerID(avServerID)
   {
      var _loc3_ = this.activeIgnoredUsers.length;
      var _loc2_ = 0;
      while(_loc2_ < _loc3_)
      {
         if(avServerID == this.activeIgnoredUsers[_loc2_].serverID)
         {
            return true;
         }
         _loc2_ = _loc2_ + 1;
      }
      return false;
   }
   function resetIgnoreData()
   {
      this.activeIgnoredUsers = [];
      this.getIgnoredUsers();
   }
   function addUserToIgnoreList(gaiaServerID, avServerID)
   {
      _global.gsiMethod.invoke(114,["ignore",gaiaServerID,_global.gaiaSessionID],this.addUserReceived,this);
      this.activeIgnoredUsers.push({gaiaID:gaiaServerID,serverID:avServerID});
      this.updateIgnoredAvatar(avServerID,20);
   }
   function removeUserIgnoreList(gaiaServerID, avServerID)
   {
      this.removeUserReceived(gaiaServerID,avServerID);
      _global.gsiMethod.invoke(114,["unignore",gaiaServerID,_global.gaiaSessionID],this.removeUserReceived,this);
      this.updateIgnoredAvatar(avServerID,100);
      var _loc3_ = 0;
      while(_loc3_ < this.activeIgnoredUsers.length)
      {
         if(this.activeIgnoredUsers[_loc3_].gaiaID == gaiaServerID)
         {
            this.activeIgnoredUsers.splice(_loc3_,1);
            return undefined;
         }
         _loc3_ = _loc3_ + 1;
      }
   }
   function removeUserReceived(noErr, info)
   {
      this.getIgnoredUsers();
   }
   function addUserReceived(noErr, info)
   {
      this.getIgnoredUsers();
   }
   function updateIgnoredAvatar(avID, alpha)
   {
      _global.gAvMan.getAvatar(avID).avClip._alpha = alpha;
   }
}

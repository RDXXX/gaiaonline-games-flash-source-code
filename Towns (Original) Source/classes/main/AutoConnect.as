class classes.main.AutoConnect
{
   var retry302 = 0;
   var retry301 = 0;
   var minRoomMembers = 50;
   var MAX_PER_GRID = 500;
   function AutoConnect(pClass)
   {
      this.parentClass = pClass;
      this.getRoomPopulation();
   }
   function getRoomPopulation()
   {
      var _loc3_ = _global.gsiMethod.queue(2028,["1001000",_global.gaiaSessionID],this.populationDataLoaded,this);
      _global.gsiMethod.queue(2002,[_global.gaiaSessionID],_loc3_);
      _global.gsiMethod.send();
   }
   function populationDataLoaded(noErr, info)
   {
      var _loc6_ = [];
      var _loc5_ = info[0].data;
      var _loc7_ = info[1].data;
      var _loc2_ = 0;
      while(_loc2_ < _loc5_.length)
      {
         var _loc4_ = parseInt(_loc5_[_loc2_]);
         if(_loc4_ > this.minRoomMembers && _loc4_ < this.MAX_PER_GRID)
         {
            var _loc3_ = new Object();
            _loc3_.roomPopulation = _loc5_[_loc2_];
            _loc3_.zipID = _loc2_;
            _loc6_.push(_loc3_);
         }
         _loc2_ = _loc2_ + 1;
      }
      this.getTheBestRoom(_loc6_,_loc7_);
   }
   function getTheBestRoom(rmData, bookmarkData)
   {
      var _loc6_ = 0;
      while(_loc6_ < rmData.length)
      {
         var _loc3_ = 0;
         while(_loc3_ < bookmarkData.length)
         {
            var _loc8_ = this.formatZipID(rmData[_loc6_].zipID).toString();
            var _loc4_ = bookmarkData[_loc3_][3].toString().substr(2,bookmarkData[_loc3_][3].length);
            if(_loc8_.substr(1,_loc8_.length) == _loc4_ && _global.shouldTryBookmark)
            {
               this.roomFound(_loc8_);
               return undefined;
            }
            _loc3_ = _loc3_ + 1;
         }
         _loc6_ = _loc6_ + 1;
      }
      var _loc9_ = this.randRange(0,rmData.length - 1);
      _loc8_ = this.formatZipID(rmData[_loc9_].zipID);
      this.roomFound(_loc8_);
   }
   function formatZipID(zip)
   {
      var _loc3_ = zip.toString();
      if(_loc3_.length == 2)
      {
         var _loc1_ = "510010" + zip;
      }
      else
      {
         _loc1_ = "5100100" + zip;
      }
      return _loc1_;
   }
   function roomFound(zipID)
   {
      trace("[AutoConnect] This is the place: " + zipID);
      _global.jumpZip = zipID;
      this.parentClass.nextSequence();
   }
   function randRange(min, max)
   {
      var _loc1_ = Math.floor(Math.random() * (max - min + 1)) + min;
      return _loc1_;
   }
}

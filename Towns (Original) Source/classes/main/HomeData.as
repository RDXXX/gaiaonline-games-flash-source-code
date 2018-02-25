class classes.main.HomeData
{
   function HomeData(pClass)
   {
      this.parentClass = pClass;
      var _loc3_ = _global.gsiMethod.queue(307,[int(_global.gHouseOwnerId)],this.hData,this);
      _global.gsiMethod.queue(615,[int(_global.gHouseOwnerId),_global.gaiaSessionID],_loc3_);
      _global.gsiMethod.send();
   }
   function hData(noErr, info)
   {
      var _loc3_ = undefined;
      var _loc4_ = undefined;
      if(noErr == false || info[0].success == false)
      {
         this.parentClass.destroySequence();
         _global.scene = "train";
         this.parentClass.loadSequence(_global.scene);
      }
      else
      {
         _global.jumpZip = info[0].data[2];
         _global.gHouseId = info[0].data[3].substr(0,1);
         _global.gHouseOwnerId = info[0].data[0];
         _global.gHouseOwnerName = info[0].data[1];
         if(_global.jumpZip == 0)
         {
            _loc4_ = 0;
            _loc3_ = 0;
            while(_loc3_ < _global.gHouseOwnerName.length)
            {
               _loc4_ = _loc4_ + _global.gHouseOwnerName.charCodeAt(_loc3_);
               _loc3_ = _loc3_ + 1;
            }
            _loc4_ = _loc4_ % 100;
            _global.jumpZip = "110010" + String(_loc4_);
         }
         if(info[1].data[0] == 1 && _global.gHouseId == 0)
         {
            this.parentClass.destroySequence();
            _global.scene = "train";
            this.parentClass.loadSequence(_global.scene);
         }
         else if(info[1].data[0] == 1 || info[1].success == false)
         {
            this.parentClass.destroySequence();
            _global.scene = "town";
            this.parentClass.loadSequence(_global.scene);
         }
         else
         {
            this.parentClass.nextSequence();
         }
      }
   }
}

class classes.main.EventData
{
   function EventData(pClass)
   {
      this.parentClass = pClass;
      this.retry = 0;
      this.whichEvent();
   }
   function whichEvent()
   {
      switch(parseInt(_global.eventID))
      {
         case _global.EVENT_HALLOWEEN:
            trace("[EventData] HALLOWEEN");
            this.getHalloweenData();
            break;
         case _global.EVENT_XMAS:
            trace("[EventData] CHRISTMAS");
            this.getChristmasData();
            break;
         default:
            this.parentClass.nextSequence();
      }
   }
   function getChristmasData()
   {
      var _loc4_ = _global.gsiMethod.queue(365,[8,_global.gaiaSessionID,0],this.eventDataResult,this);
      var _loc3_ = _global.jumpZip;
      if(_loc3_ == undefined)
      {
         _loc3_ = 51001000;
      }
      _global.gsiMethod.invoke(366,[_loc3_,8,_global.gaiaSessionID],_loc4_);
   }
   function getHalloweenData()
   {
      var _loc4_ = _global.gsiMethod.queue(365,[7,_global.gaiaSessionID,0],this.eventDataHalloweenResult,this);
      var _loc3_ = _global.jumpZip;
      if(_loc3_ == undefined)
      {
         _loc3_ = 51001000;
      }
      _global.gsiMethod.invoke(366,[_loc3_,7,_global.gaiaSessionID],_loc4_);
   }
   function eventDataHalloweenResult(noErr, info, thisClass)
   {
      thisClass.retry = 0;
      _global.eventData = info[1].data;
      trace("[EventData] CANDIES: " + _global.eventData);
      var _loc6_ = info[0].data;
      var _loc4_ = _loc6_[0];
      var _loc5_ = Number(_loc6_[1]);
      _global.halloweenMax = _loc5_;
      if(parseInt(_loc4_) >= _loc5_)
      {
         _loc4_ = "Max";
      }
      else
      {
         _loc4_ = _loc4_ + "/" + _loc5_;
      }
      _root.ui_mc.mapInfo.eventHalloweenInv.qty.text = _loc4_;
      this.parentClass.nextSequence();
   }
   function eventDataResult(noErr, info, thisClass)
   {
      thisClass.retry = 0;
      _global.eventData = info[1].data;
      _global.eventQty = info[0].data;
      trace("[EventData] Qty: " + _global.eventQty + "\n           Data: " + _global.eventData);
      for(var _loc3_ in _global.eventData)
      {
         trace("[EventData] WHAT: " + _global.eventData[_loc3_]);
      }
      this.parentClass.nextSequence();
   }
}

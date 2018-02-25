class classes.main.MapData
{
   var retry302 = 0;
   var retry301 = 0;
   function MapData(pClass)
   {
      this.parentClass = pClass;
      this.getMapData();
   }
   function getMapData()
   {
      trace("[MapData] _global.jumpZip = " + _global.jumpZip);
      var _loc3_ = _global.gsiMethod.queue(301,[int(_global.jumpZip),_global.gaiaSessionID],this.mData,this);
      _global.gsiMethod.queue(302,[int(_global.jumpZip),_global.gaiaSessionID],_loc3_);
      _global.gsiMethod.queue(309,[int(_global.jumpZip),_global.gaiaSessionID],_loc3_);
      _global.gsiMethod.queue(4000,[int(_global.jumpZip),_global.gaiaSessionID],_loc3_);
      _global.gsiMethod.send();
   }
   function mData(noErr, info, thisClass)
   {
      trace("[MapData] data " + info[0].data);
      _root.loadBar.info = "";
      _root.loadBar._visible = false;
      if(info[0].success == true && info[1].success == true)
      {
         this.retry301 = this.retry302 = 0;
         _global.mapDataOld = _global.mapData;
         _global.mapData = info[0].data;
         _global.mapHomeData = info[1].data;
         if(_global.isAltRoom)
         {
            _global.mapData[1] = _global.mapData[1] + "_alt";
            _global.mapData[12] = "maps/barton/terrain_6.swf";
            _global.mapData[13] = 6;
            _global.mapData[10] = _global.mapData[10] + "_alt";
            _global.mapHomeData = [0];
         }
         this.parentClass.nextSequence();
      }
      else if(info[0].success == false)
      {
         thisClass.retry301 = thisClass.retry301 + 1;
         if(thisClass.retry301 <= 3)
         {
            thisClass.getMapData();
         }
         else
         {
            var _loc6_ = info[1].data;
            this.parentClass.errorMsg("301",_loc6_[0],_loc6_[1]);
         }
      }
      else if(info[1].success == false)
      {
         thisClass.retry302 = thisClass.retry302 + 1;
         if(thisClass.retry302 <= 3)
         {
            thisClass.getMapData();
         }
         else
         {
            _loc6_ = info[0].data;
            this.parentClass.errorMsg("302",_loc6_[0],_loc6_[1]);
         }
      }
   }
}

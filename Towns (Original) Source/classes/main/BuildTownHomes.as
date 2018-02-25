class classes.main.BuildTownHomes
{
   var doneLoadCount = 0;
   function BuildTownHomes(pClass)
   {
      this.parentClass = pClass;
      if(_global.mapHomeData.length == 1)
      {
         if(_global.mapData[13] == 1 && _global.sponsorshipEvent == "housebunny")
         {
            _global.gHomes[1] = new classes.house.BunnyHouse(this);
         }
         else
         {
            _root.loadBar.info = "";
            _root.loadBar._visible = false;
            this.parentClass.nextSequence();
         }
      }
      else
      {
         var _loc5_ = _global.mapHomeData.length;
         var _loc4_ = 1;
         while(_loc4_ < _loc5_)
         {
            _global.gHomes[_loc4_] = new classes.house.TownHouse(this,_loc4_,_global.mapHomeData[_loc4_]);
            _loc4_ = _loc4_ + 1;
         }
      }
   }
   function errorMsg(meth, errCode, errMsg)
   {
      this.parentClass.errorMsg(meth,errCode,errMsg);
   }
   function doneLoad()
   {
      this.doneLoadCount = this.doneLoadCount + 1;
      if(this.doneLoadCount == _global.mapHomeData.length - 1)
      {
         _root.loadBar.info = "";
         _root.loadBar._visible = false;
         this.parentClass.nextSequence();
      }
   }
   function singleHomeLoaded()
   {
      _root.loadBar.info = "";
      _root.loadBar._visible = false;
      this.parentClass.nextSequence();
   }
}

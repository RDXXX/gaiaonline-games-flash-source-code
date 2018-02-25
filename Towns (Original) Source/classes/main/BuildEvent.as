class classes.main.BuildEvent
{
   function BuildEvent(pClass)
   {
      this.parentClass = pClass;
      this.doNext = true;
      if(parseInt(_global.eventID) == 19)
      {
         _global.gsiMethod.invoke(365,[9,_global.gaiaSessionID],this.eggData,this);
      }
      else
      {
         this.parentClass.nextSequence();
      }
   }
   function eggData(noErr, info, thisClass)
   {
      if(noErr == false)
      {
         _root.ui_mc.mapInfo.eventEasterInv._visible = false;
      }
      else
      {
         _root.ui_mc.mapInfo.eventEasterInv._visible = true;
         _root.ui_mc.mapInfo.eventEasterInv.qty = "x " + info[0];
      }
      if(this.doNext == true)
      {
         this.parentClass.nextSequence();
      }
   }
   function update()
   {
      this.doNext = false;
      if(parseInt(_global.eventID) == 19)
      {
         _global.gsiMethod.invoke(365,[9,_global.gaiaSessionID],this.eggData,this);
      }
   }
   function clearInv()
   {
      if(parseInt(_global.eventID) == 19)
      {
         _root.ui_mc.mapInfo.eventEasterInv.qty = "x 0";
      }
   }
}

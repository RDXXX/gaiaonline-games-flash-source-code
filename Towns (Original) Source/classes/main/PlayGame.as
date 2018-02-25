class classes.main.PlayGame
{
   function PlayGame(pClass)
   {
      this.parentClass = pClass;
      _root.loadBar.removeMovieClip();
      _root.splash.removeMovieClip();
      _root.ui_mc.resetSushiListners();
      _root.ui_mc.initWordFilter();
      _root.ui_mc.mapInfo.goldAmount = _global.myGold + " g";
      _root.resetSushiListners();
      this.sdfx.remove();
      this.sdfx = new classes.environment.SoundEffects();
      _global.textBubble = new chatui.chatuiclasses.WordBubblesManager(_root.canvas_mc.chat_mc,28,_global.filePath + "wordbubble/wordbubble.swf");
      var _loc4_ = new Array();
      _loc4_[0] = "0";
      _loc4_[1] = _global.gaiaSessionID;
      _loc4_[2] = "1.0";
      _loc4_[3] = _global.myUserData[0];
      _global.sushi.callPlugin("G_TS_PLUGIN",_loc4_,this.missingFunction,_root);
      var _loc5_ = parseInt(_global.eventID);
      if(_loc5_ == _global.EVENT_XMAS || _loc5_ == _global.EVENT_WINTER)
      {
         this.snowing = new classes.environment.Snow(100);
         if(_loc5_ == _global.EVENT_XMAS)
         {
            _root.ui_mc.mapInfo.eventInv._visible = true;
            _global.uiCtrl.setUpEventInv();
         }
      }
      this.parentClass.nextSequence();
   }
   function missingFunction()
   {
   }
   function turnSound(bgmState)
   {
      this.sdfx.bgmSwitch(bgmState);
   }
   function destroy()
   {
      this.sdfx.remove();
      this.snowing.remove();
      delete this.sdfx;
      delete this.snowing;
   }
}

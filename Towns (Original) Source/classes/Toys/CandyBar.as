class classes.Toys.CandyBar extends classes.Toys.Toys
{
   var dirArray = ["left","right"];
   function CandyBar()
   {
      super();
   }
   function initVars()
   {
   }
   function fireToy(gsc, actionInfo)
   {
      gsc.broadcastAvatarToy(actionInfo);
   }
   function displayEvent(startX, startY, xTarget, yTarget, targetClip, myAvatar, §null§, targetId)
   {
      myAvatar = eval(myAvatar);
      var newCandyBar = myAvatar.avatarContainer.image.attachMovie("candyBar","candyBar",40);
      var randDir = this.dirArray[this.randRange(0,1)];
      newCandyBar.gotoAndPlay(randDir);
      newCandyBar._xscale = newCandyBar._yscale = 25;
   }
   function killToy()
   {
      _global.gAvMan.getMyAvatar().avClip.avatarContainer.image.candyBar.removeMovieClip();
   }
}

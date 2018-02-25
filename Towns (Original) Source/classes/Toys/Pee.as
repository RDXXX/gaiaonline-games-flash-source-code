class classes.Toys.Pee extends classes.Toys.Toys
{
   function Pee()
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
      trace("displayEvent: PEE");
      myAvatar = eval(myAvatar);
      myAvatar.avatarContainer.image.attachMovie("backPee","backPee",3);
      myAvatar.avatarContainer.image.attachMovie("frontPee","frontPee",21);
      trace("MYA V " + myAvatar);
   }
   function killToy()
   {
      _global.gAvMan.getMyAvatar().avClip.avatarContainer.image.backPee.removeMovieClip();
      _global.gAvMan.getMyAvatar().avClip.avatarContainer.image.frontPee.removeMovieClip();
   }
}

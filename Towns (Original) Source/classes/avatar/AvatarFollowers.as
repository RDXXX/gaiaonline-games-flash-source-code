class classes.avatar.AvatarFollowers
{
   function AvatarFollowers()
   {
   }
   function initNameFollower(avClip, avText, avLvl)
   {
      avClip.createTextField("nameTag",1,-75,8,150,20);
      this.dropRight = new flash.filters.DropShadowFilter(1,0,4735843,1,0,0,1,1);
      this.dropLeft = new flash.filters.DropShadowFilter(1,180,4735843,1,0,0,1,1);
      this.dropTop = new flash.filters.DropShadowFilter(1,90,4735843,1,0,0,1,1);
      this.dropBottom = new flash.filters.DropShadowFilter(1,270,4735843,1,0,0,1,1);
      var _loc4_ = this.nameColor(avLvl);
      var _loc2_ = new TextFormat();
      _loc2_.color = _loc4_;
      if(avLvl != "99")
      {
         _loc2_.size = 10;
      }
      else
      {
         _loc2_.size = 12;
         _loc2_.bold = true;
      }
      _loc2_.align = "center";
      _loc2_.font = "Arial";
      avClip.nameTag.setNewTextFormat(_loc2_);
      avClip.nameTag.selectable = false;
      avClip.nameTag.filters = [this.dropRight,this.dropLeft,this.dropTop,this.dropBottom];
      avClip.nameTag.text = avText;
   }
   function nameColor(avLvl)
   {
      var _loc2_ = _global.levelColors[avLvl][0];
      if(avLvl == undefined || avLvl == "undefined")
      {
         _loc2_ = "0xFFFFFF";
      }
      if(avLvl == "99")
      {
         _loc2_ = "0xFF9900";
      }
      return _loc2_;
   }
   function statsFollower()
   {
   }
   function menuFollower()
   {
   }
   function emoteFollower()
   {
   }
   function wordBubbleFollower()
   {
   }
   function fxFollower()
   {
   }
   function moveFollowers()
   {
      _global.gBroadcaster.removeListener(this);
      _global.gBroadcaster.addListener(this);
   }
   function run()
   {
   }
   function stopFollowers()
   {
   }
   function deleteAllFollowers()
   {
   }
}

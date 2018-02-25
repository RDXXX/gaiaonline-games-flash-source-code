class classes.avatar.AvatarConfig
{
   function AvatarConfig()
   {
      this.jumpModel = classes.model.JumpModel.getInstance();
      classes.avatar.AvatarConfig.WORLD = _global.gCanvas;
      this.viewWidth = 740;
      this.viewHeight = 580;
      trace("SCENE IN AV CONFIG=" + _global.scene);
      switch(_global.scene)
      {
         case "home":
         case "toHome":
            this.mapWidth = 740;
            this.mapHeight = 580;
            this.avScale = 100;
            this.startX = classes.avatar.AvatarConfig.WORLD.startPoint._x;
            this.startY = classes.avatar.AvatarConfig.WORLD.startPoint._y;
            this.miniAvScale = 75;
            this.miniAvSpeed = 15;
            break;
         case "train":
         case "toTrain":
            this.mapWidth = 768;
            this.mapHeight = 768;
            this.avScale = 75;
            this.startX = classes.avatar.AvatarConfig.WORLD.clipping_canvas.startPoint._x;
            this.startY = classes.avatar.AvatarConfig.WORLD.clipping_canvas.startPoint._y;
            this.miniAvScale = 75;
            this.miniAvSpeed = 15;
            break;
         case "town":
         default:
         case "toMap":
         default:
            this.mapWidth = 1024;
            this.mapHeight = 1024;
            this.avScale = 75;
            if(this.jumpModel.jumpFlag == false)
            {
               this.startX = classes.avatar.AvatarConfig.WORLD.clipping_canvas.startPoint._x;
               this.startY = classes.avatar.AvatarConfig.WORLD.clipping_canvas.startPoint._y;
            }
            else
            {
               this.startX = this.jumpModel.startX;
               this.startY = this.jumpModel.startY;
            }
            trace("startX=" + this.startX);
            trace("startY=" + this.startY);
            this.miniAvScale = 75;
            this.miniAvSpeed = 15;
      }
   }
}

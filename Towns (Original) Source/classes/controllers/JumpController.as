class classes.controllers.JumpController
{
   function JumpController()
   {
      this.jumpModel = classes.model.JumpModel.getInstance();
   }
   function setStart(x, y)
   {
      this.jumpModel.startX = x;
      this.jumpModel.startY = y;
   }
   function setJumpFlag(val)
   {
      this.jumpModel.jumpFlag = val;
   }
   function rememberStart(x, y)
   {
      this.jumpModel.rememberStart(x,y);
   }
}

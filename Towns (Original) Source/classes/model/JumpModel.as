class classes.model.JumpModel
{
   var jumpFlag = false;
   var startX = 0;
   var startY = 0;
   function JumpModel()
   {
   }
   function rememberStart(x, y)
   {
      var _loc1_ = SharedObject.getLocal("gloc");
      _loc1_.data.xx = x;
      _loc1_.data.yy = y;
      _loc1_.flush();
   }
   static function getInstance()
   {
      if(classes.model.JumpModel.instance == null)
      {
         classes.model.JumpModel.instance = new classes.model.JumpModel();
      }
      return classes.model.JumpModel.instance;
   }
}

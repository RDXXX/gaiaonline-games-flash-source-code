class classes.main.LogIn
{
   function LogIn()
   {
      this.panelSetUp();
   }
   function panelSetUp(info)
   {
      _root.loadBar._visible = false;
      this.panel = _root.attachMovie("login","login",3333);
      this.panel.btn_login.onRelease = function()
      {
         var _loc2_ = "http://" + _root.websrv;
         var _loc3_ = "javascript:if(opener){ window.close(); opener.location=\'" + _loc2_ + "\';} else location=\'" + _loc2_ + "\';";
         getURL(_loc3_,"_parent");
      };
   }
}

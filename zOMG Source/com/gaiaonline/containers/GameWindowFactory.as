package com.gaiaonline.containers
{
   import com.gaiaonline.utils.factories.ILoaderContextFactory;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import mx.core.UIComponent;
   
   public class GameWindowFactory implements IGameWindowFactory
   {
       
      
      public function GameWindowFactory()
      {
         super();
      }
      
      public function createLegacyZomgWindow(swfWin:String, container:DisplayObject, isDragable:Boolean = true, isResisable:Boolean = true, showClose:Boolean = true, showMax:Boolean = true, maxWidth:uint = 0, maxHeight:uint = 0, minWidth:uint = 0, minHeight:uint = 0, minized:Boolean = false, maximized:Boolean = false, loaderContextFactory:ILoaderContextFactory = null) : *
      {
         return new LegacyZomgGameWindow(swfWin,container,isDragable,isResisable,showClose,showMax,maxWidth,maxHeight,minWidth,minHeight,minized,maximized,loaderContextFactory);
      }
      
      public function createWindow(title:String, resizable:Boolean, type:String = "Regular") : DisplayObjectContainer
      {
         var retval:DisplayObjectContainer = null;
         var gw:GameWindow = null;
         var gws:GameWindowSideView = null;
         switch(type)
         {
            case "Regular":
               gw = new GameWindow();
               gw.title = title;
               gw.resizable = resizable;
               retval = gw;
               break;
            case "SideView":
               gws = new GameWindowSideView();
               retval = gws;
         }
         return retval;
      }
      
      public function createLegacyShim() : DisplayObjectContainer
      {
         return new UIComponent();
      }
   }
}

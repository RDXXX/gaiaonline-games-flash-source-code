package com.gaiaonline.battle.moduleManagers
{
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public class WindowUtils
   {
       
      
      private var _flexWinLayer:DisplayObjectContainer = null;
      
      public function WindowUtils(winLayer:DisplayObjectContainer)
      {
         super();
         _flexWinLayer = winLayer;
      }
      
      public function closeWindow(w:DisplayObject) : void
      {
         if(this._flexWinLayer.contains(w))
         {
            this._flexWinLayer.removeChild(w);
         }
      }
      
      public function openWindow(w:DisplayObject) : void
      {
         if(!this._flexWinLayer.contains(w))
         {
            this._flexWinLayer.addChild(w);
         }
      }
      
      public function isWindowOpen(w:DisplayObject) : Boolean
      {
         return w && this._flexWinLayer.contains(w);
      }
   }
}

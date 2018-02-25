package com.gaiaonline.battle.ui
{
   import com.gaiaonline.battle.ApplicationInterfaces.IUIFramework;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   
   public class UiGhiInfo
   {
       
      
      private var _itemInfo:UiItemInfo = null;
      
      private var _uiFramework:IUIFramework = null;
      
      private var _mc:MovieClip = null;
      
      private var _mcParent:DisplayObjectContainer = null;
      
      public function UiGhiInfo(uiFramework:IUIFramework, mc:MovieClip)
      {
         super();
         _uiFramework = uiFramework;
         _mc = mc;
         _mcParent = mc.parent;
         _itemInfo = new UiItemInfo(_uiFramework,_mc);
      }
      
      public function set visible(vis:Boolean) : void
      {
         if(vis && !_mcParent.contains(_mc))
         {
            _mcParent.addChild(_mc);
         }
         else if(!vis && _mcParent.contains(_mc))
         {
            _mcParent.removeChild(_mc);
         }
         _mc.visible = vis;
      }
      
      public function getCurrentRingId() : int
      {
         return _itemInfo.getCurrentRingId();
      }
      
      public function setGhiInfo(obj:Object) : void
      {
         _itemInfo.setRingInfo(obj);
      }
   }
}

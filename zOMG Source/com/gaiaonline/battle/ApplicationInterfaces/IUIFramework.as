package com.gaiaonline.battle.ApplicationInterfaces
{
   import com.gaiaonline.battle.map.IMap;
   import com.gaiaonline.battle.sounds.AudioSettings;
   import com.gaiaonline.battle.ui.ToolTipOld;
   import com.gaiaonline.utils.MouseMoveLimiter;
   import com.gaiaonline.utils.factories.ILoaderContextFactory;
   import flash.display.Stage;
   
   public interface IUIFramework
   {
       
      
      function get loadUi() : Boolean;
      
      function get isLoadedExternally() : Boolean;
      
      function get userLevelColors() : Object;
      
      function get tooltipManager() : ToolTipOld;
      
      function get loaderContextFactory() : ILoaderContextFactory;
      
      function get loadUserItems() : Boolean;
      
      function get stageMouseMoveLimiter() : MouseMoveLimiter;
      
      function get ringAnimFpsTest() : Boolean;
      
      function set assetFactory(param1:IAssetFactory) : void;
      
      function getBaseItemId(param1:String) : String;
      
      function get showFrameRate() : Boolean;
      
      function get volumes() : AudioSettings;
      
      function get assetFactory() : IAssetFactory;
      
      function get map() : IMap;
      
      function get stage() : Stage;
   }
}

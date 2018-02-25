package com.gaiaonline.battle.ApplicationImplementations
{
   import com.gaiaonline.battle.ApplicationInterfaces.IAssetFactory;
   import com.gaiaonline.battle.ApplicationInterfaces.IUIFramework;
   import com.gaiaonline.battle.ConColors;
   import com.gaiaonline.battle.map.IMap;
   import com.gaiaonline.battle.sounds.AudioSettings;
   import com.gaiaonline.battle.ui.ToolTipOld;
   import com.gaiaonline.utils.MouseMoveLimiter;
   import com.gaiaonline.utils.factories.ILoaderContextFactory;
   import com.gaiaonline.utils.factories.LoaderContextFactory;
   import flash.display.Stage;
   
   public class UIFrameworkImpl implements IUIFramework
   {
       
      
      private var _userLevelColors:Object;
      
      private var _mouseMoveLimiter:MouseMoveLimiter;
      
      private var _map:IMap;
      
      private var _loaderContextFactory:ILoaderContextFactory;
      
      private const _loadUi:Boolean = true;
      
      private const _ringAnimFpsTest:Boolean = false;
      
      private var _tooltipManager:ToolTipOld;
      
      private var _assetFactory:IAssetFactory = null;
      
      private var _volumes:AudioSettings = null;
      
      private var _isLoadedExternally:Boolean = false;
      
      private const _loadUserItems:Boolean = true;
      
      private const _showFrameRate:Boolean = true;
      
      private var _stage:Stage;
      
      public function UIFrameworkImpl(tt:ToolTipOld, map:IMap, volumes:AudioSettings, isLoadedExternally:Boolean, stage:Stage)
      {
         _userLevelColors = new Object();
         super();
         this._tooltipManager = tt;
         this._map = map;
         this._stage = stage;
         this._volumes = volumes;
         this._isLoadedExternally = isLoadedExternally;
         this._assetFactory = new AssetFactory();
         this._mouseMoveLimiter = new MouseMoveLimiter(stage);
         _loaderContextFactory = LoaderContextFactory.getInstance();
      }
      
      public function get assetFactory() : IAssetFactory
      {
         return this._assetFactory;
      }
      
      public function get ringAnimFpsTest() : Boolean
      {
         return this._ringAnimFpsTest;
      }
      
      public function get conColors() : ConColors
      {
         return ConColors.getInstance();
      }
      
      public function get loadUi() : Boolean
      {
         return this._loadUi;
      }
      
      public function get volumes() : AudioSettings
      {
         return this._volumes;
      }
      
      public function get tooltipManager() : ToolTipOld
      {
         return _tooltipManager;
      }
      
      public function getBaseItemId(itemId:String) : String
      {
         var result:String = null;
         switch(itemId)
         {
            case "18104":
            case "18028":
               result = "18104";
               break;
            case "18102":
            case "18024":
            case "18026":
            case "18030":
               result = "18102";
               break;
            case "18032":
            case "18106":
               result = "18106";
               break;
            default:
               result = itemId;
         }
         return result;
      }
      
      public function get isLoadedExternally() : Boolean
      {
         return this._isLoadedExternally;
      }
      
      public function get loaderContextFactory() : ILoaderContextFactory
      {
         return _loaderContextFactory;
      }
      
      public function get userLevelColors() : Object
      {
         return this._userLevelColors;
      }
      
      public function get stageMouseMoveLimiter() : MouseMoveLimiter
      {
         return this._mouseMoveLimiter;
      }
      
      public function get map() : IMap
      {
         return _map;
      }
      
      public function get loadUserItems() : Boolean
      {
         return this._loadUserItems;
      }
      
      public function set assetFactory(af:IAssetFactory) : void
      {
         this._assetFactory = af;
      }
      
      public function get showFrameRate() : Boolean
      {
         return this._showFrameRate;
      }
      
      public function get stage() : Stage
      {
         return this._stage;
      }
   }
}

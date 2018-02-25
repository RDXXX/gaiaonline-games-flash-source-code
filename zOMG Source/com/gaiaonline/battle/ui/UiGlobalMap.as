package com.gaiaonline.battle.ui
{
   import com.gaiaonline.battle.ApplicationInterfaces.IUIFramework;
   import com.gaiaonline.platform.map.IMapFiles;
   import com.gaiaonline.platform.map.MapFilesFactory;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   
   public class UiGlobalMap extends MovieClip
   {
       
      
      public var btn_BasskenLake:SimpleButton;
      
      private var _uiFramework:IUIFramework = null;
      
      public var btn_DeadmansPass:SimpleButton;
      
      public var btn_BillsRanch:SimpleButton;
      
      public var btn_OtamiRuins:SimpleButton;
      
      public var btn_OtamiRuinsTop:SimpleButton;
      
      public var btn_GoldBeach:SimpleButton;
      
      public var btn_Aqueduct:SimpleButton;
      
      public var btn_Village:SimpleButton;
      
      public var btn_Boardwalk:SimpleButton;
      
      public var btn_ZenGarden:SimpleButton;
      
      public var btn_BartonTown:SimpleButton;
      
      public function UiGlobalMap()
      {
         super();
      }
      
      public function init(uiFramework:IUIFramework) : void
      {
         this._uiFramework = uiFramework;
         var tooltipManager:ToolTipOld = this._uiFramework.tooltipManager;
         var mapFiles:IMapFiles = MapFilesFactory.getInstance().mapFiles;
         tooltipManager.addToolTip(this.btn_OtamiRuinsTop,mapFiles.getZoneName("OtCliffs"));
         tooltipManager.addToolTip(this.btn_OtamiRuins,mapFiles.getZoneName("OtRuins"));
         tooltipManager.addToolTip(this.btn_GoldBeach,mapFiles.getZoneName("Beach"));
         tooltipManager.addToolTip(this.btn_Boardwalk,mapFiles.getZoneName("Boardwalk"));
         tooltipManager.addToolTip(this.btn_Aqueduct,mapFiles.getZoneName("Aqueduct"));
         tooltipManager.addToolTip(this.btn_BasskenLake,mapFiles.getZoneName("BASSKEN"));
         tooltipManager.addToolTip(this.btn_ZenGarden,mapFiles.getZoneName("ZENGARDEN"));
         tooltipManager.addToolTip(this.btn_BartonTown,mapFiles.getZoneName("BARTON"));
         tooltipManager.addToolTip(this.btn_DeadmansPass,mapFiles.getZoneName("M1"));
         tooltipManager.addToolTip(this.btn_BillsRanch,mapFiles.getZoneName("BF1"));
         tooltipManager.addToolTip(this.btn_Village,mapFiles.getZoneName("VILLAGE"));
      }
   }
}

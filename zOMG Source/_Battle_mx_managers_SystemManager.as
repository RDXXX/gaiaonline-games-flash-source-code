package
{
   import com.gaiaonline.battle.preloader.BattleLoader;
   import flash.system.ApplicationDomain;
   import flash.system.Security;
   import flash.utils.Dictionary;
   import mx.core.EmbeddedFontRegistry;
   import mx.core.FlexVersion;
   import mx.core.IFlexModule;
   import mx.core.IFlexModuleFactory;
   import mx.managers.SystemManager;
   
   public class _Battle_mx_managers_SystemManager extends SystemManager implements IFlexModuleFactory
   {
       
      
      private var _preloadedRSLs:Dictionary;
      
      public function _Battle_mx_managers_SystemManager()
      {
         FlexVersion.compatibilityVersionString = "3.0.0";
         super();
      }
      
      override public function create(... rest) : Object
      {
         if(rest.length > 0 && !(rest[0] is String))
         {
            return super.create.apply(this,rest);
         }
         var _loc2_:String = rest.length == 0?"Battle":String(rest[0]);
         var _loc3_:Class = Class(getDefinitionByName(_loc2_));
         if(!_loc3_)
         {
            return null;
         }
         var _loc4_:Object = new _loc3_();
         if(_loc4_ is IFlexModule)
         {
            IFlexModule(_loc4_).moduleFactory = this;
         }
         if(rest.length == 0)
         {
            EmbeddedFontRegistry.registerFonts(info()["fonts"],this);
         }
         return _loc4_;
      }
      
      override public function allowInsecureDomain(... rest) : void
      {
         var _loc2_:* = null;
         Security.allowInsecureDomain(rest);
         for(_loc2_ in _preloadedRSLs)
         {
            if(_loc2_.content && "allowInsecureDomainInRSL" in _loc2_.content)
            {
               _loc2_.content["allowInsecureDomainInRSL"](rest);
            }
         }
      }
      
      override public function info() : Object
      {
         return {
            "addedToStage":"onAddedToStage(event)",
            "applicationComplete":"onCreationComplete(event)",
            "backgroundColor":"#3a3a3a",
            "clipContent":"false",
            "compiledLocales":["en_US"],
            "compiledResourceBundleNames":["SharedResources","collections","containers","controls","core","effects","formatters","skins","styles"],
            "currentDomain":ApplicationDomain.currentDomain,
            "fonts":{
               "myArial":{
                  "regular":true,
                  "bold":false,
                  "italic":false,
                  "boldItalic":false
               },
               "myArialBold":{
                  "regular":false,
                  "bold":true,
                  "italic":false,
                  "boldItalic":false
               },
               "myVerdana":{
                  "regular":true,
                  "bold":false,
                  "italic":false,
                  "boldItalic":false
               },
               "myVerdanaBold":{
                  "regular":false,
                  "bold":true,
                  "italic":false,
                  "boldItalic":false
               },
               "myVerdanaItalic":{
                  "regular":false,
                  "bold":false,
                  "italic":true,
                  "boldItalic":false
               }
            },
            "frameRate":"17",
            "horizontalScrollPolicy":"off",
            "layout":"absolute",
            "mainClassName":"Battle",
            "mixins":["_Battle_FlexInit","_richTextEditorTextAreaStyleStyle","_alertButtonStyleStyle","_ControlBarStyle","_textAreaVScrollBarStyleStyle","_headerDateTextStyle","_globalStyle","_todayStyleStyle","_TabBarStyle","_windowStylesStyle","_ApplicationStyle","_ToolTipStyle","_ButtonBarButtonStyle","_CursorManagerStyle","_opaquePanelStyle","_errorTipStyle","_dateFieldPopupStyle","_MenuStyle","_TabStyle","_dataGridStylesStyle","_popUpMenuStyle","_headerDragProxyStyleStyle","_activeTabStyleStyle","_PanelStyle","_DragManagerStyle","_ContainerStyle","_windowStatusStyle","_ScrollBarStyle","_swatchPanelTextFieldStyle","_ButtonBarStyle","_textAreaHScrollBarStyleStyle","_plainStyle","_activeButtonStyleStyle","_advancedDataGridStylesStyle","_comboDropdownStyle","_ButtonStyle","_weekDayStyleStyle","_linkButtonStyleStyle"],
            "preloader":BattleLoader,
            "verticalScrollPolicy":"off"
         };
      }
      
      override public function get preloadedRSLs() : Dictionary
      {
         if(_preloadedRSLs == null)
         {
            _preloadedRSLs = new Dictionary(true);
         }
         return _preloadedRSLs;
      }
      
      override public function allowDomain(... rest) : void
      {
         var _loc2_:* = null;
         Security.allowDomain(rest);
         for(_loc2_ in _preloadedRSLs)
         {
            if(_loc2_.content && "allowDomainInRSL" in _loc2_.content)
            {
               _loc2_.content["allowDomainInRSL"](rest);
            }
         }
      }
   }
}

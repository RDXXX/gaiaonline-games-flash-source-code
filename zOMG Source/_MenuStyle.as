package
{
   import mx.core.IFlexModuleFactory;
   import mx.skins.halo.ListDropIndicator;
   import mx.styles.CSSStyleDeclaration;
   import mx.styles.StyleManager;
   
   public class _MenuStyle
   {
      
      private static var _embed_css_Assets_swf_MenuRadioDisabled_2027994255:Class = _MenuStyle__embed_css_Assets_swf_MenuRadioDisabled_2027994255;
      
      private static var _embed_css_Assets_swf_MenuCheckDisabled_985128782:Class = _MenuStyle__embed_css_Assets_swf_MenuCheckDisabled_985128782;
      
      private static var _embed_css_Assets_swf_MenuBranchDisabled_1821956794:Class = _MenuStyle__embed_css_Assets_swf_MenuBranchDisabled_1821956794;
      
      private static var _embed_css_Assets_swf_MenuSeparator_582266739:Class = _MenuStyle__embed_css_Assets_swf_MenuSeparator_582266739;
      
      private static var _embed_css_Assets_swf_MenuCheckEnabled_1734707985:Class = _MenuStyle__embed_css_Assets_swf_MenuCheckEnabled_1734707985;
      
      private static var _embed_css_Assets_swf_MenuRadioEnabled_446115278:Class = _MenuStyle__embed_css_Assets_swf_MenuRadioEnabled_446115278;
      
      private static var _embed_css_Assets_swf_MenuBranchEnabled_165345527:Class = _MenuStyle__embed_css_Assets_swf_MenuBranchEnabled_165345527;
       
      
      public function _MenuStyle()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         var fbs:IFlexModuleFactory = param1;
         var style:CSSStyleDeclaration = StyleManager.getStyleDeclaration("Menu");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration("Menu",style,false);
         }
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.radioIcon = _embed_css_Assets_swf_MenuRadioEnabled_446115278;
               this.borderStyle = "menuBorder";
               this.paddingTop = 1;
               this.rightIconGap = 15;
               this.branchIcon = _embed_css_Assets_swf_MenuBranchEnabled_165345527;
               this.checkDisabledIcon = _embed_css_Assets_swf_MenuCheckDisabled_985128782;
               this.verticalAlign = "middle";
               this.paddingLeft = 1;
               this.paddingRight = 0;
               this.checkIcon = _embed_css_Assets_swf_MenuCheckEnabled_1734707985;
               this.radioDisabledIcon = _embed_css_Assets_swf_MenuRadioDisabled_2027994255;
               this.dropShadowEnabled = true;
               this.branchDisabledIcon = _embed_css_Assets_swf_MenuBranchDisabled_1821956794;
               this.dropIndicatorSkin = ListDropIndicator;
               this.separatorSkin = _embed_css_Assets_swf_MenuSeparator_582266739;
               this.horizontalGap = 6;
               this.leftIconGap = 18;
               this.paddingBottom = 1;
            };
         }
      }
   }
}

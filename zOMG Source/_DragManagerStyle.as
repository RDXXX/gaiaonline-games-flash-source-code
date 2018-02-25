package
{
   import mx.core.IFlexModuleFactory;
   import mx.skins.halo.DefaultDragImage;
   import mx.styles.CSSStyleDeclaration;
   import mx.styles.StyleManager;
   
   public class _DragManagerStyle
   {
      
      private static var _embed_css_Assets_swf_mx_skins_cursor_DragMove_1505844073:Class = _DragManagerStyle__embed_css_Assets_swf_mx_skins_cursor_DragMove_1505844073;
      
      private static var _embed_css_Assets_swf_mx_skins_cursor_DragLink_1505885972:Class = _DragManagerStyle__embed_css_Assets_swf_mx_skins_cursor_DragLink_1505885972;
      
      private static var _embed_css_Assets_swf_mx_skins_cursor_DragReject_1095259193:Class = _DragManagerStyle__embed_css_Assets_swf_mx_skins_cursor_DragReject_1095259193;
      
      private static var _embed_css_Assets_swf_mx_skins_cursor_DragCopy_1507721101:Class = _DragManagerStyle__embed_css_Assets_swf_mx_skins_cursor_DragCopy_1507721101;
       
      
      public function _DragManagerStyle()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         var fbs:IFlexModuleFactory = param1;
         var style:CSSStyleDeclaration = StyleManager.getStyleDeclaration("DragManager");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration("DragManager",style,false);
         }
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.copyCursor = _embed_css_Assets_swf_mx_skins_cursor_DragCopy_1507721101;
               this.moveCursor = _embed_css_Assets_swf_mx_skins_cursor_DragMove_1505844073;
               this.rejectCursor = _embed_css_Assets_swf_mx_skins_cursor_DragReject_1095259193;
               this.linkCursor = _embed_css_Assets_swf_mx_skins_cursor_DragLink_1505885972;
               this.defaultDragImageSkin = DefaultDragImage;
            };
         }
      }
   }
}

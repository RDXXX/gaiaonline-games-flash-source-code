package mx.styles
{
   import flash.display.DisplayObject;
   import mx.core.IUITextField;
   import mx.core.UIComponent;
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public class StyleProtoChain
   {
      
      mx_internal static const VERSION:String = "3.6.0.21751";
       
      
      public function StyleProtoChain()
      {
         super();
      }
      
      public static function initProtoChainForUIComponentStyleName(obj:IStyleClient) : void
      {
         var typeSelector:CSSStyleDeclaration = null;
         var styleName:IStyleClient = IStyleClient(obj.styleName);
         var target:DisplayObject = obj as DisplayObject;
         var nonInheritChain:Object = styleName.nonInheritingStyles;
         if(!nonInheritChain || nonInheritChain == UIComponent.STYLE_UNINITIALIZED)
         {
            nonInheritChain = StyleManager.stylesRoot;
            if(nonInheritChain.effects)
            {
               obj.registerEffects(nonInheritChain.effects);
            }
         }
         var inheritChain:Object = styleName.inheritingStyles;
         if(!inheritChain || inheritChain == UIComponent.STYLE_UNINITIALIZED)
         {
            inheritChain = StyleManager.stylesRoot;
         }
         var typeSelectors:Array = obj.getClassStyleDeclarations();
         var n:int = typeSelectors.length;
         if(styleName is StyleProxy)
         {
            if(n == 0)
            {
               nonInheritChain = addProperties(nonInheritChain,styleName,false);
            }
            target = StyleProxy(styleName).source as DisplayObject;
         }
         for(var i:int = 0; i < n; i++)
         {
            typeSelector = typeSelectors[i];
            inheritChain = typeSelector.addStyleToProtoChain(inheritChain,target);
            inheritChain = addProperties(inheritChain,styleName,true);
            nonInheritChain = typeSelector.addStyleToProtoChain(nonInheritChain,target);
            nonInheritChain = addProperties(nonInheritChain,styleName,false);
            if(typeSelector.effects)
            {
               obj.registerEffects(typeSelector.effects);
            }
         }
         obj.inheritingStyles = !!obj.styleDeclaration?obj.styleDeclaration.addStyleToProtoChain(inheritChain,target):inheritChain;
         obj.nonInheritingStyles = !!obj.styleDeclaration?obj.styleDeclaration.addStyleToProtoChain(nonInheritChain,target):nonInheritChain;
      }
      
      private static function addProperties(chain:Object, obj:IStyleClient, bInheriting:Boolean) : Object
      {
         var typeSelector:CSSStyleDeclaration = null;
         var classSelector:CSSStyleDeclaration = null;
         var filterMap:Object = obj is StyleProxy && !bInheriting?StyleProxy(obj).filterMap:null;
         var curObj:IStyleClient = obj;
         while(curObj is StyleProxy)
         {
            curObj = StyleProxy(curObj).source;
         }
         var target:DisplayObject = curObj as DisplayObject;
         var typeSelectors:Array = obj.getClassStyleDeclarations();
         var n:int = typeSelectors.length;
         for(var i:int = 0; i < n; i++)
         {
            typeSelector = typeSelectors[i];
            chain = typeSelector.addStyleToProtoChain(chain,target,filterMap);
            if(typeSelector.effects)
            {
               obj.registerEffects(typeSelector.effects);
            }
         }
         var styleName:Object = obj.styleName;
         if(styleName)
         {
            if(typeof styleName == "object")
            {
               if(styleName is CSSStyleDeclaration)
               {
                  classSelector = CSSStyleDeclaration(styleName);
               }
               else
               {
                  chain = addProperties(chain,IStyleClient(styleName),bInheriting);
               }
            }
            else
            {
               classSelector = StyleManager.getStyleDeclaration("." + styleName);
            }
            if(classSelector)
            {
               chain = classSelector.addStyleToProtoChain(chain,target,filterMap);
               if(classSelector.effects)
               {
                  obj.registerEffects(classSelector.effects);
               }
            }
         }
         if(obj.styleDeclaration)
         {
            chain = obj.styleDeclaration.addStyleToProtoChain(chain,target,filterMap);
         }
         return chain;
      }
      
      public static function initTextField(obj:IUITextField) : void
      {
         var classSelector:CSSStyleDeclaration = null;
         var styleName:Object = obj.styleName;
         if(styleName)
         {
            if(typeof styleName == "object")
            {
               if(styleName is CSSStyleDeclaration)
               {
                  classSelector = CSSStyleDeclaration(styleName);
               }
               else
               {
                  if(styleName is StyleProxy)
                  {
                     obj.inheritingStyles = IStyleClient(styleName).inheritingStyles;
                     obj.nonInheritingStyles = addProperties(StyleManager.stylesRoot,IStyleClient(styleName),false);
                     return;
                  }
                  obj.inheritingStyles = IStyleClient(styleName).inheritingStyles;
                  obj.nonInheritingStyles = IStyleClient(styleName).nonInheritingStyles;
                  return;
               }
            }
            else
            {
               classSelector = StyleManager.getStyleDeclaration("." + styleName);
            }
         }
         var inheritChain:Object = IStyleClient(obj.parent).inheritingStyles;
         var nonInheritChain:Object = StyleManager.stylesRoot;
         if(!inheritChain)
         {
            inheritChain = StyleManager.stylesRoot;
         }
         if(classSelector)
         {
            inheritChain = classSelector.addStyleToProtoChain(inheritChain,DisplayObject(obj));
            nonInheritChain = classSelector.addStyleToProtoChain(nonInheritChain,DisplayObject(obj));
         }
         obj.inheritingStyles = inheritChain;
         obj.nonInheritingStyles = nonInheritChain;
      }
   }
}

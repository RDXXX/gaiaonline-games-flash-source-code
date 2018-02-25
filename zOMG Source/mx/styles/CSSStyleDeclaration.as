package mx.styles
{
   import flash.display.DisplayObject;
   import flash.events.EventDispatcher;
   import flash.utils.Dictionary;
   import mx.core.Singleton;
   import mx.core.mx_internal;
   import mx.managers.SystemManagerGlobals;
   
   use namespace mx_internal;
   
   public class CSSStyleDeclaration extends EventDispatcher
   {
      
      mx_internal static const VERSION:String = "3.6.0.21751";
      
      private static const NOT_A_COLOR:uint = 4294967295;
      
      private static const FILTERMAP_PROP:String = "__reserved__filterMap";
       
      
      mx_internal var effects:Array;
      
      protected var overrides:Object;
      
      public var defaultFactory:Function;
      
      public var factory:Function;
      
      mx_internal var selectorRefCount:int = 0;
      
      private var styleManager:IStyleManager2;
      
      private var clones:Dictionary;
      
      public function CSSStyleDeclaration(selector:String = null)
      {
         clones = new Dictionary(true);
         super();
         if(selector)
         {
            styleManager = Singleton.getInstance("mx.styles::IStyleManager2") as IStyleManager2;
            styleManager.setStyleDeclaration(selector,this,false);
         }
      }
      
      mx_internal function addStyleToProtoChain(chain:Object, target:DisplayObject, filterMap:Object = null) : Object
      {
         var p:String = null;
         var emptyObjectFactory:Function = null;
         var filteredChain:Object = null;
         var filterObjectFactory:Function = null;
         var i:String = null;
         var nodeAddedToChain:Boolean = false;
         var originalChain:Object = chain;
         if(filterMap)
         {
            var chain:Object = {};
         }
         if(defaultFactory != null)
         {
            defaultFactory.prototype = chain;
            chain = new defaultFactory();
            nodeAddedToChain = true;
         }
         if(factory != null)
         {
            factory.prototype = chain;
            chain = new factory();
            nodeAddedToChain = true;
         }
         if(overrides)
         {
            if(defaultFactory == null && factory == null)
            {
               emptyObjectFactory = function():void
               {
               };
               emptyObjectFactory.prototype = chain;
               chain = new emptyObjectFactory();
               nodeAddedToChain = true;
            }
            for(p in overrides)
            {
               if(overrides[p] === undefined)
               {
                  delete chain[p];
               }
               else
               {
                  chain[p] = overrides[p];
               }
            }
         }
         if(filterMap)
         {
            if(nodeAddedToChain)
            {
               filteredChain = {};
               filterObjectFactory = function():void
               {
               };
               filterObjectFactory.prototype = originalChain;
               filteredChain = new filterObjectFactory();
               for(i in chain)
               {
                  if(filterMap[i] != null)
                  {
                     filteredChain[filterMap[i]] = chain[i];
                  }
               }
               chain = filteredChain;
               chain[FILTERMAP_PROP] = filterMap;
            }
            else
            {
               chain = originalChain;
            }
         }
         if(nodeAddedToChain)
         {
            clones[chain] = 1;
         }
         return chain;
      }
      
      public function getStyle(styleProp:String) : *
      {
         var o:* = undefined;
         var v:* = undefined;
         if(overrides)
         {
            if(styleProp in overrides && overrides[styleProp] === undefined)
            {
               return undefined;
            }
            v = overrides[styleProp];
            if(v !== undefined)
            {
               return v;
            }
         }
         if(factory != null)
         {
            factory.prototype = {};
            o = new factory();
            v = o[styleProp];
            if(v !== undefined)
            {
               return v;
            }
         }
         if(defaultFactory != null)
         {
            defaultFactory.prototype = {};
            o = new defaultFactory();
            v = o[styleProp];
            if(v !== undefined)
            {
               return v;
            }
         }
         return undefined;
      }
      
      public function clearStyle(styleProp:String) : void
      {
         setStyle(styleProp,undefined);
      }
      
      public function setStyle(styleProp:String, newValue:*) : void
      {
         var i:int = 0;
         var sm:Object = null;
         var oldValue:Object = getStyle(styleProp);
         var regenerate:Boolean = false;
         if(selectorRefCount > 0 && factory == null && defaultFactory == null && !overrides && oldValue !== newValue)
         {
            regenerate = true;
         }
         if(newValue !== undefined)
         {
            setStyle(styleProp,newValue);
         }
         else
         {
            if(newValue == oldValue)
            {
               return;
            }
            setStyle(styleProp,newValue);
         }
         var sms:Array = SystemManagerGlobals.topLevelSystemManagers;
         var n:int = sms.length;
         if(regenerate)
         {
            for(i = 0; i < n; i++)
            {
               sm = sms[i];
               sm.regenerateStyleCache(true);
            }
         }
         for(i = 0; i < n; i++)
         {
            sm = sms[i];
            sm.notifyStyleChangeInChildren(styleProp,true);
         }
      }
      
      private function clearStyleAttr(styleProp:String) : void
      {
         var clone:* = undefined;
         if(!overrides)
         {
            overrides = {};
         }
         overrides[styleProp] = undefined;
         for(clone in clones)
         {
            delete clone[styleProp];
         }
      }
      
      mx_internal function createProtoChainRoot() : Object
      {
         var root:Object = {};
         if(defaultFactory != null)
         {
            defaultFactory.prototype = root;
            root = new defaultFactory();
         }
         if(factory != null)
         {
            factory.prototype = root;
            root = new factory();
         }
         clones[root] = 1;
         return root;
      }
      
      mx_internal function clearOverride(styleProp:String) : void
      {
         if(overrides && overrides[styleProp])
         {
            delete overrides[styleProp];
         }
      }
      
      mx_internal function setStyle(styleProp:String, value:*) : void
      {
         var o:Object = null;
         var clone:* = undefined;
         var colorNumber:Number = NaN;
         var cloneFilter:Object = null;
         if(value === undefined)
         {
            clearStyleAttr(styleProp);
            return;
         }
         if(value is String)
         {
            if(!styleManager)
            {
               styleManager = Singleton.getInstance("mx.styles::IStyleManager2") as IStyleManager2;
            }
            colorNumber = styleManager.getColorName(value);
            if(colorNumber != NOT_A_COLOR)
            {
               value = colorNumber;
            }
         }
         if(defaultFactory != null)
         {
            o = new defaultFactory();
            if(o[styleProp] !== value)
            {
               if(!overrides)
               {
                  overrides = {};
               }
               overrides[styleProp] = value;
            }
            else if(overrides)
            {
               delete overrides[styleProp];
            }
         }
         if(factory != null)
         {
            o = new factory();
            if(o[styleProp] !== value)
            {
               if(!overrides)
               {
                  overrides = {};
               }
               overrides[styleProp] = value;
            }
            else if(overrides)
            {
               delete overrides[styleProp];
            }
         }
         if(defaultFactory == null && factory == null)
         {
            if(!overrides)
            {
               overrides = {};
            }
            overrides[styleProp] = value;
         }
         for(clone in clones)
         {
            cloneFilter = clone[FILTERMAP_PROP];
            if(cloneFilter)
            {
               if(cloneFilter[styleProp] != null)
               {
                  clone[cloneFilter[styleProp]] = value;
               }
            }
            else
            {
               clone[styleProp] = value;
            }
         }
      }
   }
}

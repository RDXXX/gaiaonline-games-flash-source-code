package com.gaiaonline.utils
{
   import flash.accessibility.AccessibilityProperties;
   import flash.display.DisplayObject;
   import flash.display.LoaderInfo;
   import flash.display.MovieClip;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Transform;
   
   public class MovieClipProxy
   {
       
      
      private var _mc:MovieClip = null;
      
      public function MovieClipProxy(mc:MovieClip)
      {
         super();
         this._mc = mc;
      }
      
      public function set y(y:Number) : void
      {
         this._mc.y = y;
      }
      
      public function set enabled(enabled:Boolean) : void
      {
         this._mc.enabled = enabled;
      }
      
      public function get currentFrame() : int
      {
         return this._mc.currentFrame();
      }
      
      public function get rotation() : Number
      {
         return this._mc.rotation;
      }
      
      public function willTrigger(type:String) : Boolean
      {
         return this._mc.willTrigger(type);
      }
      
      public function localToGlobal(point:Point) : Point
      {
         return this._mc.localToGlobal(point);
      }
      
      public function addChild(child:DisplayObject) : DisplayObject
      {
         return this._mc.addChild(child);
      }
      
      public function get name() : String
      {
         return this._mc.name;
      }
      
      public function getChildIndex(child:DisplayObject) : int
      {
         return this._mc.getChildIndex(child);
      }
      
      public function globalToLocal(point:Point) : Point
      {
         return this._mc.globalToLocal(point);
      }
      
      public function addChildAt(child:DisplayObject, index:int) : DisplayObject
      {
         return this._mc.addChildAt(child,index);
      }
      
      public function get currentLabel() : String
      {
         return this._mc.currentLabel();
      }
      
      public function get blendMode() : String
      {
         return this._mc.blendMode;
      }
      
      public function get scale9Grid() : Rectangle
      {
         return this._mc.scale9Grid;
      }
      
      public function set name(name:String) : void
      {
         this._mc.name = name;
      }
      
      public function set scaleX(scaleX:Number) : void
      {
         this._mc.scaleX = scaleX;
      }
      
      public function gotoAndStop(frame:Object, scene:String = null) : void
      {
         return this._mc.gotoAndStop(frame,scene);
      }
      
      public function set scaleY(scaleY:Number) : void
      {
         this._mc.scaleY = scaleY;
      }
      
      public function contains(child:DisplayObject) : Boolean
      {
         return this._mc.contains(child);
      }
      
      public function get accessibilityProperties() : AccessibilityProperties
      {
         return this._mc.accessibilityProperties;
      }
      
      public function set scrollRect(scrollRect:Rectangle) : void
      {
         this._mc.scrollRect = scrollRect;
      }
      
      public function get cacheAsBitmap() : Boolean
      {
         return this._mc.cacheAsBitmap;
      }
      
      public function get numChildren() : int
      {
         return this._mc.numChildren;
      }
      
      public function set blendMode(blendMode:String) : void
      {
         this._mc.blendMode = blendMode;
      }
      
      public function set scale9Grid(scale9Grid:Rectangle) : void
      {
         this._mc.scale9Grid = scale9Grid;
      }
      
      public function getBounds(targetCoordinateSpace:DisplayObject) : Rectangle
      {
         return this._mc.getBounds(targetCoordinateSpace);
      }
      
      public function get opaqueBackground() : Object
      {
         return this._mc.opaqueBackground;
      }
      
      public function getChildAt(index:int) : DisplayObject
      {
         return this._mc.getChildAt(index);
      }
      
      public function set alpha(alpha:Number) : void
      {
         this._mc.alpha = alpha;
      }
      
      public function get tabIndex() : int
      {
         return this._mc.tabIndex;
      }
      
      public function dispatchEvent(event:Event) : Boolean
      {
         return this._mc.dispatchEvent(event);
      }
      
      public function get enabled() : Boolean
      {
         return this._mc.enabled;
      }
      
      public function set accessibilityProperties(accessibilityProperties:AccessibilityProperties) : void
      {
         this._mc.accessibilityProperties = accessibilityProperties;
      }
      
      public function set cacheAsBitmap(cacheAsBitmap:Boolean) : void
      {
         this._mc.cacheAsBitmap = cacheAsBitmap;
      }
      
      public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false) : void
      {
         this._mc.removeEventListener(type,listener,useCapture);
      }
      
      public function hitTestPoint(x:Number, y:Number, shapeFlag:Boolean = false) : Boolean
      {
         return this._mc.hitTestPoint(x,y,shapeFlag);
      }
      
      public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, useWeakReference:Boolean = false) : void
      {
         this._mc.addEventListener(type,listener,useCapture,priority,useWeakReference);
      }
      
      public function get scaleX() : Number
      {
         return this._mc.scaleX;
      }
      
      public function get scaleY() : Number
      {
         return this._mc.scaleY;
      }
      
      public function get scrollRect() : Rectangle
      {
         return this._mc.scrollRect;
      }
      
      public function get mouseX() : Number
      {
         return this._mc.mouseX;
      }
      
      public function get mouseY() : Number
      {
         return this._mc.mouseY;
      }
      
      public function set mask(mask:DisplayObject) : void
      {
         this._mc.mask = mask;
      }
      
      public function getRect(targetCoordinateSpace:DisplayObject) : Rectangle
      {
         return this._mc.getRect(targetCoordinateSpace);
      }
      
      public function get alpha() : Number
      {
         return this._mc.alpha;
      }
      
      public function set transform(transform:Transform) : void
      {
         this._mc.transform = transform;
      }
      
      public function get loaderInfo() : LoaderInfo
      {
         return this._mc.loaderInfo;
      }
      
      public function get root() : DisplayObject
      {
         return this._mc.root;
      }
      
      public function set visible(visible:Boolean) : void
      {
         this._mc.visible = visible;
      }
      
      public function set opaqueBackground(opaqueBackground:Object) : void
      {
         this._mc.opaqueBackground = opaqueBackground;
      }
      
      public function get currentLabels() : Array
      {
         return this._mc.currentLabels();
      }
      
      public function hitTestObject(obj:DisplayObject) : Boolean
      {
         return this._mc.hitTestObject(obj);
      }
      
      public function get transform() : Transform
      {
         return this._mc.transform;
      }
      
      public function set x(x:Number) : void
      {
         this._mc.x = x;
      }
      
      public function get visible() : Boolean
      {
         return this._mc.visible;
      }
      
      public function get mask() : DisplayObject
      {
         return this._mc.mask;
      }
      
      public function hasEventListener(type:String) : Boolean
      {
         return this._mc.hasEventListener(type);
      }
      
      public function set filters(filters:Array) : void
      {
         this._mc.filters = filters;
      }
      
      public function removeChild(child:DisplayObject) : DisplayObject
      {
         return this._mc.removeChild(child);
      }
      
      public function get y() : Number
      {
         return this._mc.y;
      }
      
      public function get filters() : Array
      {
         return this._mc.filters;
      }
      
      public function set rotation(rotation:Number) : void
      {
         this._mc.rotation = rotation;
      }
      
      public function get stage() : Stage
      {
         return this._mc.stage;
      }
      
      public function get x() : Number
      {
         return this._mc.x;
      }
   }
}

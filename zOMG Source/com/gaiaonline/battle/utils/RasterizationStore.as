package com.gaiaonline.battle.utils
{
   import com.gaiaonline.battle.map.envobjects.BasicSwitch;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.display.Sprite;
   import flash.utils.Dictionary;
   
   public class RasterizationStore
   {
      
      private static const DISQUALIFIED_FROM_RASTERIZATION:Object = {};
       
      
      private var _typeCount:int = 0;
      
      private var _types:Dictionary;
      
      public function RasterizationStore()
      {
         _types = new Dictionary(true);
         super();
         _types[MovieClip] = DISQUALIFIED_FROM_RASTERIZATION;
         _types[Sprite] = DISQUALIFIED_FROM_RASTERIZATION;
         _types[Shape] = DISQUALIFIED_FROM_RASTERIZATION;
      }
      
      private static function detectAnimation(obj:DisplayObject) : Boolean
      {
         var i:int = 0;
         var mc:MovieClip = obj as MovieClip;
         if(mc && mc.totalFrames > 1)
         {
            return true;
         }
         var container:DisplayObjectContainer = obj as DisplayObjectContainer;
         if(container && container.numChildren)
         {
            for(i = 0; i < container.numChildren; i++)
            {
               if(detectAnimation(container.getChildAt(i)))
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      private static function tr(str:String) : void
      {
      }
      
      public function canRasterize(mc:DisplayObjectContainer) : Boolean
      {
         var type:Class = mc["constructor"];
         if(_types[type])
         {
            return _types[type] != DISQUALIFIED_FROM_RASTERIZATION;
         }
         if(detectAnimation(mc) || mc is BasicSwitch)
         {
            tr("DISQUALIFIED_FROM_RASTERIZATION type " + type);
            _types[type] = DISQUALIFIED_FROM_RASTERIZATION;
            return false;
         }
         return true;
      }
      
      public function rasterize(mc:DisplayObjectContainer) : Rasterization
      {
         var rast:Rasterization = null;
         var type:Class = mc["constructor"];
         if(canRasterize(mc))
         {
            rast = _types[type];
            if(!rast)
            {
               rast = new Rasterization(mc);
               _types[type] = rast;
               _typeCount++;
               tr("new type " + type + ", typeCount: " + _typeCount);
            }
            return rast;
         }
         return null;
      }
   }
}

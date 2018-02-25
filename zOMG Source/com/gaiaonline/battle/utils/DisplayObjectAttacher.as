package com.gaiaonline.battle.utils
{
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public class DisplayObjectAttacher
   {
      
      private static const NULL_INDEX:int = -1;
       
      
      private var _savedIndex:int = -1;
      
      private var _savedParent:DisplayObjectContainer;
      
      private var _child:DisplayObject;
      
      public function DisplayObjectAttacher(child:DisplayObject, parent:DisplayObjectContainer = null)
      {
         super();
         _child = child;
         if(parent)
         {
            parent.addChild(child);
         }
         _savedParent = child.parent;
      }
      
      public function set attached(attach:Boolean) : void
      {
         if(attach)
         {
            if(_child.parent == null && _savedParent != null)
            {
               _savedIndex = Math.min(_savedParent.numChildren,_savedIndex);
               _savedParent.addChildAt(_child,_savedIndex);
               _savedIndex = NULL_INDEX;
               _savedParent = null;
            }
         }
         else if(_child.parent != null)
         {
            _savedIndex = _child.parent.getChildIndex(_child);
            _savedParent = _child.parent;
            _savedParent.removeChild(_child);
         }
      }
   }
}

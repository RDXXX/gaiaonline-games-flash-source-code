package com.gaiaonline.battle.ui
{
   import com.gaiaonline.battle.ApplicationInterfaces.IUIFramework;
   import com.gaiaonline.battle.newghibuffs.GhiBuffIcon;
   import com.gaiaonline.battle.ui.events.GhiHolderEvent;
   import com.gaiaonline.utils.DisplayObjectUtils;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   
   public class UiGhiHolder extends EventDispatcher
   {
       
      
      private var _uiFramework:IUIFramework = null;
      
      private var _mc:MovieClip = null;
      
      public function UiGhiHolder(uiFramework:IUIFramework, mc:MovieClip)
      {
         super();
         _mc = mc;
         _uiFramework = uiFramework;
         initSlots();
      }
      
      private function initSlots() : void
      {
         var ringSlot:MovieClip = null;
         var holder:MovieClip = _mc;
         var numChildren:int = holder.numChildren;
         for(var i:int = 0; i < numChildren; i++)
         {
            ringSlot = MovieClip(holder.getChildAt(i));
            if(ringSlot.name.indexOf("F") == 0)
            {
               ringSlot.gotoAndStop(1);
               ringSlot.ringContainer.addEventListener(MouseEvent.MOUSE_DOWN,onSlotMouseDown,false,0,true);
            }
         }
      }
      
      public function clearSelectedSlot(slot:int) : void
      {
         var mc:MovieClip = MovieClip(_mc["F" + String(slot + 1)]);
         if(mc)
         {
            mc.gotoAndStop(1);
         }
      }
      
      public function getSlotAt(x:Number, y:Number) : int
      {
         var s:int = 1;
         var f:MovieClip = _mc["F" + s];
         while(f != null)
         {
            if(f.hitTestPoint(x,y,true))
            {
               s--;
               break;
            }
            s++;
            f = _mc["F" + s];
         }
         if(f == null)
         {
            s = -1;
         }
         return s;
      }
      
      private function onSlotMouseDown(e:MouseEvent) : void
      {
         if(Sprite(e.currentTarget).numChildren > 0)
         {
            dispatchEvent(new GhiHolderEvent(GhiHolderEvent.GHI_MOUSE_DOWN,GhiBuffIcon(Sprite(e.currentTarget).getChildAt(0))));
         }
      }
      
      public function addItemToSlot(icon:Sprite, index:uint, tooltipText:String = null) : void
      {
         var oldR:Sprite = null;
         var ringSlot:MovieClip = MovieClip(_mc["F" + String(index + 1)]);
         var ringContainer:MovieClip = MovieClip(ringSlot.ringContainer);
         if(ringContainer.numChildren > 0)
         {
            trace("ERROR: Duplicate item readded to collectibles holder");
            oldR = Sprite(ringContainer.getChildAt(0));
            ringContainer.removeChild(oldR);
         }
         icon.x = 0;
         icon.y = 0;
         ringContainer.addChild(icon);
         if(tooltipText != null)
         {
            this._uiFramework.tooltipManager.addToolTip(ringSlot,tooltipText);
         }
      }
      
      public function get visible() : Boolean
      {
         return _mc.visible;
      }
      
      public function clearAll() : void
      {
         var mc:MovieClip = null;
         for(var i:int = 0; i < _mc.numChildren; i++)
         {
            mc = _mc.getChildAt(i) as MovieClip;
            if(mc != null)
            {
               this._uiFramework.tooltipManager.removeToolTip(mc);
               if(mc.hasOwnProperty("ringContainer"))
               {
                  while(mc.ringContainer.numChildren > 0)
                  {
                     mc.ringContainer.removeChildAt(0);
                     mc.gotoAndStop(1);
                  }
               }
            }
         }
      }
      
      public function setSelectedSlot(slot:int) : void
      {
         var mc:MovieClip = MovieClip(_mc["F" + String(slot + 1)]);
         if(mc)
         {
            mc.gotoAndStop(2);
         }
      }
      
      public function dispose() : void
      {
         DisplayObjectUtils.ClearAllChildrens(_mc,4);
         _mc = null;
      }
   }
}

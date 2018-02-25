package com.gaiaonline.battle.ui
{
   import com.gaiaonline.battle.ApplicationInterfaces.IUIFramework;
   import com.gaiaonline.utils.DisplayObjectUtils;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class UiCollectiblesHolder
   {
       
      
      private var _mc:MovieClip = null;
      
      private var _uiFramework:IUIFramework = null;
      
      public function UiCollectiblesHolder(uiFramework:IUIFramework, mc:MovieClip)
      {
         super();
         _uiFramework = uiFramework;
         _mc = mc;
      }
      
      public function addItemToSlot(icon:Sprite, index:uint, tooltipText:String = null) : void
      {
         var oldR:Sprite = null;
         var collectibleSlot:MovieClip = MovieClip(_mc["F" + String(index)]);
         if(!collectibleSlot)
         {
            trace("ERROR: invalid itemSlot index received.  Server bug?");
            return;
         }
         var container:MovieClip = MovieClip(collectibleSlot.container);
         if(container != null)
         {
            if(container.numChildren > 0)
            {
               trace("ERROR: Duplicate item readded to collectibles holder");
               oldR = Sprite(container.getChildAt(0));
               container.removeChild(oldR);
            }
            icon.x = 0;
            icon.y = 0;
            container.addChild(icon);
         }
         if(tooltipText != null)
         {
            this._uiFramework.tooltipManager.addToolTip(collectibleSlot,tooltipText);
         }
      }
      
      public function dispose() : void
      {
         var mc:MovieClip = null;
         for(var i:int = 0; i < _mc.numChildren; i++)
         {
            mc = _mc.getChildAt(i) as MovieClip;
            if(mc != null)
            {
               this._uiFramework.tooltipManager.removeToolTip(mc);
            }
         }
         DisplayObjectUtils.ClearAllChildrens(_mc,4);
         _mc = null;
      }
   }
}

package com.gaiaonline.battle.ui.events
{
   import com.gaiaonline.battle.newghibuffs.GhiBuffIcon;
   import flash.events.Event;
   
   public class GhiHolderEvent extends Event
   {
      
      public static const GHI_MOUSE_DOWN:String = "GhiMouseDown";
       
      
      public var ghiBuffIcon:GhiBuffIcon;
      
      public function GhiHolderEvent(type:String, ghiBuffIcon:GhiBuffIcon)
      {
         super(type);
         this.ghiBuffIcon = ghiBuffIcon;
      }
   }
}

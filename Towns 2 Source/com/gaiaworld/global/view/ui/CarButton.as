package com.gaiaworld.global.view.ui
{
   import com.gaiaworld.global.constants.GlobalConstants;
   import com.gaiaworld.global.constants.SpaceConstants;
   import com.gaiaworld.global.model.GlobalModel;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class CarButton extends Sprite
   {
       
      
      public var btnBig:MovieClip;
      
      public var btnSmall:MovieClip;
      
      public var menu:RaceMenu;
      
      private var globalModel:GlobalModel;
      
      public function CarButton()
      {
         this.globalModel = GlobalModel.getInstance();
         super();
         this.globalModel.addEventListener(GlobalConstants.SPACE_CHANGED,this.spaceChanged);
         this.spaceChanged();
         this.btnBig.addEventListener(MouseEvent.MOUSE_DOWN,this.toggleMenu);
         this.btnSmall.addEventListener(MouseEvent.MOUSE_OVER,this.carRollOver);
         this.btnBig.addEventListener(MouseEvent.MOUSE_OUT,this.carRollOut);
         this.btnBig.visible = false;
         this.menu.visible = false;
      }
      
      private function carRollOut(param1:MouseEvent) : void
      {
         if(!this.menu.visible)
         {
            this.btnSmall.visible = true;
            this.btnBig.visible = false;
         }
      }
      
      private function carRollOver(param1:MouseEvent) : void
      {
         this.btnSmall.visible = false;
         this.btnBig.visible = true;
      }
      
      private function toggleMenu(param1:MouseEvent) : void
      {
         this.menu.visible = !this.menu.visible;
         this.btnSmall.visible = !this.menu.visible;
         this.btnBig.visible = this.menu.visible;
      }
      
      private function spaceChanged(param1:Event = null) : void
      {
         if(this.globalModel.spaceName == SpaceConstants.AREA_RALLY || this.globalModel.spaceName == SpaceConstants.AREA_RALLY2 || this.globalModel.spaceName == "rally")
         {
            this.visible = true;
         }
         else
         {
            this.visible = false;
            this.menu.visible = false;
            this.btnSmall.visible = true;
            this.btnBig.visible = false;
         }
      }
   }
}

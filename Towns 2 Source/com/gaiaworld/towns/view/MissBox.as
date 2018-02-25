package com.gaiaworld.towns.view
{
   import com.gaiaworld.gobjects.controller.ObjectController;
   import com.gaiaworld.room.interfaces.ISurfaceObject;
   import com.gaiaworld.room.view.AnimatedObject;
   import fl.transitions.Tween;
   import fl.transitions.TweenEvent;
   import fl.transitions.easing.None;
   
   public class MissBox extends AnimatedObject implements ISurfaceObject
   {
       
      
      private var fadeTween:Tween;
      
      public var isMovingObject:Boolean = false;
      
      private var objectController:ObjectController;
      
      public function MissBox()
      {
         this.objectController = new ObjectController();
         super();
         this.fadeTween = new Tween(this,"alpha",None.easeNone,1,0,2,true);
         this.fadeTween.addEventListener(TweenEvent.MOTION_FINISH,this.fadeDone);
      }
      
      private function fadeDone(param1:TweenEvent) : void
      {
         this.fadeTween.removeEventListener(TweenEvent.MOTION_FINISH,this.fadeDone);
         this.objectController.removeItem(this);
      }
   }
}

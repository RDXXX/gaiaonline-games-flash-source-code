package com.gaiaworld.avatar.view
{
   import com.gaiaworld.global.model.GlobalModel;
   import flash.display.Loader;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.system.LoaderContext;
   
   public class AvatarFaceLoader extends Sprite
   {
      
      public static const FACE_LOADED:String = "faceLoaded";
       
      
      private var loader:Loader;
      
      private var globalModel:GlobalModel;
      
      public function AvatarFaceLoader()
      {
         this.loader = new Loader();
         this.globalModel = GlobalModel.getInstance();
         super();
      }
      
      public function setFace(param1:String) : *
      {
         var _loc2_:Array = param1.split("_");
         var _loc3_:* = this.globalModel.avatarpath + _loc2_[0] + "_48x48.gif";
         this.setImage(_loc3_);
      }
      
      private function setImage(param1:String) : void
      {
         var _loc2_:LoaderContext = new LoaderContext();
         _loc2_.checkPolicyFile = true;
         if(this.loader != null)
         {
            this.loader.contentLoaderInfo.addEventListener(Event.COMPLETE,this.loaded);
            this.loader.load(new URLRequest(param1),_loc2_);
         }
         else
         {
            this.loader = new Loader();
            this.loader.contentLoaderInfo.addEventListener(Event.COMPLETE,this.loaded);
            this.loader.load(new URLRequest(param1),_loc2_);
         }
         this.addChild(this.loader);
      }
      
      private function loaded(param1:Event) : void
      {
         this.dispatchEvent(new Event(FACE_LOADED,true));
      }
   }
}

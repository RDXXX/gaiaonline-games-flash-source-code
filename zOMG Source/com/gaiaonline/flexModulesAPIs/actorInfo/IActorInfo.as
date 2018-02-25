package com.gaiaonline.flexModulesAPIs.actorInfo
{
   import com.gaiaonline.flexModulesAPIs.IMenuListener;
   import flash.display.Sprite;
   
   public interface IActorInfo
   {
       
      
      function setMenu(param1:Object, param2:IMenuListener) : void;
      
      function updateImage(param1:Sprite) : void;
      
      function setBackgroundColor(param1:Number) : void;
      
      function updateName(param1:String, param2:Boolean = false) : void;
      
      function updateActorType(param1:ActorTypes) : void;
   }
}

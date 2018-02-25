package com.gaiaonline.platform.map
{
   import com.gaiaonline.battle.map.IEnvironmentChanger;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   
   public interface ITintManager extends IEnvironmentChanger
   {
       
      
      function getTintLayer() : Sprite;
      
      function addShadow(param1:DisplayObject) : void;
      
      function removeShadow(param1:DisplayObject) : void;
      
      function isLightsOn() : Boolean;
      
      function setLights() : void;
      
      function removeGroundLight(param1:DisplayObject) : void;
      
      function setCurrentGSTTint(param1:Boolean = true) : void;
      
      function initTintLayers(param1:Number, param2:Number) : void;
      
      function addGroundLight(param1:DisplayObject) : void;
      
      function updateTints(param1:String) : void;
   }
}

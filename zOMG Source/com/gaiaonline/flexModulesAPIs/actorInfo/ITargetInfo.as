package com.gaiaonline.flexModulesAPIs.actorInfo
{
   import com.gaiaonline.flexModulesAPIs.IMenuListener;
   import flash.display.Sprite;
   
   public interface ITargetInfo
   {
       
      
      function setMenu(param1:Object, param2:IMenuListener) : void;
      
      function showPendingResponse(param1:Boolean) : void;
      
      function showBuffBar(param1:Boolean) : void;
      
      function updateHealth(param1:Number, param2:Number) : void;
      
      function updateActorType(param1:ActorTypes) : void;
      
      function showRank(param1:Number) : void;
      
      function updateConColor(param1:uint) : void;
      
      function updateConLevel(param1:Number, param2:Boolean) : void;
      
      function updateStamina(param1:Number, param2:Number) : void;
      
      function setHighlighted(param1:Boolean) : void;
      
      function updateImage(param1:Sprite) : void;
      
      function setBackgroundColor(param1:Number) : void;
      
      function showZoneName(param1:String) : void;
      
      function setImageGlow(param1:Number) : void;
      
      function updateRage(param1:Number) : void;
      
      function updateBuffs(param1:Object) : void;
      
      function showAsLeader(param1:Boolean) : void;
      
      function updateName(param1:String, param2:Boolean = false) : void;
      
      function setIsKtfo(param1:Boolean) : void;
      
      function setAlphaLow(param1:Boolean) : void;
   }
}

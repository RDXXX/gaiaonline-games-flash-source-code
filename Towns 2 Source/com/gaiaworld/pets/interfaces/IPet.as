package com.gaiaworld.pets.interfaces
{
   import com.gaiaworld.avatar.interfaces.IAvatar;
   import com.gaiaworld.pets.vo.PetVo;
   import com.gaiaworld.room.interfaces.ISurfaceObject;
   import flash.display.Sprite;
   
   public interface IPet
   {
       
      
      function get speed() : Number;
      
      function set speed(param1:Number) : void;
      
      function get owner() : IAvatar;
      
      function set owner(param1:IAvatar) : void;
      
      function get clip() : Sprite;
      
      function get depth2() : Number;
      
      function set depth2(param1:Number) : void;
      
      function get myName() : String;
      
      function get canCollide() : Boolean;
      
      function get collideType() : String;
      
      function get ownerIsMoving() : Boolean;
      
      function set ownerIsMoving(param1:Boolean) : void;
      
      function isCloseEnough() : Boolean;
      
      function get petClip() : Object;
      
      function get dataProvider() : PetVo;
      
      function set dataProvider(param1:PetVo) : void;
      
      function setAction(param1:String) : void;
      
      function setTarget(param1:Number, param2:Number) : void;
      
      function get petID() : Number;
      
      function setName(param1:String) : void;
      
      function getObject() : ISurfaceObject;
      
      function refreshPet() : void;
      
      function doMove() : void;
   }
}

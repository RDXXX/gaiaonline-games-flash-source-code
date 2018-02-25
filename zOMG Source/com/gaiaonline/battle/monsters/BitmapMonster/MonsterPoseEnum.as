package com.gaiaonline.battle.monsters.BitmapMonster
{
   import com.gaiaonline.utils.Enumeration;
   
   public class MonsterPoseEnum extends Enumeration
   {
      
      public static var WALK:MonsterPoseEnum = new MonsterPoseEnum("walk",false);
      
      public static var SPAWN:MonsterPoseEnum = new MonsterPoseEnum("spawn",true);
      
      public static var TELEPORT:MonsterPoseEnum = new MonsterPoseEnum("teleport",false,true);
      
      public static var CHARGE:MonsterPoseEnum = new MonsterPoseEnum("charge",false,true);
      
      public static var poses:Array = [SPAWN,WALK,IDLE,DEATH,HIT,ATK0,ATK1,ATK2,TELEPORT,CHARGE,SIT];
      
      public static var HIT:MonsterPoseEnum = new MonsterPoseEnum("hit",true);
      
      public static var DEATH:MonsterPoseEnum = new MonsterPoseEnum("death",true);
      
      public static var ATK0:MonsterPoseEnum = new MonsterPoseEnum("atk0",true);
      
      public static var ATK1:MonsterPoseEnum = new MonsterPoseEnum("atk1",true);
      
      public static var ATK2:MonsterPoseEnum = new MonsterPoseEnum("atk2",true);
      
      public static var IDLE:MonsterPoseEnum = new MonsterPoseEnum("idle",false);
      
      public static var SIT:MonsterPoseEnum = new MonsterPoseEnum("sit",false);
       
      
      private var _isQuickMove:Boolean = false;
      
      private var _action:Boolean = false;
      
      public function MonsterPoseEnum(name:String, isAction:Boolean, isQuickMove:Boolean = false)
      {
         super(name);
         this._action = isAction;
         this._isQuickMove = isQuickMove;
      }
      
      public function isAction() : Boolean
      {
         return _action;
      }
      
      public function isQuickMove() : Boolean
      {
         return this._isQuickMove;
      }
   }
}

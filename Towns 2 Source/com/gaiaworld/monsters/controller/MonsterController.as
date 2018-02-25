package com.gaiaworld.monsters.controller
{
   import com.gaiaworld.gobjects.controller.ObjectController;
   import com.gaiaworld.monsters.constants.MonsterConstants;
   import com.gaiaworld.monsters.events.MonsterEvent;
   import com.gaiaworld.monsters.interfaces.IMonster;
   import com.gaiaworld.monsters.util.MonsterBridge;
   import com.gaiaworld.monsters.view.AnchorBug;
   import com.gaiaworld.monsters.view.BuzzSaw;
   import com.gaiaworld.monsters.view.CherryFluff;
   import com.gaiaworld.monsters.view.Doll;
   import com.gaiaworld.monsters.view.DuneSlam;
   import com.gaiaworld.monsters.view.Flamingo;
   import com.gaiaworld.monsters.view.Gnome;
   import com.gaiaworld.monsters.view.GrassFluff;
   import com.gaiaworld.monsters.view.Landshark;
   import com.gaiaworld.monsters.view.Lantern;
   import com.gaiaworld.monsters.view.PrariePup;
   import com.gaiaworld.monsters.view.SandFluff;
   import com.gaiaworld.monsters.view.WaterSpout;
   import com.gaiaworld.monsters.view.Wolf;
   import com.gaiaworld.room.interfaces.ISurfaceObject;
   import flash.display.Sprite;
   
   public class MonsterController
   {
       
      
      private var _viewObj:Sprite;
      
      private var objectController:ObjectController;
      
      private var monsterBridge:MonsterBridge;
      
      public function MonsterController()
      {
         this.objectController = new ObjectController();
         this.monsterBridge = MonsterBridge.getInstance();
         super();
      }
      
      public function get viewObj() : Sprite
      {
         return this._viewObj;
      }
      
      public function set viewObj(param1:Sprite) : void
      {
         this._viewObj = param1;
         this._viewObj.addEventListener(MonsterEvent.ADD_MONSTER,this.addMonster);
         this.monsterBridge.addEventListener(MonsterEvent.ADD_MONSTER,this.addMonster);
      }
      
      private function addMonster(param1:MonsterEvent) : void
      {
         var _loc2_:IMonster = null;
         switch(param1.monstType)
         {
            case MonsterConstants.GNOME:
               _loc2_ = new Gnome();
               break;
            case MonsterConstants.FLAMINGO:
               _loc2_ = new Flamingo();
               break;
            case MonsterConstants.GRASS_FLUFF:
               _loc2_ = new GrassFluff();
               break;
            case MonsterConstants.ANCHOR_BUG:
               _loc2_ = new AnchorBug();
               break;
            case MonsterConstants.LANDSHARK:
               _loc2_ = new Landshark();
               break;
            case MonsterConstants.DUNE_SLAM:
               _loc2_ = new DuneSlam();
               break;
            case MonsterConstants.SAND_FLUFF:
               _loc2_ = new SandFluff();
               break;
            case MonsterConstants.PRARIE_PUP:
               _loc2_ = new PrariePup();
               break;
            case MonsterConstants.WATER_SPOUT:
               _loc2_ = new WaterSpout();
               break;
            case MonsterConstants.WOLF:
               _loc2_ = new Wolf();
               break;
            case MonsterConstants.BUZZSAW:
               _loc2_ = new BuzzSaw();
               break;
            case MonsterConstants.CHERRY_FLUFF:
               _loc2_ = new CherryFluff();
               break;
            case MonsterConstants.DOLL:
               _loc2_ = new Doll();
               break;
            case MonsterConstants.LANTERN:
               _loc2_ = new Lantern();
         }
         if(_loc2_ != null)
         {
            _loc2_.points = param1.points;
         }
         this.objectController.addItem(_loc2_ as ISurfaceObject,true);
      }
   }
}

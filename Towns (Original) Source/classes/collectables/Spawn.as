class classes.collectables.Spawn
{
   static var spriteCount = 0;
   function Spawn(pClass)
   {
      this.getSpawn();
      pClass.nextSequence();
   }
   function spawned(noError, spawnData)
   {
      if(noError == false || spawnData[0].success == false || spawnData[1].success == false)
      {
         this.destroy();
      }
      else
      {
         this.createSpawns(spawnData[0].data,1);
         this.createSpawns(spawnData[1].data,2);
         if(parseInt(_global.eventID) == 19)
         {
            this.createSpawns(spawnData[2].data,1);
         }
         clearInterval(this.interval);
         this.spawner();
      }
   }
   function createSpawns(spawnData, type)
   {
      if(parseInt(spawnData[0]) != 0)
      {
         var _loc6_ = spawnData.length;
         var _loc2_ = 0;
         while(_loc2_ < _loc6_)
         {
            var _loc5_ = _global.spriteBank.length;
            var _loc4_ = 0;
            while(_loc4_ < _loc5_)
            {
               if(_global.spriteBank[_loc4_] == spawnData[_loc2_][0])
               {
                  spawnData[_loc2_][0] = -1;
                  break;
               }
               _loc4_ = _loc4_ + 1;
            }
            if(spawnData[_loc2_][0] != -1)
            {
               _global.spriteBank.push(spawnData[_loc2_][0]);
               switch(type)
               {
                  case 1:
                     _global.gSprite[classes.collectables.Spawn.spriteCount] = new classes.collectables.MovingSprites(spawnData[_loc2_][0],spawnData[_loc2_][1],spawnData[_loc2_][2],spawnData[_loc2_][3],spawnData[_loc2_][4],spawnData[_loc2_][5],spawnData[_loc2_][6]);
                     break;
                  case 2:
                     if(spawnData[_loc2_][1].substr(0,5) == "trash")
                     {
                        _global.gSprite[classes.collectables.Spawn.spriteCount] = new classes.collectables.Collectables("trash",6,spawnData[_loc2_][1],spawnData[_loc2_][2],spawnData[_loc2_][3],spawnData[_loc2_][0]);
                     }
                     else
                     {
                        _global.gSprite[classes.collectables.Spawn.spriteCount] = new classes.collectables.Collectables("flowers",5,spawnData[_loc2_][1],spawnData[_loc2_][2],spawnData[_loc2_][3],spawnData[_loc2_][0]);
                     }
               }
               classes.collectables.Spawn.spriteCount = classes.collectables.Spawn.spriteCount + 1;
            }
            _loc2_ = _loc2_ + 1;
         }
      }
   }
   function spawner()
   {
      this.interval = setInterval(this,"getSpawn",300000);
   }
   function stop()
   {
      clearInterval(this.interval);
      this.interval = null;
   }
   function getSpawn()
   {
      var _loc3_ = _global.gsiMethod.queue("360",[_global.mapData[0],_global.gaiaSessionID],this.spawned,this);
      _global.gsiMethod.queue("362",[_global.mapData[0],_global.gaiaSessionID],_loc3_);
      if(parseInt(_global.eventID) == 19)
      {
         _global.gsiMethod.queue("364",[9,_global.gaiaSessionID],_loc3_);
      }
      _global.gsiMethod.send();
   }
   function destroy()
   {
      var _loc3_ = 0;
      while(_loc3_ < _global.gSprite.length)
      {
         _global.gSprite[_loc3_].remove();
         _loc3_ = _loc3_ + 1;
      }
      _global.gSprite = [];
      _global.spriteBank = [];
      clearInterval(this.interval);
      false;
   }
}

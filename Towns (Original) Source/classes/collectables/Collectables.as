class classes.collectables.Collectables
{
   static var itemCount = 1;
   function Collectables(type, id, img, xPos, yPos, serial)
   {
      this.spriteSerial = serial;
      this.collectType = type;
      this.swfsrc = img;
      this.gsiID = id;
      this.field = _global.gCanvas.clipping_canvas;
      this.sprite = this.field.createEmptyMovieClip("collect" + classes.collectables.Collectables.itemCount,this.field.getNextHighestDepth());
      classes.collectables.Collectables.itemCount = classes.collectables.Collectables.itemCount + 1;
      this.sprite.createEmptyMovieClip("image",5);
      this.loadSprite(type,img);
      this.sprite._x = xPos;
      this.sprite._y = yPos;
      this.sprite.ref = this;
      this.sprite.ignoreZorder = false;
      this.sprite.onPress = function()
      {
         this.ref.collect();
      };
      this.emoteBubble = new classes.environment.EmoteBubble(this.sprite,"equipment",0,0);
      switch(type)
      {
         case "trash":
            this.equipment = "trash";
            break;
         case "flowers":
            this.equipment = "shovel";
            break;
         case "fly":
         case "ground":
         case "rareg":
         case "raref":
         case "easter":
            this.equipment = "net";
            break;
         default:
            this.equipment = "trash";
      }
      this.range = new classes.range.Range(this.sprite,20,0,-10);
   }
   function loadSprite(type, img)
   {
      var thisClass = this;
      var _loc3_ = new Object();
      _loc3_.onLoadInit = function(target_mc)
      {
         target_mc.gotoAndStop(1);
         thisClass.startMoving();
         thisClass.setTint();
      };
      var _loc2_ = new MovieClipLoader();
      _loc2_.addListener(_loc3_);
      _loc2_.loadClip("npc/" + type + "/" + img + ".swf",this.sprite.image);
   }
   function startMoving()
   {
   }
   function remove()
   {
      this.sprite.removeMovieClip();
      this.emoteBubble.remove();
      delete this.emoteBubble;
      false;
   }
   function collect()
   {
      var _loc3_ = this.range.testRange(_global.gAvMan.getMyAvatar().range);
      if(_loc3_)
      {
         this.spriteEnable(false);
         this.emoteBubble.playEquip(this.equipment);
         _global.gsiMethod.invoke("363",[_global.mapData[0],this.gsiID,this.spriteSerial],this.collectResult,this,false);
      }
      else
      {
         this.emoteBubble.playEquipMiss();
      }
   }
   function taken()
   {
      this.emoteBubble.playEmote(this.equipment);
   }
   function collectResult(noError, saveData, classCall)
   {
      if(noError == false)
      {
         _global.gAvMan.getMyAvatar().emoteBubble.playEmote(2,"poed");
         classCall.spriteEnable(true);
      }
      else if(saveData)
      {
         trace("COLLECTTTTTTTTTTTTTTT:  " + this.collectType + "  " + this.swfsrc);
         if(_global.sushi.connectionType != "")
         {
            _global.gsc.sendUserMessage("200",1,parseInt(_global.sushi.me.room),[this.collectType,this.swfsrc,this.spriteSerial]);
         }
         else
         {
            _global.gAvMan.getMyAvatar().emoteBubble.playCollectEmote(this.collectType,this.swfsrc);
         }
         _global.uiCtrl.updateInventory();
         classCall.sprite.image._visible = false;
         classCall.killMe();
         _root.stream.townEvent.update();
      }
      else
      {
         _global.gAvMan.getMyAvatar().emoteBubble.playEmote(2,"poed");
         classCall.spriteEnable(true);
      }
      classCall.emoteBubble.playFade(this.equipment);
   }
   function spriteEnable(stat)
   {
      this.sprite.enabled = stat;
   }
   function killMe()
   {
      var thisSprite = this;
      var killCount = 0;
      var toDeath = 30;
      this.sprite.onEnterFrame = function()
      {
         killCount++;
         if(killCount >= toDeath)
         {
            delete this.onEnterFrame;
            thisSprite.remove();
         }
      };
   }
   function setTint()
   {
      _global.gst.tintMe(this.sprite);
   }
}

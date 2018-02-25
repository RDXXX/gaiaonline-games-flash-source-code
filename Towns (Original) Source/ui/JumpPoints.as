class ui.JumpPoints
{
   static var ALL = "all";
   static var NORTH = "nData";
   static var SOUTH = "sData";
   static var EAST = "eData";
   static var WEST = "wData";
   static var STAGE_WIDTH = 740;
   static var STAGE_HEIGHT = 580;
   function JumpPoints(no, so, ea, we)
   {
      ui.JumpPoints.WORLD_MAP = _root.canvas_mc;
      ui.JumpPoints.ALL_ARROWS = new Object();
      ui.JumpPoints.ALL_ARROWS[ui.JumpPoints.NORTH] = null;
      ui.JumpPoints.ALL_ARROWS[ui.JumpPoints.SOUTH] = null;
      ui.JumpPoints.ALL_ARROWS[ui.JumpPoints.EAST] = null;
      ui.JumpPoints.ALL_ARROWS[ui.JumpPoints.WEST] = null;
      this.nData = new Object();
      this.sData = new Object();
      this.eData = new Object();
      this.wData = new Object();
      this.nData.clip = no;
      this.sData.clip = so;
      this.eData.clip = ea;
      this.wData.clip = we;
      no._x = ui.JumpPoints.STAGE_WIDTH / 2;
      so._x = ui.JumpPoints.STAGE_WIDTH / 2;
      ea._y = ui.JumpPoints.STAGE_HEIGHT / 2;
      we._y = ui.JumpPoints.STAGE_HEIGHT / 2;
   }
   function updateLoc()
   {
      this.nData.clip._y = 1 + ui.JumpPoints.WORLD_MAP._y;
      this.sData.clip._y = this.mapHeight + ui.JumpPoints.WORLD_MAP._y - 31;
      this.eData.clip._x = this.mapWidth + ui.JumpPoints.WORLD_MAP._x - 1;
      this.wData.clip._x = 1 + ui.JumpPoints.WORLD_MAP._x;
   }
   function isTouching(theRange)
   {
      var _loc2_ = undefined;
      if(this.nData.active && theRange.testPoint(this.nData.clip._x - ui.JumpPoints.WORLD_MAP._x,this.nData.clip._y - ui.JumpPoints.WORLD_MAP._y + 23.5,15))
      {
         _loc2_ = ui.JumpPoints.NORTH;
      }
      else if(this.sData.active && theRange.testPoint(this.sData.clip._x - ui.JumpPoints.WORLD_MAP._x,this.sData.clip._y - ui.JumpPoints.WORLD_MAP._y - 23.5,15))
      {
         _loc2_ = ui.JumpPoints.SOUTH;
      }
      else if(this.eData.active && theRange.testPoint(this.eData.clip._x - ui.JumpPoints.WORLD_MAP._x - 28,this.eData.clip._y - ui.JumpPoints.WORLD_MAP._y,15))
      {
         _loc2_ = ui.JumpPoints.EAST;
      }
      else if(this.wData.active && theRange.testPoint(this.wData.clip._x - ui.JumpPoints.WORLD_MAP._x + 28,this.wData.clip._y - ui.JumpPoints.WORLD_MAP._y,15))
      {
         _loc2_ = ui.JumpPoints.WEST;
      }
      return _loc2_;
   }
   function trigger(theArrow)
   {
      var _loc2_ = this[theArrow];
      _loc2_.callback.apply(_loc2_.scope,_loc2_.args);
   }
   function setMapSize(width, height)
   {
      this.mapWidth = width;
      this.mapHeight = height;
   }
   function enable(theArrow)
   {
      if(theArrow == ui.JumpPoints.ALL)
      {
         for(var theArrow in ui.JumpPoints.ALL_ARROWS)
         {
            this[theArrow].clip._visible = true;
            this[theArrow].active = true;
         }
      }
      else
      {
         this[theArrow].clip._visible = true;
         this[theArrow].active = true;
      }
   }
   function disable(theArrow)
   {
      if(theArrow == ui.JumpPoints.ALL)
      {
         for(var theArrow in ui.JumpPoints.ALL_ARROWS)
         {
            this[theArrow].clip._visible = false;
            this[theArrow].active = false;
         }
      }
      else
      {
         this[theArrow].clip._visible = false;
         this[theArrow].active = false;
      }
   }
   function setCallback(theArrow, cb, args, scope)
   {
      if(theArrow == ui.JumpPoints.ALL)
      {
         for(var theArrow in ui.JumpPoints.ALL_ARROWS)
         {
            this[theArrow].callback = cb;
            this[theArrow].scope = scope;
            this[theArrow].args = args;
         }
      }
      else
      {
         this[theArrow].callback = cb;
         this[theArrow].scope = scope;
         this[theArrow].args = args;
      }
   }
   function clearCallback(theArrow)
   {
      if(theArrow == ui.JumpPoints.ALL)
      {
         for(var theArrow in ui.JumpPoints.ALL_ARROWS)
         {
            this[theArrow].callback = null;
            this[theArrow].scope = null;
            this[theArrow].args = null;
         }
      }
      else
      {
         this[theArrow].callback = null;
         this[theArrow].scope = null;
         this[theArrow].args = null;
      }
   }
}

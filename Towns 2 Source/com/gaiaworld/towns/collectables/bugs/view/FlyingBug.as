package com.gaiaworld.towns.collectables.bugs.view
{
   import com.gaiaworld.room.interfaces.ISurfaceObject;
   import com.gaiaworld.towns.collectables.bugs.constants.BugConstants;
   import com.gaiaworld.towns.collectables.bugs.interfaces.IBug;
   import com.gaiaworld.towns.collectables.bugs.vo.BugVo;
   import flash.events.Event;
   import flash.geom.Point;
   
   public class FlyingBug extends BaseBug implements IBug, ISurfaceObject
   {
       
      
      public function FlyingBug()
      {
         super();
      }
      
      override public function get depth2() : Number
      {
         return this.y;
      }
      
      override public function get dataProvider() : BugVo
      {
         return _dataProvider;
      }
      
      override public function set dataProvider(param1:BugVo) : void
      {
         _dataProvider = param1;
         this.loadBug(_dataProvider.img);
         this.init();
         this.startMove();
      }
      
      override protected function move(param1:Event) : void
      {
         if(colModel.paused == true)
         {
            return;
         }
         var _loc2_:Number = 1;
         getAngle();
         this.x = this.x + dx * speed;
         this.y = this.y + dy * speed;
         if(bugBody)
         {
            if(dx >= 0 && dy >= 0)
            {
               _loc2_ = 1;
            }
            if(dx >= 0 && dy < 0)
            {
               _loc2_ = 2;
            }
            if(dx < 0 && dy >= 0)
            {
               _loc2_ = 3;
            }
            if(dx < 0 && dy < 0)
            {
               _loc2_ = 4;
            }
            if(this.x < 0 || this.x > w)
            {
               dx = -dx;
            }
            if(this.y < 0 || this.y > h)
            {
               dy = -dy;
            }
            bugBody.gotoAndStop(4);
         }
         checkTarget();
      }
      
      override public function getBugType() : String
      {
         return BugConstants.TYPE_FLYING;
      }
      
      override public function init() : void
      {
         h = globalModel.mapHeight;
         w = globalModel.mapWidth;
         var _loc1_:Point = colModel.getFlowerSpot();
         this.x = _loc1_.x;
         this.y = _loc1_.y;
         targetX = int(Math.random() * w);
         targetY = int(Math.random() * h);
      }
      
      override protected function destroy() : void
      {
         this.removeEventListener(Event.ENTER_FRAME,this.move);
      }
   }
}

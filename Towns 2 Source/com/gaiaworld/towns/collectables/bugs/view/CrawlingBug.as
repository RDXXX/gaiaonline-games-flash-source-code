package com.gaiaworld.towns.collectables.bugs.view
{
   import com.gaiaworld.room.interfaces.ISurfaceObject;
   import com.gaiaworld.towns.collectables.bugs.constants.BugConstants;
   import com.gaiaworld.towns.collectables.bugs.interfaces.IBug;
   import com.gaiaworld.towns.collectables.bugs.vo.BugVo;
   import flash.events.Event;
   
   public class CrawlingBug extends BaseBug implements IBug, ISurfaceObject
   {
       
      
      public function CrawlingBug()
      {
         super();
      }
      
      override public function get depth2() : Number
      {
         return this.y;
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
               _loc2_ = 2;
            }
            if(dx < 0 && dy < 0)
            {
               _loc2_ = 1;
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
         return BugConstants.TYPE_CRAWLING;
      }
      
      override public function init() : void
      {
         h = globalModel.mapHeight;
         w = globalModel.mapWidth;
         this.x = int(Math.random() * w);
         this.y = int(Math.random() * h);
         targetX = int(Math.random() * w);
         targetY = int(Math.random() * h);
      }
      
      override protected function destroy() : void
      {
         this.removeEventListener(Event.ENTER_FRAME,this.move);
      }
   }
}

package fl.video
{
   import flash.events.Event;
   import flash.geom.Rectangle;
   
   public class AutoLayoutEvent extends LayoutEvent implements IVPEvent
   {
      
      public static const AUTO_LAYOUT:String = "autoLayout";
       
      
      private var _vp:uint;
      
      public function AutoLayoutEvent(param1:String, param2:Boolean = false, param3:Boolean = false, param4:Rectangle = null, param5:Rectangle = null, param6:uint = 0)
      {
         super(param1,param2,param3,param4,param5);
         this._vp = param6;
      }
      
      public function get vp() : uint
      {
         return this._vp;
      }
      
      public function set vp(param1:uint) : void
      {
         this._vp = param1;
      }
      
      override public function clone() : Event
      {
         return new AutoLayoutEvent(type,bubbles,cancelable,Rectangle(oldBounds.clone()),Rectangle(oldRegistrationBounds.clone()),this.vp);
      }
   }
}

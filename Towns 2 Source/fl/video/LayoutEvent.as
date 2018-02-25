package fl.video
{
   import flash.events.Event;
   import flash.geom.Rectangle;
   
   public class LayoutEvent extends Event
   {
      
      public static const LAYOUT:String = "layout";
       
      
      private var _oldBounds:Rectangle;
      
      private var _oldRegistrationBounds:Rectangle;
      
      public function LayoutEvent(param1:String, param2:Boolean = false, param3:Boolean = false, param4:Rectangle = null, param5:Rectangle = null)
      {
         super(param1,param2,param3);
         this._oldBounds = param4;
         this._oldRegistrationBounds = param5;
      }
      
      public function get oldBounds() : Rectangle
      {
         return this._oldBounds;
      }
      
      public function set oldBounds(param1:Rectangle) : void
      {
         this._oldBounds = param1;
      }
      
      public function get oldRegistrationBounds() : Rectangle
      {
         return this._oldRegistrationBounds;
      }
      
      public function set oldRegistrationBounds(param1:Rectangle) : void
      {
         this._oldRegistrationBounds = param1;
      }
      
      override public function clone() : Event
      {
         return new LayoutEvent(type,bubbles,cancelable,Rectangle(this.oldBounds.clone()),Rectangle(this.oldRegistrationBounds.clone()));
      }
   }
}

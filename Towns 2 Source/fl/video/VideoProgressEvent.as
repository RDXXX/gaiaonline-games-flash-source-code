package fl.video
{
   import flash.events.Event;
   import flash.events.ProgressEvent;
   
   public class VideoProgressEvent extends ProgressEvent implements IVPEvent
   {
      
      public static const PROGRESS:String = "progress";
       
      
      private var _vp:uint;
      
      public function VideoProgressEvent(param1:String, param2:Boolean = false, param3:Boolean = false, param4:uint = 0, param5:uint = 0, param6:uint = 0)
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
         return new VideoProgressEvent(type,bubbles,cancelable,bytesLoaded,bytesTotal,this.vp);
      }
   }
}

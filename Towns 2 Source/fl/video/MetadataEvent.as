package fl.video
{
   import flash.events.Event;
   
   public class MetadataEvent extends Event implements IVPEvent
   {
      
      public static const METADATA_RECEIVED:String = "metadataReceived";
      
      public static const CUE_POINT:String = "cuePoint";
       
      
      private var _info:Object;
      
      private var _vp:uint;
      
      public function MetadataEvent(param1:String, param2:Boolean = false, param3:Boolean = false, param4:Object = null, param5:uint = 0)
      {
         super(param1,param2,param3);
         this._info = param4;
         this._vp = param5;
      }
      
      public function get info() : Object
      {
         return this._info;
      }
      
      public function set info(param1:Object) : void
      {
         this._info = param1;
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
         return new MetadataEvent(type,bubbles,cancelable,this.info,this.vp);
      }
   }
}

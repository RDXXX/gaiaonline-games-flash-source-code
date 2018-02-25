package fl.video
{
   public class DynamicStreamItem
   {
       
      
      private var streamArray:Array;
      
      public var start:Number;
      
      public var len:Number;
      
      public var reset:Boolean;
      
      public var streamCount:int;
      
      public var startRate:Number;
      
      public var uri:String;
      
      public function DynamicStreamItem()
      {
         super();
         this.streamArray = new Array();
         this.streamCount = NaN;
         this.start = 0;
         this.len = -1;
         this.reset = true;
         this.startRate = -1;
      }
      
      public function addStream(param1:String, param2:Number) : void
      {
         if(!isNaN(param2))
         {
            this.streamArray.push({
               "name":param1,
               "rate":param2
            });
         }
         this.streamArray.sortOn("rate",Array.NUMERIC);
      }
      
      public function get streams() : Array
      {
         return this.streamArray;
      }
   }
}

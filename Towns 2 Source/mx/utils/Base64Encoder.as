package mx.utils
{
   import flash.utils.ByteArray;
   
   public class Base64Encoder
   {
      
      public static var newLine:String = "\n";
      
      private static const ALPHABET:Array = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","0","1","2","3","4","5","6","7","8","9","+","/"];
       
      
      public var insertNewLines:Boolean = true;
      
      private var _output:String = "";
      
      private var _work:Array;
      
      private var _count:uint = 0;
      
      private var _line:uint = 0;
      
      public function Base64Encoder()
      {
         this._work = [0,0,0];
         super();
      }
      
      public function encode(param1:String, param2:uint = 0, param3:uint = 0) : void
      {
         if(param3 == 0)
         {
            param3 = param1.length;
         }
         var _loc4_:uint = param2;
         while(_loc4_ < param2 + param3)
         {
            this._work[this._count] = param1.charCodeAt(_loc4_);
            this._count++;
            if(this._count == this._work.length || param2 + param3 - _loc4_ == 1)
            {
               this.encodeBlock();
               this._count = 0;
               this._work[0] = 0;
               this._work[1] = 0;
               this._work[2] = 0;
            }
            _loc4_++;
         }
      }
      
      public function encodeBytes(param1:ByteArray, param2:uint = 0, param3:uint = 0) : void
      {
         if(param3 == 0)
         {
            param3 = param1.length;
         }
         var _loc4_:uint = param1.position;
         param1.position = param2;
         var _loc5_:uint = param2;
         while(_loc5_ < param3)
         {
            this._work[this._count] = param1[_loc5_];
            this._count++;
            if(this._count == this._work.length || param2 + param3 - _loc5_ == 1)
            {
               this.encodeBlock();
               this._count = 0;
               this._work[0] = 0;
               this._work[1] = 0;
               this._work[2] = 0;
            }
            _loc5_++;
         }
         param1.position = _loc4_;
      }
      
      public function drain() : String
      {
         var _loc1_:String = this._output.toString();
         this._output = "";
         return _loc1_;
      }
      
      public function flush() : String
      {
         if(this._count > 0)
         {
            this.encodeBlock();
         }
         var _loc1_:String = this.drain();
         this._count = 0;
         this._line = 0;
         this._work[0] = 0;
         this._work[1] = 0;
         this._work[2] = 0;
         return _loc1_;
      }
      
      private function encodeBlock() : void
      {
         this._output = this._output + ALPHABET[(this._work[0] & 255) >> 2];
         this._output = this._output + ALPHABET[(this._work[0] & 3) << 4 | (this._work[1] & 240) >> 4];
         if(this._count > 1)
         {
            this._output = this._output + ALPHABET[(this._work[1] & 15) << 2 | (this._work[2] & 192) >> 6];
         }
         else
         {
            this._output = this._output + "=";
         }
         if(this._count > 2)
         {
            this._output = this._output + ALPHABET[this._work[2] & 63];
         }
         else
         {
            this._output = this._output + "=";
         }
         if(this.insertNewLines)
         {
            if((this._line = this._line + 4) == 76)
            {
               this._output = this._output + newLine;
               this._line = 0;
            }
         }
      }
   }
}

package it.gotoandplay.smartfoxserver
{
   public class SocketStats
   {
       
      
      private var _bytesRead:uint = 0;
      
      private var _reads:uint = 0;
      
      private var _bytesWritten:uint = 0;
      
      private var _writes:uint = 0;
      
      public function SocketStats()
      {
         super();
      }
      
      public function get bytesRead() : uint
      {
         return _bytesRead;
      }
      
      public function get bytesWritten() : uint
      {
         return _bytesWritten;
      }
      
      public function clear() : void
      {
         _reads = 0;
         _writes = 0;
         _bytesRead = 0;
         _bytesWritten = 0;
      }
      
      public function get writes() : uint
      {
         return _writes;
      }
      
      public function addRead(bytes:uint) : void
      {
         _reads++;
         _bytesRead = _bytesRead + bytes;
      }
      
      public function get reads() : uint
      {
         return _reads;
      }
      
      public function addWrite(bytes:uint) : void
      {
         _writes++;
         _bytesWritten = _bytesWritten + bytes;
      }
   }
}

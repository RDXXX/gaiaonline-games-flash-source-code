package org.igniterealtime.xiff.exception
{
   public class SerializationException extends Error
   {
      
      private static const MSG:String = "Could not properly serialize/deserialize stanza.";
       
      
      public function SerializationException()
      {
         super(MSG);
      }
   }
}

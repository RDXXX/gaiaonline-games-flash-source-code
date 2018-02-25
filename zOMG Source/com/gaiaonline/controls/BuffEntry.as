package com.gaiaonline.controls
{
   import flash.display.Bitmap;
   
   public class BuffEntry
   {
       
      
      public var icon:Bitmap;
      
      public var rageRank:Number = NaN;
      
      public var isMe:Boolean = false;
      
      public var name:String;
      
      public function BuffEntry(name:String, icon:Bitmap, isMe:Boolean)
      {
         super();
         this.isMe = isMe;
         this.name = name;
         this.icon = icon;
      }
   }
}

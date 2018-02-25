package com.gaiaonline.gateway
{
   import com.gaiaonline.serializers.JSONSerializer;
   
   public class GaiaIdentity
   {
       
      
      public var avatar:String = "";
      
      public var gid:Number = 0;
      
      public var gsid:String = "";
      
      public var filterLevel:uint = 0;
      
      public var userName:String = "";
      
      public var userLevel:uint = 0;
      
      public function GaiaIdentity(userName:String = "", gid:Number = 0, avatar:String = "", gsid:String = "")
      {
         super();
         this.userName = userName;
         this.gid = gid;
         this.avatar = avatar;
         this.gsid = gsid;
      }
      
      public function toObject() : Object
      {
         return null;
      }
      
      public function fromObject(o:Object) : void
      {
         this.userName = o.userName;
         this.gid = o.gid;
         this.avatar = o.avatar;
         this.userLevel = o.userLevel;
         this.filterLevel = o.filterLevel;
         if(o.gsid)
         {
            this.gsid = o.gsid;
         }
      }
      
      public final function toString() : String
      {
         return JSONSerializer.serialize(this);
      }
   }
}

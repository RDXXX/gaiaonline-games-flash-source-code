package org.igniterealtime.xiff.data.muc
{
   import org.igniterealtime.xiff.data.ExtensionClassRegistry;
   
   public class MUC
   {
      
      public static const AFFILIATION_ADMIN:String = "admin";
      
      public static const ROLE_NONE:String = "none";
      
      public static const AFFILIATION_OWNER:String = "owner";
      
      public static const ROLE_VISITOR:String = "visitor";
      
      public static const AFFILIATION_NONE:String = "none";
      
      public static const AFFILIATION_MEMBER:String = "member";
      
      public static const ROLE_PARTICIPANT:String = "participant";
      
      private static var staticDependencies:Array = [ExtensionClassRegistry,MUCExtension,MUCUserExtension,MUCOwnerExtension,MUCAdminExtension];
      
      public static const ROLE_MODERATOR:String = "moderator";
      
      public static const AFFILIATION_OUTCAST:String = "outcast";
       
      
      public function MUC()
      {
         super();
      }
      
      public static function enable() : void
      {
         ExtensionClassRegistry.register(MUCExtension);
         ExtensionClassRegistry.register(MUCUserExtension);
         ExtensionClassRegistry.register(MUCOwnerExtension);
         ExtensionClassRegistry.register(MUCAdminExtension);
      }
   }
}

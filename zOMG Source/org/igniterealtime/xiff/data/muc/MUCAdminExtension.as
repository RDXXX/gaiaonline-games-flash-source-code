package org.igniterealtime.xiff.data.muc
{
   import flash.xml.XMLNode;
   import org.igniterealtime.xiff.data.IExtension;
   
   public class MUCAdminExtension extends MUCBaseExtension implements IExtension
   {
      
      public static const NS:String = "http://jabber.org/protocol/muc#admin";
      
      public static const ELEMENT_NAME:String = "query";
       
      
      private var _items:Array;
      
      public function MUCAdminExtension(parent:XMLNode = null)
      {
         super(parent);
      }
      
      public function getElementName() : String
      {
         return MUCAdminExtension.ELEMENT_NAME;
      }
      
      public function getNS() : String
      {
         return MUCAdminExtension.NS;
      }
   }
}

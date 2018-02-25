package org.igniterealtime.xiff.core
{
   public class AbstractJID
   {
      
      private static var quoteregex2:RegExp = /'/g;
      
      private static var quoteregex:RegExp = /"/g;
      
      protected static var jidNodeValidator:RegExp = /^([\x29\x23-\x25\x28-\x2E\x30-\x39\x3B\x3D\x3F\x41-\x7E\xA0    　 -  -​۝ ܏᠎‌-‍ - - ⁠-⁣⁪-⁯￹-￼-uFDD0-uFDEF uFFFE-uFFFF?-?￹-�⿰-⿻]{1,1023})/;
       
      
      protected var _node:String = "";
      
      protected var _domain:String = "";
      
      private const BYTE_LIMIT_TOTAL:uint = 3071;
      
      protected var _resource:String = "";
      
      private const BYTE_LIMIT_ITEM:uint = 1023;
      
      public function AbstractJID(inJID:String, validate:Boolean = false)
      {
         super();
         if(validate)
         {
            if(!jidNodeValidator.test(inJID) || inJID.indexOf(" ") > -1 || inJID.length > BYTE_LIMIT_TOTAL)
            {
               trace("Invalid JID: %s",inJID);
               throw "Invalid JID";
            }
         }
         var separatorIndex:int = inJID.lastIndexOf("@");
         var slashIndex:int = inJID.lastIndexOf("/");
         if(slashIndex >= 0)
         {
            _resource = inJID.substring(slashIndex + 1);
         }
         _domain = inJID.substring(separatorIndex + 1,slashIndex >= 0?Number(slashIndex):Number(inJID.length));
         if(separatorIndex >= 1)
         {
            _node = inJID.substring(0,separatorIndex);
         }
      }
      
      public static function escapedNode(n:String) : String
      {
         if(n && (n.indexOf("@") >= 0 || n.indexOf(" ") >= 0 || n.indexOf("\\") >= 0 || n.indexOf("/") >= 0 || n.indexOf("&") >= 0 || n.indexOf("\'") >= 0 || n.indexOf("\"") >= 0 || n.indexOf(":") >= 0 || n.indexOf("<") >= 0 || n.indexOf(">") >= 0))
         {
            n = n.replace(/\\/g,"\\5c");
            n = n.replace(/@/g,"\\40");
            n = n.replace(/ /g,"\\20");
            n = n.replace(/&/g,"\\26");
            n = n.replace(/>/g,"\\3e");
            n = n.replace(/</g,"\\3c");
            n = n.replace(/:/g,"\\3a");
            n = n.replace(/\//g,"\\2f");
            n = n.replace(quoteregex,"\\22");
            n = n.replace(quoteregex2,"\\27");
         }
         return n;
      }
      
      public static function unescapedNode(n:String) : String
      {
         if(n && (n.indexOf("\\40") >= 0 || n.indexOf("\\20") >= 0 || n.indexOf("\\26") >= 0 || n.indexOf("\\3e") >= 0 || n.indexOf("\\3c") >= 0 || n.indexOf("\\5c") >= 0 || n.indexOf("\\3a") >= 0 || n.indexOf("\\2f") >= 0 || n.indexOf("\\22") >= 0 || n.indexOf("\\27") >= 0))
         {
            n = n.replace(/\40/g,"@");
            n = n.replace(/\20/g," ");
            n = n.replace(/\26/g,"&");
            n = n.replace(/\3e/g,">");
            n = n.replace(/\3c/g,"<");
            n = n.replace(/\3a/g,":");
            n = n.replace(/\2f/g,"/");
            n = n.replace(quoteregex,"\"");
            n = n.replace(quoteregex2,"\'");
            n = n.replace(/\5c/g,"\\");
         }
         return n;
      }
      
      public function get domain() : String
      {
         return _domain;
      }
      
      public function get bareJID() : String
      {
         var str:String = toString();
         var slashIndex:int = str.lastIndexOf("/");
         if(slashIndex > 0)
         {
            str = str.substring(0,slashIndex);
         }
         return str;
      }
      
      public function toString() : String
      {
         var j:String = "";
         if(node)
         {
            j = j + (node + "@");
         }
         j = j + domain;
         if(resource)
         {
            j = j + ("/" + resource);
         }
         return j;
      }
      
      public function get node() : String
      {
         if(_node.length > 0)
         {
            return _node;
         }
         return null;
      }
      
      public function get resource() : String
      {
         if(_resource.length > 0)
         {
            return _resource;
         }
         return null;
      }
   }
}

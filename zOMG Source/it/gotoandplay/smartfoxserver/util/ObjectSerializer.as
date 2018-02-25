package it.gotoandplay.smartfoxserver.util
{
   public class ObjectSerializer
   {
      
      private static var instance:ObjectSerializer;
       
      
      private var eof:String;
      
      private var debug:Boolean;
      
      private var tabs:String;
      
      public function ObjectSerializer(debug:Boolean = false)
      {
         super();
         this.tabs = "\t\t\t\t\t\t\t\t\t\t\t\t\t";
         setDebug(debug);
      }
      
      public static function getInstance(debug:Boolean = false) : ObjectSerializer
      {
         if(instance == null)
         {
            instance = new ObjectSerializer(debug);
         }
         return instance;
      }
      
      public function serialize(o:Object) : String
      {
         var result:Object = {};
         obj2xml(o,result);
         return result.xmlStr;
      }
      
      private function xml2obj(x:XML, o:Object) : void
      {
         var nodeName:String = null;
         var node:XML = null;
         var objName:String = null;
         var objType:String = null;
         var varName:String = null;
         var varType:String = null;
         var varVal:String = null;
         var i:int = 0;
         var nodes:XMLList = x.children();
         for each(node in nodes)
         {
            nodeName = node.name().toString();
            if(nodeName == "obj")
            {
               objName = node.@o;
               objType = node.@t;
               if(objType == "a")
               {
                  o[objName] = [];
               }
               else if(objType == "o")
               {
                  o[objName] = {};
               }
               xml2obj(node,o[objName]);
            }
            else if(nodeName == "var")
            {
               varName = node.@n;
               varType = node.@t;
               varVal = node.toString();
               if(varType == "b")
               {
                  o[varName] = varVal == "0"?false:true;
               }
               else if(varType == "n")
               {
                  o[varName] = Number(varVal);
               }
               else if(varType == "s")
               {
                  o[varName] = varVal;
               }
               else if(varType == "x")
               {
                  o[varName] = null;
               }
            }
         }
      }
      
      private function setDebug(b:Boolean) : void
      {
         this.debug = b;
         if(this.debug)
         {
            this.eof = "\n";
         }
         else
         {
            this.eof = "";
         }
      }
      
      private function encodeEntities(s:String) : String
      {
         return s;
      }
      
      private function obj2xml(srcObj:Object, trgObj:Object, depth:int = 0, objName:String = "") : void
      {
         var i:* = null;
         var ot:String = null;
         var t:* = null;
         var o:* = undefined;
         if(depth == 0)
         {
            trgObj.xmlStr = "<dataObj>" + this.eof;
         }
         else
         {
            if(this.debug)
            {
               trgObj.xmlStr = trgObj.xmlStr + this.tabs.substr(0,depth);
            }
            ot = srcObj is Array?"a":"o";
            trgObj.xmlStr = trgObj.xmlStr + ("<obj t=\'" + ot + "\' o=\'" + objName + "\'>" + this.eof);
         }
         for(i in srcObj)
         {
            t = typeof srcObj[i];
            o = srcObj[i];
            if(t == "boolean" || t == "number" || t == "string" || t == "null")
            {
               if(t == "boolean")
               {
                  o = Number(o);
               }
               else if(t == "null")
               {
                  t = "x";
                  o = "";
               }
               else if(t == "string")
               {
                  o = Entities.encodeEntities(o);
               }
               if(this.debug)
               {
                  trgObj.xmlStr = trgObj.xmlStr + this.tabs.substr(0,depth + 1);
               }
               trgObj.xmlStr = trgObj.xmlStr + ("<var n=\'" + i + "\' t=\'" + t.substr(0,1) + "\'>" + o + "</var>" + this.eof);
            }
            else if(t == "object")
            {
               obj2xml(o,trgObj,depth + 1,i);
               if(this.debug)
               {
                  trgObj.xmlStr = trgObj.xmlStr + this.tabs.substr(0,depth + 1);
               }
               trgObj.xmlStr = trgObj.xmlStr + ("</obj>" + this.eof);
            }
         }
         if(depth == 0)
         {
            trgObj.xmlStr = trgObj.xmlStr + ("</dataObj>" + this.eof);
         }
      }
      
      public function deserialize(xmlString:String) : Object
      {
         var xmlData:XML = new XML(xmlString);
         var resObj:Object = {};
         xml2obj(xmlData,resObj);
         return resObj;
      }
   }
}

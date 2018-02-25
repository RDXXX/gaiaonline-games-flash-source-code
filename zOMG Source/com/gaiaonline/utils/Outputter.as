package com.gaiaonline.utils
{
   public class Outputter
   {
      
      private static var myOutputter:Outputter = new Outputter("OUT",LEVEL_FINEST);
      
      public static var tracers:Array = new Array();
      
      public static var LEVEL_ERROR:Number = 5;
      
      private static var tid:int = 0;
      
      public static var LEVEL_FINER:Number = 1;
      
      public static var LEVEL_FINEST:Number = 0;
      
      public static var LEVEL_WARNING:Number = 4;
      
      private static var globalLogLevel:Number = LEVEL_FINEST;
      
      public static var LEVEL_INFO:Number = 3;
      
      public static var LEVEL_BAD_ERROR:Number = 6;
      
      public static var LEVEL_PERMANANET:Number = 10;
      
      public static var LEVEL_FINE:Number = 2;
      
      public static var LEVEL_CATASTROPHIC:Number = 7;
      
      public static var LEVEL_OMGWTF:Number = 8;
      
      public static var LEVEL_ARMAGEDDON:Number = 9;
       
      
      private var localLogLevel:int;
      
      private var outputIdPrint:String = "[---]";
      
      private var outputId:String = "---";
      
      public function Outputter(id:String, level:int = 0)
      {
         super();
         this.localLogLevel = level;
         this.outputId = id;
         this.outputIdPrint = "[" + id + "]";
      }
      
      public static function setGlobalLogLevel(level:int) : void
      {
         myOutputter.log("setGlobalLogLevel( " + level + " )",LEVEL_INFO);
         globalLogLevel = level;
      }
      
      public function log(s:String, level:int = 0) : void
      {
         if(level >= globalLogLevel && level >= this.localLogLevel)
         {
            trace(outputIdPrint + " " + s);
            if(level >= LEVEL_ERROR)
            {
            }
         }
      }
      
      public function traceObject(param1:Object, param2:int = 0, param3:String = "") : void
      {
         var _loc4_:String = "";
         var _loc5_:* = tid + ":\'" + param3 + "\'";
         tid++;
         _loc4_ = _loc4_ + (_loc5_ + "+\n");
         var _loc6_:Array = ObUtil.getObjectTree(param1);
         for(param2 = 0; param2 < _loc6_.length; param2++)
         {
            if(_loc6_[param2] == null)
            {
               _loc4_ = _loc4_ + (_loc5_ + "/null\n");
            }
            else
            {
               _loc4_ = _loc4_ + (_loc5_ + "/" + _loc6_[param2].toString() + "\n");
            }
         }
         _loc4_ = _loc4_ + ("-" + _loc5_ + "\n");
         log(_loc4_,param2);
      }
      
      public function setLocalLogLevel(level:int) : void
      {
         this.localLogLevel = level;
      }
      
      public function getObjectDump(o:Object) : Array
      {
         var lines:Array = new Array();
         var idex:int = 0;
         var a:Array = ObUtil.getObjectTree(o);
         for(var i:int = 0; i < a.length; i++)
         {
            if(a[i] == null)
            {
               lines[idex++] = "null";
            }
            else
            {
               lines[idex++] = a[i].toString();
            }
         }
         return lines;
      }
      
      public function getLocalLogLevel() : int
      {
         return this.localLogLevel;
      }
      
      public function getIdString() : String
      {
         return this.outputId;
      }
   }
}

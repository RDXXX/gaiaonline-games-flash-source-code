package com.gaiaonline.utils
{
   public class ObUtil
   {
       
      
      public function ObUtil()
      {
         super();
      }
      
      public static function getObjectTree(o:Object) : Array
      {
         var name:String = null;
         if(o == null)
         {
            name = "null";
         }
         else if(name in o)
         {
            name = o.name;
         }
         else
         {
            name = "?name";
         }
         return getElement(o,name);
      }
      
      private static function getElement(o:Object, thename:String, depth:int = 0) : Array
      {
         var p:* = null;
         var temp:Array = null;
         var j:int = 0;
         var a:Array = new Array();
         if(depth > 20)
         {
            trace("  whoa there... that\'s enough depth");
            return null;
         }
         var s:* = "";
         for(var i:int = 0; i < depth; i++)
         {
            s = s + "     |";
         }
         a.push(s + "-- (" + typeof o + ") " + thename + ": " + o);
         if(getNumChildren(o))
         {
            a.push(s + "     |");
            for(p in o)
            {
               temp = getElement(o[p],p,depth + 1);
               for(j = 0; j < temp.length; j++)
               {
                  a.push(temp[j]);
               }
            }
            a.push(s);
         }
         return a;
      }
      
      public static function getNumChildren(o:Object) : int
      {
         var p:* = null;
         var i:int = 0;
         for(p in o)
         {
            i++;
         }
         return i;
      }
   }
}

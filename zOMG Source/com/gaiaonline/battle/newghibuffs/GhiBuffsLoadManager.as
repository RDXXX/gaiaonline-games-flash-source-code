package com.gaiaonline.battle.newghibuffs
{
   public class GhiBuffsLoadManager
   {
      
      public static var ghiBuffs:Array = new Array();
       
      
      public function GhiBuffsLoadManager()
      {
         super();
      }
      
      public static function loadBuff(obj:Object) : GhiBuff
      {
         var ghiBuff:GhiBuff = new GhiBuff(obj.rid,obj.ringName,obj.ringType,obj.ringExhaustion,obj.ringIcon,obj.ringDescription,obj.ringTargets,obj.ringStatDescriptionsList);
         ghiBuffs.push(ghiBuff);
         return ghiBuff;
      }
      
      public static function contain(id:String) : Boolean
      {
         return getBuff(id) != null;
      }
      
      public static function clearCache() : void
      {
         ghiBuffs.length = 0;
      }
      
      public static function getBuff(id:String) : GhiBuff
      {
         var buff:GhiBuff = null;
         var retBuff:GhiBuff = null;
         for each(buff in ghiBuffs)
         {
            if(buff.id == id)
            {
               retBuff = buff;
               break;
            }
         }
         return retBuff;
      }
   }
}

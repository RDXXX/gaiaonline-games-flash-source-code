package com.gaiaworld.house.vo
{
   import com.gaiaworld.global.util.StringFunctions;
   
   public class ItemDataVo
   {
       
      
      public var id:Number;
      
      public var uid:Number;
      
      public var name:String;
      
      public var imageArray:Array;
      
      public var area:String;
      
      public var thumb:String;
      
      public var isTile:Boolean;
      
      public var subType:String;
      
      public var offSetX:Number = 0;
      
      public var offSetZ:Number = 0;
      
      private var offSetDone:Boolean = false;
      
      public var onFloor:Boolean = false;
      
      public var colorArray:Array;
      
      public var light:Number;
      
      public var halo:Array;
      
      public var isAvatarItem:Boolean = false;
      
      public function ItemDataVo(param1:Number = 0, param2:Number = -1, param3:String = "", param4:Array = null, param5:String = "", param6:String = "", param7:Boolean = false, param8:String = "", param9:Array = null, param10:Number = 0, param11:Array = null, param12:Boolean = false)
      {
         super();
         if(param4 == null)
         {
            param4 = new Array();
         }
         this.id = param1;
         this.uid = param2;
         this.imageArray = param4;
         this.name = param3;
         this.area = param5;
         this.thumb = param6;
         this.isTile = param7;
         this.subType = param8;
         this.colorArray = param9;
         this.light = param10;
         this.halo = param11;
         this.isAvatarItem = param12;
      }
      
      public function addInfo(param1:Array) : *
      {
         if(param1 != null)
         {
            if(param1[0] != null)
            {
               this.addImage(param1[0]);
            }
         }
      }
      
      public function addImage(param1:String) : *
      {
         var _loc2_:Array = null;
         if(param1 != null)
         {
            param1 = StringFunctions.findReplace("layer = [\"",param1,"");
            param1 = StringFunctions.findReplace("\"]",param1,"");
            param1 = StringFunctions.findReplace("+",param1,"");
            param1 = StringFunctions.findReplace("]",param1,"");
            _loc2_ = param1.split(",");
            param1 = _loc2_[0];
            if(_loc2_.length > 3)
            {
               if(this.offSetDone == false)
               {
                  this.offSetX = Number(_loc2_[3]);
                  this.offSetZ = Number(_loc2_[4]);
                  if(isNaN(this.offSetX))
                  {
                     this.offSetX = 0;
                  }
                  if(isNaN(this.offSetZ))
                  {
                     this.offSetZ = 0;
                  }
                  this.offSetDone = true;
               }
            }
            this.imageArray.push(param1);
         }
      }
      
      public function clone() : ItemDataVo
      {
         return new ItemDataVo(this.id,this.uid,this.name,this.imageArray,this.area,this.thumb,this.isTile,this.subType,this.colorArray,this.light,this.halo,this.isAvatarItem);
      }
   }
}

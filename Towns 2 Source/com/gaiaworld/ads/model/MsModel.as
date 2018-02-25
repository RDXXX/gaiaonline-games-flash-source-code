package com.gaiaworld.ads.model
{
   import com.gaiaworld.ads.vo.MsVo;
   import flash.events.EventDispatcher;
   
   public class MsModel extends EventDispatcher
   {
      
      private static var instance:MsModel;
       
      
      public var adArray:Array;
      
      public var previewMode:Boolean = false;
      
      public var areaID:String = "499058";
      
      private var allAds:Array;
      
      public function MsModel()
      {
         this.adArray = new Array();
         this.allAds = new Array();
         super();
      }
      
      public static function getInstance() : MsModel
      {
         if(instance == null)
         {
            instance = new MsModel();
         }
         return instance;
      }
      
      public function addAd(param1:MsVo) : *
      {
         this.adArray.push(param1);
         this.allAds.push(param1);
      }
      
      public function clearAds() : void
      {
         this.adArray = new Array();
      }
      
      public function resetAds() : *
      {
         var _loc3_:MsVo = null;
         var _loc1_:Number = this.allAds.length;
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            _loc3_ = this.allAds[_loc2_];
            _loc3_.hasBeenPlace = false;
            _loc2_++;
         }
      }
      
      public function findItem(param1:String) : MsVo
      {
         var _loc4_:MsVo = null;
         var _loc2_:Number = this.allAds.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = this.allAds[_loc3_];
            if(_loc4_.key == param1 && _loc4_.hasBeenPlace == false)
            {
               _loc4_.hasBeenPlace = true;
               return _loc4_;
            }
            _loc3_++;
         }
         return null;
      }
   }
}

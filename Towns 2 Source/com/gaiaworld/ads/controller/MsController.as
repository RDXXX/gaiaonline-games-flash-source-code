package com.gaiaworld.ads.controller
{
   import com.gaiaworld.ads.model.MsModel;
   import com.gaiaworld.ads.vo.MsVo;
   
   public class MsController
   {
       
      
      private var msModel:MsModel;
      
      public function MsController()
      {
         this.msModel = MsModel.getInstance();
         super();
      }
      
      public function addAd(param1:MsVo) : *
      {
         this.msModel.addAd(param1);
      }
      
      public function clearAds() : *
      {
         this.msModel.clearAds();
      }
      
      public function setPreview(param1:Boolean) : *
      {
         this.msModel.previewMode = param1;
      }
      
      public function setAreaID(param1:String) : *
      {
         this.msModel.areaID = param1;
      }
   }
}

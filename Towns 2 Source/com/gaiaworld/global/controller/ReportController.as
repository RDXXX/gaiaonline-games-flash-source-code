package com.gaiaworld.global.controller
{
   import com.gaiaworld.global.model.ReportModel;
   import com.gaiaworld.user.vo.UserVo;
   
   public class ReportController
   {
       
      
      private var reportModel:ReportModel;
      
      public function ReportController()
      {
         this.reportModel = ReportModel.getInstance();
         super();
      }
      
      public function setInfo(param1:String, param2:String, param3:Number, param4:String) : *
      {
         this.reportModel.offenderName = param1;
         this.reportModel.reportType = param2;
         this.reportModel.notes = param4;
         this.reportModel.reportNum = param3;
      }
      
      public function sendReport() : *
      {
         this.reportModel.sendReport();
      }
      
      public function setTracking(param1:String) : *
      {
         this.reportModel.tracking = param1;
      }
      
      public function reportIsSent() : void
      {
         this.reportModel.reportIsSent();
      }
      
      public function showReport() : void
      {
         this.reportModel.showReport();
      }
      
      public function setWhomToReport(param1:UserVo) : *
      {
         this.reportModel.whomToReport = param1;
      }
   }
}

package com.gaiaworld.global.model
{
   import com.gaiaworld.global.constants.GlobalConstants;
   import com.gaiaworld.user.vo.UserVo;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class ReportModel extends EventDispatcher
   {
      
      private static var instance:ReportModel;
       
      
      public var offenderName:String;
      
      public var reportType:String;
      
      public var reportNum:Number;
      
      public var notes:String;
      
      public var tracking:String;
      
      public var whomToReport:UserVo;
      
      public function ReportModel()
      {
         super();
      }
      
      public static function getInstance() : ReportModel
      {
         if(instance == null)
         {
            instance = new ReportModel();
         }
         return instance;
      }
      
      public function sendReport() : void
      {
         this.dispatchEvent(new Event(GlobalConstants.SEND_REPORT,true));
      }
      
      public function reportIsSent() : void
      {
         this.dispatchEvent(new Event(GlobalConstants.REPORT_IS_SENT,true));
      }
      
      public function showReport() : *
      {
         this.dispatchEvent(new Event(GlobalConstants.SHOW_REPORT,true));
      }
   }
}

package com.gaiaonline.battle.ui
{
   import com.gaiaonline.battle.gateway.BattleGateway;
   import com.gaiaonline.battle.ui.components.ScrollBarVer;
   import com.gaiaonline.flexModulesAPIs.globalevent.GlobalEvent;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   
   public class UiAbuseReport extends MovieClip
   {
       
      
      private var _gateway:BattleGateway = null;
      
      private var _error:Boolean = false;
      
      public var txtResponse:TextField;
      
      public var txtCancel:TextField;
      
      public var mcDisclosure:MovieClip;
      
      public var btnContinue:SimpleButton;
      
      private var _step:int = 0;
      
      public var mcReportInputs:MovieClip;
      
      public var btnCancel:SimpleButton;
      
      public var txtContinue:TextField;
      
      public function UiAbuseReport(gateway:BattleGateway)
      {
         super();
         this._gateway = gateway;
         this.btnContinue.addEventListener(MouseEvent.CLICK,onContinueClick,false,0,true);
         this.btnCancel.addEventListener(MouseEvent.CLICK,onCancelClick,false,0,true);
         this.txtCancel.mouseEnabled = false;
         this.txtContinue.mouseEnabled = false;
         var rect:Rectangle = Sprite(this.mcDisclosure.mcMask).getBounds(this.mcDisclosure);
         ScrollBarVer(this.mcDisclosure.scrText).init(this.mcDisclosure.mcText,rect);
         ScrollBarVer(this.mcDisclosure.scrText).tabChildren = false;
         TextField(this.mcReportInputs.lblReport).textColor = 16777215;
         TextField(this.mcReportInputs.lblOffender).textColor = 16777215;
         TextField(this.mcReportInputs.lblNote).textColor = 16777215;
         this.newReport();
      }
      
      private function onContinueClick(evt:MouseEvent) : void
      {
         var obj:Object = null;
         switch(this._step)
         {
            case 0:
               step1();
               break;
            case 1:
               if(this.validate())
               {
                  step2();
                  _error = false;
                  obj = new Object();
                  obj.reportType = this.mcReportInputs.cbReport.selectedItem.data;
                  obj.offenderName = this.mcReportInputs.txtUserName.text;
                  obj.reportNotes = this.mcReportInputs.txtNote.text;
                  GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.REPORT_ABUSE,obj));
                  GlobalEvent.eventDispatcher.addEventListener(GlobalEvent.ABUSE_REPORTED,onAbuseReported,false,0,true);
                  GlobalEvent.eventDispatcher.addEventListener(GlobalEvent.ABUSE_REPORT_FAILED,onAbuseReportFailed,false,0,true);
                  this.setResponse("<p align=\'center\'>waiting for response</p>");
               }
               break;
            case 2:
               if(!_error)
               {
                  this.dispatchEvent(new Event("CANCEL"));
               }
               this.newReport();
         }
      }
      
      public function setResponse(htmlText:String, error:Boolean = false) : void
      {
         this.txtResponse.htmlText = htmlText;
         _error = error;
         if(_error)
         {
            this.txtCancel.text = "Cancel";
            this.txtContinue.text = "Resubmit";
         }
         else
         {
            this.txtCancel.text = "OK";
         }
         this.txtContinue.visible = error;
         this.txtCancel.visible = true;
         this.btnContinue.visible = error;
         this.btnCancel.visible = true;
      }
      
      private function onCancelClick(evt:MouseEvent) : void
      {
         this.dispatchEvent(new Event("CANCEL"));
         this.newReport();
      }
      
      private function onAbuseReportFailed(evt:GlobalEvent) : void
      {
         this.setResponse("<p align=\'center\'>" + evt.data.error + "</p>",true);
      }
      
      private function onAbuseReported(evt:GlobalEvent) : void
      {
         var txt:* = "<p>Your report has been sent to Gaia Online\'s administrators and moderators.</p><br>";
         txt = txt + "<p>Your report track number is:" + evt.data.reportId + "</p><br>";
         txt = txt + "<p>Please keep this number for future reference.</p>";
         this.setResponse(txt);
      }
      
      private function validate() : Boolean
      {
         var r:Boolean = true;
         if(this.mcReportInputs.cbReport.selectedItem == undefined)
         {
            TextField(this.mcReportInputs.lblReport).textColor = 16711680;
            r = false;
         }
         else
         {
            TextField(this.mcReportInputs.lblReport).textColor = 16777215;
         }
         if(TextField(this.mcReportInputs.txtUserName).text.length == 0)
         {
            TextField(this.mcReportInputs.lblOffender).textColor = 16711680;
            r = false;
         }
         else
         {
            TextField(this.mcReportInputs.lblOffender).textColor = 16777215;
         }
         if(TextField(this.mcReportInputs.txtNote).text.length == 0)
         {
            TextField(this.mcReportInputs.lblNote).textColor = 16711680;
            r = false;
         }
         else
         {
            TextField(this.mcReportInputs.lblNote).textColor = 16777215;
         }
         return r;
      }
      
      private function step0() : void
      {
         this._step = 0;
         this.mcDisclosure.visible = true;
         this.mcReportInputs.visible = false;
         this.txtResponse.visible = false;
         this.txtContinue.text = "Continue";
         this.txtCancel.text = "Cancel";
         this.txtContinue.visible = true;
         this.txtCancel.visible = true;
         this.btnContinue.visible = true;
         this.btnCancel.visible = true;
      }
      
      private function step1() : void
      {
         this._step = 1;
         this.mcDisclosure.visible = false;
         this.mcReportInputs.visible = true;
         this.txtResponse.visible = false;
         this.txtContinue.text = "Submit";
         this.txtCancel.text = "Cancel";
         this.txtContinue.visible = true;
         this.txtCancel.visible = true;
         this.btnContinue.visible = true;
         this.btnCancel.visible = true;
      }
      
      private function step2() : void
      {
         this._step = 2;
         this.mcDisclosure.visible = false;
         this.mcReportInputs.visible = false;
         this.txtResponse.visible = true;
         this.txtCancel.text = "Cancel";
         this.txtContinue.visible = false;
         this.txtCancel.visible = true;
         this.btnContinue.visible = false;
         this.btnCancel.visible = true;
      }
      
      public function newReport(userName:String = "") : void
      {
         if(userName.length)
         {
            _error = false;
         }
         if(_error)
         {
            step1();
         }
         else
         {
            step0();
            this.mcReportInputs.cbReport.selectedIndex = -1;
            this.mcReportInputs.txtUserName.text = userName;
            this.mcReportInputs.txtNote.text = "";
         }
      }
   }
}

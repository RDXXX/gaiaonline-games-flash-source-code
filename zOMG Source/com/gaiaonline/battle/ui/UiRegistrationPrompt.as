package com.gaiaonline.battle.ui
{
   import com.gaiaonline.battle.ui.events.UiEvents;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   
   public class UiRegistrationPrompt extends MovieClip
   {
       
      
      public var regTitle:TextField;
      
      private var _origin:String = null;
      
      public var quitBtn:SimpleButton;
      
      public var regBtn:SimpleButton;
      
      private var _isLogout:Boolean = false;
      
      private var sb:SimpleButton = null;
      
      public var regTxt:TextField;
      
      public function UiRegistrationPrompt(regPrompt:MovieClip, isLogout:Boolean)
      {
         super();
         this.addChild(regPrompt);
         quitBtn = regPrompt.quitBtn;
         regBtn = regPrompt.regBtn;
         regTitle = regPrompt.regTitle;
         regTxt = regPrompt.regTxt;
         this.isLogout = true;
         this.regBtn.addEventListener(MouseEvent.CLICK,onRegClick,false,0,true);
         this.quitBtn.visible = false;
      }
      
      private function onQuitClick(evt:MouseEvent) : void
      {
         this.dispatchEvent(new Event("QuitClick"));
      }
      
      public function setText(txtTitle:String, txtBody:String) : void
      {
         var fmt:TextFormat = new TextFormat();
         fmt.bold = true;
         TextField(this.regTitle).defaultTextFormat = fmt;
         TextField(this.regTitle).autoSize = TextFieldAutoSize.LEFT;
         TextField(this.regTitle).text = txtTitle;
         TextField(this.regTxt).autoSize = TextFieldAutoSize.LEFT;
         TextField(this.regTxt).text = txtBody;
         this.regTxt.y = this.regTitle.y + TextField(this.regTitle).height + 3;
         var newHeight:Number = this.regTxt.y + TextField(this.regTxt).height + 10;
         if(newHeight > this.regBtn.y)
         {
            this.regBtn.y = newHeight;
         }
         if(_isLogout)
         {
            this.quitBtn.y = this.regBtn.y;
         }
      }
      
      private function onRegClick(evt:MouseEvent) : void
      {
         this.dispatchEvent(new UiEvents(UiEvents.REGISTER,_origin));
      }
      
      public function set origin(o:String) : void
      {
         this._origin = o;
      }
      
      public function set isLogout(logout:Boolean) : void
      {
         _isLogout = logout;
         if(_isLogout)
         {
            this.quitBtn.addEventListener(MouseEvent.CLICK,onQuitClick,false,0,true);
            this.quitBtn.visible = true;
         }
      }
   }
}

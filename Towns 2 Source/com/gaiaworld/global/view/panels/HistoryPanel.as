package com.gaiaworld.global.view.panels
{
   import com.gaiaworld.avatar.controller.OthersController;
   import com.gaiaworld.avatar.interfaces.IAvatar;
   import com.gaiaworld.avatar.model.OthersModel;
   import com.gaiaworld.global.constants.GlobalConstants;
   import com.gaiaworld.global.model.GlobalModel;
   import com.gaiaworld.global.util.StringFunctions;
   import com.gaiaworld.sushi.controller.ChatController;
   import com.gaiaworld.sushi.controller.events.ChatEvent;
   import com.gaiaworld.sushi.model.ChatModel;
   import com.gaiaworld.user.model.UserModel;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TextEvent;
   import flash.events.TimerEvent;
   import flash.text.Font;
   import flash.text.TextField;
   import flash.text.TextFieldType;
   import flash.text.TextFormat;
   
   public class HistoryPanel extends Sprite
   {
       
      
      public var btnResize:MovieClip;
      
      public var btnScrollDown:SimpleButton;
      
      public var btnScrollUp:SimpleButton;
      
      private var testCount:Number = 0;
      
      private var background:Shape;
      
      private var sizeArray:Array;
      
      private var sizeIndex:Number = 0;
      
      private var text1:TextField;
      
      private var autoScroll:Boolean = true;
      
      private var chatModel:ChatModel;
      
      private var othersModel:OthersModel;
      
      private var panelHeight:Number = 0;
      
      private var globalModel:GlobalModel;
      
      private var othersController:OthersController;
      
      private var chatController:ChatController;
      
      public function HistoryPanel()
      {
         this.background = new Shape();
         this.sizeArray = [500,400,300,200];
         this.text1 = new TextField();
         this.chatModel = ChatModel.getInstance();
         this.othersModel = OthersModel.getInstance();
         this.globalModel = GlobalModel.getInstance();
         this.othersController = new OthersController();
         this.chatController = new ChatController();
         super();
         this.setHeight(500);
         this.btnResize.addEventListener(MouseEvent.MOUSE_DOWN,this.nextSize);
         this.text1.type = TextFieldType.DYNAMIC;
         this.text1.width = 240;
         this.text1.x = 15;
         this.text1.multiline = true;
         this.text1.wordWrap = true;
         this.text1.mouseEnabled = true;
         this.text1.textColor = 16777215;
         this.text1.selectable = true;
         this.text1.addEventListener(TextEvent.LINK,this.selectUserFromHist);
         this.addChild(this.text1);
         this.chatModel.addEventListener(ChatEvent.CHAT_MESSAGE_RECEIVED,this.newMessage);
         this.btnScrollUp.addEventListener(MouseEvent.MOUSE_DOWN,this.scrollUp);
         this.btnScrollDown.addEventListener(MouseEvent.MOUSE_DOWN,this.scrollDown);
         this.globalModel.addEventListener(GlobalConstants.REDRAW_HISTORY,this.redrawPanel);
         this.globalModel.addEventListener(GlobalConstants.HISTORY_TEXT_SIZE_CHANGED,this.textSizeChanged);
      }
      
      private function selectUserFromHist(param1:TextEvent) : void
      {
         var _loc2_:Number = Number(StringFunctions.findReplace("select-",param1.text,""));
         var _loc3_:IAvatar = this.othersModel.getAvatarByID(_loc2_);
         if(_loc3_ != null)
         {
            this.chatController.setSelected(_loc3_.dataProvider);
            this.othersController.setSelctedAvatar(_loc3_);
         }
      }
      
      public function hideSizeButton() : *
      {
         this.btnResize.visible = false;
      }
      
      private function setHeight(param1:Number) : *
      {
         this.panelHeight = param1;
         this.btnScrollUp.y = -param1 + this.btnScrollUp.height;
         this.btnResize.y = this.btnScrollUp.y + this.btnScrollUp.height;
         this.drawPanel(param1);
         this.text1.height = param1;
         this.text1.y = -param1;
         this.text1.scrollV = this.text1.maxScrollV;
      }
      
      private function redrawPanel(param1:Event) : *
      {
         this.drawPanel(this.panelHeight);
      }
      
      private function textSizeChanged(param1:Event) : void
      {
         var _loc3_:Font = null;
         var _loc2_:TextFormat = new TextFormat();
         _loc2_.size = this.globalModel.historyTextSize;
         switch(this.globalModel.fontIndex)
         {
            case 0:
               _loc3_ = new Font1();
               break;
            case 1:
               _loc3_ = new Font2();
               break;
            case 2:
               _loc3_ = new Font5();
         }
         _loc2_.font = _loc3_.fontName;
         this.text1.defaultTextFormat = _loc2_;
      }
      
      private function drawPanel(param1:Number) : *
      {
         this.background.graphics.clear();
         this.background.graphics.beginFill(this.globalModel.historyBackColor,this.globalModel.historyAlpha);
         this.background.graphics.drawRoundRect(0,0,261,param1,8);
         this.background.graphics.endFill();
         this.background.y = -param1;
         this.addChildAt(this.background,0);
      }
      
      private function nextSize(param1:MouseEvent) : *
      {
         this.sizeIndex++;
         if(this.sizeIndex > this.sizeArray.length - 1)
         {
            this.sizeIndex = 0;
         }
         this.setHeight(this.sizeArray[this.sizeIndex]);
      }
      
      private function addTestText(param1:TimerEvent) : *
      {
         this.testCount++;
         var _loc2_:UserModel = UserModel.getInstance();
         this.chatController.setNewEvent(new ChatEvent(ChatEvent.CHAT_MESSAGE_RECEIVED,_loc2_.userVo,"test me " + String(this.testCount),true));
      }
      
      private function addText(param1:String) : *
      {
         this.text1.htmlText = this.text1.htmlText + (param1 + String.fromCharCode(13));
         if(this.autoScroll == true)
         {
            this.text1.scrollV = this.text1.maxScrollV;
         }
      }
      
      private function newMessage(param1:ChatEvent) : *
      {
         this.text1.htmlText = this.chatModel.getHistoryText();
         if(this.chatModel.scrollLock == false)
         {
            this.text1.scrollV = this.text1.maxScrollV;
         }
      }
      
      public function init() : *
      {
      }
      
      private function scrollUp(param1:MouseEvent) : *
      {
         this.text1.scrollV--;
      }
      
      private function scrollDown(param1:MouseEvent) : *
      {
         this.text1.scrollV++;
      }
      
      private function setScroll(param1:Event) : *
      {
      }
   }
}

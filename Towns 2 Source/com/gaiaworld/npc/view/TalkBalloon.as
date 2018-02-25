package com.gaiaworld.npc.view
{
   import com.gaiaworld.hangouts.constants.QuestConstants;
   import com.gaiaworld.npc.vo.TextVo;
   import com.gaiaworld.room.interfaces.IWorldObject;
   import fl.video.FLVPlayback;
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.text.TextField;
   import flash.utils.Dictionary;
   
   public class TalkBalloon extends MovieClip implements IWorldObject
   {
       
      
      public var btnNext:MovieClip;
      
      public var buttons:DialogActionButton;
      
      public var placeHolder:MovieClip;
      
      public var text1:TextField;
      
      public var vid1:FLVPlayback;
      
      public var __setPropDict:Dictionary;
      
      private var imageLoader:Loader;
      
      public function TalkBalloon()
      {
         this.__setPropDict = new Dictionary(true);
         this.imageLoader = new Loader();
         super();
         addFrameScript(0,this.frame1,2,this.frame3);
         this.btnNext.addEventListener(MouseEvent.MOUSE_DOWN,this.startDialog);
      }
      
      public function setText(param1:TextVo) : *
      {
         if(this.vid1)
         {
            if(this.vid1.playing == true)
            {
               this.vid1.stop();
            }
         }
         switch(param1.windowType)
         {
            case QuestConstants.WINDOW_WAIT:
               this.gotoAndStop(1);
               this.btnNext.addEventListener(MouseEvent.MOUSE_DOWN,this.startDialog);
               return;
            case QuestConstants.WINDOW_STANDARD:
               this.gotoAndStop(2);
               this.text1.text = param1.text;
               break;
            case QuestConstants.WINDOW_VIDEO:
               this.gotoAndStop(3);
               this.vid1.load(param1.media);
               this.vid1.play();
               break;
            case QuestConstants.WINDOW_IMAGE:
               this.gotoAndStop(4);
               this.imageLoader.x = this.placeHolder.x;
               this.imageLoader.y = this.placeHolder.y;
               this.imageLoader.contentLoaderInfo.addEventListener(Event.COMPLETE,this.imageLoaded);
               this.imageLoader.load(new URLRequest(param1.media));
               this.text1.text = param1.text;
         }
         this.buttons.setButtons(param1.buttons);
      }
      
      public function get clip() : Sprite
      {
         return this as Sprite;
      }
      
      private function imageLoaded(param1:Event) : *
      {
         while(this.imageLoader.width > 75 || this.imageLoader.height > 75)
         {
            this.imageLoader.scaleX = this.imageLoader.scaleX - 0.01;
            this.imageLoader.scaleY = this.imageLoader.scaleY - 0.01;
         }
      }
      
      private function startDialog(param1:MouseEvent) : *
      {
         param1.stopPropagation();
         this.dispatchEvent(new Event(QuestConstants.START_DIALOG,true));
      }
      
      public function get depth2() : Number
      {
         return 1000000;
      }
      
      public function getMyName() : String
      {
         return "talkBalloon";
      }
      
      function __setProp_vid1_TalkBalloon_text_media_2() : *
      {
         if(this.__setPropDict[this.vid1] == undefined || int(this.__setPropDict[this.vid1]) != 3)
         {
            this.__setPropDict[this.vid1] = 3;
            try
            {
               this.vid1["componentInspectorSetting"] = true;
            }
            catch(e:Error)
            {
            }
            this.vid1.align = "center";
            this.vid1.autoPlay = true;
            this.vid1.dvrFixedDuration = false;
            this.vid1.dvrIncrement = 1800;
            this.vid1.dvrIncrementVariance = 300;
            this.vid1.dvrSnapToLive = true;
            this.vid1.isDVR = false;
            this.vid1.isLive = false;
            this.vid1.scaleMode = "maintainAspectRatio";
            this.vid1.skin = "";
            this.vid1.skinAutoHide = false;
            this.vid1.skinBackgroundAlpha = 0.85;
            this.vid1.skinBackgroundColor = 6710886;
            this.vid1.source = "";
            this.vid1.volume = 1;
            try
            {
               this.vid1["componentInspectorSetting"] = false;
               return;
            }
            catch(e:Error)
            {
               return;
            }
         }
      }
      
      function frame1() : *
      {
         stop();
      }
      
      function frame3() : *
      {
         this.__setProp_vid1_TalkBalloon_text_media_2();
      }
   }
}

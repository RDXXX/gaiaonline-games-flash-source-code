package com.gaiaonline.battle.ui
{
   import com.gaiaonline.battle.ApplicationInterfaces.IUIFramework;
   import com.gaiaonline.battle.newrings.RingIconFactory;
   import com.gaiaonline.utils.DisplayObjectUtils;
   import com.gaiaonline.utils.FrameTimer;
   import fl.transitions.Fade;
   import fl.transitions.Transition;
   import fl.transitions.TransitionManager;
   import fl.transitions.easing.Strong;
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.filters.BitmapFilter;
   import flash.filters.BitmapFilterQuality;
   import flash.filters.GlowFilter;
   import flash.geom.ColorTransform;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.Timer;
   
   public class UiItemInfo extends MovieClip
   {
       
      
      private var description:TextField;
      
      private var _ringLoadedGlowFilter:BitmapFilter = null;
      
      private var _uiFramework:IUIFramework = null;
      
      private var _initObject:Object;
      
      private var descScrDown:MovieClip;
      
      private var mc:MovieClip;
      
      private var stats:TextField;
      
      private var _onStage:Boolean = false;
      
      private var imageBgBox:MovieClip;
      
      private var scrollStatsPusher:Number;
      
      private var ringImageContainer:MovieClip;
      
      private var statsScrDown:MovieClip;
      
      private var descScrUp:MovieClip;
      
      private var _callLater:FrameTimer;
      
      private var _applyButtonFXGlowFilter:BitmapFilter = null;
      
      private var ringName:TextField;
      
      private var ringLoader:Loader;
      
      private var scrollDescPusher:Number;
      
      private var ringId:int;
      
      private var pressedButton:String;
      
      private var statsScrUp:MovieClip;
      
      private var scrollTimer:Timer;
      
      public function UiItemInfo(uiFramework:IUIFramework, mc:MovieClip)
      {
         scrollTimer = new Timer(500,1);
         _callLater = new FrameTimer(onRingImageLoaded);
         super();
         this._uiFramework = uiFramework;
         this.mc = mc;
         this.imageBgBox = mc.imageBgBox;
         this.ringName = mc.ringName;
         this.stats = mc.stats;
         this.description = mc.description;
         this.statsScrUp = mc.statsScrUp;
         this.statsScrDown = mc.statsScrDown;
         this.descScrUp = mc.descScrUp;
         this.descScrDown = mc.descScrDown;
         this.statsScrUp.visible = false;
         this.statsScrDown.visible = false;
         this.descScrUp.visible = false;
         this.descScrDown.visible = false;
         this.initScrollBtn();
         DisplayObjectUtils.addWeakListener(this.mc,Event.ADDED_TO_STAGE,onMcAddedToStage);
         DisplayObjectUtils.addWeakListener(this.mc,Event.REMOVED_FROM_STAGE,onMcRemovedFromStage);
      }
      
      public function setRingInfo(ringInfo:Object) : void
      {
         if(ringInfo != null)
         {
            this._initObject = ringInfo;
            this.pressedButton = "";
            this.scrollDescPusher = 1;
            this.scrollStatsPusher = 1;
            if(this.ringId != this.initObject.ringId)
            {
               this.ringId == this.initObject.ringId;
               this.ringName.autoSize = TextFieldAutoSize.LEFT;
               this.ringName.width = 145;
               this.ringName.wordWrap = true;
               this.ringName.multiline = true;
               this.ringName.text = this.initObject.ringName;
               this.setStatisticsText();
               this.setDescriptionText();
               this.getRingImage();
               this.addEventListener(Event.ADDED_TO_STAGE,onAddedToStage,false,0,true);
            }
         }
      }
      
      private function onScrollTimerComplete(e:TimerEvent) : void
      {
         if(this.pressedButton == null)
         {
            return;
         }
         scroll();
         this.scrollTimer.reset();
         this.scrollTimer.start();
      }
      
      private function setDescriptionText() : void
      {
         this.description.wordWrap = true;
         this.description.multiline = true;
         this.description.text = this.initObject.description;
         this.description.scrollV = 1;
         if(this.description.maxScrollV > 1)
         {
            this.descScrUp.visible = true;
            this.descScrDown.visible = true;
            descScrUp.y = this.description.y + 2;
            this.scrollDescPusher = this.description.scrollV;
            descScrDown.y = this.description.y + this.description.height - 3;
         }
         else
         {
            this.descScrUp.visible = false;
            this.descScrDown.visible = false;
         }
      }
      
      private function onScrollButtonOut(evt:MouseEvent) : void
      {
         var scrollButton:Object = null;
         if(this.pressedButton == "")
         {
            scrollButton = evt.target;
            this.setBtColor(scrollButton,16777215);
         }
         cancelScroll();
      }
      
      private function onRingImageLoaded() : void
      {
         var fxFilter:BitmapFilter = null;
         var rcFilters:Array = null;
         if(mc.getChildByName("ringImage") != null)
         {
            mc.removeChild(mc.getChildByName("ringImage"));
         }
         this.ringImageContainer = new MovieClip();
         this.ringImageContainer.name = "ringImage";
         this.ringImageContainer.x = 7;
         this.ringImageContainer.y = 7;
         mc.addChild(this.ringImageContainer);
         this.ringImageContainer.addChild(RingIconFactory.getBitmap(this.initObject.ringImageUrl));
         if(this._onStage && this.visible)
         {
            fxFilter = getRingLoadedGlowFilter();
            rcFilters = new Array();
            rcFilters.push(fxFilter);
            this.ringImageContainer.filters = rcFilters;
            TransitionManager.start(this.ringImageContainer,{
               "type":Fade,
               "direction":Transition.IN,
               "duration":2,
               "easing":Strong.easeOut
            });
         }
      }
      
      private function applyButtonFX(btObj:Object) : void
      {
         var fxFilter:BitmapFilter = getApplyButtonFXGlowFilter();
         var arrFilters:Array = new Array();
         arrFilters.push(fxFilter);
         btObj.filters = arrFilters;
      }
      
      public function getCurrentRingId() : int
      {
         return this.ringId;
      }
      
      private function getRingLoadedGlowFilter() : BitmapFilter
      {
         var glowSettings:Object = null;
         if(this._ringLoadedGlowFilter == null)
         {
            glowSettings = {
               "clr":16773279,
               "alpa":0.2,
               "xB":3,
               "yB":3,
               "strnght":2
            };
            this._ringLoadedGlowFilter = getGlowFilter(glowSettings);
         }
         return this._ringLoadedGlowFilter;
      }
      
      private function onScrollButtonUp(evt:MouseEvent) : void
      {
         cancelScroll();
      }
      
      private function onAnyButtonUp(evt:MouseEvent) : void
      {
         var scrollButton:Object = mc.getChildByName(this.pressedButton);
         if(scrollButton != null)
         {
            this.setBtColor(scrollButton,16777215);
         }
         this.pressedButton = "";
      }
      
      private function onScrollButtonDown(evt:MouseEvent) : void
      {
         var scrollButton:Object = evt.target;
         this.pressedButton = scrollButton.name;
         scroll();
         this.scrollTimer.start();
      }
      
      private function onAddedToStage(evt:Event) : void
      {
         this.stage.addEventListener(MouseEvent.MOUSE_UP,onAnyButtonUp,false,0,true);
      }
      
      private function initScrollBtn() : void
      {
         this.applyButtonFX(statsScrUp);
         this.applyButtonFX(statsScrDown);
         statsScrUp.buttonMode = statsScrDown.buttonMode = true;
         statsScrUp.mouseChildren = statsScrDown.mouseChildren = false;
         statsScrUp.addEventListener(MouseEvent.MOUSE_OVER,onScrollButtonOver,false,0,true);
         statsScrDown.addEventListener(MouseEvent.MOUSE_OVER,onScrollButtonOver,false,0,true);
         statsScrUp.addEventListener(MouseEvent.MOUSE_OUT,onScrollButtonOut,false,0,true);
         statsScrDown.addEventListener(MouseEvent.MOUSE_OUT,onScrollButtonOut,false,0,true);
         statsScrUp.addEventListener(MouseEvent.MOUSE_DOWN,onScrollButtonDown,false,0,true);
         statsScrDown.addEventListener(MouseEvent.MOUSE_DOWN,onScrollButtonDown,false,0,true);
         statsScrUp.addEventListener(MouseEvent.MOUSE_UP,onScrollButtonUp,false,0,true);
         statsScrDown.addEventListener(MouseEvent.MOUSE_UP,onScrollButtonUp,false,0,true);
         this.applyButtonFX(descScrUp);
         this.applyButtonFX(descScrDown);
         descScrUp.buttonMode = descScrDown.buttonMode = true;
         descScrUp.mouseChildren = descScrDown.mouseChildren = false;
         descScrUp.addEventListener(MouseEvent.MOUSE_OVER,onScrollButtonOver,false,0,true);
         descScrDown.addEventListener(MouseEvent.MOUSE_OVER,onScrollButtonOver,false,0,true);
         descScrUp.addEventListener(MouseEvent.MOUSE_OUT,onScrollButtonOut,false,0,true);
         descScrDown.addEventListener(MouseEvent.MOUSE_OUT,onScrollButtonOut,false,0,true);
         descScrUp.addEventListener(MouseEvent.MOUSE_DOWN,onScrollButtonDown,false,0,true);
         descScrDown.addEventListener(MouseEvent.MOUSE_DOWN,onScrollButtonDown,false,0,true);
         descScrUp.addEventListener(MouseEvent.MOUSE_UP,onScrollButtonUp,false,0,true);
         descScrDown.addEventListener(MouseEvent.MOUSE_UP,onScrollButtonUp,false,0,true);
         this.scrollTimer.addEventListener(TimerEvent.TIMER_COMPLETE,onScrollTimerComplete,false,0,true);
      }
      
      private function onMcAddedToStage(e:Event) : void
      {
         this._onStage = true;
      }
      
      private function scroll() : void
      {
         var scrollValue:Number = 1;
         switch(this.pressedButton)
         {
            case "descScrUp":
               this.scrollDescPusher = this.scrollDescPusher - scrollValue;
               this.description.scrollV = this.scrollDescPusher;
               if(this.scrollDescPusher < 1)
               {
                  this.scrollDescPusher = 1;
               }
               break;
            case "descScrDown":
               this.scrollDescPusher = this.scrollDescPusher + scrollValue;
               this.description.scrollV = this.scrollDescPusher;
               if(this.scrollDescPusher > this.description.maxScrollV)
               {
                  this.scrollDescPusher = this.description.maxScrollV;
               }
               break;
            case "statsScrUp":
               this.scrollStatsPusher = this.scrollStatsPusher - scrollValue;
               this.stats.scrollV = this.scrollStatsPusher;
               if(this.scrollStatsPusher < 1)
               {
                  this.scrollStatsPusher = 1;
               }
               break;
            case "statsScrDown":
               this.scrollStatsPusher = this.scrollStatsPusher + scrollValue;
               this.stats.scrollV = this.scrollStatsPusher;
               if(this.scrollStatsPusher > this.stats.maxScrollV)
               {
                  this.scrollStatsPusher = this.stats.maxScrollV;
               }
         }
      }
      
      private function onScrollButtonOver(evt:MouseEvent) : void
      {
         var scrollButton:Object = evt.target;
         this.setBtColor(scrollButton,16773279);
      }
      
      private function getRingImage() : void
      {
         if(this.initObject.ringImageUrl)
         {
            _callLater.startPerFrame(0,1);
         }
         else if(mc.getChildByName("ringImage") != null)
         {
            mc.removeChild(mc.getChildByName("ringImage"));
         }
      }
      
      private function getApplyButtonFXGlowFilter() : BitmapFilter
      {
         var glowSettings:Object = null;
         if(this._applyButtonFXGlowFilter == null)
         {
            glowSettings = {
               "clr":0,
               "alpa":0.8,
               "xB":2,
               "yB":2,
               "strnght":2
            };
            this._applyButtonFXGlowFilter = this.getGlowFilter(glowSettings);
         }
         return this._applyButtonFXGlowFilter;
      }
      
      public function getGlowFilter(glowSetting:Object) : BitmapFilter
      {
         var color:Number = glowSetting.clr;
         var alpha:Number = glowSetting.alpa;
         var blurX:Number = glowSetting.xB;
         var blurY:Number = glowSetting.yB;
         var strength:Number = glowSetting.strnght;
         var inner:Boolean = false;
         var knockout:Boolean = false;
         var quality:Number = BitmapFilterQuality.HIGH;
         return new GlowFilter(color,alpha,blurX,blurY,strength,quality,inner,knockout);
      }
      
      private function cancelScroll() : void
      {
         this.pressedButton = null;
         this.scrollTimer.reset();
      }
      
      private function onMcRemovedFromStage(e:Event) : void
      {
         this._onStage = false;
      }
      
      public function get initObject() : Object
      {
         return this._initObject;
      }
      
      private function setStatisticsText() : void
      {
         this.stats.wordWrap = true;
         this.stats.multiline = true;
         var statString:String = "";
         for(var s:int = 0; s < this.initObject.stats.length; s++)
         {
            statString = statString + ("<b>" + this.initObject.stats[s].label + ": <font color=\"#FFFFFF\">" + this.initObject.stats[s].value + "</font></b><br>");
         }
         this.stats.htmlText = statString;
         this.stats.scrollV = 1;
         if(this.stats.maxScrollV > 1)
         {
            this.statsScrUp.visible = this.statsScrDown.visible = true;
            statsScrUp.y = this.stats.y + 2;
            this.scrollStatsPusher = this.stats.scrollV;
            statsScrDown.y = this.stats.y + 35;
         }
         else
         {
            this.statsScrUp.visible = this.statsScrDown.visible = false;
         }
      }
      
      private function setBtColor(btObj:Object, color:Number) : void
      {
         var btColor:ColorTransform = btObj.arrowBg.transform.colorTransform;
         btColor.color = color;
         btObj.arrowBg.transform.colorTransform = btColor;
      }
   }
}

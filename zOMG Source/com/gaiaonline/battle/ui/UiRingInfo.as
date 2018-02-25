package com.gaiaonline.battle.ui
{
   import com.gaiaonline.battle.ApplicationInterfaces.IUIFramework;
   import com.gaiaonline.battle.GlobalTexts;
   import com.gaiaonline.utils.VisManagerSingleParent;
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.filters.BevelFilter;
   import flash.filters.BitmapFilter;
   import flash.filters.BitmapFilterQuality;
   import flash.filters.BitmapFilterType;
   import flash.geom.ColorTransform;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   
   public class UiRingInfo extends MovieClip
   {
      
      private static const s_emptyColorTranform:ColorTransform = new ColorTransform();
      
      private static const CHARGE_STEPS_PER_LEVEL:uint = 10;
       
      
      private var _glowFilter:BitmapFilter = null;
      
      private var _uiFramework:IUIFramework = null;
      
      public var noRingsTxt:TextField;
      
      private var ringImageContainer:MovieClip;
      
      private var scrollStatsPusher:Number;
      
      private var chargeLevelColors:Array;
      
      public var ringInfoHolder:MovieClip;
      
      private var itemInfo:UiItemInfo = null;
      
      private var _bevelFilter:BitmapFilter = null;
      
      private var ringLoader:Loader;
      
      private var scrollDescPusher:Number;
      
      private var ringId:int;
      
      private var visManager:VisManagerSingleParent = null;
      
      private var pressedButton:String;
      
      public function UiRingInfo()
      {
         super();
      }
      
      public function setRingInfo(ringInfo:Object) : void
      {
         this.itemInfo.setRingInfo(ringInfo);
         if(ringInfo != null)
         {
            this.chargeLevelColors = [{
               "r":0,
               "g":0,
               "b":0
            },{
               "r":255,
               "g":168,
               "b":0
            },{
               "r":220,
               "g":40,
               "b":20
            },{
               "r":70,
               "g":150,
               "b":10
            },{
               "r":0,
               "g":255,
               "b":40
            },{
               "r":0,
               "g":220,
               "b":255
            },{
               "r":30,
               "g":160,
               "b":180
            },{
               "r":30,
               "g":100,
               "b":180
            },{
               "r":0,
               "g":0,
               "b":210
            },{
               "r":190,
               "g":90,
               "b":240
            },{
               "r":255,
               "g":0,
               "b":240
            }];
            if(this.ringId != this.initObject.ringId)
            {
               if(0 <= initObject.chargeLevel)
               {
                  this.chargeLevel.autoSize = TextFieldAutoSize.LEFT;
                  this.chargeLevel.text = Number(ringInfo.chargeLevel).toFixed(1);
                  this.setChargeLevelBg();
                  this.createChargeSteps();
               }
            }
         }
         setInfoAreaVisible(ringInfo != null);
      }
      
      public function init(uiFramework:IUIFramework) : void
      {
         this.visManager = new VisManagerSingleParent(this);
         this._uiFramework = uiFramework;
         this.itemInfo = new UiItemInfo(uiFramework,this);
         noRingsTxt.text = GlobalTexts.getNoRingsText();
         setInfoAreaVisible(false);
         this.cappedMessage.text = "";
      }
      
      public function get descScrDown() : MovieClip
      {
         return this.ringInfoHolder.descScrDown;
      }
      
      public function getCurrentRingId() : int
      {
         return this.itemInfo.getCurrentRingId();
      }
      
      public function get chargeStepBlip10() : MovieClip
      {
         return this.ringInfoHolder.chargeStepBlip10;
      }
      
      public function get stats() : TextField
      {
         return this.ringInfoHolder.stats;
      }
      
      public function get chargeStepBlip1() : MovieClip
      {
         return this.ringInfoHolder.chargeStepBlip1;
      }
      
      public function get chargeStepBlip2() : MovieClip
      {
         return this.ringInfoHolder.chargeStepBlip2;
      }
      
      public function get chargeStepBlip3() : MovieClip
      {
         return this.ringInfoHolder.chargeStepBlip3;
      }
      
      public function get chargeStepBlip4() : MovieClip
      {
         return this.ringInfoHolder.chargeStepBlip4;
      }
      
      public function get chargeStepBlip5() : MovieClip
      {
         return this.ringInfoHolder.chargeStepBlip5;
      }
      
      public function get chargeStepBlip6() : MovieClip
      {
         return this.ringInfoHolder.chargeStepBlip6;
      }
      
      public function get chargeStepBlip8() : MovieClip
      {
         return this.ringInfoHolder.chargeStepBlip8;
      }
      
      public function get chargeStepBlip9() : MovieClip
      {
         return this.ringInfoHolder.chargeStepBlip9;
      }
      
      public function get imageBgBox() : MovieClip
      {
         return this.ringInfoHolder.imageBxBox;
      }
      
      public function get chargeStepBlip7() : MovieClip
      {
         return this.ringInfoHolder.chargeStepBlip7;
      }
      
      public function get chargeLevel() : TextField
      {
         return this.ringInfoHolder.chargeLevel;
      }
      
      private function createChargeSteps() : void
      {
         var blipFilters:Array = null;
         var blip:MovieClip = null;
         var bevelFilter:BitmapFilter = null;
         var cl:int = 0;
         var blipCT:ColorTransform = null;
         var cR:Number = NaN;
         var cG:Number = NaN;
         var cB:Number = NaN;
         var glowFilter:BitmapFilter = null;
         for(var b:int = 0; b < CHARGE_STEPS_PER_LEVEL; b++)
         {
            blipFilters = new Array();
            blip = this.ringInfoHolder.getChildByName("chargeStepBlip" + (b + 1)) as MovieClip;
            if(b < this.initObject.chargeStep)
            {
               cl = 10;
               if(this.initObject.chargeLevel < 10)
               {
                  cl = this.initObject.chargeLevel;
               }
               blipCT = blip.blipBackground.transform.colorTransform;
               cR = this.chargeLevelColors[cl].r;
               cG = this.chargeLevelColors[cl].g;
               cB = this.chargeLevelColors[cl].b;
               blipCT.color = cR << 16 | cG << 8 | cB;
               blip.blipBackground.transform.colorTransform = blipCT;
               glowFilter = this.getGlowFilter();
               blipFilters.push(glowFilter);
            }
            else
            {
               blip.blipBackground.transform.colorTransform = s_emptyColorTranform;
            }
            bevelFilter = getBevelFilter();
            blipFilters.push(bevelFilter);
            blip.filters = blipFilters;
            blip.cacheAsBitmap = true;
         }
      }
      
      public function get statsScrDown() : MovieClip
      {
         return this.ringInfoHolder.statsScrDown;
      }
      
      public function get descScrUp() : MovieClip
      {
         return this.ringInfoHolder.descScrUp;
      }
      
      private function setChargeLevelBg() : void
      {
         var colorTransform:ColorTransform = null;
         var col:Object = {
            "r":255,
            "g":0,
            "b":240
         };
         var cl:int = 10;
         if(this.initObject.chargeLevel < 10)
         {
            cl = 10;
         }
         if(this.initObject != null && this.initObject.chargeLevel != null && this.chargeLevelColors[cl] != null)
         {
            col = this.chargeLevelColors[cl];
         }
         if(this.imageBgBox != null && this.imageBgBox.bgGrad != null)
         {
            colorTransform = this.imageBgBox.bgGrad.transform.colorTransform;
            colorTransform.redOffset = -255 + col.r;
            colorTransform.greenOffset = -255 + col.g;
            colorTransform.blueOffset = -255 + col.b;
            this.imageBgBox.bgGrad.transform.colorTransform = colorTransform;
            this.imageBgBox.alpha = 0.7;
         }
      }
      
      private function setInfoAreaVisible(visible:Boolean) : void
      {
         this.visManager.setVisible(ringInfoHolder,visible);
         this.visManager.setVisible(noRingsTxt,!visible);
      }
      
      public function get cappedMessage() : TextField
      {
         return this.ringInfoHolder.cappedMessage;
      }
      
      private function getGlowFilter() : BitmapFilter
      {
         var glowSettings:Object = null;
         if(this._glowFilter == null)
         {
            glowSettings = {
               "clr":16773279,
               "alpa":0.4,
               "xB":3,
               "yB":3,
               "strnght":2
            };
            this._glowFilter = itemInfo.getGlowFilter(glowSettings);
         }
         return this._glowFilter;
      }
      
      private function getBevelFilter() : BitmapFilter
      {
         var distance:Number = NaN;
         var angleInDegrees:Number = NaN;
         var highlightColor:Number = NaN;
         var highlightAlpha:Number = NaN;
         var shadowColor:Number = NaN;
         var shadowAlpha:Number = NaN;
         var blurX:Number = NaN;
         var blurY:Number = NaN;
         var strength:Number = NaN;
         var quality:Number = NaN;
         var type:String = null;
         var knockout:Boolean = false;
         if(_bevelFilter == null)
         {
            distance = 5;
            angleInDegrees = 45;
            highlightColor = 16777215;
            highlightAlpha = 1;
            shadowColor = 0;
            shadowAlpha = 1;
            blurX = 5;
            blurY = 5;
            strength = 0.3;
            quality = BitmapFilterQuality.HIGH;
            type = BitmapFilterType.INNER;
            knockout = false;
            this._bevelFilter = new BevelFilter(distance,angleInDegrees,highlightColor,highlightAlpha,shadowColor,shadowAlpha,blurX,blurY,strength,quality,type,knockout);
         }
         return this._bevelFilter;
      }
      
      public function get ringName() : TextField
      {
         return this.ringInfoHolder.ringName;
      }
      
      private function get initObject() : Object
      {
         return itemInfo.initObject;
      }
      
      public function get description() : TextField
      {
         return this.ringInfoHolder.description;
      }
      
      public function get statsScrUp() : MovieClip
      {
         return this.ringInfoHolder.statsScrUp;
      }
   }
}

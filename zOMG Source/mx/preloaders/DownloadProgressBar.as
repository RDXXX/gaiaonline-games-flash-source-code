package mx.preloaders
{
   import flash.display.DisplayObject;
   import flash.display.GradientType;
   import flash.display.Graphics;
   import flash.display.Loader;
   import flash.display.LoaderInfo;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.events.TimerEvent;
   import flash.geom.Matrix;
   import flash.geom.Rectangle;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.Timer;
   import flash.utils.getDefinitionByName;
   import flash.utils.getTimer;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.RSLEvent;
   import mx.graphics.RectangularDropShadow;
   import mx.graphics.RoundedRectangle;
   
   use namespace mx_internal;
   
   public class DownloadProgressBar extends Sprite implements IPreloaderDisplay
   {
      
      mx_internal static const VERSION:String = "3.6.0.21751";
      
      private static var _initializingLabel:String = "Initializing";
       
      
      protected var MINIMUM_DISPLAY_TIME:uint = 0;
      
      private var _barFrameRect:RoundedRectangle;
      
      private var _stageHeight:Number = 375;
      
      private var _stageWidth:Number = 500;
      
      private var _percentRect:Rectangle;
      
      private var _percentObj:TextField;
      
      private var _downloadingLabel:String = "Loading";
      
      private var _showProgressBar:Boolean = true;
      
      private var _yOffset:Number = 20;
      
      private var _initProgressCount:uint = 0;
      
      private var _barSprite:Sprite;
      
      private var _visible:Boolean = false;
      
      private var _barRect:RoundedRectangle;
      
      private var _showingDisplay:Boolean = false;
      
      private var _backgroundSize:String = "";
      
      private var _initProgressTotal:uint = 12;
      
      private var _startedInit:Boolean = false;
      
      private var _showLabel:Boolean = true;
      
      private var _value:Number = 0;
      
      private var _labelRect:Rectangle;
      
      private var _backgroundImage:Object;
      
      private var _backgroundAlpha:Number = 1;
      
      private var _backgroundColor:uint;
      
      private var _startedLoading:Boolean = false;
      
      private var _showPercentage:Boolean = false;
      
      private var _barFrameSprite:Sprite;
      
      protected var DOWNLOAD_PERCENTAGE:uint = 60;
      
      private var _displayStartCount:uint = 0;
      
      private var _labelObj:TextField;
      
      private var _borderRect:RoundedRectangle;
      
      private var _maximum:Number = 0;
      
      private var _displayTime:int;
      
      private var _label:String = "";
      
      private var _preloader:Sprite;
      
      private var _xOffset:Number = 20;
      
      private var _startTime:int;
      
      public function DownloadProgressBar()
      {
         _labelRect = labelRect;
         _percentRect = percentRect;
         _borderRect = borderRect;
         _barFrameRect = barFrameRect;
         _barRect = barRect;
         super();
      }
      
      public static function get initializingLabel() : String
      {
         return _initializingLabel;
      }
      
      public static function set initializingLabel(value:String) : void
      {
         _initializingLabel = value;
      }
      
      protected function getPercentLoaded(loaded:Number, total:Number) : Number
      {
         var perc:Number = NaN;
         if(loaded == 0 || total == 0 || isNaN(total) || isNaN(loaded))
         {
            return 0;
         }
         perc = 100 * loaded / total;
         if(isNaN(perc) || perc <= 0)
         {
            return 0;
         }
         if(perc > 99)
         {
            return 99;
         }
         return Math.round(perc);
      }
      
      protected function get labelFormat() : TextFormat
      {
         var tf:TextFormat = new TextFormat();
         tf.color = 3355443;
         tf.font = "Verdana";
         tf.size = 10;
         return tf;
      }
      
      private function calcScale() : void
      {
         var scale:Number = NaN;
         if(stageWidth < 160 || stageHeight < 120)
         {
            scaleX = 1;
            scaleY = 1;
         }
         else if(stageWidth < 240 || stageHeight < 150)
         {
            createChildren();
            scale = Math.min(stageWidth / 240,stageHeight / 150);
            scaleX = scale;
            scaleY = scale;
         }
         else
         {
            createChildren();
         }
      }
      
      protected function get percentRect() : Rectangle
      {
         return new Rectangle(108,4,34,16);
      }
      
      protected function set showLabel(value:Boolean) : void
      {
         _showLabel = value;
         draw();
      }
      
      private function calcBackgroundSize() : Number
      {
         var index:int = 0;
         var percentage:Number = NaN;
         if(backgroundSize)
         {
            index = backgroundSize.indexOf("%");
            if(index != -1)
            {
               percentage = Number(backgroundSize.substr(0,index));
            }
         }
         return percentage;
      }
      
      private function show() : void
      {
         _showingDisplay = true;
         calcScale();
         draw();
         _displayTime = getTimer();
      }
      
      private function loadBackgroundImage(classOrString:Object) : void
      {
         var cls:Class = null;
         var newStyleObj:DisplayObject = null;
         var loader:Loader = null;
         var loaderContext:LoaderContext = null;
         if(classOrString && classOrString as Class)
         {
            cls = Class(classOrString);
            initBackgroundImage(new cls());
         }
         else if(classOrString && classOrString is String)
         {
            try
            {
               cls = Class(getDefinitionByName(String(classOrString)));
            }
            catch(e:Error)
            {
            }
            if(cls)
            {
               newStyleObj = new cls();
               initBackgroundImage(newStyleObj);
            }
            else
            {
               loader = new Loader();
               loader.contentLoaderInfo.addEventListener(Event.COMPLETE,loader_completeHandler);
               loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,loader_ioErrorHandler);
               loaderContext = new LoaderContext();
               loaderContext.applicationDomain = new ApplicationDomain(ApplicationDomain.currentDomain);
               loader.load(new URLRequest(String(classOrString)),loaderContext);
            }
         }
      }
      
      protected function set showPercentage(value:Boolean) : void
      {
         _showPercentage = value;
         draw();
      }
      
      protected function get barFrameRect() : RoundedRectangle
      {
         return new RoundedRectangle(14,40,154,4);
      }
      
      private function loader_ioErrorHandler(event:IOErrorEvent) : void
      {
      }
      
      protected function rslErrorHandler(event:RSLEvent) : void
      {
         _preloader.removeEventListener(ProgressEvent.PROGRESS,progressHandler);
         _preloader.removeEventListener(Event.COMPLETE,completeHandler);
         _preloader.removeEventListener(RSLEvent.RSL_PROGRESS,rslProgressHandler);
         _preloader.removeEventListener(RSLEvent.RSL_COMPLETE,rslCompleteHandler);
         _preloader.removeEventListener(RSLEvent.RSL_ERROR,rslErrorHandler);
         _preloader.removeEventListener(FlexEvent.INIT_PROGRESS,initProgressHandler);
         _preloader.removeEventListener(FlexEvent.INIT_COMPLETE,initCompleteHandler);
         if(!_showingDisplay)
         {
            show();
            _showingDisplay = true;
         }
         label = "RSL Error " + (event.rslIndex + 1) + " of " + event.rslTotal;
         var errorField:ErrorField = new ErrorField(this);
         errorField.show(event.errorText);
      }
      
      protected function rslCompleteHandler(event:RSLEvent) : void
      {
         label = "Loaded library " + event.rslIndex + " of " + event.rslTotal;
      }
      
      protected function get borderRect() : RoundedRectangle
      {
         return new RoundedRectangle(0,0,182,60,4);
      }
      
      protected function showDisplayForDownloading(elapsedTime:int, event:ProgressEvent) : Boolean
      {
         return elapsedTime > 700 && event.bytesLoaded < event.bytesTotal / 2;
      }
      
      protected function createChildren() : void
      {
         var labelObj:TextField = null;
         var percentObj:TextField = null;
         var g:Graphics = graphics;
         if(backgroundColor != 4294967295)
         {
            g.beginFill(backgroundColor,backgroundAlpha);
            g.drawRect(0,0,stageWidth,stageHeight);
         }
         if(backgroundImage != null)
         {
            loadBackgroundImage(backgroundImage);
         }
         _barFrameSprite = new Sprite();
         _barSprite = new Sprite();
         addChild(_barFrameSprite);
         addChild(_barSprite);
         g.beginFill(13421772,0.4);
         g.drawRoundRect(calcX(_borderRect.x),calcY(_borderRect.y),_borderRect.width,_borderRect.height,_borderRect.cornerRadius * 2,_borderRect.cornerRadius * 2);
         g.drawRoundRect(calcX(_borderRect.x + 1),calcY(_borderRect.y + 1),_borderRect.width - 2,_borderRect.height - 2,_borderRect.cornerRadius - 1 * 2,_borderRect.cornerRadius - 1 * 2);
         g.endFill();
         g.beginFill(13421772,0.4);
         g.drawRoundRect(calcX(_borderRect.x + 1),calcY(_borderRect.y + 1),_borderRect.width - 2,_borderRect.height - 2,_borderRect.cornerRadius - 1 * 2,_borderRect.cornerRadius - 1 * 2);
         g.endFill();
         var frame_g:Graphics = _barFrameSprite.graphics;
         var matrix:Matrix = new Matrix();
         matrix.createGradientBox(_barFrameRect.width,_barFrameRect.height,Math.PI / 2,calcX(_barFrameRect.x),calcY(_barFrameRect.y));
         frame_g.beginGradientFill(GradientType.LINEAR,[6054502,11909306],[1,1],[0,255],matrix);
         frame_g.drawRoundRect(calcX(_barFrameRect.x),calcY(_barFrameRect.y),_barFrameRect.width,_barFrameRect.height,_barFrameRect.cornerRadius * 2,_barFrameRect.cornerRadius * 2);
         frame_g.drawRoundRect(calcX(_barFrameRect.x + 1),calcY(_barFrameRect.y + 1),_barFrameRect.width - 2,_barFrameRect.height - 2,_barFrameRect.cornerRadius * 2,_barFrameRect.cornerRadius * 2);
         frame_g.endFill();
         _labelObj = new TextField();
         _labelObj.x = calcX(_labelRect.x);
         _labelObj.y = calcY(_labelRect.y);
         _labelObj.width = _labelRect.width;
         _labelObj.height = _labelRect.height;
         _labelObj.selectable = false;
         _labelObj.defaultTextFormat = labelFormat;
         addChild(_labelObj);
         _percentObj = new TextField();
         _percentObj.x = calcX(_percentRect.x);
         _percentObj.y = calcY(_percentRect.y);
         _percentObj.width = _percentRect.width;
         _percentObj.height = _percentRect.height;
         _percentObj.selectable = false;
         _percentObj.defaultTextFormat = percentFormat;
         addChild(_percentObj);
         var ds:RectangularDropShadow = new RectangularDropShadow();
         ds.color = 0;
         ds.angle = 90;
         ds.alpha = 0.6;
         ds.distance = 2;
         ds.tlRadius = ds.trRadius = ds.blRadius = ds.brRadius = _borderRect.cornerRadius;
         ds.drawShadow(g,calcX(_borderRect.x),calcY(_borderRect.y),_borderRect.width,_borderRect.height);
         g.lineStyle(1,16777215,0.3);
         g.moveTo(calcX(_borderRect.x) + _borderRect.cornerRadius,calcY(_borderRect.y));
         g.lineTo(calcX(_borderRect.x) - _borderRect.cornerRadius + _borderRect.width,calcY(_borderRect.y));
      }
      
      private function draw() : void
      {
         var percentage:Number = NaN;
         if(_startedLoading)
         {
            if(!_startedInit)
            {
               percentage = Math.round(getPercentLoaded(_value,_maximum) * DOWNLOAD_PERCENTAGE / 100);
            }
            else
            {
               percentage = Math.round(getPercentLoaded(_value,_maximum) * (100 - DOWNLOAD_PERCENTAGE) / 100 + DOWNLOAD_PERCENTAGE);
            }
         }
         else
         {
            percentage = getPercentLoaded(_value,_maximum);
         }
         if(_labelObj)
         {
            _labelObj.text = _label;
         }
         if(_percentObj)
         {
            if(!_showPercentage)
            {
               _percentObj.visible = false;
               _percentObj.text = "";
            }
            else
            {
               _percentObj.text = String(percentage) + "%";
            }
         }
         if(_barSprite && _barFrameSprite)
         {
            if(!_showProgressBar)
            {
               _barSprite.visible = false;
               _barFrameSprite.visible = false;
            }
            else
            {
               drawProgressBar(percentage);
            }
         }
      }
      
      private function timerHandler(event:Event = null) : void
      {
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      private function hide() : void
      {
      }
      
      public function get backgroundSize() : String
      {
         return _backgroundSize;
      }
      
      protected function center(width:Number, height:Number) : void
      {
         _xOffset = Math.floor((width - _borderRect.width) / 2);
         _yOffset = Math.floor((height - _borderRect.height) / 2);
      }
      
      protected function progressHandler(event:ProgressEvent) : void
      {
         var loaded:uint = event.bytesLoaded;
         var total:uint = event.bytesTotal;
         var elapsedTime:int = getTimer() - _startTime;
         if(_showingDisplay || showDisplayForDownloading(elapsedTime,event))
         {
            if(!_startedLoading)
            {
               show();
               label = downloadingLabel;
               _startedLoading = true;
            }
            setProgress(event.bytesLoaded,event.bytesTotal);
         }
      }
      
      protected function initProgressHandler(event:Event) : void
      {
         var loaded:Number = NaN;
         var elapsedTime:int = getTimer() - _startTime;
         _initProgressCount++;
         if(!_showingDisplay && showDisplayForInit(elapsedTime,_initProgressCount))
         {
            _displayStartCount = _initProgressCount;
            show();
         }
         else if(_showingDisplay)
         {
            if(!_startedInit)
            {
               _startedInit = true;
               label = initializingLabel;
            }
            loaded = 100 * _initProgressCount / (_initProgressTotal - _displayStartCount);
            setProgress(loaded,100);
         }
      }
      
      protected function set downloadingLabel(value:String) : void
      {
         _downloadingLabel = value;
      }
      
      public function get stageWidth() : Number
      {
         return _stageWidth;
      }
      
      protected function get showPercentage() : Boolean
      {
         return _showPercentage;
      }
      
      override public function get visible() : Boolean
      {
         return _visible;
      }
      
      public function set stageHeight(value:Number) : void
      {
         _stageHeight = value;
      }
      
      public function initialize() : void
      {
         _startTime = getTimer();
         center(stageWidth,stageHeight);
      }
      
      protected function rslProgressHandler(event:RSLEvent) : void
      {
      }
      
      protected function get barRect() : RoundedRectangle
      {
         return new RoundedRectangle(14,39,154,6,0);
      }
      
      protected function get percentFormat() : TextFormat
      {
         var tf:TextFormat = new TextFormat();
         tf.align = "right";
         tf.color = 0;
         tf.font = "Verdana";
         tf.size = 10;
         return tf;
      }
      
      public function set backgroundImage(value:Object) : void
      {
         _backgroundImage = value;
      }
      
      private function calcX(base:Number) : Number
      {
         return base + _xOffset;
      }
      
      private function calcY(base:Number) : Number
      {
         return base + _yOffset;
      }
      
      public function set backgroundAlpha(value:Number) : void
      {
         _backgroundAlpha = value;
      }
      
      private function initCompleteHandler(event:Event) : void
      {
         var timer:Timer = null;
         var elapsedTime:int = getTimer() - _displayTime;
         if(_showingDisplay && elapsedTime < MINIMUM_DISPLAY_TIME)
         {
            timer = new Timer(MINIMUM_DISPLAY_TIME - elapsedTime,1);
            timer.addEventListener(TimerEvent.TIMER,timerHandler);
            timer.start();
         }
         else
         {
            timerHandler();
         }
      }
      
      public function set backgroundColor(value:uint) : void
      {
         _backgroundColor = value;
      }
      
      private function initBackgroundImage(image:DisplayObject) : void
      {
         var sX:Number = NaN;
         var sY:Number = NaN;
         var scale:Number = NaN;
         addChildAt(image,0);
         var backgroundImageWidth:Number = image.width;
         var backgroundImageHeight:Number = image.height;
         var percentage:Number = calcBackgroundSize();
         if(isNaN(percentage))
         {
            sX = 1;
            sY = 1;
         }
         else
         {
            scale = percentage * 0.01;
            sX = scale * stageWidth / backgroundImageWidth;
            sY = scale * stageHeight / backgroundImageHeight;
         }
         image.scaleX = sX;
         image.scaleY = sY;
         var offsetX:Number = Math.round(0.5 * (stageWidth - backgroundImageWidth * sX));
         var offsetY:Number = Math.round(0.5 * (stageHeight - backgroundImageHeight * sY));
         image.x = offsetX;
         image.y = offsetY;
         if(!isNaN(backgroundAlpha))
         {
            image.alpha = backgroundAlpha;
         }
      }
      
      public function set backgroundSize(value:String) : void
      {
         _backgroundSize = value;
      }
      
      protected function showDisplayForInit(elapsedTime:int, count:int) : Boolean
      {
         return elapsedTime > 300 && count == 2;
      }
      
      protected function get downloadingLabel() : String
      {
         return _downloadingLabel;
      }
      
      private function loader_completeHandler(event:Event) : void
      {
         var target:DisplayObject = DisplayObject(LoaderInfo(event.target).loader);
         initBackgroundImage(target);
      }
      
      protected function setProgress(completed:Number, total:Number) : void
      {
         if(!isNaN(completed) && !isNaN(total) && completed >= 0 && total > 0)
         {
            _value = Number(completed);
            _maximum = Number(total);
            draw();
         }
      }
      
      public function get stageHeight() : Number
      {
         return _stageHeight;
      }
      
      public function get backgroundImage() : Object
      {
         return _backgroundImage;
      }
      
      public function get backgroundAlpha() : Number
      {
         if(!isNaN(_backgroundAlpha))
         {
            return _backgroundAlpha;
         }
         return 1;
      }
      
      private function drawProgressBar(percentage:Number) : void
      {
         var barY2:Number = NaN;
         var g:Graphics = _barSprite.graphics;
         g.clear();
         var colors:Array = [16777215,16777215];
         var ratios:Array = [0,255];
         var matrix:Matrix = new Matrix();
         var barWidth:Number = _barRect.width * percentage / 100;
         var barWidthSplit:Number = barWidth / 2;
         var barHeight:Number = _barRect.height - 4;
         var barX:Number = calcX(_barRect.x);
         var barY:Number = calcY(_barRect.y) + 2;
         matrix.createGradientBox(barWidthSplit,barHeight,0,barX,barY);
         g.beginGradientFill(GradientType.LINEAR,colors,[0.39,0.85],ratios,matrix);
         g.drawRect(barX,barY,barWidthSplit,barHeight);
         matrix.createGradientBox(barWidthSplit,barHeight,0,barX + barWidthSplit,barY);
         g.beginGradientFill(GradientType.LINEAR,colors,[0.85,1],ratios,matrix);
         g.drawRect(barX + barWidthSplit,barY,barWidthSplit,barHeight);
         barWidthSplit = barWidth / 3;
         barHeight = _barRect.height;
         barY = calcY(_barRect.y);
         barY2 = barY + barHeight - 1;
         matrix.createGradientBox(barWidthSplit,barHeight,0,barX,barY);
         g.beginGradientFill(GradientType.LINEAR,colors,[0.05,0.15],ratios,matrix);
         g.drawRect(barX,barY,barWidthSplit,1);
         g.drawRect(barX,barY2,barWidthSplit,1);
         matrix.createGradientBox(barWidthSplit,barHeight,0,barX + barWidthSplit,barY);
         g.beginGradientFill(GradientType.LINEAR,colors,[0.15,0.25],ratios,matrix);
         g.drawRect(barX + barWidthSplit,barY,barWidthSplit,1);
         g.drawRect(barX + barWidthSplit,barY2,barWidthSplit,1);
         matrix.createGradientBox(barWidthSplit,barHeight,0,barX + barWidthSplit * 2,barY);
         g.beginGradientFill(GradientType.LINEAR,colors,[0.25,0.1],ratios,matrix);
         g.drawRect(barX + barWidthSplit * 2,barY,barWidthSplit,1);
         g.drawRect(barX + barWidthSplit * 2,barY2,barWidthSplit,1);
         barWidthSplit = barWidth / 3;
         barHeight = _barRect.height;
         barY = calcY(_barRect.y) + 1;
         barY2 = calcY(_barRect.y) + barHeight - 2;
         matrix.createGradientBox(barWidthSplit,barHeight,0,barX,barY);
         g.beginGradientFill(GradientType.LINEAR,colors,[0.15,0.3],ratios,matrix);
         g.drawRect(barX,barY,barWidthSplit,1);
         g.drawRect(barX,barY2,barWidthSplit,1);
         matrix.createGradientBox(barWidthSplit,barHeight,0,barX + barWidthSplit,barY);
         g.beginGradientFill(GradientType.LINEAR,colors,[0.3,0.4],ratios,matrix);
         g.drawRect(barX + barWidthSplit,barY,barWidthSplit,1);
         g.drawRect(barX + barWidthSplit,barY2,barWidthSplit,1);
         matrix.createGradientBox(barWidthSplit,barHeight,0,barX + barWidthSplit * 2,barY);
         g.beginGradientFill(GradientType.LINEAR,colors,[0.4,0.25],ratios,matrix);
         g.drawRect(barX + barWidthSplit * 2,barY,barWidthSplit,1);
         g.drawRect(barX + barWidthSplit * 2,barY2,barWidthSplit,1);
      }
      
      public function get backgroundColor() : uint
      {
         return _backgroundColor;
      }
      
      public function set stageWidth(value:Number) : void
      {
         _stageWidth = value;
      }
      
      protected function completeHandler(event:Event) : void
      {
      }
      
      protected function set label(value:String) : void
      {
         if(!(value is Function))
         {
            _label = value;
         }
         draw();
      }
      
      public function set preloader(value:Sprite) : void
      {
         _preloader = value;
         value.addEventListener(ProgressEvent.PROGRESS,progressHandler);
         value.addEventListener(Event.COMPLETE,completeHandler);
         value.addEventListener(RSLEvent.RSL_PROGRESS,rslProgressHandler);
         value.addEventListener(RSLEvent.RSL_COMPLETE,rslCompleteHandler);
         value.addEventListener(RSLEvent.RSL_ERROR,rslErrorHandler);
         value.addEventListener(FlexEvent.INIT_PROGRESS,initProgressHandler);
         value.addEventListener(FlexEvent.INIT_COMPLETE,initCompleteHandler);
      }
      
      protected function get label() : String
      {
         return _label;
      }
      
      protected function get labelRect() : Rectangle
      {
         return new Rectangle(14,17,100,16);
      }
      
      override public function set visible(value:Boolean) : void
      {
         if(!_visible && value)
         {
            show();
         }
         else if(_visible && !value)
         {
            hide();
         }
         _visible = value;
      }
      
      protected function get showLabel() : Boolean
      {
         return _showLabel;
      }
   }
}

import flash.display.Sprite;
import flash.system.Capabilities;
import flash.text.TextField;
import flash.text.TextFieldAutoSize;
import flash.text.TextFormat;
import mx.preloaders.DownloadProgressBar;

class ErrorField extends Sprite
{
    
   
   private var downloadProgressBar:DownloadProgressBar;
   
   private const TEXT_MARGIN_PX:int = 10;
   
   private const MAX_WIDTH_INCHES:int = 6;
   
   private const MIN_WIDTH_INCHES:int = 2;
   
   function ErrorField(downloadProgressBar:DownloadProgressBar)
   {
      super();
      this.downloadProgressBar = downloadProgressBar;
   }
   
   protected function get labelFormat() : TextFormat
   {
      var tf:TextFormat = new TextFormat();
      tf.color = 0;
      tf.font = "Verdana";
      tf.size = 10;
      return tf;
   }
   
   public function show(errorText:String) : void
   {
      if(errorText == null || errorText.length == 0)
      {
         return;
      }
      var screenWidth:Number = downloadProgressBar.stageWidth;
      var screenHeight:Number = downloadProgressBar.stageHeight;
      var textField:TextField = new TextField();
      textField.autoSize = TextFieldAutoSize.LEFT;
      textField.multiline = true;
      textField.wordWrap = true;
      textField.background = true;
      textField.defaultTextFormat = labelFormat;
      textField.text = errorText;
      textField.width = Math.max(MIN_WIDTH_INCHES * Capabilities.screenDPI,screenWidth - TEXT_MARGIN_PX * 2);
      textField.width = Math.min(MAX_WIDTH_INCHES * Capabilities.screenDPI,textField.width);
      textField.y = Math.max(0,screenHeight - TEXT_MARGIN_PX - textField.height);
      textField.x = (screenWidth - textField.width) / 2;
      downloadProgressBar.parent.addChild(this);
      this.addChild(textField);
   }
}

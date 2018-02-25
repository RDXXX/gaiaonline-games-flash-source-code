package mx.controls.scrollClasses
{
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.ui.Keyboard;
   import flash.utils.Timer;
   import mx.controls.Button;
   import mx.core.FlexVersion;
   import mx.core.UIComponent;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.SandboxMouseEvent;
   import mx.events.ScrollEvent;
   import mx.events.ScrollEventDetail;
   import mx.styles.ISimpleStyleClient;
   import mx.styles.StyleProxy;
   
   use namespace mx_internal;
   
   public class ScrollBar extends UIComponent
   {
      
      mx_internal static const VERSION:String = "3.6.0.21751";
      
      public static const THICKNESS:Number = 16;
       
      
      private var _direction:String = "vertical";
      
      private var _pageScrollSize:Number = 0;
      
      mx_internal var scrollTrack:Button;
      
      mx_internal var downArrow:Button;
      
      mx_internal var scrollThumb:ScrollThumb;
      
      private var trackScrollRepeatDirection:int;
      
      private var _minScrollPosition:Number = 0;
      
      private var trackPosition:Number;
      
      private var _pageSize:Number = 0;
      
      mx_internal var _minHeight:Number = 32;
      
      private var _maxScrollPosition:Number = 0;
      
      private var trackScrollTimer:Timer;
      
      mx_internal var upArrow:Button;
      
      private var _lineScrollSize:Number = 1;
      
      private var _scrollPosition:Number = 0;
      
      private var trackScrolling:Boolean = false;
      
      mx_internal var isScrolling:Boolean;
      
      mx_internal var oldPosition:Number;
      
      mx_internal var _minWidth:Number = 16;
      
      public function ScrollBar()
      {
         super();
      }
      
      override public function set enabled(value:Boolean) : void
      {
         super.enabled = value;
         invalidateDisplayList();
      }
      
      public function set lineScrollSize(value:Number) : void
      {
         _lineScrollSize = value;
      }
      
      public function get minScrollPosition() : Number
      {
         return _minScrollPosition;
      }
      
      mx_internal function dispatchScrollEvent(oldPosition:Number, detail:String) : void
      {
         var event:ScrollEvent = new ScrollEvent(ScrollEvent.SCROLL);
         event.detail = detail;
         event.position = scrollPosition;
         event.delta = scrollPosition - oldPosition;
         event.direction = direction;
         dispatchEvent(event);
      }
      
      private function downArrow_buttonDownHandler(event:FlexEvent) : void
      {
         if(isNaN(oldPosition))
         {
            oldPosition = scrollPosition;
         }
         lineScroll(1);
      }
      
      private function scrollTrack_mouseDownHandler(event:MouseEvent) : void
      {
         if(!(event.target == this || event.target == scrollTrack))
         {
            return;
         }
         trackScrolling = true;
         var sbRoot:DisplayObject = systemManager.getSandboxRoot();
         sbRoot.addEventListener(MouseEvent.MOUSE_UP,scrollTrack_mouseUpHandler,true);
         sbRoot.addEventListener(MouseEvent.MOUSE_MOVE,scrollTrack_mouseMoveHandler,true);
         sbRoot.addEventListener(SandboxMouseEvent.MOUSE_UP_SOMEWHERE,scrollTrack_mouseLeaveHandler);
         systemManager.deployMouseShields(true);
         var pt:Point = new Point(event.localX,event.localY);
         pt = event.target.localToGlobal(pt);
         pt = globalToLocal(pt);
         trackPosition = pt.y;
         if(isNaN(oldPosition))
         {
            oldPosition = scrollPosition;
         }
         trackScrollRepeatDirection = scrollThumb.y + scrollThumb.height < pt.y?1:scrollThumb.y > pt.y?-1:0;
         pageScroll(trackScrollRepeatDirection);
         if(!trackScrollTimer)
         {
            trackScrollTimer = new Timer(getStyle("repeatDelay"),1);
            trackScrollTimer.addEventListener(TimerEvent.TIMER,trackScrollTimerHandler);
         }
         else
         {
            trackScrollTimer.delay = getStyle("repeatDelay");
            trackScrollTimer.repeatCount = 1;
         }
         trackScrollTimer.start();
      }
      
      public function set minScrollPosition(value:Number) : void
      {
         _minScrollPosition = value;
         invalidateDisplayList();
      }
      
      public function get scrollPosition() : Number
      {
         return _scrollPosition;
      }
      
      mx_internal function get linePlusDetail() : String
      {
         return direction == ScrollBarDirection.VERTICAL?ScrollEventDetail.LINE_DOWN:ScrollEventDetail.LINE_RIGHT;
      }
      
      public function get maxScrollPosition() : Number
      {
         return _maxScrollPosition;
      }
      
      protected function get thumbStyleFilters() : Object
      {
         return null;
      }
      
      override public function set doubleClickEnabled(value:Boolean) : void
      {
      }
      
      public function get lineScrollSize() : Number
      {
         return _lineScrollSize;
      }
      
      mx_internal function get virtualHeight() : Number
      {
         return unscaledHeight;
      }
      
      public function set scrollPosition(value:Number) : void
      {
         var denom:Number = NaN;
         var y:Number = NaN;
         var x:Number = NaN;
         _scrollPosition = value;
         if(scrollThumb)
         {
            if(!cacheAsBitmap)
            {
               cacheHeuristic = scrollThumb.cacheHeuristic = true;
            }
            if(!isScrolling)
            {
               value = Math.min(value,maxScrollPosition);
               value = Math.max(value,minScrollPosition);
               denom = maxScrollPosition - minScrollPosition;
               y = denom == 0 || isNaN(denom)?Number(0):Number((value - minScrollPosition) * (trackHeight - scrollThumb.height) / denom + trackY);
               x = (virtualWidth - scrollThumb.width) / 2 + getStyle("thumbOffset");
               scrollThumb.move(Math.round(x),Math.round(y));
            }
         }
      }
      
      protected function get downArrowStyleFilters() : Object
      {
         return null;
      }
      
      public function get pageSize() : Number
      {
         return _pageSize;
      }
      
      public function set pageScrollSize(value:Number) : void
      {
         _pageScrollSize = value;
      }
      
      public function set maxScrollPosition(value:Number) : void
      {
         _maxScrollPosition = value;
         invalidateDisplayList();
      }
      
      mx_internal function pageScroll(direction:int) : void
      {
         var oldPosition:Number = NaN;
         var detail:String = null;
         var delta:Number = _pageScrollSize != 0?Number(_pageScrollSize):Number(pageSize);
         var newPos:Number = _scrollPosition + direction * delta;
         if(newPos > maxScrollPosition)
         {
            newPos = maxScrollPosition;
         }
         else if(newPos < minScrollPosition)
         {
            newPos = minScrollPosition;
         }
         if(newPos != scrollPosition)
         {
            oldPosition = scrollPosition;
            scrollPosition = newPos;
            detail = direction < 0?pageMinusDetail:pagePlusDetail;
            dispatchScrollEvent(oldPosition,detail);
         }
      }
      
      override protected function createChildren() : void
      {
         super.createChildren();
         if(!scrollTrack)
         {
            scrollTrack = new Button();
            scrollTrack.focusEnabled = false;
            scrollTrack.skinName = "trackSkin";
            scrollTrack.upSkinName = "trackUpSkin";
            scrollTrack.overSkinName = "trackOverSkin";
            scrollTrack.downSkinName = "trackDownSkin";
            scrollTrack.disabledSkinName = "trackDisabledSkin";
            if(scrollTrack is ISimpleStyleClient)
            {
               ISimpleStyleClient(scrollTrack).styleName = this;
            }
            addChild(scrollTrack);
            scrollTrack.validateProperties();
         }
         if(!upArrow)
         {
            upArrow = new Button();
            upArrow.enabled = false;
            upArrow.autoRepeat = true;
            upArrow.focusEnabled = false;
            upArrow.upSkinName = "upArrowUpSkin";
            upArrow.overSkinName = "upArrowOverSkin";
            upArrow.downSkinName = "upArrowDownSkin";
            upArrow.disabledSkinName = "upArrowDisabledSkin";
            upArrow.skinName = "upArrowSkin";
            upArrow.upIconName = "";
            upArrow.overIconName = "";
            upArrow.downIconName = "";
            upArrow.disabledIconName = "";
            addChild(upArrow);
            upArrow.styleName = new StyleProxy(this,upArrowStyleFilters);
            upArrow.validateProperties();
            upArrow.addEventListener(FlexEvent.BUTTON_DOWN,upArrow_buttonDownHandler);
         }
         if(!downArrow)
         {
            downArrow = new Button();
            downArrow.enabled = false;
            downArrow.autoRepeat = true;
            downArrow.focusEnabled = false;
            downArrow.upSkinName = "downArrowUpSkin";
            downArrow.overSkinName = "downArrowOverSkin";
            downArrow.downSkinName = "downArrowDownSkin";
            downArrow.disabledSkinName = "downArrowDisabledSkin";
            downArrow.skinName = "downArrowSkin";
            downArrow.upIconName = "";
            downArrow.overIconName = "";
            downArrow.downIconName = "";
            downArrow.disabledIconName = "";
            addChild(downArrow);
            downArrow.styleName = new StyleProxy(this,downArrowStyleFilters);
            downArrow.validateProperties();
            downArrow.addEventListener(FlexEvent.BUTTON_DOWN,downArrow_buttonDownHandler);
         }
      }
      
      private function scrollTrack_mouseOverHandler(event:MouseEvent) : void
      {
         if(!(event.target == this || event.target == scrollTrack))
         {
            return;
         }
         if(trackScrolling)
         {
            trackScrollTimer.start();
         }
      }
      
      private function get minDetail() : String
      {
         return direction == ScrollBarDirection.VERTICAL?ScrollEventDetail.AT_TOP:ScrollEventDetail.AT_LEFT;
      }
      
      mx_internal function isScrollBarKey(key:uint) : Boolean
      {
         var oldPosition:Number = NaN;
         if(key == Keyboard.HOME)
         {
            if(scrollPosition != 0)
            {
               oldPosition = scrollPosition;
               scrollPosition = 0;
               dispatchScrollEvent(oldPosition,minDetail);
            }
            return true;
         }
         if(key == Keyboard.END)
         {
            if(scrollPosition < maxScrollPosition)
            {
               oldPosition = scrollPosition;
               scrollPosition = maxScrollPosition;
               dispatchScrollEvent(oldPosition,maxDetail);
            }
            return true;
         }
         return false;
      }
      
      mx_internal function get lineMinusDetail() : String
      {
         return direction == ScrollBarDirection.VERTICAL?ScrollEventDetail.LINE_UP:ScrollEventDetail.LINE_LEFT;
      }
      
      mx_internal function get pageMinusDetail() : String
      {
         return direction == ScrollBarDirection.VERTICAL?ScrollEventDetail.PAGE_UP:ScrollEventDetail.PAGE_LEFT;
      }
      
      private function get maxDetail() : String
      {
         return direction == ScrollBarDirection.VERTICAL?ScrollEventDetail.AT_BOTTOM:ScrollEventDetail.AT_RIGHT;
      }
      
      private function scrollTrack_mouseLeaveHandler(event:Event) : void
      {
         trackScrolling = false;
         var sbRoot:DisplayObject = systemManager.getSandboxRoot();
         sbRoot.removeEventListener(MouseEvent.MOUSE_UP,scrollTrack_mouseUpHandler,true);
         sbRoot.removeEventListener(MouseEvent.MOUSE_MOVE,scrollTrack_mouseMoveHandler,true);
         sbRoot.removeEventListener(SandboxMouseEvent.MOUSE_UP_SOMEWHERE,scrollTrack_mouseLeaveHandler);
         systemManager.deployMouseShields(false);
         if(trackScrollTimer)
         {
            trackScrollTimer.reset();
         }
         if(event.target != scrollTrack)
         {
            return;
         }
         var detail:String = oldPosition > scrollPosition?pageMinusDetail:pagePlusDetail;
         dispatchScrollEvent(oldPosition,detail);
         oldPosition = NaN;
      }
      
      protected function get upArrowStyleFilters() : Object
      {
         return null;
      }
      
      private function get trackHeight() : Number
      {
         return virtualHeight - (upArrow.getExplicitOrMeasuredHeight() + downArrow.getExplicitOrMeasuredHeight());
      }
      
      public function get pageScrollSize() : Number
      {
         return _pageScrollSize;
      }
      
      override protected function measure() : void
      {
         super.measure();
         upArrow.validateSize();
         downArrow.validateSize();
         scrollTrack.validateSize();
         if(FlexVersion.compatibilityVersion >= FlexVersion.VERSION_3_0)
         {
            _minWidth = !!scrollThumb?Number(scrollThumb.getExplicitOrMeasuredWidth()):Number(0);
            _minWidth = Math.max(scrollTrack.getExplicitOrMeasuredWidth(),upArrow.getExplicitOrMeasuredWidth(),downArrow.getExplicitOrMeasuredWidth(),_minWidth);
         }
         else
         {
            _minWidth = upArrow.getExplicitOrMeasuredWidth();
         }
         _minHeight = upArrow.getExplicitOrMeasuredHeight() + downArrow.getExplicitOrMeasuredHeight();
      }
      
      mx_internal function lineScroll(direction:int) : void
      {
         var oldPosition:Number = NaN;
         var detail:String = null;
         var delta:Number = _lineScrollSize;
         var newPos:Number = _scrollPosition + direction * delta;
         if(newPos > maxScrollPosition)
         {
            newPos = maxScrollPosition;
         }
         else if(newPos < minScrollPosition)
         {
            newPos = minScrollPosition;
         }
         if(newPos != scrollPosition)
         {
            oldPosition = scrollPosition;
            scrollPosition = newPos;
            detail = direction < 0?lineMinusDetail:linePlusDetail;
            dispatchScrollEvent(oldPosition,detail);
         }
      }
      
      public function setScrollProperties(pageSize:Number, minScrollPosition:Number, maxScrollPosition:Number, pageScrollSize:Number = 0) : void
      {
         var thumbHeight:Number = NaN;
         this.pageSize = pageSize;
         _pageScrollSize = pageScrollSize > 0?Number(pageScrollSize):Number(pageSize);
         this.minScrollPosition = Math.max(minScrollPosition,0);
         this.maxScrollPosition = Math.max(maxScrollPosition,0);
         _scrollPosition = Math.max(this.minScrollPosition,_scrollPosition);
         _scrollPosition = Math.min(this.maxScrollPosition,_scrollPosition);
         if(this.maxScrollPosition - this.minScrollPosition > 0 && enabled)
         {
            upArrow.enabled = true;
            downArrow.enabled = true;
            scrollTrack.enabled = true;
            addEventListener(MouseEvent.MOUSE_DOWN,scrollTrack_mouseDownHandler);
            addEventListener(MouseEvent.MOUSE_OVER,scrollTrack_mouseOverHandler);
            addEventListener(MouseEvent.MOUSE_OUT,scrollTrack_mouseOutHandler);
            if(!scrollThumb)
            {
               scrollThumb = new ScrollThumb();
               scrollThumb.focusEnabled = false;
               addChildAt(scrollThumb,getChildIndex(downArrow));
               scrollThumb.styleName = new StyleProxy(this,thumbStyleFilters);
               scrollThumb.upSkinName = "thumbUpSkin";
               scrollThumb.overSkinName = "thumbOverSkin";
               scrollThumb.downSkinName = "thumbDownSkin";
               scrollThumb.iconName = "thumbIcon";
               scrollThumb.skinName = "thumbSkin";
            }
            thumbHeight = trackHeight < 0?Number(0):Number(Math.round(pageSize / (this.maxScrollPosition - this.minScrollPosition + pageSize) * trackHeight));
            if(thumbHeight < scrollThumb.minHeight)
            {
               if(trackHeight < scrollThumb.minHeight)
               {
                  scrollThumb.visible = false;
               }
               else
               {
                  thumbHeight = scrollThumb.minHeight;
                  scrollThumb.visible = true;
                  scrollThumb.setActualSize(scrollThumb.measuredWidth,scrollThumb.minHeight);
               }
            }
            else
            {
               scrollThumb.visible = true;
               scrollThumb.setActualSize(scrollThumb.measuredWidth,thumbHeight);
            }
            scrollThumb.setRange(upArrow.getExplicitOrMeasuredHeight() + 0,virtualHeight - downArrow.getExplicitOrMeasuredHeight() - scrollThumb.height,this.minScrollPosition,this.maxScrollPosition);
            scrollPosition = Math.max(Math.min(scrollPosition,this.maxScrollPosition),this.minScrollPosition);
         }
         else
         {
            upArrow.enabled = false;
            downArrow.enabled = false;
            scrollTrack.enabled = false;
            if(scrollThumb)
            {
               scrollThumb.visible = false;
            }
         }
      }
      
      private function trackScrollTimerHandler(event:Event) : void
      {
         if(trackScrollRepeatDirection == 1)
         {
            if(scrollThumb.y + scrollThumb.height > trackPosition)
            {
               return;
            }
         }
         if(trackScrollRepeatDirection == -1)
         {
            if(scrollThumb.y < trackPosition)
            {
               return;
            }
         }
         pageScroll(trackScrollRepeatDirection);
         if(trackScrollTimer && trackScrollTimer.repeatCount == 1)
         {
            trackScrollTimer.delay = getStyle("repeatInterval");
            trackScrollTimer.repeatCount = 0;
         }
      }
      
      private function upArrow_buttonDownHandler(event:FlexEvent) : void
      {
         if(isNaN(oldPosition))
         {
            oldPosition = scrollPosition;
         }
         lineScroll(-1);
      }
      
      public function set pageSize(value:Number) : void
      {
         _pageSize = value;
      }
      
      private function get trackY() : Number
      {
         return upArrow.getExplicitOrMeasuredHeight();
      }
      
      private function scrollTrack_mouseOutHandler(event:MouseEvent) : void
      {
         if(trackScrolling)
         {
            trackScrollTimer.stop();
         }
      }
      
      private function scrollTrack_mouseUpHandler(event:MouseEvent) : void
      {
         scrollTrack_mouseLeaveHandler(event);
      }
      
      private function scrollTrack_mouseMoveHandler(event:MouseEvent) : void
      {
         var pt:Point = null;
         if(trackScrolling)
         {
            pt = new Point(event.stageX,event.stageY);
            pt = globalToLocal(pt);
            trackPosition = pt.y;
         }
      }
      
      override protected function updateDisplayList(unscaledWidth:Number, unscaledHeight:Number) : void
      {
         if($height == 1)
         {
            return;
         }
         if(!upArrow)
         {
            return;
         }
         super.updateDisplayList(unscaledWidth,unscaledHeight);
         if(cacheAsBitmap)
         {
            cacheHeuristic = scrollThumb.cacheHeuristic = false;
         }
         upArrow.setActualSize(upArrow.getExplicitOrMeasuredWidth(),upArrow.getExplicitOrMeasuredHeight());
         if(FlexVersion.compatibilityVersion >= FlexVersion.VERSION_3_0)
         {
            upArrow.move((virtualWidth - upArrow.width) / 2,0);
         }
         else
         {
            upArrow.move(0,0);
         }
         scrollTrack.setActualSize(scrollTrack.getExplicitOrMeasuredWidth(),virtualHeight);
         if(FlexVersion.compatibilityVersion >= FlexVersion.VERSION_3_0)
         {
            scrollTrack.x = (virtualWidth - scrollTrack.width) / 2;
         }
         scrollTrack.y = 0;
         downArrow.setActualSize(downArrow.getExplicitOrMeasuredWidth(),downArrow.getExplicitOrMeasuredHeight());
         if(FlexVersion.compatibilityVersion >= FlexVersion.VERSION_3_0)
         {
            downArrow.move((virtualWidth - downArrow.width) / 2,virtualHeight - downArrow.getExplicitOrMeasuredHeight());
         }
         else
         {
            downArrow.move(0,virtualHeight - downArrow.getExplicitOrMeasuredHeight());
         }
         setScrollProperties(pageSize,minScrollPosition,maxScrollPosition,_pageScrollSize);
         scrollPosition = _scrollPosition;
      }
      
      mx_internal function get pagePlusDetail() : String
      {
         return direction == ScrollBarDirection.VERTICAL?ScrollEventDetail.PAGE_DOWN:ScrollEventDetail.PAGE_RIGHT;
      }
      
      mx_internal function get virtualWidth() : Number
      {
         return unscaledWidth;
      }
      
      public function set direction(value:String) : void
      {
         _direction = value;
         invalidateSize();
         invalidateDisplayList();
         dispatchEvent(new Event("directionChanged"));
      }
      
      [Bindable("directionChanged")]
      public function get direction() : String
      {
         return _direction;
      }
   }
}

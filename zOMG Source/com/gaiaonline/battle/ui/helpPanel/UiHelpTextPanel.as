package com.gaiaonline.battle.ui.helpPanel
{
   import com.gaiaonline.assets.UiBasicButton;
   import com.gaiaonline.battle.ApplicationInterfaces.IFileVersionManager;
   import com.gaiaonline.battle.ApplicationInterfaces.ILinkManager;
   import com.gaiaonline.battle.gateway.BattleEvent;
   import com.gaiaonline.battle.gateway.BattleGateway;
   import com.gaiaonline.battle.gateway.BattleMessage;
   import com.gaiaonline.battle.ui.HelpList;
   import com.gaiaonline.battle.utils.BattleUtils;
   import com.gaiaonline.battle.utils.ThirdPartyUtils;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.FocusEvent;
   import flash.events.HTTPStatusEvent;
   import flash.events.IEventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.TextEvent;
   import flash.events.TimerEvent;
   import flash.geom.Rectangle;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.text.StyleSheet;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.Timer;
   
   public class UiHelpTextPanel extends MovieClip
   {
       
      
      public var searchQuery:TextField;
      
      private var css:StyleSheet;
      
      private var openTopic:Object;
      
      private var topicsItems:Array;
      
      private var _gateway:BattleGateway = null;
      
      public var indexList:MovieClip;
      
      public var scrollBarContent:MovieClip;
      
      private var _linkManager:ILinkManager = null;
      
      public var scrollBar:MovieClip;
      
      private var indexTopics:Array;
      
      public var indexMask:MovieClip;
      
      private var scrollTimer:Timer;
      
      public var indexChars:MovieClip;
      
      private var scrollContentTimer:Timer;
      
      private var headerItems:Array;
      
      private var scrollButtonPressed:String = "";
      
      private var cssloader:URLLoader;
      
      private var _helpList:HelpList = null;
      
      private var clearResults:UiBasicButton;
      
      private var _isLoadedExternally:Boolean = false;
      
      public var btnIndex:SimpleButton;
      
      private var initObject:Object = null;
      
      public var maskContent:MovieClip;
      
      private var prevSearchStr:String;
      
      public var helpContent:TextField;
      
      private var htmlloader:URLLoader;
      
      private var _fileVersionManager:IFileVersionManager = null;
      
      public function UiHelpTextPanel(gateway:BattleGateway, linkManager:ILinkManager, fileVersionManager:IFileVersionManager, isLoadedExternally:Boolean)
      {
         indexTopics = [];
         headerItems = [];
         topicsItems = [];
         super();
         this._gateway = gateway;
         this._linkManager = linkManager;
         this._fileVersionManager = fileVersionManager;
         this._isLoadedExternally = isLoadedExternally;
         this._helpList = new HelpList(this._fileVersionManager,this._linkManager.baseURL);
         this._helpList.load();
         this.openTopic = new Object();
         this.scrollBar.visible = this.scrollBarContent.visible = false;
         this.addEventListener(Event.ADDED_TO_STAGE,afterAddToStage,false,0,true);
         var vUrl:String = "?v=" + this._fileVersionManager.getClientVersion("help-files/css/help-content.css");
         var req:URLRequest = new URLRequest(this._linkManager.baseURL + "help-files/css/help-content.css" + vUrl);
         this.cssloader = new URLLoader();
         this.cssloader.addEventListener(Event.COMPLETE,onCSSFileLoaded,false,0,true);
         this.cssloader.addEventListener(HTTPStatusEvent.HTTP_STATUS,httpStatusHandler,false,0,true);
         this.cssloader.addEventListener(IOErrorEvent.IO_ERROR,ioErrorHandler,false,0,true);
         this.cssloader.load(req);
         this.tabChildren = false;
         this.helpContent.htmlText = "";
         this.helpContent.multiline = true;
         this.helpContent.wordWrap = true;
         this.helpContent.selectable = true;
         this.helpContent.mouseWheelEnabled = false;
         this.helpContent.autoSize = TextFieldAutoSize.LEFT;
         this.initSearch();
      }
      
      private function linkHandler(linkEvent:TextEvent) : void
      {
         var cmd:String = linkEvent.text.split(":")[0];
         var param:String = linkEvent.text.split(":")[1];
         switch(cmd.toLowerCase())
         {
            case "help":
               this.changeContent(param);
               break;
            case "server":
               this.serverCommand(param);
         }
      }
      
      private function scrollContentButtonDown(evt:MouseEvent) : void
      {
         var evtTrgt:Object = evt.target;
         if(evtTrgt.name == "scrDown")
         {
            this.scrollButtonPressed = "cdown";
         }
         else if(evtTrgt.name == "scrUp")
         {
            this.scrollButtonPressed = "cup";
         }
         this.scrollContentTimer.start();
      }
      
      private function addScrollBar() : void
      {
         var showProc:Number = NaN;
         this.scrollBar.scrUp.buttonMode = true;
         this.scrollBar.scrUp.addEventListener(MouseEvent.MOUSE_DOWN,scrollButtonDown,false,0,true);
         this.scrollBar.scrDown.buttonMode = true;
         this.scrollBar.scrDown.addEventListener(MouseEvent.MOUSE_DOWN,scrollButtonDown,false,0,true);
         if(this.indexList.height > this.indexMask.height)
         {
            this.scrollBar.visible = true;
            this.scrollBar.dragBtn.y = 12;
            showProc = this.indexMask.height / (this.indexList.height / 100);
            this.scrollBar.dragBtn.height = Math.round(this.scrollBar.scrollBg.height / 100 * showProc);
            this.scrollBar.dragBtn.buttonMode = true;
            this.scrollBar.dragBtn.addEventListener(MouseEvent.MOUSE_DOWN,startListDrag,false,0,true);
            this.scrollTimer = new Timer(40);
            this.scrollTimer.addEventListener(TimerEvent.TIMER,checkScrolling,false,0,true);
         }
         else
         {
            this.scrollBar.visible = false;
         }
         this.indexList.y = 67 - 37;
      }
      
      private function listAllIndex() : void
      {
         var tI:int = 0;
         var target:Object = null;
         var firstLetter:String = null;
         var pushY:Number = 0;
         var prevLetter:String = "";
         var headerIndex:Number = 0;
         if(this.indexTopics != null)
         {
            for(tI = 0; tI < this.indexTopics.length; tI++)
            {
               target = this.topicsItems[this.indexTopics[tI].indexNum];
               firstLetter = target.topicName.text.substr(0,1);
               if(prevLetter != firstLetter)
               {
                  prevLetter = firstLetter;
                  this.headerItems[headerIndex].visible = true;
                  this.headerItems[headerIndex].y = pushY;
                  pushY = pushY + 21;
                  headerIndex++;
               }
               target.itemBg.alpha = 0;
               target.visible = true;
               target.y = pushY;
               pushY = pushY + 18;
            }
            this.headerItems[this.headerItems.length - 1].visible = false;
            this.addScrollBar();
         }
      }
      
      private function onTopicItemClick(evt:MouseEvent) : void
      {
         var target:UiHelpIndexItem = evt.target as UiHelpIndexItem;
         displayTopicContent(target);
      }
      
      private function scrollButtonDown(evt:MouseEvent) : void
      {
         var evtTrgt:Object = evt.target;
         if(evtTrgt.name == "scrDown")
         {
            this.scrollButtonPressed = "down";
         }
         else if(evtTrgt.name == "scrUp")
         {
            this.scrollButtonPressed = "up";
         }
         this.scrollTimer.start();
      }
      
      private function tItemOver(evt:MouseEvent) : void
      {
         var target:Object = evt.target;
         target.itemBg.alpha = 1;
      }
      
      private function stopListDrag(evt:MouseEvent) : void
      {
         if(this.scrollBar.dragBtn.onDrag)
         {
            this.scrollBar.dragBtn.onDrag = false;
            this.scrollBar.dragBtn.stopDrag();
            this.scrollTimer.stop();
         }
         if(this.scrollButtonPressed == "up" || this.scrollButtonPressed == "down")
         {
            this.scrollButtonPressed = "";
            if(this.scrollTimer)
            {
               this.scrollTimer.stop();
            }
         }
      }
      
      private function afterAddToStage(evt:Event) : void
      {
         if(this.scrollBar)
         {
            this.scrollBar.dragBtn.stage.addEventListener(MouseEvent.MOUSE_UP,stopListDrag,false,0,true);
            this.scrollBar.scrUp.stage.addEventListener(MouseEvent.MOUSE_UP,stopListDrag,false,0,true);
            this.scrollBar.scrDown.stage.addEventListener(MouseEvent.MOUSE_UP,stopListDrag,false,0,true);
         }
         if(this.scrollBarContent)
         {
            this.scrollBarContent.dragBtn.stage.addEventListener(MouseEvent.MOUSE_UP,stopContentDrag,false,0,true);
            this.scrollBarContent.scrUp.stage.addEventListener(MouseEvent.MOUSE_UP,stopContentDrag,false,0,true);
            this.scrollBarContent.scrDown.stage.addEventListener(MouseEvent.MOUSE_UP,stopContentDrag,false,0,true);
         }
         BattleUtils.enableScrollMouseEvents(this.scrollBar);
         BattleUtils.enableScrollMouseEvents(this.scrollBarContent);
      }
      
      private function tItemOut(evt:MouseEvent) : void
      {
         var target:Object = evt.target;
         if(this.openTopic != target)
         {
            target.itemBg.alpha = 0;
         }
      }
      
      private function changeContent(fileName:String) : void
      {
         var topic:Object = null;
         var topicFileName:String = null;
         var target:Object = null;
         for(var ti:int = 0; ti < this.indexTopics.length; ti++)
         {
            topic = this.indexTopics[ti];
            topicFileName = XML(XMLList(topic.file)[0]).toString();
            if(topicFileName == fileName)
            {
               target = this.topicsItems[this.indexTopics[ti].indexNum];
               if(this.openTopic != target)
               {
                  if(this.openTopic.itemBg != undefined)
                  {
                     this.openTopic.itemBg.alpha = 0;
                  }
                  this.showTopicHelp(topicFileName);
                  target.itemBg.alpha = 1;
                  this.openTopic = target;
               }
            }
         }
      }
      
      private function listSearchResult(searchString:String) : void
      {
         var stringFound:Boolean = false;
         var ti:int = 0;
         var th:int = 0;
         var pushY:Number = NaN;
         var tx:int = 0;
         var target:Object = null;
         if(searchString != "" && searchString != "input search text ...")
         {
            stringFound = false;
            for(ti = 0; ti < this.indexTopics.length; ti++)
            {
               if(this.indexTopics[ti].topicName.toLowerCase().indexOf(searchString) != -1)
               {
                  stringFound = true;
                  break;
               }
            }
            if(stringFound)
            {
               this.clearResults.visible = true;
               for(th = 0; th < this.headerItems.length; th++)
               {
                  if(this.headerItems[th].indexLetter.text.length > 5)
                  {
                     this.headerItems[th].visible = true;
                  }
                  else
                  {
                     this.headerItems[th].visible = false;
                     this.headerItems[th].y = 0;
                  }
               }
               pushY = 21;
               for(tx = 0; tx < this.indexTopics.length; tx++)
               {
                  target = this.topicsItems[this.indexTopics[tx].indexNum];
                  target.itemBg.alpha = 0;
                  if(this.indexTopics[tx].topicName.toLowerCase().indexOf(searchString) != -1)
                  {
                     target.visible = true;
                     target.y = pushY;
                     pushY = pushY + 18;
                  }
                  else
                  {
                     target.visible = false;
                     target.y = 0;
                  }
               }
            }
            this.addScrollBar();
         }
         else if(searchString == "")
         {
            this.listAllIndex();
            this.clearResults.visible = false;
         }
      }
      
      private function startContentDrag(evt:MouseEvent) : void
      {
         this.scrollBarContent.dragBtn.onDrag = true;
         var dragLimit:Rectangle = new Rectangle(2,12,0,this.scrollBarContent.scrollBg.height - this.scrollBarContent.dragBtn.height - 2);
         this.scrollBarContent.dragBtn.startDrag(false,dragLimit);
         this.scrollContentTimer.start();
      }
      
      private function listIndexCharacters() : void
      {
      }
      
      private function showTopicHelp(urlFile:String) : void
      {
         this.helpContent.removeEventListener(TextEvent.LINK,linkHandler);
         this.htmlloader = new URLLoader();
         configureListeners(this.htmlloader);
         var vUrl:String = "?v=" + this._fileVersionManager.getClientVersion("help-files/" + urlFile);
         var url_request:URLRequest = new URLRequest(this._linkManager.baseURL + "help-files/" + urlFile + vUrl);
         try
         {
            this.htmlloader.load(url_request);
         }
         catch(error:Error)
         {
            trace("Unable to load requested document.");
         }
      }
      
      private function sQueryFocusOut(evt:FocusEvent) : void
      {
      }
      
      public function rebuildHelpTopics() : void
      {
         var initObj:Object = new Object();
         initObj.topics = this._helpList.getTopics();
         if(initObj != null)
         {
            this.initObject = initObj;
            this.initSearch();
            this.buildIndexList();
         }
      }
      
      private function filterIndex(evt:MouseEvent) : void
      {
         var target:Object = null;
         var firstLetter:String = null;
         var itarget:Object = evt.target;
         var IndexChar:String = itarget.iChar.text;
         var pushY:Number = 0;
         var prevLetter:String = "";
         var headerIndex:Number = 0;
         for(var tI:int = 0; tI < this.indexTopics.length; tI++)
         {
            target = this.topicsItems[this.indexTopics[tI].indexNum];
            firstLetter = target.topicName.text.substr(0,1);
            if(firstLetter == IndexChar)
            {
               if(prevLetter != firstLetter)
               {
                  prevLetter = firstLetter;
                  this.headerItems[headerIndex].visible = true;
                  this.headerItems[headerIndex].y = pushY;
                  pushY = pushY + 21;
                  headerIndex++;
               }
               target.itemBg.alpha = 0;
               target.visible = true;
               target.y = pushY;
               pushY = pushY + 18;
            }
            else
            {
               if(prevLetter != firstLetter)
               {
                  prevLetter = firstLetter;
                  this.headerItems[headerIndex].visible = false;
                  this.headerItems[headerIndex].y = 0;
                  headerIndex++;
               }
               target.visible = false;
               target.y = 0;
            }
         }
         this.headerItems[this.headerItems.length - 1].visible = false;
         this.addScrollBar();
      }
      
      private function displayTopicContent(target:UiHelpIndexItem) : void
      {
         if(target == null)
         {
            return;
         }
         if(this.openTopic != target)
         {
            if(this.openTopic.itemBg != undefined)
            {
               this.openTopic.itemBg.alpha = 0;
            }
            this.showTopicHelp(target.fileLink);
            target.itemBg.alpha = 1;
            this.openTopic = target;
         }
      }
      
      private function checkContentScrolling(evt:TimerEvent) : void
      {
         var scrVal:Number = 3;
         var bottomLimit:Number = 10 + (this.scrollBarContent.scrollBg.height - this.scrollBarContent.dragBtn.height);
         if(this.scrollButtonPressed == "cup")
         {
            this.scrollBarContent.dragBtn.y = this.scrollBarContent.dragBtn.y - scrVal;
            if(this.scrollBarContent.dragBtn.y < 10)
            {
               this.scrollBarContent.dragBtn.y = 10;
            }
         }
         else if(this.scrollButtonPressed == "cdown")
         {
            this.scrollBarContent.dragBtn.y = this.scrollBarContent.dragBtn.y + 3;
            if(this.scrollBarContent.dragBtn.y > bottomLimit)
            {
               this.scrollBarContent.dragBtn.y = bottomLimit;
            }
         }
         var scrollPos:Number = (this.scrollBarContent.dragBtn.y - 12) / ((this.scrollBarContent.scrollBg.height - 7) / 100);
         this.helpContent.y = 72 - Math.round(this.helpContent.height / 100 * scrollPos);
      }
      
      private function sQueryFocusIn(evt:FocusEvent) : void
      {
      }
      
      private function buildIndexList() : void
      {
         var ii:int = 0;
         var st:int = 0;
         var tName:String = null;
         var topicLink:UiHelpIndexItem = null;
         var indexHeader:UiHelpIndexHeader = null;
         if(MovieClip(this.indexList).numChildren > 0)
         {
            for(ii = 0; ii < MovieClip(this.indexList).numChildren; ii++)
            {
               if(MovieClip(this.indexList).getChildAt(ii) != null)
               {
                  MovieClip(this.indexList).removeChildAt(ii);
               }
            }
         }
         this.indexTopics.length = 0;
         var topics:Array = this.initObject.topics;
         for(var t:int = 0; t < topics.length; t++)
         {
            if(topics[t] != undefined)
            {
               if(this.indexTopics.indexOf({
                  "topicName":topics[t].title,
                  "file":topics[t].contentLink
               }))
               {
                  this.indexTopics.push({
                     "topicName":topics[t].title,
                     "file":topics[t].contentLink
                  });
               }
               if(topics[t].relatedNames.length > 0 && topics[t].relatedNames != undefined)
               {
                  for(st = 0; st < topics[t].relatedNames.length; st++)
                  {
                     if(topics[t].relatedNames[st] != undefined)
                     {
                        if(this.indexTopics.indexOf({
                           "topicName":topics[t].relatedNames[st],
                           "file":topics[t].contentLink
                        }))
                        {
                           this.indexTopics.push({
                              "topicName":topics[t].relatedNames[st],
                              "file":topics[t].contentLink
                           });
                        }
                     }
                  }
               }
            }
         }
         this.indexTopics.sortOn("topicName",Array.CASEINSENSITIVE);
         var prevLetter:String = "";
         var pushY:Number = 0;
         this.topicsItems.length = 0;
         this.headerItems.length = 0;
         for(var ti:int = 0; ti < this.indexTopics.length; ti++)
         {
            tName = String(this.indexTopics[ti].topicName);
            if(prevLetter != tName.substr(0,1).toUpperCase())
            {
               indexHeader = new UiHelpIndexHeader();
               indexHeader.indexLetter.autoSize = TextFieldAutoSize.CENTER;
               indexHeader.indexLetter.text = tName.substr(0,1).toUpperCase();
               indexHeader.y = pushY;
               pushY = pushY + 21;
               prevLetter = tName.substr(0,1).toUpperCase();
               this.headerItems.push(indexHeader);
               this.indexList.addChild(this.headerItems[this.headerItems.length - 1]);
            }
            topicLink = new UiHelpIndexItem();
            topicLink.y = pushY;
            topicLink.topicName.text = tName;
            topicLink.itemBg.alpha = 0;
            pushY = pushY + 18;
            this.addTopicLinkEvents(topicLink,this.indexTopics[ti].file);
            this.topicsItems.push(topicLink);
            this.indexTopics[ti].indexNum = this.topicsItems.length - 1;
            this.indexList.addChild(this.topicsItems[this.topicsItems.length - 1]);
         }
         this.addScrollBar();
      }
      
      private function checkScrolling(evt:TimerEvent) : void
      {
         var scrVal:Number = 3;
         var bottomLimit:Number = 10 + (this.scrollBar.scrollBg.height - this.scrollBar.dragBtn.height);
         if(this.scrollButtonPressed == "up")
         {
            this.scrollBar.dragBtn.y = this.scrollBar.dragBtn.y - scrVal;
            if(this.scrollBar.dragBtn.y < 10)
            {
               this.scrollBar.dragBtn.y = 10;
            }
         }
         else if(this.scrollButtonPressed == "down")
         {
            this.scrollBar.dragBtn.y = this.scrollBar.dragBtn.y + 3;
            if(this.scrollBar.dragBtn.y > bottomLimit)
            {
               this.scrollBar.dragBtn.y = bottomLimit;
            }
         }
         var scrollPos:Number = (this.scrollBar.dragBtn.y - 12) / ((this.scrollBar.scrollBg.height - 7) / 100);
         this.indexList.y = 67 - 37 - Math.round(this.indexList.height / 100 * scrollPos);
      }
      
      public function displayTopicContentByName(topicName:String) : void
      {
         var found:Boolean = false;
         var indexTopic:Object = null;
         for each(indexTopic in this.indexTopics)
         {
            if(indexTopic.topicName == topicName)
            {
               found = true;
               break;
            }
         }
         if(found)
         {
            this.displayTopicContent(this.topicsItems[indexTopic.indexNum]);
         }
      }
      
      private function httpStatusHandler(event:HTTPStatusEvent) : void
      {
      }
      
      private function completeHandler(event:Event) : void
      {
         IEventDispatcher(event.target).removeEventListener(Event.COMPLETE,completeHandler);
         var HTMLString:String = this.htmlloader.data;
         HTMLString = HTMLString.replace(/\n/gi,"").replace(/\l/gi,"").replace(/\r/gi,"");
         if(this._isLoadedExternally)
         {
            HTMLString = ThirdPartyUtils.prependBaseURLToImageSources(this._linkManager.baseURL,HTMLString);
         }
         this.helpContent.mouseEnabled = true;
         this.helpContent.htmlText = HTMLString;
         this.helpContent.addEventListener(TextEvent.LINK,linkHandler,false,0,true);
         this.addScrollBarContent();
      }
      
      private function addScrollBarContent() : void
      {
         var showProc:Number = NaN;
         this.scrollBarContent.scrUp.buttonMode = true;
         this.scrollBarContent.scrUp.addEventListener(MouseEvent.MOUSE_DOWN,scrollContentButtonDown,false,0,true);
         this.scrollBarContent.scrDown.buttonMode = true;
         this.scrollBarContent.scrDown.addEventListener(MouseEvent.MOUSE_DOWN,scrollContentButtonDown,false,0,true);
         if(this.helpContent.height > this.maskContent.height)
         {
            this.scrollBarContent.visible = true;
            this.scrollBarContent.dragBtn.y = 12;
            this.helpContent.y = 74;
            showProc = this.maskContent.height / (this.helpContent.height / 100);
            this.scrollBarContent.dragBtn.height = Math.round(this.scrollBarContent.scrollBg.height / 100 * showProc);
            this.scrollBarContent.dragBtn.buttonMode = true;
            this.scrollBarContent.dragBtn.addEventListener(MouseEvent.MOUSE_DOWN,startContentDrag,false,0,true);
            this.scrollContentTimer = new Timer(40);
            this.scrollContentTimer.addEventListener(TimerEvent.TIMER,checkContentScrolling,false,0,true);
         }
         else
         {
            this.helpContent.y = 74;
            this.scrollBarContent.visible = false;
         }
      }
      
      private function initSearch() : void
      {
      }
      
      private function clearSearchResult(evt:MouseEvent) : void
      {
         this.listSearchResult("");
      }
      
      private function getSearchResult(evt:MouseEvent) : void
      {
      }
      
      private function serverCommand(command:String) : void
      {
         var msg:BattleMessage = null;
         switch(command)
         {
            case "stuck":
               msg = new BattleMessage(BattleEvent.STUCK,null);
               _gateway.sendMsg(msg);
         }
      }
      
      private function addTopicLinkEvents(topicItem:UiHelpIndexItem, topicLink:String) : void
      {
         topicItem.fileLink = topicLink;
         topicItem.buttonMode = true;
         topicItem.mouseChildren = false;
         topicItem.addEventListener(MouseEvent.MOUSE_OVER,tItemOver,false,0,true);
         topicItem.addEventListener(MouseEvent.MOUSE_OUT,tItemOut,false,0,true);
         topicItem.addEventListener(MouseEvent.CLICK,onTopicItemClick,false,0,true);
      }
      
      private function ioErrorHandler(event:IOErrorEvent) : void
      {
      }
      
      private function stopContentDrag(evt:MouseEvent) : void
      {
         if(this.scrollBarContent.dragBtn.onDrag)
         {
            this.scrollBarContent.dragBtn.onDrag = false;
            this.scrollBarContent.dragBtn.stopDrag();
            this.scrollContentTimer.stop();
         }
         if(this.scrollButtonPressed == "cup" || this.scrollButtonPressed == "cdown")
         {
            this.scrollButtonPressed = "";
            if(this.scrollContentTimer)
            {
               this.scrollContentTimer.stop();
            }
         }
      }
      
      private function configureListeners(dispatcher:IEventDispatcher) : void
      {
         dispatcher.addEventListener(Event.COMPLETE,completeHandler);
      }
      
      private function listAllIndexEvent(evt:MouseEvent) : void
      {
         this.listAllIndex();
      }
      
      private function startListDrag(evt:MouseEvent) : void
      {
         this.scrollBar.dragBtn.onDrag = true;
         var dragLimit:Rectangle = new Rectangle(2,12,0,this.scrollBar.scrollBg.height - this.scrollBar.dragBtn.height - 2);
         this.scrollBar.dragBtn.startDrag(false,dragLimit);
         this.scrollTimer.start();
      }
      
      private function onCSSFileLoaded(event:Event) : void
      {
         this.css = new StyleSheet();
         this.css.parseCSS(this.cssloader.data);
         this.helpContent.styleSheet = this.css;
      }
   }
}

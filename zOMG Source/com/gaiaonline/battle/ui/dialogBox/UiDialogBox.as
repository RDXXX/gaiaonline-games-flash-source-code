package com.gaiaonline.battle.ui.dialogBox
{
   import com.gaiaonline.battle.ui.events.UiEvents;
   import com.gaiaonline.battle.utils.BattleUtils;
   import com.gaiaonline.flexModulesAPIs.globalevent.GlobalEvent;
   import com.gaiaonline.utils.VisManagerSingleParent;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   
   public class UiDialogBox extends MovieClip
   {
       
      
      public var container:MovieClip;
      
      private var wfs:Boolean = false;
      
      private var leftSide:Boolean = false;
      
      private var convId:String;
      
      public var bubble:MovieClip;
      
      public var labelRight:TextField;
      
      public var lRight:MovieClip;
      
      public var lLeft:MovieClip;
      
      public var labelLeft:TextField;
      
      public var scr:Object;
      
      private var convs:Object;
      
      public var avMask:MovieClip;
      
      private var _requestsWaitingForServerResponse:Object;
      
      public var btnOk:SimpleButton;
      
      public var avLeft:MovieClip;
      
      public var avRight:MovieClip;
      
      private var visManager:VisManagerSingleParent = null;
      
      public var cMask:MovieClip;
      
      public var actorId:String;
      
      public var wait:MovieClip;
      
      private var convsList:Array;
      
      public function UiDialogBox()
      {
         convs = new Object();
         convsList = new Array();
         _requestsWaitingForServerResponse = new Object();
         super();
         this.visManager = new VisManagerSingleParent(this as MovieClip);
         this.btnOk.addEventListener(MouseEvent.CLICK,onOkClick,false,0,true);
         this.scr.addEventListener("scroll",onScroll,false,0,true);
         this.tabChildren = false;
         this.setWaitVisible(false);
      }
      
      private function cancelPendingRequest(convId:String) : void
      {
         var pendingRequest:PendingConversationRequest = _requestsWaitingForServerResponse[convId];
         if(pendingRequest != null)
         {
            pendingRequest.endTimer();
         }
         delete _requestsWaitingForServerResponse[convId];
      }
      
      private function buildPage(obj:Object) : void
      {
         var oy:int = 0;
         var oi:int = 0;
         var o:UiDialogOption = null;
         while(Sprite(this.container.mcOptions).numChildren > 0)
         {
            Sprite(this.container.mcOptions).removeChildAt(0);
         }
         while(this.avLeft.numChildren > 0)
         {
            this.avLeft.removeChildAt(0);
         }
         while(this.avRight.numChildren > 0)
         {
            this.avRight.removeChildAt(0);
         }
         var ac:String = obj.actorId;
         if(ac != this.actorId)
         {
            this.leftSide = !this.leftSide;
         }
         this.actorId = ac;
         if(obj.actorMc != null)
         {
            if(this.leftSide)
            {
               this.avLeft.addChild(obj.actorMc);
               this.labelLeft.text = obj.actorName;
            }
            else
            {
               this.avRight.addChild(obj.actorMc);
               this.labelRight.text = obj.actorName;
            }
         }
         this.setLeftSideVisible(this.leftSide);
         this.setRightSideVisible(!this.leftSide);
         this.setWaitVisible(false);
         this.container.data = obj;
         this.container.convId = this.convId;
         var y:int = 0;
         if(obj.txt != null)
         {
            this.container.txt.text = obj.txt;
            TextField(this.container.txt).autoSize = TextFieldAutoSize.LEFT;
            this.setContainerTextVisible(true);
            y = TextField(this.container.txt).height + 5;
         }
         else
         {
            this.setContainerTextVisible(false);
         }
         this.container.mcOptions.y = y;
         if(obj.options != null)
         {
            oy = 0;
            for(oi = 0; oi < obj.options.length; oi++)
            {
               o = new UiDialogOption();
               o.option.txtOption.text = obj.options[oi].txt;
               o.option.txtOption.autoSize = TextFieldAutoSize.LEFT;
               o.id = obj.options[oi].id;
               o.y = oy;
               SimpleButton(o.btn).height = o.height;
               oy = oy + o.height;
               o.addEventListener(MouseEvent.CLICK,onOptionClick);
               Sprite(this.container.mcOptions).addChild(o);
            }
            this.setOptionsVisible(true);
            this.setOKButtonVisible(false);
         }
         else
         {
            this.setOptionsVisible(false);
            this.setOKButtonVisible(true);
         }
         this.setScrollSize();
      }
      
      private function onScroll(evt:Event) : void
      {
         this.container.y = -this.scr.scrollPosition + 17;
      }
      
      private function onOkClick(evt:MouseEvent) : void
      {
         var e:UiEvents = null;
         var txt:String = null;
         var haveNextText:Boolean = false;
         if(this.container && this.container.data)
         {
            e = new UiEvents("DIALOG","");
            e.value = new Object();
            e.value.convId = this.container.convId;
            e.value.dialogId = this.container.data.dialogId;
            e.value.npcId = this.container.data.npcId;
            e.value.actorName = this.container.data.actorName;
            e.value.numberOfTimesSent = 1;
            if(this.container.data.txt != null)
            {
               txt = this.container.data.txt;
               e.value.txt = txt;
            }
            haveNextText = this.nextText(e);
            e.value.getNext = !haveNextText;
            this.dispatchEvent(e);
         }
         else
         {
            GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.DIALOG_CLOSE,{}));
         }
      }
      
      public function endActorConv(npcId:String) : void
      {
      }
      
      public function endConv(convId:String, isNaturalDone:Boolean = true) : void
      {
         var i:int = 0;
         var foundNextConversation:Boolean = false;
         var endConvId:String = !!isNaturalDone?convId || this.convId:null;
         if(convId == null)
         {
            BattleUtils.cleanObject(this.convs);
            this.convsList.length = 0;
            this.convId = null;
            this.leftSide = false;
            GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.DIALOG_DONE,{}));
         }
         else
         {
            cancelPendingRequest(convId);
            delete this.convs[convId];
            i = this.convsList.indexOf(convId);
            if(i >= 0)
            {
               this.convsList.splice(i,1);
               foundNextConversation = false;
               while(this.convsList.length > 0)
               {
                  this.convId = this.convsList[0];
                  if(convs[this.convId])
                  {
                     foundNextConversation = true;
                     break;
                  }
                  convsList.shift();
               }
               if(foundNextConversation)
               {
                  this.nextText();
               }
               else
               {
                  this.setWaitVisible(false);
                  this.convId = null;
                  this.convsList.length = 0;
                  BattleUtils.cleanObject(this.convs);
                  GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.DIALOG_DONE,{}));
               }
            }
         }
         if(endConvId != null)
         {
            GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.CONVERSATION_END,{"convId":endConvId}));
         }
      }
      
      private function onOptionClick(evt:MouseEvent) : void
      {
         var txt:String = null;
         var e:UiEvents = new UiEvents("DIALOG","");
         e.value = new Object();
         e.value.convId = this.container.convId;
         e.value.dialogId = this.container.data.dialogId;
         e.value.npcId = this.container.data.npcId;
         e.value.optionId = evt.currentTarget.id;
         e.value.actorName = this.container.data.actorName;
         e.value.numberOfTimesSent = 1;
         if(this.container.data.txt != null)
         {
            txt = this.container.data.txt;
         }
         if(evt.currentTarget.option != null)
         {
            if(txt != null)
            {
               txt = txt + "  " + evt.currentTarget.option.txtOption.text;
            }
            else
            {
               txt = evt.currentTarget.option.txtOption.text;
            }
         }
         if(txt != null)
         {
            e.value.txt = txt;
         }
         this.dispatchEvent(e);
         this.nextText(e);
         EventDispatcher(evt.target).removeEventListener(MouseEvent.CLICK,onOptionClick);
      }
      
      public function resize(w:Number, h:Number) : void
      {
         this.bubble.height = h - 21;
         this.btnOk.y = h - 27;
         this.avMask.height = h - 15;
         this.cMask.height = this.bubble.height - 21;
         this.scr.height = this.cMask.height;
         this.labelLeft.y = this.labelRight.y = h - 18;
         this.setScrollSize();
      }
      
      private function nextText(e:UiEvents = null) : Boolean
      {
         var obj:Object = null;
         var pendingRequest:PendingConversationRequest = null;
         if(this.convs[this.convId] != null && this.convs[this.convId][0] != null)
         {
            obj = this.convs[this.convId][0];
            this.buildPage(obj);
            this.convs[this.convId].shift();
            return true;
         }
         if(e != null)
         {
            cancelPendingRequest(e.value.convId);
            pendingRequest = new PendingConversationRequest(this,e);
            _requestsWaitingForServerResponse[e.value.convId] = pendingRequest;
            pendingRequest.startTimer();
         }
         this.waitForServer();
         return false;
      }
      
      private function setOKButtonVisible(visible:Boolean) : void
      {
         this.visManager.setVisible(this.btnOk,visible);
      }
      
      private function setContainerTextVisible(visible:Boolean) : void
      {
         this.visManager.setVisible(this.container.txt,visible);
      }
      
      private function setLeftSideVisible(visible:Boolean) : void
      {
         this.visManager.setVisible(this.avLeft,visible);
         this.visManager.setVisible(this.lLeft,visible);
         this.labelLeft.visible = visible;
      }
      
      private function setRightSideVisible(visible:Boolean) : void
      {
         this.visManager.setVisible(this.avRight,visible);
         this.visManager.setVisible(this.lRight,visible);
         this.labelRight.visible = visible;
      }
      
      public function addText(convId:String, dialogId:String, npcId:String, actorId:String, actorName:String, actorMc:Sprite, txt:String = null, options:Array = null) : void
      {
         cancelPendingRequest(convId);
         if(this.convs[convId] == null)
         {
            this.convs[convId] = new Array();
            this.convsList.push(convId);
         }
         var obj:Object = new Object();
         obj.dialogId = dialogId;
         obj.npcId = npcId;
         obj.actorId = actorId;
         obj.actorName = actorName;
         obj.actorMc = actorMc;
         obj.txt = txt;
         obj.options = options;
         this.convs[convId].push(obj);
         if(this.convId == null || this.convId == convId && wfs)
         {
            this.wfs = false;
            this.convId = convId;
            this.nextText();
         }
      }
      
      private function setOptionsVisible(visible:Boolean) : void
      {
         this.visManager.setVisible(this.container.mcOptions,visible);
      }
      
      private function waitForServer() : void
      {
         this.wfs = true;
         this.setWaitVisible(true);
         this.setOKButtonVisible(false);
      }
      
      private function setWaitVisible(visible:Boolean) : void
      {
         this.visManager.setVisible(this.wait,visible);
         if(visible)
         {
            this.wait.gotoAndPlay(2);
         }
         else
         {
            this.wait.gotoAndStop(2);
         }
         this.visManager.setVisible(this.container,!visible);
      }
      
      private function setScrollSize() : void
      {
         this.container.y = 17;
         this.scr.scrollPosition = 0;
         this.scr.setScrollProperties(this.cMask.height,0,this.container.height - this.cMask.height);
         this.scr.lineScrollSize = this.cMask.height;
         if(this.container.height - this.cMask.height > 0)
         {
            this.scr.visible = true;
         }
         else
         {
            this.scr.visible = false;
         }
      }
   }
}

import com.gaiaonline.battle.ui.dialogBox.UiDialogBox;
import com.gaiaonline.battle.ui.events.UiEvents;
import flash.events.TimerEvent;
import flash.utils.Timer;

class PendingConversationRequest
{
    
   
   private var _dialogBox:UiDialogBox = null;
   
   private var _uiEvent:UiEvents = null;
   
   private var _timer:Timer = null;
   
   private var _uiEventClone:UiEvents = null;
   
   function PendingConversationRequest(dialogBox:UiDialogBox, e:UiEvents)
   {
      super();
      _uiEvent = e.clone() as UiEvents;
      _dialogBox = dialogBox;
   }
   
   public function startTimer() : void
   {
      _timer = new Timer(2000,3);
      _timer.addEventListener(TimerEvent.TIMER,onTimer,false,0,true);
      _timer.addEventListener(TimerEvent.TIMER_COMPLETE,onTimerComplete,false,0,true);
      _timer.start();
   }
   
   private function onTimer(e:TimerEvent) : void
   {
      _uiEvent.value.numberOfTimesSent++;
      _dialogBox.dispatchEvent(_uiEvent);
   }
   
   public function endTimer() : void
   {
      _timer.stop();
   }
   
   private function onTimerComplete(e:TimerEvent) : void
   {
      _dialogBox.endConv(_uiEvent.value.convId);
   }
}

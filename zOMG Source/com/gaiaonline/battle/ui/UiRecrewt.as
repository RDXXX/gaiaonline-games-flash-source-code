package com.gaiaonline.battle.ui
{
   import com.gaiaonline.assets.BackgroundBox;
   import com.gaiaonline.battle.ApplicationInterfaces.IUIFramework;
   import com.gaiaonline.battle.ConColors;
   import com.gaiaonline.battle.newactors.ActorManager;
   import com.gaiaonline.battle.newactors.BaseActor;
   import com.gaiaonline.battle.newactors.BaseActorEvent;
   import com.gaiaonline.battle.newrings.RingIconFactory;
   import com.gaiaonline.battle.ui.UiItemsParts.MemberListItem;
   import com.gaiaonline.battle.ui.components.DefaultButton;
   import com.gaiaonline.battle.ui.components.ScrollBarVer;
   import com.gaiaonline.battle.ui.components.TabButton;
   import com.gaiaonline.battle.ui.events.UiEvents;
   import com.gaiaonline.battle.ui.uiactionbar.UiItemBar;
   import com.gaiaonline.flexModulesAPIs.globalevent.GlobalEvent;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.ColorTransform;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class UiRecrewt extends MovieClip
   {
       
      
      public var refreshBtn:DefaultButton;
      
      public var userContainerMask:MovieClip;
      
      private var selectedUser:Number;
      
      private var userList:Array;
      
      public var TBtnTotalCharge:TabButton;
      
      public var inviteBtn:DefaultButton;
      
      private var conColors:Object;
      
      public var conFilter:MovieClip;
      
      public var TBtnEquippedRings:TabButton;
      
      private var _uiFramework:IUIFramework = null;
      
      public var chkLFG:MovieClip;
      
      private var selectedUserName:String;
      
      public var ScrollMList:ScrollBarVer;
      
      public var TBtnCon:TabButton;
      
      public var userContBg:MovieClip;
      
      private var conColorLevelMap:Object;
      
      private var conFilterArray:Array;
      
      private var initObject:Object;
      
      public var userContainer:MovieClip;
      
      private var _refreshButtonTimer:Timer;
      
      public var friend_icon:MovieClip;
      
      public var TBtnUserName:TabButton;
      
      public function UiRecrewt(uiFramework:IUIFramework)
      {
         userList = [];
         _refreshButtonTimer = new Timer(15000,1);
         super();
         this._uiFramework = uiFramework;
         this.selectedUser = -1;
         this.conColors = ConColors.getInstance().getConColors();
         this.conColorLevelMap = ConColors.getInstance().colorLevelMap;
         this.conFilterArray = new Array(this.conColorLevelMap["0"],this.conColorLevelMap["1"],this.conColorLevelMap["2"],this.conColorLevelMap["3"],this.conColorLevelMap["4"]);
         this.addEventListener(Event.ADDED_TO_STAGE,afterAddToStage,false,0,true);
         this.chkLFG.addEventListener(MouseEvent.CLICK,onChkLFGClick,false,0,true);
         this.ScrollMList.visible = false;
         this.ScrollMList.init(this.userContainer,new Rectangle(this.userContainerMask.x,this.userContainerMask.y,this.userContainerMask.width,this.userContainerMask.height),false);
         this._refreshButtonTimer.addEventListener(TimerEvent.TIMER_COMPLETE,onRefreshButtonTimerComplete,false,0,true);
         this.tabChildren = false;
         this.conFilter.tabChildren = false;
         GlobalEvent.eventDispatcher.addEventListener(GlobalEvent.TEAM_UPDATED,onTeamChanged,false,0,true);
         GlobalEvent.eventDispatcher.addEventListener(GlobalEvent.LEFT_TEAM,onTeamChanged,false,0,true);
         GlobalEvent.eventDispatcher.addEventListener(GlobalEvent.PLAYER_CREATED,onPlayerCreated,false,0,true);
      }
      
      private function conActivated(e:UiEvents) : void
      {
         this.TBtnUserName.isActive = false;
         this.TBtnTotalCharge.isActive = false;
         this.TBtnCon.isActive = true;
         this.TBtnCon.sortAscending = !this.TBtnCon.sortAscending;
      }
      
      private function setInviteButtonActive(active:Boolean) : void
      {
         var myActor:BaseActor = ActorManager.getInstance().myActor;
         if(myActor && myActor.isGuestUser())
         {
            active = false;
         }
         this.inviteBtn.setActive(active);
         var listenerFunction:Function = !!active?this.inviteBtn.addEventListener:this.inviteBtn.removeEventListener;
         listenerFunction(MouseEvent.CLICK,inviteUser);
      }
      
      private function onLFGUpdated(e:BaseActorEvent) : void
      {
         var me:BaseActor = e.target as BaseActor;
         this.setLFG(me.isLfg);
      }
      
      private function nameActivated(e:UiEvents) : void
      {
         this.TBtnTotalCharge.isActive = false;
         this.TBtnCon.isActive = false;
         this.TBtnUserName.isActive = true;
         this.TBtnUserName.sortAscending = !this.TBtnUserName.sortAscending;
      }
      
      public function init(initObj:Object) : void
      {
         this.initObject = initObj;
         this.addTabs();
         this.addButtons();
         this.setConFilter();
         this.refresh(this.initObject);
      }
      
      public function filterUsersByCon() : void
      {
         var nextItem:MovieClip = null;
         var pushY:int = 0;
         var sortedArray:Array = this.initObject.usersList;
         for(var u:int = 0; u < sortedArray.length; u++)
         {
            nextItem = this.getUserRowById(sortedArray[u].userId);
            if(nextItem != null)
            {
               if(this.conFilterArray.indexOf(sortedArray[u].conColor) !== -1)
               {
                  nextItem.visible = true;
                  nextItem.y = pushY;
                  pushY = pushY + 30;
               }
               else
               {
                  nextItem.y = 0;
                  nextItem.visible = false;
               }
            }
         }
         this.initObject.usersList = sortedArray;
         if(this.userContainer.height >= this.userContainerMask.height)
         {
            this.ScrollMList.update();
         }
         else
         {
            this.ScrollMList.update();
            this.ScrollMList.visible = false;
         }
      }
      
      private function highlightUser(evt:MouseEvent) : void
      {
         var uSelector:Object = evt.target;
         if(uSelector.parent.userId != this.selectedUser)
         {
            uSelector.alpha = 0.3;
         }
      }
      
      private function getRingInfo(evt:MouseEvent) : void
      {
         var ringTarget:Object = evt.target;
         var evnt:UiEvents = new UiEvents(UiEvents.ML_RING_CLICK,"");
         evnt.ringId = ringTarget.ringId;
         this.dispatchEvent(evnt);
      }
      
      private function addRings(userObj:MovieClip, ringList:Array) : void
      {
         var ring:DisplayObject = null;
         var ringContainer:MovieClip = new MovieClip();
         ringContainer.x = this.TBtnEquippedRings.x - 15;
         ringContainer.y = 2;
         var pushX:int = 0;
         var chargeLevel:String = "";
         for(var r:int = 0; r <= UiItemBar.MAX_BAR_SLOT_INDEX; r++)
         {
            if(ringList[r] != null)
            {
               if(ringList[r].chargeLevel != null)
               {
                  chargeLevel = " - CL: " + ringList[r].chargeLevel;
               }
               ring = this.addRingItem(ringList[r].ringId,pushX,ringList[r].ringName + chargeLevel,"desc",ringList[r].image);
            }
            else
            {
               ring = this.addRingItem(-1,pushX);
            }
            ringContainer.addChild(ring);
            pushX = pushX + 28;
         }
         userObj.addChild(ringContainer);
      }
      
      private function onPlayerCreated(e:GlobalEvent) : void
      {
         var me:BaseActor = e.data.actor as BaseActor;
         this.setLFG(me.isLfg);
         me.addEventListener(BaseActorEvent.LFG_UPDATED,this.onLFGUpdated,false,0,true);
      }
      
      public function resortField(sortBy:String = "username", desc:Boolean = false, numeric:Boolean = false) : void
      {
         var nextItem:MovieClip = null;
         var pushY:int = 0;
         var sortParams:Object = new Object();
         sortParams = Array.CASEINSENSITIVE;
         if(desc)
         {
            sortParams = Array.CASEINSENSITIVE | Array.DESCENDING;
         }
         if(numeric)
         {
            sortParams = Array.CASEINSENSITIVE | Array.NUMERIC;
         }
         if(desc && numeric)
         {
            sortParams = Array.CASEINSENSITIVE | Array.DESCENDING | Array.NUMERIC;
         }
         var sortedArray:Array = this.initObject.usersList.sortOn(sortBy,sortParams);
         for(var u:int = 0; u < sortedArray.length; u++)
         {
            nextItem = this.getUserRowById(sortedArray[u].userId);
            if(nextItem != null)
            {
               if(this.conFilterArray.indexOf(sortedArray[u].conColor) !== -1)
               {
                  nextItem.visible = true;
                  nextItem.y = pushY;
                  pushY = pushY + 30;
               }
               else
               {
                  nextItem.y = 0;
                  nextItem.visible = false;
               }
            }
         }
         this.initObject.usersList = sortedArray;
         if(this.userContainer.height >= this.userContainerMask.height)
         {
            this.ScrollMList.update();
         }
         else
         {
            this.ScrollMList.visible = false;
         }
      }
      
      private function orderByCon(evt:UiEvents) : void
      {
         var tabObj:Object = evt.target;
         if(tabObj != null)
         {
            this.resortField("conLevel",tabObj.sortAscending,true);
         }
      }
      
      private function addRingItem(ringId:Number, sX:Number, ringName:String = "", ringDesc:String = "", ringUrl:String = "") : MovieClip
      {
         var ringObj:MovieClip = new MovieClip();
         ringObj.ringId = ringId;
         ringObj.name = "ring_" + ringId;
         ringObj.x = sX;
         ringObj.addChild(new BackgroundBox(26,26,1));
         if(ringId != -1)
         {
            ringObj.addChild(RingIconFactory.getBitmap(ringUrl));
            ringObj.buttonMode = true;
            ringObj.mouseChildren = false;
            this._uiFramework.tooltipManager.addToolTip(ringObj,ringName);
            ringObj.addEventListener(MouseEvent.CLICK,getRingInfo,false,0,true);
         }
         return ringObj;
      }
      
      private function inviteUserClick(mevt:MouseEvent) : void
      {
         var uSelector:Object = mevt.target;
         var evt:UiEvents = new UiEvents(UiEvents.ML_INVITE,"");
         evt.userId = uSelector.parent.userId;
         evt.value = uSelector.parent.userName.text;
         this.dispatchEvent(evt);
      }
      
      private function delightUser(evt:MouseEvent) : void
      {
         var uSelector:Object = evt.target;
         if(uSelector.parent.userId != this.selectedUser)
         {
            uSelector.alpha = 0;
         }
      }
      
      private function changeCon(evt:MouseEvent) : void
      {
         var newConArr:Array = null;
         var c:int = 0;
         var evtObjName:String = evt.target.name;
         var evtId:Number = parseInt(evtObjName.replace("bt",""));
         var conObj:MovieClip = this.conFilter["con" + evtId];
         if(conObj.currentFrame == 2)
         {
            conObj.gotoAndStop(1);
            newConArr = new Array();
            for(c = 0; c < this.conFilterArray.length; c++)
            {
               if(this.conFilterArray[c] != conObj.conColor)
               {
                  newConArr.push(this.conFilterArray[c]);
               }
            }
            this.conFilterArray = newConArr;
         }
         else
         {
            conObj.gotoAndStop(2);
            if(this.conFilterArray.indexOf(conObj.conColor) === -1)
            {
               this.conFilterArray.push(conObj.conColor);
            }
         }
         this.filterUsersByCon();
      }
      
      private function inviteUser(mevt:MouseEvent) : void
      {
         var evt:UiEvents = null;
         if(this.selectedUser != -1)
         {
            evt = new UiEvents(UiEvents.ML_INVITE,"");
            evt.userId = this.selectedUser;
            evt.value = this.selectedUserName;
            this.dispatchEvent(evt);
         }
      }
      
      private function refreshList(me:MouseEvent) : void
      {
         refreshBtn.setActive(false);
         var evt:UiEvents = new UiEvents(UiEvents.LFG_REFRESH,"");
         this.dispatchEvent(evt);
      }
      
      private function onTeamChanged(e:GlobalEvent) : void
      {
         checkInviteButton();
      }
      
      private function placeUsers() : void
      {
         var uObj:Object = null;
         var userObj:MemberListItem = null;
         var userName:TextField = null;
         var totalCharge:TextField = null;
         var colorFrm:TextFormat = null;
         var conColor:String = null;
         var colorVal:String = null;
         var f:int = 0;
         var friendsList:Array = ActorManager.getInstance().friendsList;
         this.userList.length = 0;
         this.calculateConNumbers();
         if(!this.initObject || !this.initObject.usersList)
         {
            return;
         }
         var sortedArray:Array = this.initObject.usersList;
         for(var u:int = 0; u < sortedArray.length; u++)
         {
            uObj = sortedArray[u];
            this.userList.push(new MemberListItem());
            userObj = this.userList[u];
            if(userObj)
            {
               userObj.userId = uObj.userId;
               userName = userObj.userName;
               totalCharge = userObj.totalCharge;
               userName.autoSize = totalCharge.autoSize = TextFieldAutoSize.LEFT;
               userName.wordWrap = totalCharge.wordWrap = false;
               userName.multiline = totalCharge.multiline = false;
               userName.mouseEnabled = false;
               totalCharge.mouseEnabled = false;
               userName.text = uObj.username || "";
               totalCharge.text = uObj.totalCharge || "";
               userObj.userSelector.alpha = 0;
               userObj.y = u * 30;
               colorFrm = new TextFormat();
               conColor = uObj.conColor;
               if(this.conColors && conColor)
               {
                  colorVal = this.conColors[conColor].color;
                  if(colorVal)
                  {
                     colorFrm.color = colorVal;
                     userName.setTextFormat(colorFrm);
                  }
               }
               userObj.userSelector.addEventListener(MouseEvent.ROLL_OVER,highlightUser,false,0,true);
               userObj.userSelector.addEventListener(MouseEvent.ROLL_OUT,delightUser,false,0,true);
               userObj.userSelector.addEventListener(MouseEvent.CLICK,selectUser,false,0,true);
               userObj.friend_icon.visible = false;
            }
            if(friendsList)
            {
               while(f < friendsList.length)
               {
                  if(friendsList[f].friendName == uObj.username)
                  {
                     userObj.friend_icon.visible = true;
                  }
                  f++;
               }
            }
            this.addRings(userObj,uObj.rings);
            this.userContainer.addChild(userObj);
         }
         this.TBtnUserName.isActive = true;
         this.TBtnUserName.sortAscending = false;
         this.TBtnTotalCharge.isActive = false;
         this.TBtnTotalCharge.sortAscending = true;
         this.TBtnCon.isActive = false;
         this.TBtnCon.sortAscending = true;
         this.resortField("username");
      }
      
      private function checkInviteButton() : void
      {
         var selectedActor:BaseActor = null;
         if(this.selectedUser == -1)
         {
            this.setInviteButtonActive(false);
         }
         else
         {
            selectedActor = ActorManager.actorIdToActor(this.selectedUser.toString());
            if(selectedActor)
            {
               this.setInviteButtonActive(selectedActor.isInvitableToCrew());
            }
            else
            {
               this.setInviteButtonActive(true);
            }
         }
      }
      
      private function addTabs() : void
      {
         this.TBtnUserName.isActive = true;
         this.TBtnUserName.sortAscending = false;
         this.TBtnUserName.addEventListener(UiEvents.TAB_CLICK,orderByName,false,0,true);
         this.TBtnUserName.addEventListener(UiEvents.TAB_IS_ACTIVE,nameActivated,false,0,true);
         this.TBtnTotalCharge.sortAscending = true;
         this.TBtnTotalCharge.addEventListener(UiEvents.TAB_CLICK,orderByCharge,false,0,true);
         this.TBtnTotalCharge.addEventListener(UiEvents.TAB_IS_ACTIVE,chargeActivated,false,0,true);
         this.TBtnCon.sortAscending = true;
         this.TBtnCon.addEventListener(UiEvents.TAB_CLICK,orderByCon,false,0,true);
         this.TBtnCon.addEventListener(UiEvents.TAB_IS_ACTIVE,conActivated,false,0,true);
         this.TBtnEquippedRings.isDisabled = true;
      }
      
      private function onChkLFGClick(evt:MouseEvent) : void
      {
         var v:Boolean = false;
         if(MovieClip(this.chkLFG).currentFrame >= 2)
         {
            v = true;
         }
         var e:UiEvents = new UiEvents("LFGClick",null);
         e.value = v;
         this.dispatchEvent(e);
      }
      
      public function getUserRowById(id:Number) : MovieClip
      {
         var len:int = this.userList.length;
         for(var i:int = 0; i < len; i++)
         {
            if(this.userList[i].userId == id)
            {
               return this.userList[i];
            }
         }
         return null;
      }
      
      private function addButtons() : void
      {
         var indexStr:* = null;
         var conColorMc:MovieClip = null;
         var ct:ColorTransform = null;
         this.inviteBtn.init("",false);
         this.setInviteButtonActive(false);
         this.inviteBtn.x = 15;
         this.inviteBtn.y = 295;
         this.refreshBtn.init("",false);
         this.refreshBtn.x = 460 - this.refreshBtn.width;
         this.refreshBtn.y = 295;
         this.addChild(this.inviteBtn);
         this.addChild(this.refreshBtn);
         this.refreshBtn.addEventListener(MouseEvent.CLICK,refreshList,false,0,true);
         for(indexStr in this.conColorLevelMap)
         {
            conColorMc = this.conFilter["conColor" + indexStr];
            if(conColorMc != null)
            {
               ct = conColorMc.transform.colorTransform;
               ct.color = ConColors.getInstance().getConColorByName(this.conColorLevelMap[indexStr]);
               conColorMc.transform.colorTransform = ct;
            }
         }
      }
      
      private function setConFilter() : void
      {
         var tooltipManager:ToolTipOld = this._uiFramework.tooltipManager;
         this.conFilter.con1.conColor = this.conColorLevelMap["0"];
         this.conFilter.con1.gotoAndStop(2);
         tooltipManager.addToolTip(this.conFilter.bt1,"Too Easy");
         this.conFilter.bt1.addEventListener(MouseEvent.CLICK,changeCon,false,0,true);
         this.conFilter.con2.conColor = this.conColorLevelMap["1"];
         this.conFilter.con2.gotoAndStop(2);
         tooltipManager.addToolTip(this.conFilter.bt2,"Easier");
         this.conFilter.bt2.addEventListener(MouseEvent.CLICK,changeCon,false,0,true);
         this.conFilter.con3.conColor = this.conColorLevelMap["2"];
         this.conFilter.con3.gotoAndStop(2);
         tooltipManager.addToolTip(this.conFilter.bt3,"Average");
         this.conFilter.bt3.addEventListener(MouseEvent.CLICK,changeCon,false,0,true);
         this.conFilter.con4.conColor = this.conColorLevelMap["3"];
         this.conFilter.con4.gotoAndStop(2);
         tooltipManager.addToolTip(this.conFilter.bt4,"Tougher");
         this.conFilter.bt4.addEventListener(MouseEvent.CLICK,changeCon,false,0,true);
         this.conFilter.con5.conColor = this.conColorLevelMap["4"];
         this.conFilter.con5.gotoAndStop(2);
         tooltipManager.addToolTip(this.conFilter.bt5,"Very Hard");
         this.conFilter.bt5.addEventListener(MouseEvent.CLICK,changeCon,false,0,true);
      }
      
      public function refresh(initObj:Object) : void
      {
         this.initObject = initObj;
         this.clearUsersList();
         _refreshButtonTimer.start();
      }
      
      private function orderByCharge(evt:UiEvents) : void
      {
         var tabObj:TabButton = evt.target as TabButton;
         if(tabObj != null)
         {
            this.resortField("totalCharge",tabObj.sortAscending,true);
         }
      }
      
      private function getConColorByValue(colorValue:int) : Object
      {
         var colorName:* = null;
         var count:int = 0;
         var conColorHash:Object = swapKeysAndValues(this.conColorLevelMap);
         var colorLevelMap:Object = swapKeysAndValues(ConColors.getInstance().conColorsArray,Number);
         for(colorName in this.conColors)
         {
            count++;
            if(this.conColors[colorName].color == colorValue)
            {
               this.conColors[colorName].level = conColorHash[colorLevelMap[colorValue]];
               return this.conColors[colorName];
            }
         }
         return null;
      }
      
      private function afterAddToStage(evt:Event) : void
      {
         var window:DisplayObjectContainer = !!this.parent?this.parent.parent:null;
         if(window)
         {
            if(this.conFilter.parent == window)
            {
               window.setChildIndex(this.conFilter,window.numChildren - 1);
            }
            else
            {
               window.addChildAt(this.conFilter,window.numChildren - 1);
            }
         }
      }
      
      private function selectUser(evt:MouseEvent) : void
      {
         var uSelector:Object = evt.target;
         if(uSelector.parent.userId != this.selectedUser)
         {
            uSelector.alpha = 0.8;
            if(this.selectedUser != -1)
            {
               this.getUserRowById(this.selectedUser).userSelector.alpha = 0;
            }
            this.selectedUser = uSelector.parent.userId;
            this.selectedUserName = uSelector.parent.userName.text;
            checkInviteButton();
         }
         else
         {
            uSelector.alpha = 0;
            this.selectedUser = -1;
            setInviteButtonActive(false);
         }
      }
      
      public function setLFG(value:Boolean) : void
      {
         if(value)
         {
            this.chkLFG.gotoAndStop(2);
         }
         else
         {
            this.chkLFG.gotoAndStop(1);
         }
         if(value)
         {
            this.checkInviteButton();
         }
         else
         {
            this.setInviteButtonActive(false);
         }
      }
      
      private function onRefreshButtonTimerComplete(e:TimerEvent) : void
      {
         this.refreshBtn.setActive(true);
      }
      
      private function swapKeysAndValues(hash:Object, conversionClassForKey:Class = null) : Object
      {
         var k:* = null;
         var newHash:Dictionary = new Dictionary(true);
         for(k in hash)
         {
            if(conversionClassForKey)
            {
               newHash[conversionClassForKey(hash[k])] = k;
            }
            else
            {
               newHash[hash[k]] = k;
            }
         }
         return newHash;
      }
      
      private function calculateConNumbers() : void
      {
         var con:Number = NaN;
         var diffValue:Number = NaN;
         var conColorValue:int = 0;
         var colorObj:Object = null;
         var myCon:Number = this.initObject.userCon;
         for(var u:int = 0; u < this.initObject.usersList.length; u++)
         {
            con = this.initObject.usersList[u].con;
            diffValue = con - myCon;
            conColorValue = ConColors.getInstance().getConColorForDiff(diffValue);
            colorObj = this.getConColorByValue(conColorValue);
            this.initObject.usersList[u].conColor = colorObj.name;
            this.initObject.usersList[u].conLevel = colorObj.level;
         }
      }
      
      private function clearUsersList() : void
      {
         var u:int = 0;
         var userObj:MovieClip = null;
         if(this.userList && this.userList.length > 0)
         {
            for(u = 0; u < this.userList.length; u++)
            {
               userObj = this.userList[u];
               if(this.userContainer.contains(userObj))
               {
                  this.userContainer.removeChild(userObj);
               }
            }
         }
         this.selectedUser = -1;
         if(this.initObject.usersList && this.initObject.usersList.length > 0)
         {
            this.placeUsers();
         }
      }
      
      private function chargeActivated(e:UiEvents) : void
      {
         this.TBtnUserName.isActive = false;
         this.TBtnCon.isActive = false;
         this.TBtnTotalCharge.isActive = true;
         this.TBtnTotalCharge.sortAscending = !this.TBtnTotalCharge.sortAscending;
      }
      
      private function orderByName(evt:UiEvents) : void
      {
         var tabObj:TabButton = evt.target as TabButton;
         if(tabObj != null)
         {
            this.resortField("username",tabObj.sortAscending);
         }
      }
   }
}

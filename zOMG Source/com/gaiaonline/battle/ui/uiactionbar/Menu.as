package com.gaiaonline.battle.ui.uiactionbar
{
   import com.gaiaonline.battle.ui.events.ActionBarEvent;
   import com.gaiaonline.flexModulesAPIs.globalevent.GlobalEvent;
   import com.gaiaonline.utils.DisplayObjectUtils;
   import com.gaiaonline.utils.MovieClipProxy;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class Menu extends MovieClipProxy
   {
      
      public static const CMD_CLCAP:String = "Change Level";
      
      public static const CMD_HELP:String = "Game Help";
      
      public static const CMD_QUIT:String = "Quit";
      
      private static const STATE_OPEN:int = 3;
      
      public static const CMD_OPTIONS:String = "Options";
      
      private static const STATE_CLOSED_MOUSEOVER:int = 2;
      
      public static const CMD_MUSIC_PLAYER:String = "Music player";
      
      public static const CMD_DISCONNECT:String = "Disconnect";
      
      public static const CMD_UI_TESTER:String = "UI Tester";
      
      public static const CMD_REPORT_ABUSE:String = "Report Abuse";
      
      public static const CMD_ADMIN_PANEL:String = "Admin Panel";
      
      public static const CMD_REGISTER:String = "Register";
      
      public static const CMD_SHOPS:String = "Shops";
      
      private static const STATE_OPEN_MOUSEOVER:int = 4;
      
      private static const STATE_CLOSED:int = 1;
       
      
      private var items:Array;
      
      private var _clearedForCLSuppression:Boolean = false;
      
      private var open:Boolean = false;
      
      private var mcMaskIndex:int = -1;
      
      public var btnMenu:MovieClip;
      
      public var mcBack:MovieClip;
      
      public var mcMask:MovieClip;
      
      private var itemY:int = 8;
      
      private var _clearedAsNonGuest:Boolean = false;
      
      private var _mcMenu:MenuFl;
      
      private var mcBackIndex:int = -1;
      
      public var menuLine:MovieClip;
      
      public function Menu(mcMenu:MenuFl)
      {
         super(mcMenu);
         this._mcMenu = mcMenu;
         this.menuLine = this._mcMenu.menuLine;
         this.mcBack = this._mcMenu.mcBack;
         this.mcMask = this._mcMenu.mcMask;
         this.btnMenu = this._mcMenu.btnMenu;
         this.items = new Array();
         this.addMenuItem(CMD_SHOPS);
         this.addMenuItem(CMD_MUSIC_PLAYER);
         this.addMenuItem(CMD_HELP);
         this.addMenuItem(CMD_OPTIONS);
         this.btnMenu.buttonMode = true;
         this.btnMenu.mouseChildren = false;
         this.btnMenu.addEventListener(MouseEvent.MOUSE_OVER,onBtnMenuOver,false,0,true);
         this.btnMenu.addEventListener(MouseEvent.MOUSE_OUT,onBtnMenuOut,false,0,true);
         this.btnMenu.addEventListener(MouseEvent.CLICK,onBtnMenuClick,false,0,true);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.WIDGET_SHOW,onWidgetShow);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.USER_LEVEL_SET,onUserLevelSet);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.SUPPRESSED_CL_CHANGE,onSuppressedCLChange);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.PLAYER_CON_LEVEL_UPDATED,onPlayerCL);
         this.mcBackIndex = this.getChildIndex(this.mcBack);
         this.mcMaskIndex = this.getChildIndex(this.mcMask);
         this.removeChild(this.mcBack);
         this.removeChild(this.mcMask);
      }
      
      private function onPlayerCL(e:GlobalEvent) : void
      {
         if(int(e.data) >= 1)
         {
            _clearedForCLSuppression = true;
         }
         updateNonGuestEntries();
      }
      
      public function addMenuItem(txt:String, after:String = null) : void
      {
         var i:uint = 0;
         var miToFind:MenuItem = null;
         var position:uint = 0;
         var j:uint = 0;
         if(this.menuHasItem(txt))
         {
            return;
         }
         show(false);
         var mi:MenuItem = new MenuItem();
         mi.txt.text = txt.toUpperCase();
         mi.btn.addEventListener(MouseEvent.CLICK,onItemClick);
         mi.x = 0;
         var found:Boolean = false;
         if(after != null)
         {
            for(i = 0; i < this.items.length; i++)
            {
               miToFind = this.items[i];
               if(miToFind.txt.text == after.toUpperCase())
               {
                  found = true;
                  position = i + 1;
                  if(position == this.mcBack.numChildren)
                  {
                     mi.y = this.itemY;
                  }
                  else
                  {
                     mi.y = this.items[position].y;
                  }
                  this.items.splice(position,0,mi);
                  for(j = this.items.length - 1; j > position; j--)
                  {
                     this.items[j].y = this.items[j].y + 18;
                  }
                  this.mcBack.addChildAt(mi,position);
                  break;
               }
            }
            this.itemY = this.itemY + 18;
         }
         if(after == null || !found)
         {
            this.items.push(mi);
            this.mcBack.addChild(mi);
            mi.y = this.itemY;
            this.itemY = this.itemY + 18;
         }
      }
      
      private function show(open:Boolean) : void
      {
         this.open = open;
         if(open)
         {
            if(!this.contains(this.mcBack))
            {
               this.addChildAt(this.mcBack,this.mcBackIndex);
               this.addChildAt(this.mcMask,this.mcMaskIndex);
               this.mcBack.mask = this.mcMask;
            }
            this.btnMenu.gotoAndStop(STATE_OPEN);
            this.menuLine.visible = false;
         }
         else
         {
            this.btnMenu.gotoAndStop(STATE_CLOSED);
            this.menuLine.visible = true;
         }
         this.addEventListener(Event.ENTER_FRAME,onEnterFrame,false,0,true);
      }
      
      private function onItemClick(evt:MouseEvent) : void
      {
         var e:ActionBarEvent = new ActionBarEvent(ActionBarEvent.MENU_ITEM_CLICK);
         onBtnMenuClick(null);
         e.menuItemName = MenuItem(evt.target.parent).txt.text;
         this.dispatchEvent(e);
      }
      
      private function onSuppressedCLChange(e:GlobalEvent) : void
      {
         _clearedForCLSuppression = true;
         updateNonGuestEntries();
      }
      
      private function onWidgetShow(evt:GlobalEvent) : void
      {
         var widgetName:String = evt.data.widgetName;
         var show:Boolean = evt.data.widgetShow;
         var enable:Boolean = evt.data.widgetEnable != undefined?Boolean(evt.data.widgetEnable):false;
         if(0)
         {
         }
      }
      
      public function onBtnMenuClick(evt:MouseEvent) : void
      {
         show(!this.open);
      }
      
      private function menuHasItem(itemName:String) : Boolean
      {
         var miToFind:MenuItem = null;
         if(!itemName || itemName.length == 0)
         {
            return false;
         }
         var hasItem:Boolean = false;
         for(var i:uint = 0; i < this.items.length; i++)
         {
            miToFind = this.items[i];
            if(miToFind.txt.text == itemName.toUpperCase())
            {
               hasItem = true;
               break;
            }
         }
         return hasItem;
      }
      
      private function onUserLevelSet(e:GlobalEvent) : void
      {
         var isGuest:Boolean = e.data.isGuest;
         var isGuestRegistered:Boolean = e.data.guestRegistered;
         _clearedAsNonGuest = !isGuest || isGuestRegistered;
         updateNonGuestEntries();
      }
      
      public function onBtnMenuOver(evt:MouseEvent) : void
      {
         this.btnMenu.gotoAndStop(!!this.open?STATE_OPEN_MOUSEOVER:STATE_CLOSED_MOUSEOVER);
      }
      
      public function onBtnMenuOut(evt:MouseEvent) : void
      {
         this.btnMenu.gotoAndStop(!!this.open?STATE_OPEN:STATE_CLOSED);
      }
      
      public function removeMenuItem(txt:String) : void
      {
         var mi:MenuItem = null;
         var j:uint = 0;
         for(var i:uint = 0; i < this.items.length; i++)
         {
            mi = this.items[i];
            if(mi.txt.text == txt.toUpperCase())
            {
               for(j = i + 1; j < this.items.length; j++)
               {
                  this.items[j].y = this.items[j].y - 18;
               }
               this.mcBack.removeChild(mi);
               this.items.splice(i,1);
               this.itemY = this.itemY - 18;
               return;
            }
         }
      }
      
      private function onEnterFrame(evt:Event) : void
      {
         var origY:Number = this.mcBack.y;
         var d:Number = 0;
         if(this.open && this.mcBack.y > -this.itemY)
         {
            d = (Math.abs(this.itemY) - Math.abs(this.mcBack.y)) / 2;
            this.mcBack.y = this.mcBack.y - d;
            if(this.mcBack.y < -this.itemY)
            {
               this.mcBack.y = -this.itemY;
            }
         }
         else if(!this.open && this.mcBack.y < 0)
         {
            d = (0 - Math.abs(this.mcBack.y)) / 2;
            this.mcBack.y = this.mcBack.y - d;
            if(this.mcBack.y > 0)
            {
               this.mcBack.y = 0;
            }
         }
         if(origY == this.mcBack.y)
         {
            this.removeEventListener(Event.ENTER_FRAME,onEnterFrame);
            if(!this.open && this.contains(this.mcBack))
            {
               this.removeChild(this.mcBack);
               this.removeChild(this.mcMask);
            }
         }
      }
      
      private function updateNonGuestEntries() : void
      {
         if(_clearedAsNonGuest)
         {
            this.addMenuItem(CMD_REPORT_ABUSE,CMD_MUSIC_PLAYER);
            if(_clearedForCLSuppression)
            {
               this.addMenuItem(CMD_CLCAP,CMD_REPORT_ABUSE);
            }
         }
      }
   }
}

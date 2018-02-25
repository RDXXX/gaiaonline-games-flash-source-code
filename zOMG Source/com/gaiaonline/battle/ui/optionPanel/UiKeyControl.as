package com.gaiaonline.battle.ui.optionPanel
{
   import com.gaiaonline.battle.ApplicationInterfaces.ILinkManager;
   import com.gaiaonline.battle.ApplicationInterfaces.IUIFramework;
   import com.gaiaonline.battle.GlobalTexts;
   import com.gaiaonline.battle.ui.DialogWindow;
   import com.gaiaonline.battle.ui.DialogWindowFactory;
   import com.gaiaonline.battle.ui.DialogWindowTypes;
   import com.gaiaonline.battle.utils.BattleUtils;
   import com.gaiaonline.flexModulesAPIs.globalevent.GlobalEvent;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   
   public class UiKeyControl extends MovieClip
   {
      
      private static const FWDSLASH_KEY:uint = 191;
      
      private static var restrictedKeysDialog:DialogWindow = null;
      
      private static var reassignDialog:DialogWindow = null;
      
      public static var prevSelectedBtn:Object = new Object();
       
      
      public var keyCodes:Array;
      
      private var _uiFramework:IUIFramework = null;
      
      private var optionPanel:UiOptionPanel;
      
      private var _linkManager:ILinkManager = null;
      
      public var keyInd:Number;
      
      public var kName:TextField;
      
      public var opt1:MovieClip;
      
      public var opt2:MovieClip;
      
      public var opt3:MovieClip;
      
      private var onReassignOKFxn:Function = null;
      
      private var _prevSelectedBtn:Object;
      
      public var charCodes:Array;
      
      private var codeName:String;
      
      public function UiKeyControl()
      {
         _prevSelectedBtn = new Object();
         super();
         keyInd = -1;
      }
      
      private static function setButtonBackground(bt:MovieClip) : void
      {
         bt.bg.alpha = bt.keyName.text == ""?0.2:1;
      }
      
      public static function setButtonFace(bt:MovieClip, keyCode:Number = -1, charCode:Number = -1) : void
      {
         bt.buttonMode = true;
         bt.mouseChildren = false;
         bt.keyCode = keyCode;
         bt.charCode = charCode;
         bt.arrow.visible = false;
         switch(keyCode)
         {
            case 37:
               bt.arrow.visible = true;
               bt.keyName.visible = false;
               bt.arrow.rotation = -90;
               bt.keyName.text = "left";
               break;
            case 38:
               bt.arrow.visible = true;
               bt.keyName.visible = false;
               bt.arrow.rotation = 0;
               bt.keyName.text = "up";
               break;
            case 39:
               bt.arrow.visible = true;
               bt.keyName.visible = false;
               bt.arrow.rotation = 90;
               bt.keyName.text = "right";
               break;
            case 40:
               bt.arrow.visible = true;
               bt.keyName.visible = false;
               bt.arrow.rotation = 180;
               bt.keyName.text = "down";
               break;
            case 8:
               bt.keyName.visible = true;
               bt.keyName.text = "BckSpc";
               break;
            case 17:
               bt.keyName.visible = true;
               bt.keyName.text = "Ctrl";
               break;
            case 46:
               bt.keyName.visible = true;
               bt.keyName.text = "Del";
               break;
            case 35:
               bt.keyName.visible = true;
               bt.keyName.text = "End";
               break;
            case 13:
               bt.keyName.visible = true;
               bt.keyName.text = "Enter";
               break;
            case 112:
               bt.keyName.visible = true;
               bt.keyName.text = "F1";
               break;
            case 113:
               bt.keyName.visible = true;
               bt.keyName.text = "F2";
               break;
            case 114:
               bt.keyName.visible = true;
               bt.keyName.text = "F3";
               break;
            case 115:
               bt.keyName.visible = true;
               bt.keyName.text = "F4";
               break;
            case 116:
               bt.keyName.visible = true;
               bt.keyName.text = "F5";
               break;
            case 117:
               bt.keyName.visible = true;
               bt.keyName.text = "F6";
               break;
            case 118:
               bt.keyName.visible = true;
               bt.keyName.text = "F7";
               break;
            case 119:
               bt.keyName.visible = true;
               bt.keyName.text = "F8";
               break;
            case 120:
               bt.keyName.visible = true;
               bt.keyName.text = "F9";
               break;
            case 121:
               bt.keyName.visible = true;
               bt.keyName.text = "F10";
               break;
            case 122:
               bt.keyName.visible = true;
               bt.keyName.text = "F11";
               break;
            case 123:
               bt.keyName.visible = true;
               bt.keyName.text = "F12";
               break;
            case 36:
               bt.keyName.visible = true;
               bt.keyName.text = "Home";
               break;
            case 45:
               bt.keyName.visible = true;
               bt.keyName.text = "Ins";
               break;
            case 34:
               bt.keyName.visible = true;
               bt.keyName.text = "PgDn";
               break;
            case 33:
               bt.keyName.visible = true;
               bt.keyName.text = "PgUp";
               break;
            case 16:
               bt.keyName.visible = true;
               bt.keyName.text = "Shift";
               break;
            case 32:
               bt.keyName.visible = true;
               bt.keyName.text = "Space";
               break;
            case 96:
               bt.keyName.visible = true;
               bt.keyName.text = "Num 0";
               break;
            case 97:
               bt.keyName.visible = true;
               bt.keyName.text = "Num 1";
               break;
            case 98:
               bt.keyName.visible = true;
               bt.keyName.text = "Num 2";
               break;
            case 99:
               bt.keyName.visible = true;
               bt.keyName.text = "Num 3";
               break;
            case 100:
               bt.keyName.visible = true;
               bt.keyName.text = "Num 4";
               break;
            case 101:
               bt.keyName.visible = true;
               bt.keyName.text = "Num 5";
               break;
            case 102:
               bt.keyName.visible = true;
               bt.keyName.text = "Num 6";
               break;
            case 103:
               bt.keyName.visible = true;
               bt.keyName.text = "Num 7";
               break;
            case 104:
               bt.keyName.visible = true;
               bt.keyName.text = "Num 8";
               break;
            case 105:
               bt.keyName.visible = true;
               bt.keyName.text = "Num 9";
               break;
            case 107:
               bt.keyName.visible = true;
               bt.keyName.text = "Num +";
               break;
            case 109:
               bt.keyName.visible = true;
               bt.keyName.text = "Num -";
               break;
            case 110:
               bt.keyName.visible = true;
               bt.keyName.text = "Num .";
               break;
            case 111:
               bt.keyName.visible = true;
               bt.keyName.text = "Num /";
               break;
            case 106:
               bt.keyName.visible = true;
               bt.keyName.text = "Num *";
               break;
            case 108:
               bt.keyName.visible = true;
               bt.keyName.text = "Num <-|";
               break;
            case 192:
               bt.keyName.visible = true;
               bt.keyName.text = "~";
               break;
            case -1:
               bt.keyName.visible = false;
               bt.arrow.visible = false;
               bt.keyName.text = "";
               break;
            default:
               bt.keyName.visible = true;
               bt.keyName.text = charCode > 0?String.fromCharCode(charCode).toUpperCase():"";
         }
         UiKeyControl.setButtonBackground(bt);
      }
      
      public static function resetSelectedKey(e:Event = null) : void
      {
         if(keySelected())
         {
            UiKeyControl.setButtonFace(prevSelectedBtn.bt,prevSelectedBtn.bt.keyCode,prevSelectedBtn.bt.charCode);
         }
      }
      
      private static function keySelected() : Boolean
      {
         return prevSelectedBtn && prevSelectedBtn.bt;
      }
      
      private function allowKeyAssignment(trgt:MovieClip, keyCode:uint, charCode:uint) : Boolean
      {
         var alreadyAssignedKeysInfo:Array = null;
         if(keyCode == Keyboard.ENTER || keyCode == Keyboard.TAB || keyCode == Keyboard.CONTROL || keyCode == Keyboard.ESCAPE || keyCode == Keyboard.F1 || keyCode == Keyboard.CAPS_LOCK || keyCode == FWDSLASH_KEY)
         {
            restrictedKeysDialog = DialogWindowFactory.getInstance().getNewDialogWindow(this._uiFramework,this._linkManager,DialogWindowTypes.NORMAL,200);
            restrictedKeysDialog.addEventListener("CLOSE",onRestrictedKeysOkay,false,0,true);
            restrictedKeysDialog.addEventListener("OKAY",onRestrictedKeysOkay,false,0,true);
            restrictedKeysDialog.autoSize = true;
            restrictedKeysDialog.autoCenter = true;
            restrictedKeysDialog.setHtmlText(GlobalTexts.getRestrictedKeyText());
            return false;
         }
         if(keyCode != -1)
         {
            alreadyAssignedKeysInfo = this.optionPanel.keyAlreadyAssigned(this.codeName,keyCode);
            if(alreadyAssignedKeysInfo != null)
            {
               reassignDialog = DialogWindowFactory.getInstance().getNewDialogWindow(this._uiFramework,this._linkManager,DialogWindowTypes.NORMAL,200);
               this.onReassignOKFxn = function(e:Event):void
               {
                  onReassignOkay(trgt,alreadyAssignedKeysInfo,keyCode,charCode);
               };
               reassignDialog.addEventListener("OKAY",onReassignOKFxn,false,0,true);
               reassignDialog.addEventListener("CLOSE",onReassignCancel,false,0,true);
               reassignDialog.addEventListener("CANCEL",onReassignCancel,false,0,true);
               reassignDialog.autoSize = true;
               reassignDialog.autoCenter = true;
               reassignDialog.setHtmlText(GlobalTexts.getKeyAlreadyAssigned());
               return false;
            }
         }
         return true;
      }
      
      public function reportKeyDown(trgt:MovieClip, keyCode:uint, charCode:uint) : void
      {
         if(!allowKeyAssignments() || !allowKeyAssignment(trgt,keyCode,charCode))
         {
            return;
         }
         processKeyDown(trgt,keyCode,charCode);
      }
      
      public function init(optionPanelObj:UiOptionPanel, uiFramework:IUIFramework, linkManager:ILinkManager, keyInd:Number, initObject:Object) : void
      {
         var keyCode:Number = NaN;
         var charCode:Number = NaN;
         this.optionPanel = optionPanelObj;
         this._uiFramework = uiFramework;
         this._linkManager = linkManager;
         this.keyInd = keyInd;
         IEventDispatcher(this.optionPanel).addEventListener("optionPanelClosing",onOptionPanelClosing,false,0,true);
         IEventDispatcher(this.optionPanel).addEventListener("resetKeyControl",resetSelectedKey,false,0,true);
         this.keyCodes = initObject.kcodes;
         this.charCodes = initObject.charcodes;
         this.kName.text = initObject.name;
         this.codeName = initObject.codeName;
         for(var kc:int = 0; kc < this.keyCodes.length; kc++)
         {
            keyCode = this.keyCodes[kc];
            charCode = this.charCodes == null?Number(-1):Number(this.charCodes[kc]);
            this["opt" + (kc + 1)].id = kc;
            this.initKey(this["opt" + (kc + 1)],keyCode,charCode,true);
         }
      }
      
      private function closeDialogs() : void
      {
         if(restrictedKeysDialog != null)
         {
            restrictedKeysDialog.removeEventListener("CANCEL",this.onRestrictedKeysOkay);
            restrictedKeysDialog.removeEventListener("OKAY",this.onRestrictedKeysOkay);
            restrictedKeysDialog.close();
         }
         if(reassignDialog != null)
         {
            reassignDialog.removeEventListener("OKAY",onReassignOKFxn);
            reassignDialog.removeEventListener("CLOSE",onReassignCancel);
            reassignDialog.removeEventListener("CANCEL",onReassignCancel);
            reassignDialog.close();
         }
         restrictedKeysDialog = null;
         reassignDialog = null;
         if(this.stage)
         {
            this.stage.focus = null;
         }
      }
      
      private function onReassignOkay(trgt:MovieClip, alreadyAssignedKeysInfo:Array, keyCode:uint, charCode:uint) : void
      {
         var alreadyAssignedKeyInfo:Object = null;
         var keyControl:Object = null;
         var button:Object = null;
         var kcodeindex:int = 0;
         var bt:MovieClip = null;
         reassignDialog.removeEventListener("OKAY",this.onReassignOKFxn);
         reassignDialog.removeEventListener("CANCEL",this.onReassignCancel);
         reassignDialog = null;
         for each(alreadyAssignedKeyInfo in alreadyAssignedKeysInfo)
         {
            keyControl = alreadyAssignedKeyInfo.keyControl;
            button = alreadyAssignedKeyInfo.btn;
            kcodeindex = alreadyAssignedKeyInfo.kcodeindex;
            bt = button["opt" + (kcodeindex + 1)];
            bt.keyName.visible = true;
            bt.keyName.text = "";
            bt.arrow.visible = false;
            bt.charCode = -1;
            bt.keyCode = -1;
            UiKeyControl.setButtonBackground(bt);
            keyControl.kcodes[kcodeindex] = -1;
            keyControl.charcodes[kcodeindex] = -1;
         }
         processKeyDown(trgt,keyCode,charCode);
      }
      
      private function allowKeyAssignments() : Boolean
      {
         return restrictedKeysDialog == null && reassignDialog == null;
      }
      
      private function onRestrictedKeysOkay(e:Event) : void
      {
         restrictedKeysDialog.removeEventListener("CANCEL",this.onRestrictedKeysOkay);
         restrictedKeysDialog.removeEventListener("OKAY",this.onRestrictedKeysOkay);
         restrictedKeysDialog = null;
         if(this.stage)
         {
            this.stage.focus = null;
         }
      }
      
      public function initKey(bt:MovieClip, keyCode:Number = -1, charCode:Number = -1, firstSet:Boolean = false, setToArr:Boolean = true) : void
      {
         if(setToArr)
         {
            this.optionPanel.keyControlsData[this.keyInd].kcodes[bt.id] = keyCode;
            this.optionPanel.keyControlsData[this.keyInd].charcodes[bt.id] = charCode;
         }
         UiKeyControl.setButtonFace(bt,keyCode,charCode);
         if(!bt.hasEventListener(MouseEvent.CLICK))
         {
            bt.addEventListener(MouseEvent.CLICK,startCatch,false,0,true);
         }
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.KEY_BINDING_CHANGE_CANCEL,{}));
      }
      
      private function processKeyDown(trgt:MovieClip, keyCode:uint, charCode:uint) : void
      {
         var newVal:Number = -1;
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.KEY_BINDING_CHANGE_CANCEL,{}));
         switch(keyCode)
         {
            case Keyboard.UP:
               newVal = 38;
               break;
            case Keyboard.DOWN:
               newVal = 40;
               break;
            case Keyboard.LEFT:
               newVal = 37;
               break;
            case Keyboard.RIGHT:
               newVal = 39;
               break;
            case Keyboard.ESCAPE:
               newVal = -1;
               break;
            default:
               newVal = keyCode;
         }
         this.initKey(trgt,newVal,charCode);
         prevSelectedBtn.bt = trgt;
      }
      
      private function onOptionPanelClosing(e:Event) : void
      {
         closeDialogs();
      }
      
      private function startCatch(evt:MouseEvent) : void
      {
         if(!allowKeyAssignments())
         {
            return;
         }
         var trgt:Object = evt.target;
         if(keySelected() && prevSelectedBtn.bt == trgt && trgt.keyName.text == "...")
         {
            resetSelectedKey();
            GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.KEY_BINDING_CHANGE_CANCEL,{}));
            return;
         }
         if(prevSelectedBtn && prevSelectedBtn.bt && prevSelectedBtn.bt.keyName.text == "...")
         {
            setButtonFace(prevSelectedBtn.bt,prevSelectedBtn.bt.keyCode,prevSelectedBtn.bt.charCode);
            if(!prevSelectedBtn.bt.hasEventListener(MouseEvent.CLICK))
            {
               prevSelectedBtn.bt.addEventListener(MouseEvent.CLICK,startCatch,false,0,true);
            }
         }
         BattleUtils.cleanObject(_prevSelectedBtn);
         prevSelectedBtn.bt = trgt;
         trgt.arrow.visible = false;
         trgt.keyName.visible = true;
         trgt.keyName.text = "...";
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.KEY_BINDING_CHANGE,{
            "keyControl":this,
            "optionIndex":trgt.id + 1
         }));
      }
      
      private function onReassignCancel(e:Event) : void
      {
         reassignDialog.removeEventListener("OKAY",onReassignOKFxn);
         reassignDialog.removeEventListener("CANCEL",this.onReassignCancel);
         reassignDialog = null;
         if(this.stage)
         {
            this.stage.focus = null;
         }
      }
   }
}

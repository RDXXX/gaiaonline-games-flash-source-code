package com.gaiaworld.towns.smartphone
{
   import com.gaiaworld.global.controller.GlobalController;
   import com.gaiaworld.global.model.GlobalModel;
   import com.gaiaworld.towns.constants.PhoneConstants;
   import fl.controls.Button;
   import fl.controls.ColorPicker;
   import fl.controls.ComboBox;
   import fl.controls.NumericStepper;
   import fl.controls.Slider;
   import fl.data.DataProvider;
   import fl.data.SimpleCollectionItem;
   import fl.events.ColorPickerEvent;
   import fl.events.SliderEvent;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class HistorySettings extends Sprite
   {
       
      
      public var btnClose:Button;
      
      public var combo1:ComboBox;
      
      public var cp1:ColorPicker;
      
      public var num1:NumericStepper;
      
      public var slider3:Slider;
      
      private var globalModel:GlobalModel;
      
      private var globalController:GlobalController;
      
      public function HistorySettings()
      {
         this.globalModel = GlobalModel.getInstance();
         this.globalController = new GlobalController();
         super();
         Slider(this.slider3).addEventListener(SliderEvent.CHANGE,this.historyAlpaChanged);
         Slider(this.slider3).focusEnabled = false;
         ColorPicker(this.cp1).addEventListener(ColorPickerEvent.CHANGE,this.historyColorChanged);
         ColorPicker(this.cp1).focusEnabled = false;
         NumericStepper(this.num1).addEventListener(Event.CHANGE,this.setTextSize);
         NumericStepper(this.num1).focusEnabled = false;
         this.btnClose.addEventListener(MouseEvent.MOUSE_DOWN,this.close);
         ComboBox(this.combo1).addEventListener(Event.CHANGE,this.setFontIndex);
         ComboBox(this.combo1).tabEnabled = false;
         this.addEventListener(Event.ADDED_TO_STAGE,this.added);
         this.__setProp_num1_HistorySettingScreen_Layer1_0();
         this.__setProp_btnClose_HistorySettingScreen_Layer1_0();
         this.__setProp_combo1_HistorySettingScreen_Layer1_0();
         this.__setProp_slider3_HistorySettingScreen_Layer1_0();
      }
      
      private function added(param1:Event) : void
      {
         this.removeEventListener(Event.ADDED_TO_STAGE,this.added);
         var _loc2_:Number = this.globalModel.historyAlpha * 100;
         Slider(this.slider3).value = _loc2_;
         ColorPicker(this.cp1).selectedColor = this.globalModel.historyBackColor;
         ComboBox(this.combo1).selectedIndex = this.globalModel.fontIndex;
         NumericStepper(this.num1).value = this.globalModel.historyTextSize;
      }
      
      private function close(param1:Event) : *
      {
         this.visible = false;
         this.globalController.savePrefs();
         this.dispatchEvent(new Event(PhoneConstants.SHOW_SETTINGS_START,true));
      }
      
      private function setTextSize(param1:Event) : void
      {
         this.globalController.setHistoryTextSize(NumericStepper(this.num1).value);
      }
      
      private function setFontIndex(param1:Event) : *
      {
         this.globalController.setFontIndex(ComboBox(this.combo1).selectedItem.data);
      }
      
      private function historyColorChanged(param1:ColorPickerEvent) : void
      {
         this.globalController.redrawHistory(param1.color,this.globalModel.historyAlpha);
      }
      
      private function historyAlpaChanged(param1:Event) : void
      {
         this.globalController.redrawHistory(this.globalModel.historyBackColor,Slider(this.slider3).value / 100);
      }
      
      function __setProp_num1_HistorySettingScreen_Layer1_0() : *
      {
         try
         {
            this.num1["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         this.num1.enabled = true;
         this.num1.maximum = 22;
         this.num1.minimum = 12;
         this.num1.stepSize = 1;
         this.num1.value = 1;
         this.num1.visible = true;
         try
         {
            this.num1["componentInspectorSetting"] = false;
            return;
         }
         catch(e:Error)
         {
            return;
         }
      }
      
      function __setProp_btnClose_HistorySettingScreen_Layer1_0() : *
      {
         try
         {
            this.btnClose["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         this.btnClose.emphasized = false;
         this.btnClose.enabled = true;
         this.btnClose.label = "save and close";
         this.btnClose.labelPlacement = "right";
         this.btnClose.selected = false;
         this.btnClose.toggle = false;
         this.btnClose.visible = true;
         try
         {
            this.btnClose["componentInspectorSetting"] = false;
            return;
         }
         catch(e:Error)
         {
            return;
         }
      }
      
      function __setProp_combo1_HistorySettingScreen_Layer1_0() : *
      {
         var _loc2_:SimpleCollectionItem = null;
         var _loc3_:Array = null;
         var _loc4_:Object = null;
         var _loc5_:int = 0;
         var _loc6_:* = undefined;
         try
         {
            this.combo1["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         var _loc1_:DataProvider = new DataProvider();
         _loc3_ = [{
            "label":"Arial",
            "data":0
         },{
            "label":"Times New Roman",
            "data":1
         },{
            "label":"Courier",
            "data":2
         }];
         _loc5_ = 0;
         while(_loc5_ < _loc3_.length)
         {
            _loc2_ = new SimpleCollectionItem();
            _loc4_ = _loc3_[_loc5_];
            for(_loc6_ in _loc4_)
            {
               _loc2_[_loc6_] = _loc4_[_loc6_];
            }
            _loc1_.addItem(_loc2_);
            _loc5_++;
         }
         this.combo1.dataProvider = _loc1_;
         this.combo1.editable = false;
         this.combo1.enabled = true;
         this.combo1.prompt = "";
         this.combo1.restrict = "";
         this.combo1.rowCount = 5;
         this.combo1.visible = true;
         try
         {
            this.combo1["componentInspectorSetting"] = false;
            return;
         }
         catch(e:Error)
         {
            return;
         }
      }
      
      function __setProp_slider3_HistorySettingScreen_Layer1_0() : *
      {
         try
         {
            this.slider3["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         this.slider3.direction = "horizontal";
         this.slider3.enabled = true;
         this.slider3.liveDragging = false;
         this.slider3.maximum = 100;
         this.slider3.minimum = 0;
         this.slider3.snapInterval = 0;
         this.slider3.tickInterval = 0;
         this.slider3.value = 0;
         this.slider3.visible = true;
         try
         {
            this.slider3["componentInspectorSetting"] = false;
            return;
         }
         catch(e:Error)
         {
            return;
         }
      }
   }
}

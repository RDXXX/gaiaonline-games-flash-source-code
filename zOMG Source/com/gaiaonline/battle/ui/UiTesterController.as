package com.gaiaonline.battle.ui
{
   import com.gaiaonline.flexModulesAPIs.globalevent.GlobalEvent;
   import com.gaiaonline.flexModulesAPIs.uiChooser.IUiChooser;
   import com.gaiaonline.flexModulesAPIs.uiChooser.IUiChooserEventHandler;
   
   public class UiTesterController implements IUiChooserEventHandler
   {
      
      public static const NEW_RECREWT:String = "New Recrewt Panel";
      
      public static const NEW_TASK:String = "New Quest Pane";
      
      public static const NEW_MAP:String = "New Map";
      
      public static const OLD_RECREWT:String = "Old Recrewt Panel";
       
      
      private var _uiTester:IUiChooser = null;
      
      private var _data:Array;
      
      public function UiTesterController(uiTester:IUiChooser)
      {
         _data = [{
            "newUi":NEW_MAP,
            "oldUi":"",
            "showOld":true,
            "showNew":false
         },{
            "newUi":NEW_TASK,
            "oldUi":"",
            "showOld":true,
            "showNew":false
         },{
            "newUi":NEW_RECREWT,
            "oldUi":OLD_RECREWT,
            "showOld":true,
            "showNew":false
         }];
         super();
         this._uiTester = uiTester;
      }
      
      public function init() : void
      {
         this._uiTester.setItems(this._data,this);
      }
      
      public function onItemChecked(itemInfo:Object) : void
      {
         var name:String = itemInfo.name;
         var show:Boolean = itemInfo.show;
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.WIDGET_SHOW,{
            "widgetName":name,
            "widgetShow":show,
            "widgetEnable":true
         }));
      }
   }
}

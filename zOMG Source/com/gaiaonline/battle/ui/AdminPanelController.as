package com.gaiaonline.battle.ui
{
   import com.adobe.serialization.json.JSONEncoder;
   import com.gaiaonline.battle.Globals;
   import com.gaiaonline.battle.gateway.AdminCmdData;
   import com.gaiaonline.battle.gateway.AdminCmdListener;
   import com.gaiaonline.battle.gateway.AdminMsg;
   import com.gaiaonline.battle.gateway.BattleEvent;
   import com.gaiaonline.battle.gateway.BattleMessage;
   import com.gaiaonline.flexModulesAPIs.adminpanel.IAdminPanelEventHandler;
   import com.gaiaonline.flexModulesAPIs.adminpanel.IAdminPanelModule;
   import com.gaiaonline.flexModulesAPIs.gatewayInterfaces.IBattleGateway;
   import com.gaiaonline.flexModulesAPIs.globalevent.GlobalEvent;
   
   public class AdminPanelController implements IAdminPanelEventHandler
   {
       
      
      private var _view:IAdminPanelModule = null;
      
      private var _commands:Array;
      
      private var _battleGateway:IBattleGateway;
      
      private var _lastCommand:String;
      
      public function AdminPanelController(battleGateway:IBattleGateway)
      {
         _commands = ["nothing"];
         super();
         _battleGateway = battleGateway;
         _battleGateway.addEventListener(AdminMsg.TYPE,onAdminMsg,false,0,true);
         _battleGateway.addEventListener(AdminCmdData.TYPE,onAdminCmdData,false,0,true);
         _battleGateway.addEventListener(AdminCmdListener.TYPE,onAdminListenEvent,false,0,true);
      }
      
      public function onGstChange(gstDate:Date) : void
      {
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.GST_SET,gstDate));
      }
      
      private function onAdminListenEvent(event:AdminCmdListener) : void
      {
         var response:Object = null;
         if(_lastCommand && _lastCommand == event.cmd)
         {
            response = event.data.responseObj;
            showObjectInConsole(response);
         }
      }
      
      private function showObjectInConsole(obj:Object) : void
      {
         this._view.setConsoleText(new JSONEncoder(obj).getString());
      }
      
      public function addView(view:IAdminPanelModule) : void
      {
         this._view = view;
         this._view.setEventHandler(this);
         this._view.setFilterOptions(_commands);
      }
      
      public function onCommandFilter(command:String) : void
      {
         _lastCommand = command;
      }
      
      public function onSendCommandClick(cmd:String, paramsString:String) : void
      {
         var msgOld:BattleMessage = null;
         var paramObj:Object = null;
         var i:int = 0;
         var msgNew:BattleMessage = null;
         var pv:Array = null;
         var params:Array = String(paramsString).split(",");
         if(!isNaN(parseInt(cmd)))
         {
            msgOld = new BattleMessage(cmd,params);
            msgOld.addEventListener(BattleEvent.CALL_BACK,onAdminCommadCallBack);
            this._battleGateway.sendMsg(msgOld);
         }
         else
         {
            paramObj = new Object();
            for(i = 0; i < params.length; i++)
            {
               pv = params[i].split(":");
               paramObj[String(pv[0]).replace(" ","")] = pv[1];
            }
            msgNew = new BattleMessage(cmd,paramObj);
            msgNew.addEventListener(BattleEvent.CALL_BACK,onAdminCommadCallBack);
            this._battleGateway.sendMsg(msgNew);
         }
      }
      
      public function onLightsClick() : void
      {
         var l:* = !Globals.uiManager.uiFramework.map.isLightsOn();
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.MAP_SET_LIGHTS,{"on":l}));
      }
      
      private function onAdminMsg(event:AdminMsg) : void
      {
         showObjectInConsole(event.data);
      }
      
      public function onShowCollisionClick(selected:Boolean) : void
      {
         if(selected)
         {
            Globals.uiManager.uiFramework.map.drawCollisionMap();
            Globals.uiManager.uiFramework.map.setCollisionShowing(true);
         }
         else
         {
            Globals.uiManager.uiFramework.map.setCollisionShowing(false);
         }
      }
      
      private function onAdminCmdData(event:AdminCmdData) : void
      {
         if(-1 == _commands.indexOf(event.cmd))
         {
            _commands.push(event.cmd);
            if(_view)
            {
               _view.setFilterOptions(_commands);
            }
         }
      }
      
      private function onAdminCommadCallBack(evt:BattleEvent) : void
      {
         BattleMessage(evt.target).removeEventListener(BattleEvent.CALL_BACK,onAdminCommadCallBack);
         var obj:Object = evt.battleMessage.responseObj;
         showObjectInConsole(obj);
      }
   }
}

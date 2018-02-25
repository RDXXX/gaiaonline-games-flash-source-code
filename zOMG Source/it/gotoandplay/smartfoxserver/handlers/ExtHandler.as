package it.gotoandplay.smartfoxserver.handlers
{
   import it.gotoandplay.smartfoxserver.SFSEvent;
   import it.gotoandplay.smartfoxserver.SmartFoxClient;
   import it.gotoandplay.smartfoxserver.util.ObjectSerializer;
   
   public class ExtHandler implements IMessageHandler
   {
       
      
      private var sfs:SmartFoxClient;
      
      public function ExtHandler(sfs:SmartFoxClient)
      {
         super();
         this.sfs = sfs;
      }
      
      public function handleMessage(msgObj:Object, type:String) : void
      {
         var params:Object = null;
         var evt:SFSEvent = null;
         var xmlData:XML = null;
         var action:String = null;
         var roomId:int = 0;
         var xmlStr:String = null;
         var asObj:Object = null;
         if(type == SmartFoxClient.XTMSG_TYPE_XML)
         {
            xmlData = msgObj as XML;
            action = xmlData.body.@action;
            roomId = int(xmlData.body.@id);
            if(action == "xtRes")
            {
               xmlStr = xmlData.body.toString();
               asObj = ObjectSerializer.getInstance().deserialize(xmlStr);
               params = {};
               params.dataObj = asObj;
               params.type = type;
               evt = new SFSEvent(SFSEvent.onExtensionResponse,params);
               sfs.dispatchEvent(evt);
            }
         }
         else if(type == SmartFoxClient.XTMSG_TYPE_JSON)
         {
            params = {};
            params.dataObj = msgObj.o;
            params.type = type;
            evt = new SFSEvent(SFSEvent.onExtensionResponse,params);
            sfs.dispatchEvent(evt);
         }
         else if(type == SmartFoxClient.XTMSG_TYPE_STR)
         {
            params = {};
            params.dataObj = msgObj;
            params.type = type;
            evt = new SFSEvent(SFSEvent.onExtensionResponse,params);
            sfs.dispatchEvent(evt);
         }
      }
   }
}

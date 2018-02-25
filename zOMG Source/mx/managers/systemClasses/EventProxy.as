package mx.managers.systemClasses
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   import mx.events.SandboxMouseEvent;
   import mx.managers.ISystemManager;
   import mx.utils.EventUtil;
   
   public class EventProxy extends EventDispatcher
   {
       
      
      private var systemManager:ISystemManager;
      
      public function EventProxy(systemManager:ISystemManager)
      {
         super();
         this.systemManager = systemManager;
      }
      
      public function marshalListener(event:Event) : void
      {
         var me:MouseEvent = null;
         var mme:SandboxMouseEvent = null;
         if(event is MouseEvent)
         {
            me = event as MouseEvent;
            mme = new SandboxMouseEvent(EventUtil.mouseEventMap[event.type],false,false,me.ctrlKey,me.altKey,me.shiftKey,me.buttonDown);
            systemManager.dispatchEventFromSWFBridges(mme,null,true,true);
         }
         else if(event.type == Event.MOUSE_LEAVE)
         {
            mme = new SandboxMouseEvent(SandboxMouseEvent.MOUSE_UP_SOMEWHERE);
            systemManager.dispatchEventFromSWFBridges(mme,null,true,true);
            systemManager.dispatchEvent(mme);
         }
      }
   }
}

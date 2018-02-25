package com.gaiaonline.battle.ui
{
   import com.gaiaonline.battle.ApplicationInterfaces.ILinkManager;
   import com.gaiaonline.battle.newactors.ActorManager;
   import com.gaiaonline.flexModulesAPIs.globalevent.GlobalEvent;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.external.ExternalInterface;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.text.TextField;
   
   public class UiLinksPanel extends MovieClip
   {
       
      
      private var mcLinks:MovieClip;
      
      private var _linkManager:ILinkManager = null;
      
      public var linkItem:MovieClip;
      
      public function UiLinksPanel(linkManager:ILinkManager)
      {
         super();
         this._linkManager = linkManager;
         this.removeChild(this.linkItem);
         this.mcLinks = new MovieClip();
         this.mcLinks.x = 8;
         this.mcLinks.y = 22;
         this.addChild(mcLinks);
         this.tabChildren = false;
      }
      
      private function onItemClick(evt:MouseEvent) : void
      {
         var param:Array = null;
         var i:int = 0;
         var rr:* = undefined;
         var r:URLRequest = null;
         if(evt.target.text)
         {
            GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.TRACKING_EVENT,"zomg_click_link_" + evt.target.text));
         }
         if(evt.currentTarget.urlLink == null)
         {
            return;
         }
         var a:Array = evt.currentTarget.urlLink.split(":");
         if(ActorManager.getInstance().myActor.isGuestUser())
         {
            GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.INVALID_GUEST_OPERATION,{}));
         }
         else if(a[0] == "javascript")
         {
            param = ["","","",""];
            if(a.length > 2)
            {
               param = a[2].split(",");
               for(i = 0; i < 4; i++)
               {
                  if(param[i] == null)
                  {
                     param[i] = "";
                  }
               }
            }
            try
            {
               rr = ExternalInterface.call(a[1],param[0],param[1],param[2],param[3]);
            }
            catch(e:Error)
            {
               trace("Err: ",e.message);
            }
         }
         else
         {
            r = new URLRequest(evt.currentTarget.urlLink);
            navigateToURL(r,"GaiaWindow");
         }
      }
      
      public function setLinks(list:Array) : void
      {
         var c:Class = null;
         var li:MovieClip = null;
         var url:String = null;
         while(this.mcLinks.numChildren > 0)
         {
            MovieClip(this.mcLinks.getChildAt(0)).removeEventListener(MouseEvent.MOUSE_OVER,onItemMouseOver);
            MovieClip(this.mcLinks.getChildAt(0)).removeEventListener(MouseEvent.MOUSE_OUT,onItemMouseOut);
            MovieClip(this.mcLinks.getChildAt(0)).removeEventListener(MouseEvent.CLICK,onItemClick);
            this.mcLinks.removeChildAt(0);
         }
         for(var i:int = 0; i < list.length; i++)
         {
            c = this.linkItem["constructor"] as Class;
            li = new c();
            li.addEventListener(MouseEvent.MOUSE_OVER,onItemMouseOver,false,0,true);
            li.addEventListener(MouseEvent.MOUSE_OUT,onItemMouseOut,false,0,true);
            li.addEventListener(MouseEvent.CLICK,onItemClick,false,0,true);
            li.txt.text = list[i].display;
            li.txt.width = li.txt.textWidth + 10;
            url = this._linkManager.getLink(list[i].linkId);
            if(list[i].param != null)
            {
               url = url + list[i].param;
            }
            li.urlLink = url;
            li.y = i * 14;
            this.mcLinks.addChild(li);
         }
      }
      
      private function onItemMouseOut(evt:MouseEvent) : void
      {
         TextField(evt.currentTarget.txt).textColor = 16777215;
      }
      
      private function onItemMouseOver(evt:MouseEvent) : void
      {
         TextField(evt.currentTarget.txt).textColor = 16443532;
      }
   }
}

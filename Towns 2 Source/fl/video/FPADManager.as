package fl.video
{
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   
   public class FPADManager
   {
      
      public static const VERSION:String = "2.5.0.26";
      
      public static const SHORT_VERSION:String = "2.5";
       
      
      private var _owner:INCManager;
      
      flvplayback_internal var xml:XML;
      
      flvplayback_internal var xmlLoader:URLLoader;
      
      flvplayback_internal var rtmpURL:String;
      
      flvplayback_internal var _url:String;
      
      flvplayback_internal var _uriParam:String;
      
      flvplayback_internal var _parseResults:ParseResults;
      
      public function FPADManager(param1:INCManager)
      {
         super();
         this._owner = param1;
      }
      
      flvplayback_internal function connectXML(param1:String, param2:String, param3:String, param4:ParseResults) : Boolean
      {
         this._uriParam = param2;
         this._parseResults = param4;
         this._url = param1 + "uri=" + this._parseResults.protocol;
         if(this._parseResults.serverName != null)
         {
            this._url = this._url + ("/" + this._parseResults.serverName);
         }
         if(this._parseResults.portNumber != null)
         {
            this._url = this._url + (":" + this._parseResults.portNumber);
         }
         if(this._parseResults.wrappedURL != null)
         {
            this._url = this._url + ("/?" + this._parseResults.wrappedURL);
         }
         this._url = this._url + ("/" + this._parseResults.appName);
         this._url = this._url + param3;
         this.xml = new XML();
         this.xmlLoader = new URLLoader();
         this.xmlLoader.addEventListener(Event.COMPLETE,this.xmlLoadEventHandler);
         this.xmlLoader.addEventListener(IOErrorEvent.IO_ERROR,this.xmlLoadEventHandler);
         this.xmlLoader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.xmlLoadEventHandler);
         this.xmlLoader.load(new URLRequest(this._url));
         return false;
      }
      
      flvplayback_internal function xmlLoadEventHandler(param1:Event) : void
      {
         var proxy:String = null;
         var e:Event = param1;
         try
         {
            if(e.type != Event.COMPLETE)
            {
               this._owner.helperDone(this,false);
            }
            else
            {
               this.xml = new XML(this.xmlLoader.data);
               if(this.xml == null || this.xml.localName() == null)
               {
                  throw new VideoError(VideoError.INVALID_XML,"URL: \"" + this._url + "\" No root node found; if url is for an flv it must have .flv extension and take no parameters");
               }
               if(this.xml.localName() != "fpad")
               {
                  throw new VideoError(VideoError.INVALID_XML,"URL: \"" + this._url + "\" Root node not fpad");
               }
               proxy = null;
               if(this.xml.proxy.length() > 0 && this.xml.proxy.hasSimpleContent() && this.xml.proxy.*[0].nodeKind() == "text")
               {
                  proxy = this.xml.proxy.*[0].toString();
               }
               if(proxy == null)
               {
                  throw new VideoError(VideoError.INVALID_XML,"URL: \"" + this._url + "\" fpad xml requires proxy tag.");
               }
               this.rtmpURL = this._parseResults.protocol + "/" + proxy + "/?" + this._uriParam;
               this._owner.helperDone(this,true);
            }
            return;
         }
         catch(err:Error)
         {
            _owner.helperDone(this,false);
            throw err;
         }
      }
   }
}

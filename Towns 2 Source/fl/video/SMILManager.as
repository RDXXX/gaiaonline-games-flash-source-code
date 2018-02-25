package fl.video
{
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   
   use namespace flvplayback_internal;
   
   public class SMILManager
   {
      
      public static const VERSION:String = "2.5.0.26";
      
      public static const SHORT_VERSION:String = "2.5";
       
      
      private var _owner:INCManager;
      
      flvplayback_internal var xml:XML;
      
      flvplayback_internal var xmlLoader:URLLoader;
      
      flvplayback_internal var baseURLAttr:Array;
      
      flvplayback_internal var width:int;
      
      flvplayback_internal var height:int;
      
      flvplayback_internal var videoTags:Array;
      
      private var _url:String;
      
      public function SMILManager(param1:INCManager)
      {
         super();
         this._owner = param1;
         this.width = -1;
         this.height = -1;
      }
      
      flvplayback_internal function connectXML(param1:String) : Boolean
      {
         this._url = this.fixURL(param1);
         this.xmlLoader = new URLLoader();
         this.xmlLoader.addEventListener(Event.COMPLETE,this.xmlLoadEventHandler);
         this.xmlLoader.addEventListener(IOErrorEvent.IO_ERROR,this.xmlLoadEventHandler);
         this.xmlLoader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.xmlLoadEventHandler);
         this.xmlLoader.load(new URLRequest(this._url));
         return false;
      }
      
      flvplayback_internal function fixURL(param1:String) : String
      {
         var _loc2_:String = null;
         if(/^(http:|https:)/i.test(param1))
         {
            _loc2_ = param1.indexOf("?") >= 0?"&":"?";
            return param1 + _loc2_ + "FLVPlaybackVersion=" + SHORT_VERSION;
         }
         return param1;
      }
      
      flvplayback_internal function xmlLoadEventHandler(param1:Event) : void
      {
         var e:Event = param1;
         try
         {
            if(e.type != Event.COMPLETE)
            {
               this._owner.helperDone(this,false);
            }
            else
            {
               this.baseURLAttr = new Array();
               this.videoTags = new Array();
               this.xml = new XML(this.xmlLoader.data);
               default xml namespace = this.xml.namespace();
               if(this.xml == null || this.xml.localName() == null)
               {
                  throw new VideoError(VideoError.INVALID_XML,"URL: \"" + this._url + "\" No root node found; if url is for an flv it must have .flv extension and take no parameters");
               }
               if(this.xml.localName() != "smil")
               {
                  throw new VideoError(VideoError.INVALID_XML,"URL: \"" + this._url + "\" Root node not smil");
               }
               this.checkForIllegalNodes(this.xml,"element",["head","body"]);
               if(this.xml.head.length() > 0)
               {
                  this.parseHead(this.xml.head[0]);
               }
               if(this.xml.body.length() < 1)
               {
                  throw new VideoError(VideoError.INVALID_XML,"URL: \"" + this._url + "\" Tag body is required.");
               }
               this.parseBody(this.xml.body[0]);
               this._owner.helperDone(this,true);
            }
            return;
         }
         catch(err:Error)
         {
            _owner.helperDone(this,false);
            throw err;
         }
         finally
         {
            this.xmlLoader.removeEventListener(Event.COMPLETE,this.xmlLoadEventHandler);
            this.xmlLoader.removeEventListener(IOErrorEvent.IO_ERROR,this.xmlLoadEventHandler);
            this.xmlLoader.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.xmlLoadEventHandler);
            this.xmlLoader = null;
         }
      }
      
      flvplayback_internal function parseHead(param1:XML) : void
      {
         default xml namespace = this.xml.namespace();
         this.checkForIllegalNodes(param1,"element",["meta","layout"]);
         if(param1.meta.length() > 0)
         {
            this.checkForIllegalNodes(param1.meta[0],"element",[]);
            this.checkForIllegalNodes(param1.meta[0],"attribute",["base"]);
            if(param1.meta.@base.length() > 0)
            {
               this.baseURLAttr.push(param1.meta.@base.toString());
            }
         }
         if(param1.layout.length() > 0)
         {
            this.parseLayout(param1.layout[0]);
         }
      }
      
      flvplayback_internal function parseLayout(param1:XML) : void
      {
         var _loc2_:XML = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         default xml namespace = this.xml.namespace();
         this.checkForIllegalNodes(param1,"element",["root-layout"]);
         if(param1["root-layout"].length() > 1)
         {
            throw new VideoError(VideoError.INVALID_XML,"URL: \"" + this._url + "\" Only one base attribute supported in meta tag.");
         }
         if(param1["root-layout"].length() > 0)
         {
            _loc2_ = param1["root-layout"][0];
            if(_loc2_.@width.length() > 0)
            {
               _loc3_ = Number(_loc2_.@width[0]);
            }
            if(_loc2_.@height.length() > 0)
            {
               _loc4_ = Number(_loc2_.@height[0]);
            }
            if(isNaN(_loc3_) || _loc3_ < 0 || isNaN(_loc4_) || _loc4_ < 0)
            {
               throw new VideoError(VideoError.INVALID_XML,"URL: \"" + this._url + "\" Tag " + param1.localName() + " requires attributes width and height.  Width and height must be numbers greater than or equal to 0.");
            }
            this.width = Math.round(_loc3_);
            this.height = Math.round(_loc4_);
         }
      }
      
      flvplayback_internal function parseBody(param1:XML) : void
      {
         var _loc2_:XML = null;
         var _loc4_:Object = null;
         default xml namespace = this.xml.namespace();
         if(param1.*.length() != 1 || param1.*[0].nodeKind() != "element")
         {
            throw new VideoError(VideoError.INVALID_XML,"URL: \"" + this._url + "\" Tag " + param1.localName() + " is required to contain exactly one tag.");
         }
         _loc2_ = param1.*[0];
         var _loc3_:String = _loc2_.localName();
         switch(_loc3_)
         {
            case "switch":
               this.parseSwitch(_loc2_);
               break;
            case "video":
            case "ref":
               _loc4_ = this.parseVideo(_loc2_);
               this.videoTags.push(_loc4_);
               break;
            default:
               throw new VideoError(VideoError.INVALID_XML,"URL: \"" + this._url + "\" Tag " + _loc3_ + " not supported in " + param1.localName() + " tag.");
         }
         if(this.videoTags.length < 1)
         {
            throw new VideoError(VideoError.INVALID_XML,"URL: \"" + this._url + "\" At least one video of ref tag is required.");
         }
      }
      
      flvplayback_internal function parseSwitch(param1:XML) : void
      {
         var _loc2_:* = null;
         var _loc3_:XML = null;
         default xml namespace = this.xml.namespace();
         for(_loc2_ in param1.*)
         {
            _loc3_ = param1.*[_loc2_];
            if(_loc3_.nodeKind() != "element")
            {
               continue;
            }
            switch(_loc3_.localName())
            {
               case "video":
               case "ref":
                  this.videoTags.push(this.parseVideo(_loc3_));
                  continue;
               default:
                  continue;
            }
         }
      }
      
      flvplayback_internal function parseVideo(param1:XML) : Object
      {
         default xml namespace = this.xml.namespace();
         var _loc2_:Object = new Object();
         if(param1.@src.length() > 0)
         {
            _loc2_.src = param1.@src.toString();
         }
         if(param1["system-bitrate"].length() > 0)
         {
            _loc2_.bitrate = int(param1["system-bitrate"].toString());
         }
         if(param1.@dur.length() > 0)
         {
            _loc2_.dur = this.parseTime(param1.@dur.toString());
         }
         return _loc2_;
      }
      
      flvplayback_internal function parseTime(param1:String) : Number
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         default xml namespace = this.xml.namespace();
         var _loc2_:Object = /^((\d+):)?(\d+):((\d+)(.\d+)?)$/.exec(param1);
         if(_loc2_ == null)
         {
            _loc3_ = Number(param1);
            if(isNaN(_loc3_) || _loc3_ < 0)
            {
               throw new VideoError(VideoError.INVALID_XML,"Invalid dur value: " + param1);
            }
            return _loc3_;
         }
         _loc4_ = 0;
         _loc4_ = _loc4_ + uint(_loc2_[2]) * 60 * 60;
         _loc4_ = _loc4_ + uint(_loc2_[3]) * 60;
         _loc4_ = _loc4_ + Number(_loc2_[4]);
         return _loc4_;
      }
      
      flvplayback_internal function checkForIllegalNodes(param1:XML, param2:String, param3:Array) : void
      {
         var _loc4_:* = null;
         var _loc5_:Boolean = false;
         var _loc6_:XML = null;
         var _loc7_:String = null;
         var _loc8_:* = null;
         default xml namespace = this.xml.namespace();
         while(true)
         {
            for(_loc4_ in param1.*)
            {
               _loc5_ = false;
               _loc6_ = param1.*[_loc4_];
               if(_loc6_.nodeKind() == param2)
               {
                  _loc7_ = _loc6_.localName();
                  for(_loc8_ in param3)
                  {
                     if(param3[_loc8_] == _loc7_)
                     {
                        _loc5_ = true;
                        break;
                     }
                  }
                  if(!_loc5_)
                  {
                     break;
                  }
               }
            }
            return;
         }
         throw new VideoError(VideoError.INVALID_XML,"URL: \"" + this._url + "\" " + param2 + " " + _loc7_ + " not supported in " + param1.localName() + " tag.");
      }
   }
}

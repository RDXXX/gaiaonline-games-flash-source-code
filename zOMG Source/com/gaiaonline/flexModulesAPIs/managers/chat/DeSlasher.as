package com.gaiaonline.flexModulesAPIs.managers.chat
{
   import com.adobe.utils.StringUtil;
   
   public class DeSlasher
   {
      
      public static const SERVER:String = "server";
      
      public static const INVITE:String = "invite";
      
      public static const LOCAL:String = "local";
      
      public static const SLASH_ADMIN:String = "/admin";
      
      public static const WHISPER_PREFIX:String = "/w ";
      
      private static const s_replyPrefix:String = "/r ";
      
      public static const GUILD:String = "guild";
      
      public static const BROADCAST:String = "broadcast";
      
      public static const WHISPER:String = "whisper";
      
      public static const CREW:String = "crew";
      
      private static var s_mapPrefixToChannel:Object = null;
      
      private static const s_prefixData:Array = [{
         "prefix":WHISPER_PREFIX,
         "channel":WHISPER
      },{
         "prefix":"/t ",
         "channel":LOCAL
      },{
         "prefix":"/s ",
         "channel":BROADCAST
      },{
         "prefix":"/c ",
         "channel":CREW
      },{
         "prefix":"/cl ",
         "channel":GUILD
      },{
         "prefix":"/sys ",
         "channel":SERVER
      },{
         "prefix":s_replyPrefix,
         "channel":WHISPER
      },{
         "prefix":"/stuck",
         "channel":STUCK
      },{
         "prefix":"/invite ",
         "channel":INVITE
      },{
         "prefix":SLASH_ME,
         "channel":SLASH_ME
      },{
         "prefix":SLASH_ADMIN,
         "channel":SLASH_ADMIN
      }];
      
      private static var s_regExp:RegExp = null;
      
      public static const SLASH_ME:String = "/me";
      
      public static const STUCK:String = "stuck";
      
      public static const NONE:String = "NONE";
       
      
      private var _channel:String = "NONE";
      
      private var _deSlashedText:String = null;
      
      private var _reply:Boolean = false;
      
      private var _rawText:String = null;
      
      private var _recipient:String = null;
      
      public function DeSlasher(text:String)
      {
         var usernameAndText:String = null;
         var gaiaNameEndIndex:int = 0;
         super();
         _rawText = text;
         _deSlashedText = text;
         var parsed:Object = parse(text);
         if(parsed)
         {
            _channel = parsed.channel;
            _deSlashedText = parsed.remaining;
            if(parsed.prefix == s_replyPrefix)
            {
               _recipient = "";
               _reply = true;
            }
            else if(_channel == WHISPER)
            {
               usernameAndText = StringUtil.ltrim(parsed.remaining);
               if(usernameAndText.length)
               {
                  gaiaNameEndIndex = usernameAndText.indexOf(" ");
                  if(gaiaNameEndIndex == -1)
                  {
                     _recipient = usernameAndText;
                     _deSlashedText = "";
                  }
                  else
                  {
                     _recipient = usernameAndText.substring(0,gaiaNameEndIndex);
                     _deSlashedText = usernameAndText.substring(gaiaNameEndIndex + 1);
                  }
               }
               else
               {
                  _channel = NONE;
                  _deSlashedText = text;
               }
            }
         }
      }
      
      public static function init() : void
      {
         var prefixDatum:Object = null;
         var prefixes:Array = null;
         var key:* = null;
         if(!s_mapPrefixToChannel)
         {
            s_mapPrefixToChannel = {};
            for each(prefixDatum in s_prefixData)
            {
               s_mapPrefixToChannel[prefixDatum.prefix] = prefixDatum.channel;
            }
            prefixes = new Array();
            for(key in s_mapPrefixToChannel)
            {
               prefixes.push("^\\" + key);
            }
            s_regExp = new RegExp(prefixes.join("|"),"i");
         }
      }
      
      private static function parse(text:String) : Object
      {
         var prefix:String = null;
         init();
         var retval:Object = null;
         var trimmed:String = StringUtil.ltrim(text);
         var parsePrefix:Array = trimmed.match(s_regExp);
         if(parsePrefix && parsePrefix.length > 0)
         {
            prefix = parsePrefix[0];
            retval = {
               "prefix":prefix,
               "channel":s_mapPrefixToChannel[prefix],
               "remaining":trimmed.substr(prefix.length)
            };
         }
         return retval;
      }
      
      public function get channel() : String
      {
         return _channel;
      }
      
      public function get reply() : Boolean
      {
         return _reply;
      }
      
      public function get deSlashedText() : String
      {
         return _deSlashedText;
      }
      
      public function get rawText() : String
      {
         return _rawText;
      }
      
      public function get recipient() : String
      {
         return _recipient;
      }
   }
}

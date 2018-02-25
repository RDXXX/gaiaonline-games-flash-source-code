package com.gaiaonline.battle
{
   import com.gaiaonline.battle.ui.UiManager;
   import com.gaiaonline.battle.ui.uiactionbar.UiItemBarRotator;
   import flash.events.Event;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   
   public class GlobalTexts
   {
      
      public static const BACKALLEYBARGAINS_LINK:String = "BackAlleyBargains";
      
      private static var npcOFRTxt:Object = new Object();
       
      
      public function GlobalTexts()
      {
         super();
      }
      
      public static function getLockedRingSlotText() : String
      {
         return "This ring is locked until you recover from being Dazed.";
      }
      
      public static function getShowBarTooltip(barName:String, show:Boolean) : String
      {
         var prefix:String = !!show?"Show the ":"Hide the ";
         var suffix:String = barName == UiItemBarRotator.CONSUMABLE_BAR?"PowerUps Tray":"Ring Tray";
         return prefix + suffix;
      }
      
      public static function get serverListNoServer() : String
      {
         var s:String = "<p>Please select a server from the list.</p>" + "<a href =\'event:close\'>OK</a>";
         return s;
      }
      
      public static function getPowerUpPurchasedCenterPrint() : String
      {
         return "You bought a new PowerUp!";
      }
      
      public static function getYoureDazeYouCantDoThatCenterPrint() : String
      {
         return "You\'re Dazed! You can\'t do that!";
      }
      
      public static function getNoActiveQuestItemsText() : String
      {
         return "You have no Active Tasks";
      }
      
      public static function get pylonHelp() : String
      {
         var s:String = "<p>This is the text that explains the pylon and what they do. How to use them to change instances.</p>";
         return s;
      }
      
      public static function get serverListLock() : String
      {
         var s:String = "<p>This server is full. Please select another.</p>" + "<a href =\'event:close\'>OK</a>";
         return s;
      }
      
      public static function getNewRingCenterPrint(ringName:String) : String
      {
         return "You found a new " + ringName + " ring!";
      }
      
      public static function init(baseUrl:String) : void
      {
         var l:URLLoader = new URLLoader();
         l.dataFormat = URLLoaderDataFormat.TEXT;
         l.addEventListener(Event.COMPLETE,onNpcTextLoaded);
         l.load(new URLRequest(baseUrl + "npctext.xml"));
      }
      
      public static function getYouAreTooFarCenterPrint() : String
      {
         return "You are too far away to do that";
      }
      
      public static function getNpcOutOfRangeText(npc:String) : String
      {
         var list:Array = null;
         if(npcOFRTxt[npc] != null)
         {
            list = npcOFRTxt[npc];
         }
         else if(npcOFRTxt["Generic"] != null)
         {
            list = npcOFRTxt["Generic"];
         }
         else
         {
            list = new Array("What\'s that? I can\'t hear you way over there!");
         }
         var r:int = Math.round(Math.random() * (list.length - 1));
         var txt:String = list[r];
         return txt;
      }
      
      public static function getNoRingsText() : String
      {
         return "You have no rings.";
      }
      
      public static function getRecipeFoundCenterPrint(recipeName:String) : String
      {
         return "You just found the " + recipeName + "!";
      }
      
      public static function getRestrictedKeyText() : String
      {
         var s:String = "<br/><br/><p>This key is a reserved key.  Please choose other one.</p><br/><p align=\'right\'><a href =\'event:OKAY\'>OK</a>";
         return s;
      }
      
      public static function getKeyAlreadyAssigned() : String
      {
         var s:String = "<h1><b>THIS KEY IS ALREADY ASSIGNED TO A DIFFERENT COMMAND!</b></h1><br/><p>If you want to remove this key from its previous assignment and reassign it now, press OK.</p><br/><p align=\'right\'><a href =\'event:OKAY\'>OK</a>&nbsp;&nbsp;&nbsp;<a href =\'event:cancel\'>Cancel</a></p>";
         return s;
      }
      
      public static function getPowerUpFoundCenterPrint() : String
      {
         return "You found a new PowerUp!";
      }
      
      public static function get ringAtMaxLevel() : String
      {
         var s:String = "<h1><b>Warning</b></h1><p>You have reached the max level for this ring and can no longer upgrade it.</p>";
         return s;
      }
      
      public static function getNoPowerUpsHtmlText() : String
      {
         return "PowerUps are available for purchase at the <a href =\'event:" + BACKALLEYBARGAINS_LINK + "\'><u>Back Alley Bargains</u></a> store.";
      }
      
      public static function getQuestUpdateFoundCenterPrint(str:String) : String
      {
         return str;
      }
      
      public static function get serverListHelpText() : String
      {
         var s:String = "<h1><b><font face=\'Arial\' size=\'14\'>World List Help</font></b></h1><font face=\'Arial\' size =\'12\'>This is the list of game worlds for the game. You can play on any of them at any time.<p></p><p></p>There are ways to sort the list to find the perfect server for you:<p></p><p></p>* Click the \"POPULATION\" header to sort the list from most populated to least populated.<p></p>* Click the \"FRIENDS\" header to bring any server with a friend playing on it to the top of the list.<p></p>* Click the \"SERVER NAME\" to sort the world lists alphabetically.<p></p><p></p>The last server you played on will be highlighted when you first come here so that you can easily remember which world you entered last time." + "<br><p align=\'right\'><a href =\'event:close\'>OK</a></p>";
         return s;
      }
      
      public static function getFriendRequestAccepted(userName:String) : String
      {
         var s:String = "<br><p>" + userName + " is now your friend</p>" + "<a href =\'event:close\'>OK</a>";
         return s;
      }
      
      private static function onNpcTextLoaded(evt:Event) : void
      {
         var xml:XML = null;
         var npc:XML = null;
         var txt:XML = null;
         npcOFRTxt = new Object();
         try
         {
            xml = new XML(evt.target.data);
            for each(npc in xml.OutOfRange.npc)
            {
               npcOFRTxt[npc.@NpcName] = new Array();
               for each(txt in npc..txt)
               {
                  npcOFRTxt[npc.@NpcName].push(txt);
               }
            }
         }
         catch(e:TypeError)
         {
            trace("error parsing npc XML: " + e.message);
         }
         URLLoader(evt.target).removeEventListener(Event.COMPLETE,onNpcTextLoaded);
      }
      
      public static function get salvageWarning() : String
      {
         var s:String = "<h1><b>Warning</b></h1><br/><p>Are you sure? This ring will be destroyed if you continue.</p><br/><p align=\'right\'><a href =\'event:OKAY\'>OK</a>&nbsp;&nbsp;&nbsp;<a href =\'event:close\'>CLOSE</a></p>";
         return s;
      }
      
      public static function getHudCLTooltip(capped:Boolean) : String
      {
         var baseString:* = "Overall CL";
         if(capped)
         {
            baseString = baseString + " (Capped)";
         }
         return baseString;
      }
      
      public static function getNoRecipesText() : String
      {
         return "You have no recipes.";
      }
      
      public static function getRingUpgradeBroadcastMessage(ringName:String, cl:Number) : String
      {
         return "/me has upgraded a " + ringName + " ring up to CL " + UiManager.formatConLevel(cl) + "!";
      }
      
      public static function getNoGhiText() : String
      {
         return "You have not yet earned any Ghi abilities.";
      }
      
      public static function getNoCompletedQuestItemsText() : String
      {
         return "You have no Completed Tasks";
      }
   }
}

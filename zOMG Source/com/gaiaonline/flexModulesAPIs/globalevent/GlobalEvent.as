package com.gaiaonline.flexModulesAPIs.globalevent
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class GlobalEvent extends Event
   {
      
      public static const GLOBAL_FLAGS_LOADED:String = "GlobalsFlagsLoaded";
      
      public static const GSI_ERROR:String = "GSI_ERROR";
      
      public static const GST_UPDATE:String = "gstUpdate";
      
      public static const SET_BACK_ALLEY_BARGAINS_SHOW_STATE:String = "setBackAlleyBargainsShowState";
      
      public static const FPS_MONITORING_STATE_CHANGED:String = "fpsMonitoringStateChanged";
      
      public static const CMD_DIALOG:String = "dialog";
      
      public static const STOP_CHARGING:String = "stopCharging";
      
      public static const WORLD_COUNTER:String = "worldCounter";
      
      public static const ACTOR_ATTACKED:String = "actorAttached";
      
      public static const MAP_SOUND_SETAUTOPLAY:String = "mapSoundSetAutoPlay";
      
      public static const WORLD_BROADCAST:String = "worldBroadcast";
      
      public static const BACK_ALLEY_BARGAINS_SHOW_CHANGED:String = "babShowChanged";
      
      public static const CHAT_SEND:String = "chatSend";
      
      public static const PROFILE_REQUESTED:String = "profileRequested";
      
      public static const DIALOG_DONE:String = "dialogDone";
      
      public static const WIDGET_SHOW:String = "widgetShow";
      
      public static const CREW_LIST_CHANGED:String = "crewListChanged";
      
      public static const DIALOG_CLOSE:String = "dialogClose";
      
      public static const MAP_WARP_IN_TRANSITION_START:String = "mapWarpInTransitionStart";
      
      public static const WORLD_TIMER:String = "worldTimer";
      
      public static const GHI_BUFFS_LOADED:String = "ghiBuffsLoaded";
      
      public static const MAP_REMOVE_GROUND_RING_EFFECT:String = "mapRemoveGroundRingEffect";
      
      public static const INVITE_FAILED:String = "inviteFailed";
      
      public static const MAP_SOUND_STOP:String = "mapSoundStop";
      
      public static const CREW_LIST_TOGGLE:String = "crewListToggle";
      
      public static const MAP_MOUSE_UP:String = "Map_Mouse_Up";
      
      public static const MAP_LOAD_ZONE:String = "mapLoadZone";
      
      public static const LOOT_PARTICLE_FINISHED:String = "lootParticleFinished";
      
      public static const MAP_MOUSE_MOVE:String = "Map_Mouse_Move";
      
      public static const ALLOW_USER_MOVE:String = "AllowUserMove";
      
      public static const MAP_REMOVE_PROJECTILE:String = "mapRemoveProjectile";
      
      public static const PLAY_MOVIE:String = "playMovie";
      
      public static const ALLOW_AREA_RINGS_ONLY:String = "AllowAreaRingsOnly";
      
      public static const ACTOR_ID_CHANGED:String = "actorIdChanged";
      
      public static const CHAT_PANE_CHANGED:String = "chatChanged";
      
      public static const MAP_CLEAR_PROJECTILES:String = "mapClearProjectiles";
      
      public static const QUESTS_LOADED:String = "questsLoaded";
      
      public static const CONSUMABLE_SELECTION_CHANGE:String = "consumableSelectionChange";
      
      public static const PLAYER_INFO_LOADED:String = "playerInfoLoaded";
      
      public static const NEW_ROOM_ENTERED:String = "newRoomEntered";
      
      public static const ACTOR_INFO_SET:String = "ActorInfoSet";
      
      public static const PLAYER_STATS_REQUESTED:String = "playerStatsRequested";
      
      public static const RING_AUTO_FIRE_UP:String = "RingAutoFireUp";
      
      public static const DIALOG_OPEN_STATUS_CHANGED:String = "dialogOpenStatusChanged";
      
      public static const MAP_LOADED:String = "MapLoaded";
      
      public static const RING_AUTO_FIRE_DOWN:String = "RingAutoFireDown";
      
      public static const INVITE_TO_TEAM:String = "inviteToTeam";
      
      public static const GST_SET:String = "GlobalEvent_gstSet";
      
      public static const CL_CAP_CHANGE:String = "clCapChange";
      
      public static const GRAPHIC_OPTIONS_CHANGED:String = "graphicOptionsChanged";
      
      public static const ALLOW_USABLE_USE:String = "AllowUsableUse";
      
      public static const OPEN_ADMIN_PANEL:String = "OpenAdminPanel";
      
      public static const SHOW_WORLD_LIST_FOOTER:String = "showWorldListFooter";
      
      public static const UI_MANAGER_EXISTS:String = "UiManagerExists";
      
      public static const MAP_DEPENDENCIES_LOAD_START:String = "mapDependenciesLoadStart";
      
      public static const PLAYER_STATUS_CHANGED:String = "playerStatusChanged";
      
      public static const CUSTOMIZE_AVATAR_REQUESTED:String = "customizeAvatarRequested";
      
      public static const MAP_SERVER_ZONE_PROGRESS:String = "MapServerZoneProgress";
      
      public static const MAP_ADD_DIALOG_BUTTON:String = "mapAddDialogButton";
      
      public static const CHAT_MESSAGE_READY:String = "chatMessageReady";
      
      public static const MAP_LOAD_START:String = "mapLoadStart";
      
      public static const PRE_WORLD_LIST:String = "preWorldList";
      
      public static const SHOW_INTRO:String = "showIntro";
      
      public static const PLAYER_LOCKED_SLOTS_CHANGED:String = "playerLockedSlotsChanged";
      
      public static const MOUSE_OVER_STATE_CHANGED:String = "mapOverStateChanged";
      
      public static const CHAT_MINI_MESSAGE_END:String = "chatMiniMessageEnd";
      
      public static const MAP_SET_DIALOG_BUTTON_VISIBLE:String = "mapSetDialogButtonVisible";
      
      public static const DIALOG_DATA_UPDATED:String = "dialogDataUpdated";
      
      public static const DISABLE_DIALOG:String = "disableDialog";
      
      public static const SHOW_SPAWN_STATE_CHANGED:String = "showSpawnStateChanged";
      
      public static const CHAT_PANE_OPEN:String = "chatOpen";
      
      public static const MAP_DONE:String = "mapDone";
      
      public static const MAP_ADD_GROUND_RING_EFFECT:String = "mapAddGroundRingEffect";
      
      public static const MONSTER_PRELOAD_DONE:String = "MonsterPreloadDone";
      
      public static const NEW_CONSUMABLE:String = "consumableGranted";
      
      public static const HACK_EVENT_PRE_ACTOR_UPDATE:String = "hackEventPreActorUpdate";
      
      public static const MAP_GST_TINT_UPDATE:String = "mapTintUpdate";
      
      public static const ENVIRONMENT_OFFSET_CHANGED:String = "environmentOffsetChanged";
      
      public static const CL_CAP_CLOSE:String = "clCapClose";
      
      public static const TEAM_UPDATED:String = "teamUpdated";
      
      public static const ON_LOGGED_IN:String = "onLoggedIn";
      
      public static const GCASH_UPDATE:String = "GCashUpdate";
      
      public static const MAP_INIT_PROGRESS:String = "MapInitProgress";
      
      public static const LINK_CLICKED:String = "linkCLicked";
      
      public static const PLAYER_CON_LEVEL_UPDATED:String = "playerConLevelUpdate";
      
      public static const KEY_BINDING_CHANGE:String = "keyBindingChange";
      
      public static const ACTOR_MOUSE_DOWN:String = "ActorMouseDown";
      
      public static const ABUSE_REPORT_FAILED:String = "abuseReportFAILED";
      
      public static const WORLD_TIMER_UPDATE:String = "worldTimerUpdate";
      
      public static const FRIENDS_UPDATE:String = "FriendsUpdate";
      
      public static const MAP_REMOVE_POINT_RING_EFFECT:String = "mapRemovePointRingEffect";
      
      public static const REPORT_ABUSE:String = "reportAbuse";
      
      public static const KEY_BINDINGS_LOADED:String = "keyBindingsLoaded";
      
      public static const GENERIC_ERR_MSG:String = "genericError";
      
      public static const EMOTES_LOADED:String = "emotesLoaded";
      
      public static const GENERIC_WORLD_EVENT:String = "genericWorldEvent";
      
      public static const VIDEO_DONE:String = "VideoDone";
      
      public static const DS_GAIA_SERVICE_DONE:String = "dsGaiaServiceDone";
      
      public static const CONSUMABLE_USED:String = "consumableUsed";
      
      public static const ON_PLAYER_INFO:String = "onPlayerInfo";
      
      public static var eventDispatcher:EventDispatcher = new EventDispatcher();
      
      public static const TRACKING_EVENT:String = "TrackingEvent";
      
      public static const WORLD_COUNTER_UPDATE:String = "worldCounterUpdate";
      
      public static const CONVERSATION_END:String = "converationEnd";
      
      public static const CREW_LIST_SELECTION_CHANGE:String = "crewListSelectionChange";
      
      public static const CHATTABLE_MSG:String = "chattableMsg";
      
      public static const PDA_TOGGLE:String = "PDAToggle";
      
      public static const WORD_FILTER_READY:String = "wordFilterReady";
      
      public static const MAP_ROOM_LEAVE:String = "roomLeave";
      
      public static const MAP_ADD_LOOT_PARTICLES:String = "mapAddLootParticles";
      
      public static const INVALID_GUEST_OPERATION:String = "invalidGuestOperation";
      
      public static const GATEWAY_INITIALIZED:String = "gatewayInitialized";
      
      public static const TRACKING_PREFIX_EVENT:String = "TrackingPrefixEvent";
      
      public static const CHAT_VIEW_FILTERS_CHANGED:String = "chatViewFiltersChanged";
      
      public static const POSE_CHANGE:String = "pose";
      
      public static const MAP_MOUSE_DOWN:String = "Map_Mouse_Down";
      
      public static const CHAT_MINI_MESSAGE_CREATED:String = "chatMiniMessageCreated";
      
      public static const INVENTORY_UPDATE:String = "inventoryUpdate";
      
      public static const USER_SETTINGS_LOADED:String = "userSettingsLoaded";
      
      public static const ALLOW_RING_USE:String = "AllowRingUse";
      
      public static const MAP_ADD_POINT_RING_EFFECT:String = "mapAddPointRingEffect";
      
      public static const CAST_RING:String = "castRing";
      
      public static const ALERT:String = "alertEvent";
      
      public static const MAP_LOADPROGRESS:String = "MapLoadProgress";
      
      public static const GST_LOADED:String = "gstLoaded";
      
      public static const ON_LOGGED_IN_DONE:String = "onLoggedInDone";
      
      public static const SET_STAGE_QUALITY:String = "setStageQuality";
      
      public static const ABUSE_REPORTED:String = "abuseReported";
      
      public static const MOVIE_DONE:String = "movieDone";
      
      public static const KEY_CONTROL_TAB_ACTIVE:String = "keyControlTabActive";
      
      public static const MOVE_DIR_CHANGED:String = "moveDirChanged";
      
      public static const RING_MAX_LEVEL_UPDATE:String = "ringMaxLevelUpdate";
      
      public static const ACTOR_ASSETS_LOADED:String = "actorAssetsLoaded";
      
      public static const ACTOR_INFO_OPEN:String = "ActorInfoOpen";
      
      public static const MAX_RING_CL_CHANGE:String = "maxRingCLChange";
      
      public static const ALLOW_SIT_STAND:String = "allowSitStand";
      
      public static const LOGIN_DEPENDANT_DATA_LOADED:String = "loginDependantDataLoaded";
      
      public static const MAP_SOUND_PLAY:String = "mapSoundPlay";
      
      public static const TIME_TILL_ORB_SWAP:String = "TimeTillOrbSwap";
      
      public static const TUTORIAL_CLOSED:String = "tutorialClosed";
      
      public static const LOOT_PARTICLE_ANIM_DONE:String = "lootParticleAnimDone";
      
      public static const USER_LEVEL_SET:String = "userLevelSet";
      
      public static const ABUSE_REPORT_START:String = "abuseReportStart";
      
      public static const PLAYER_INFO_RECEIVED:String = "playerInfoReceived";
      
      public static const CREATE_BATTLE:String = "createBattle";
      
      public static const GOLD_LOOT_GRANTED:String = "goldLootGranted";
      
      public static const MAP_REMOVE_TEXT:String = "mapRemoveText";
      
      public static const QUEST_ALERT:String = "questAlert";
      
      public static const CHAT_PANE_CLOSE:String = "chatClose";
      
      public static const RING_KEY_UP:String = "RingKeyUp";
      
      public static const LAYERS_INITIALIZED:String = "layersInitialized";
      
      public static const PLAYER_CREATED:String = "playerCreated";
      
      public static const CMD_UILISTENER:String = "uiListener";
      
      public static const ALLOW_CONSUMABLE_USE:String = "AllowConsumableUse";
      
      public static const KEY_BINDING_CHANGE_CANCEL:String = "keyBindingChangeCancel";
      
      public static const MAP_SLIDE_START:String = "mapRoomSlide";
      
      public static const LEFT_TEAM:String = "leftTeam";
      
      public static const TEXT_BASED_UI_COMMAND:String = "textBasedUICommand";
      
      public static const GOLD_UPDATE:String = "goldUpdate";
      
      public static const MAP_SLIDE_COMPLETE:String = "mapSlideDone";
      
      public static const MAP_SET_LIGHTS:String = "mapSetLights";
      
      public static const MAP_WARP_WITHIN_ROOM:String = "mapWarpWithinRoom";
      
      public static const MAP_SOUND_LOAD_START:String = "mapSoundLoadStart";
      
      public static const CHAT_PANE_TOGGLE:String = "chatToggle";
      
      public static const MAP_START_LOAD:String = "MapStartLoad";
      
      public static const TARGET_ACTOR:String = "targetActor";
      
      public static const RING_UPDATE_DONE:String = "ringUpdateDone";
      
      public static const CLEAR_SELECTED_TARGET:String = "clearSelected";
      
      public static const OPTION_PANEL_OPEN_STATE_CHANGE:String = "optionPanelOpenStateChange";
      
      public static const MAP_REMOVE_DIALOG:String = "mapRemoveDialog";
      
      public static const CLAN_MEMBERSHIP_UPDATE:String = "clanMembershipUpdate";
      
      public static const LOAD_INTRO:String = "loadIntro";
      
      public static const VERSION_INITIALIZED:String = "versionInitialized";
      
      public static const REFRESH_PAGE:String = "refreshPage";
      
      public static const RING_UPDATE:String = "ringUpdate";
      
      public static const INSTANCE_CHANGED_FOR_ACTOR:String = "instanceChangedForActor";
      
      public static const MAP_WARP_OUT_TRANSITION_COMPLETE:String = "mapWarpOutTransitionComplete";
      
      public static const DEFAULT_KEY_BINDINGS_LOADED:String = "defaultKeyBindingsLoaded";
      
      public static const ACTOR_INFO_CLOSE:String = "ActorInfoClose";
      
      public static const KEY_BINDINGS_FETCHED_FROM_SERVER:String = "keyBindingsFetchedFromServer";
      
      public static const ALLOW_RING_SELECTABILITY:String = "AllowRingSelectability";
      
      public static const ACTOR_MOUSE_UP:String = "ActorMouseUp";
      
      public static const END_INTRO:String = "endIntro";
      
      public static const MAP_ADD_PROJECTILE:String = "mapAddProjectile";
      
      public static const OPEN_RECREWT:String = "openRecrewt";
      
      public static const CL_CAP_OPEN:String = "clCapOpen";
      
      public static const GIM_ENABLED_CHANGE:String = "gimEnabled";
      
      public static const RING_KEY_DOWN:String = "RingKeyDown";
      
      public static const ACTOR_SELECTED:String = "actorSelected";
      
      public static const START_CHARGING:String = "startCharging";
      
      public static const IN_CREW_STATE_UPDATE:String = "inCrewStateUpdate";
      
      public static const COLLECTIBLES_LOADED:String = "collectiblesLoaded";
      
      public static const MAP_WARP_IN_TRANSITION_COMPLETE:String = "mapWarpInTransitionComplete";
      
      public static const MUSIC_PLAYER_STATE_CHANGED:String = "musicPlayerStateChange";
      
      public static const WORLD_LIST_CREATED:String = "worldListCreated";
      
      public static const MAP_WARP_OUT_TRANSITION_START:String = "mapWarpOutTransitionStart";
      
      public static const MAP_UPDATE_TINTS:String = "mapUpdateTints";
      
      public static const MAP_ADD_TEXT:String = "mapAddText";
      
      public static const MAP_SET_MOUSE_ENABLED:String = "mapSetMouseEnabled";
      
      public static const SUPPRESSED_CL_CHANGE:String = "suppressedCLChange";
      
      public static const DEPENDANT_DATA_LOADED:String = "dependantDataLoaded";
      
      public static const WHISPER_AUTOFILL:String = "whisperAutofill";
      
      public static const LOGIN_NOT_DEPENDANT_DATA_LOADED:String = "loginNotDependantDataLoaded";
      
      public static const MAP_SET_MOUSE_CHILDREN:String = "mapSetMouseChildren";
       
      
      private var _data:Object;
      
      private var _command:String;
      
      public function GlobalEvent(type:String, data:Object, cmd:String = null, bubbles:Boolean = false, cancelable:Boolean = false)
      {
         super(type,bubbles,cancelable);
         this._data = data;
         this._command = cmd;
      }
      
      public function get data() : Object
      {
         return _data;
      }
      
      public function get command() : String
      {
         return _command;
      }
   }
}

package com.gaiaonline.battle.newrings
{
   import com.gaiaonline.battle.ItemLoadManager.IItemLoader;
   import com.gaiaonline.flexModulesAPIs.globalevent.GlobalEvent;
   import com.gaiaonline.utils.DisplayObjectUtils;
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   
   public class Ring extends EventDispatcher implements IItemLoader
   {
      
      public static var LOADED:String = "RingLoaded";
       
      
      private var _ringLoader:RingLoader;
      
      public var name:String = "";
      
      private var _selectedActorId:String = null;
      
      public var animUrl:String;
      
      public var stats:Array;
      
      public var exhaustion:Number = 0;
      
      public var mcProjectile:MovieClip;
      
      public var isIconLoaded:Boolean = false;
      
      public var isFullRing:Boolean = false;
      
      public var chargeLevel:Number = 1;
      
      public var isProjectile:Boolean = false;
      
      public var iconUrl:String;
      
      private var _isPointTarget:Boolean = false;
      
      public var itemThumbNail:String = null;
      
      public var type:int = 0;
      
      public var isAnimLoaded:Boolean = false;
      
      public var mcAnimRef:Sprite;
      
      public var rage:Object;
      
      private var _allowAreaRingsOnly:Boolean = false;
      
      public var projectileSpeed:Number = 0;
      
      public var isLoadingAnim:Boolean = false;
      
      public var bmIcon:Bitmap;
      
      public var targetType:int = 0;
      
      private var _notEnabledSoundPlayed:Boolean = false;
      
      public var timeUsedAtLoadTime:Number = 0;
      
      public var ringId:String;
      
      public var description:String = "";
      
      public function Ring(ringId:String, mcRef:Sprite = null)
      {
         rage = new Object();
         stats = new Array();
         super();
         this.ringId = ringId;
         if(mcRef != null)
         {
            if(this.mcAnimRef != null)
            {
               DisplayObjectUtils.ClearAllChildrens(this.mcAnimRef);
            }
            this.mcAnimRef = mcRef;
            this.isAnimLoaded = true;
         }
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.ACTOR_SELECTED,onActorSelected);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.ALLOW_AREA_RINGS_ONLY,onAllowAreaRingsOnly);
      }
      
      public function get loaded() : Boolean
      {
         return this.isIconLoaded;
      }
      
      private function onActorSelected(e:GlobalEvent) : void
      {
         this._selectedActorId = e.data.actorId;
      }
      
      public function get itemName() : String
      {
         return this.name;
      }
      
      public function usesTargets() : Boolean
      {
         var hasRange:* = 0 != this.range;
         return hasRange;
      }
      
      private function onKeyUp(e:KeyboardEvent) : void
      {
         e.target.stage.removeEventListener(KeyboardEvent.KEY_UP,onKeyUp);
         this._notEnabledSoundPlayed = false;
      }
      
      public function get range() : Number
      {
         var r:Number = 0;
         if(this.rage != null && this.rage[0] != null && this.rage[0].range != null)
         {
            r = this.rage[0].range;
         }
         return r;
      }
      
      public function get isPointTarget() : Boolean
      {
         return _isPointTarget && this.range != 0;
      }
      
      public function get onlyAllowAreaRings() : Boolean
      {
         return _allowAreaRingsOnly;
      }
      
      public function getNewRingIcon() : RingIcon
      {
         var rIco:RingIcon = new RingIcon(this.bmIcon);
         rIco.ringId = this.ringId;
         return rIco;
      }
      
      public function getNewItemDisplay() : DisplayObject
      {
         var bm:Bitmap = new Bitmap(this.bmIcon.bitmapData);
         return bm;
      }
      
      public function get itemDescription() : String
      {
         return this.description;
      }
      
      public function maintainLoaderReference(rl:RingLoader) : void
      {
         _ringLoader = rl;
      }
      
      public function set isPointTarget(ipt:Boolean) : void
      {
         _isPointTarget = ipt;
      }
      
      private function onAllowAreaRingsOnly(e:GlobalEvent) : void
      {
         _allowAreaRingsOnly = e.data;
      }
   }
}

package com.gaiaonline.battle.ItemLoadManager
{
   import com.gaiaonline.battle.ItemManager.ItemManagerEvent;
   import com.gaiaonline.battle.StepLoader;
   import com.gaiaonline.battle.gateway.BattleGateway;
   import com.gaiaonline.battle.gateway.BattleMessage;
   import com.gaiaonline.objectPool.LoaderFactory;
   import com.gaiaonline.utils.factories.ILoaderContextFactory;
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.display.Loader;
   import flash.display.LoaderInfo;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.net.URLRequest;
   
   public class ConsumableLoader extends EventDispatcher implements IItemLoader
   {
       
      
      private var _itemCanCure:Boolean = false;
      
      public var timeTotalAtLoadTime:Number = 0;
      
      private var _gateway:BattleGateway = null;
      
      public var itemId:String;
      
      private var _itemName:String;
      
      private var _itemDesc:String = "no description available";
      
      private var _itemClass:String;
      
      private var _loaderContextFactory:ILoaderContextFactory = null;
      
      public var timeUsedAtLoadTime:Number = 0;
      
      private var _bm:Bitmap;
      
      private var _itemUsableWhileDazed:Boolean = false;
      
      private var _iconUrl:String;
      
      private var _itemRecharge:int = 0;
      
      private var _iconLoaded:Boolean = false;
      
      public function ConsumableLoader(itemId:String, gateway:BattleGateway, loaderContextFactory:ILoaderContextFactory)
      {
         super();
         this._gateway = gateway;
         this._loaderContextFactory = loaderContextFactory;
         this.itemId = itemId;
      }
      
      public function get itemCanCure() : Boolean
      {
         return this._itemCanCure;
      }
      
      public function get itemUsableWhenDazed() : Boolean
      {
         return this._itemUsableWhileDazed;
      }
      
      public function get itemName() : String
      {
         return this._itemName;
      }
      
      public function get rechargeTime() : int
      {
         return this._itemRecharge;
      }
      
      private function onIconLoaded(evt:Event) : void
      {
         this._bm = LoaderInfo(evt.target).content as Bitmap;
         this._iconLoaded = true;
         this.dispatchEvent(new ItemLoadEvent(ItemLoadEvent.ITEM_LOADED));
         LoaderInfo(evt.target).loader.contentLoaderInfo.removeEventListener(Event.COMPLETE,onIconLoaded);
         LoaderFactory.getInstance().checkIn(LoaderInfo(evt.target).loader);
      }
      
      public function getNewItemDisplay() : DisplayObject
      {
         var bm:Bitmap = null;
         if(this._bm != null)
         {
            bm = new Bitmap(this._bm.bitmapData);
         }
         return bm;
      }
      
      public function get loaded() : Boolean
      {
         return this._iconLoaded;
      }
      
      public function get itemDescription() : String
      {
         return this._itemDesc;
      }
      
      public function load() : void
      {
         var msg:BattleMessage = new BattleMessage("getConsumableInfo",{"id":this.itemId});
         this._gateway.sendMsg(msg);
      }
      
      public function setInfo(obj:Object, baseUrl:String) : void
      {
         var l:Loader = null;
         this._itemName = obj.name;
         this._itemClass = obj.itemClass;
         this._itemRecharge = obj.itemRecharge;
         this.timeUsedAtLoadTime = obj.itemRechargedSoFar;
         this.timeTotalAtLoadTime = obj.itemRechargedCategory;
         if(obj.itemUsableWhileDazed != null)
         {
            this._itemUsableWhileDazed = obj.itemUsableWhileDazed;
         }
         if(obj.canCure != null)
         {
            this._itemCanCure = obj.canCure;
         }
         if(obj.description != null)
         {
            this._itemDesc = obj.description;
         }
         if(!this._iconLoaded || obj.itemThumbFile != this._iconUrl)
         {
            this._iconLoaded = false;
            this._iconUrl = obj.itemThumbFile;
            l = LoaderFactory.getInstance().checkOut();
            l.contentLoaderInfo.addEventListener(Event.COMPLETE,onIconLoaded);
            StepLoader.add(l,new URLRequest(baseUrl + this._iconUrl),this._loaderContextFactory.getLoaderContext());
         }
         else
         {
            this.dispatchEvent(new ItemManagerEvent(ItemLoadEvent.ITEM_LOADED));
         }
      }
   }
}

package com.gaiaonline.battle.ui
{
   import com.gaiaonline.battle.ApplicationInterfaces.ILinkManager;
   import com.gaiaonline.battle.ApplicationInterfaces.IUIFramework;
   import com.gaiaonline.battle.ItemLoadManager.GameItemIconCustomization;
   import com.gaiaonline.battle.ItemLoadManager.ItemIcon;
   import com.gaiaonline.battle.ui.uiitemdisplay.ItemDisplay;
   import flash.display.MovieClip;
   
   public class UiGameItems extends MovieClip
   {
       
      
      private var items:Object;
      
      private var _uiFramework:IUIFramework = null;
      
      public var itemDisplay:ItemDisplay;
      
      private var _linkManager:ILinkManager = null;
      
      public function UiGameItems()
      {
         items = new Object();
         super();
      }
      
      public function containItem(itemId:String) : Boolean
      {
         return this.items[itemId] != null;
      }
      
      public function init(uiFramework:IUIFramework, linkManager:ILinkManager) : void
      {
         this._uiFramework = uiFramework;
         this._linkManager = linkManager;
         this.itemDisplay.init(this._uiFramework.assetFactory);
         this.itemDisplay.numColumn = 15;
         this.itemDisplay.extraRows = 0;
         this.itemDisplay.minimumRows = 7;
      }
      
      public function updateItems(itemArray:Array) : void
      {
         var i:int = 0;
         var itemId:String = null;
         var name:String = null;
         var url:String = null;
         var num:int = 0;
         var il:ItemLoader = null;
         var ic:ItemIcon = null;
         if(this._uiFramework.loadUserItems)
         {
            this.itemDisplay.clearAll();
            if(itemArray == null)
            {
               return;
            }
            for(i = 0; i < itemArray.length; i++)
            {
               itemId = itemArray[i].id;
               name = itemArray[i].name;
               url = this._linkManager.getLink("images") + itemArray[i].itemThumbFile;
               num = itemArray[i].count;
               if(this.items[itemArray[i].id] == null)
               {
                  il = new ItemLoader(this._uiFramework.loaderContextFactory,itemId,name,url);
                  this.items[itemArray[i].id] = {"itemLoader":il};
               }
               else
               {
                  il = this.items[itemArray[i].id].itemLoader;
               }
               ic = new ItemIcon(this._uiFramework,GameItemIconCustomization.getInstance(),itemId,i,il);
               ic.displayNum = true;
               ic.quantity = num;
               this.itemDisplay.addItemIcon(ic,i);
               this.items[itemArray[i].id].itemIcon = ic;
            }
         }
      }
      
      public function updateItemCount(itemId:String, offset:int) : void
      {
         var ic:ItemIcon = null;
         if(this.items[itemId] != null && this.items[itemId].itemIcon != null)
         {
            ic = this.items[itemId].itemIcon as ItemIcon;
            ic.quantity = ic.quantity + offset;
         }
      }
   }
}

import com.gaiaonline.battle.ItemLoadManager.IItemLoader;
import com.gaiaonline.battle.ItemLoadManager.ItemLoadEvent;
import com.gaiaonline.battle.StepLoader;
import com.gaiaonline.objectPool.LoaderFactory;
import com.gaiaonline.utils.factories.ILoaderContextFactory;
import flash.display.Bitmap;
import flash.display.DisplayObject;
import flash.display.Loader;
import flash.display.LoaderInfo;
import flash.events.Event;
import flash.events.EventDispatcher;
import flash.net.URLRequest;

class ItemLoader extends EventDispatcher implements IItemLoader
{
    
   
   private var _loaded:Boolean = false;
   
   private var _bm:Bitmap;
   
   private var _name:String;
   
   function ItemLoader(loaderContextFactory:ILoaderContextFactory, itemId:String, name:String, url:String)
   {
      super();
      this._name = name;
      var l:Loader = LoaderFactory.getInstance().checkOut();
      l.contentLoaderInfo.addEventListener(Event.COMPLETE,onIconLoaded);
      StepLoader.add(l,new URLRequest(url),loaderContextFactory.getLoaderContext());
   }
   
   public function get itemName() : String
   {
      return this._name;
   }
   
   public function get loaded() : Boolean
   {
      return this._loaded;
   }
   
   public function get itemDescription() : String
   {
      return this._name;
   }
   
   public function getNewItemDisplay() : DisplayObject
   {
      return this._bm;
   }
   
   private function onIconLoaded(evt:Event) : void
   {
      this._bm = LoaderInfo(evt.target).content as Bitmap;
      this._loaded = true;
      this.dispatchEvent(new ItemLoadEvent(ItemLoadEvent.ITEM_LOADED));
      LoaderInfo(evt.target).loader.contentLoaderInfo.removeEventListener(Event.COMPLETE,onIconLoaded);
      LoaderFactory.getInstance().checkIn(LoaderInfo(evt.target).loader);
   }
}

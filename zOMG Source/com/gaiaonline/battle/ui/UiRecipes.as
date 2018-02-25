package com.gaiaonline.battle.ui
{
   import com.gaiaonline.battle.ApplicationInterfaces.ILinkManager;
   import com.gaiaonline.battle.GlobalTexts;
   import com.gaiaonline.battle.gateway.BattleGateway;
   import com.gaiaonline.battle.newactors.BaseActor;
   import com.gaiaonline.battle.ui.UiItemsParts.RecipeItem;
   import com.gaiaonline.battle.ui.components.ScrollBarVer;
   import com.gaiaonline.flexModulesAPIs.globalevent.GlobalEvent;
   import com.gaiaonline.gsi.GSIEvent;
   import com.gaiaonline.utils.DisplayObjectUtils;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   
   public class UiRecipes extends MovieClip
   {
       
      
      private var _gateway:BattleGateway = null;
      
      private var recipeId:Number = -1;
      
      public var colBorder:MovieClip;
      
      public var scrRecipeList:ScrollBarVer;
      
      public var recipeContainer:MovieClip;
      
      private var _linkManager:ILinkManager = null;
      
      public var recipeDescTitle:TextField;
      
      public var recipeMask:MovieClip;
      
      private var actorName:String = null;
      
      private var recipeItems:Array;
      
      private var _cachedArray:Array;
      
      public var noRecipesTxt:TextField;
      
      private var initObject:Array;
      
      private var _cached7011Array:Array;
      
      public var recipeDesc:TextField;
      
      public function UiRecipes()
      {
         _cachedArray = [];
         _cached7011Array = [];
         super();
      }
      
      private function onItemOver(evt:MouseEvent) : void
      {
         var recItem:Object = evt.target;
         if(this.recipeId != recItem.id)
         {
            recItem.bg.alpha = 0.2;
         }
      }
      
      private function getDesc(_items:Array) : String
      {
         var color:String = null;
         var n:int = 0;
         var t:int = 0;
         var desc:* = "";
         for(var i:int = 0; i < _items.length; i++)
         {
            color = "#FFFFFF";
            n = parseInt(_items[i].needed);
            t = parseInt(_items[i].total);
            if(n > t)
            {
               color = "#FF0000";
            }
            desc = desc + ("<b><font color=\"" + color + "\">");
            desc = desc + ("- " + _items[i].itemName + " " + _items[i].total + "/" + _items[i].needed + "<br>");
            desc = desc + "</font></b>";
         }
         return desc;
      }
      
      public function init(gateway:BattleGateway, linkManager:ILinkManager) : void
      {
         this._gateway = gateway;
         this._linkManager = linkManager;
         noRecipesTxt.text = GlobalTexts.getNoRecipesText();
         DisplayObjectUtils.addWeakListener(this._gateway,GSIEvent.LOADED,onGsiCallBack);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.PLAYER_CREATED,onPlayerCreated);
         this.recipeItems = new Array();
         this.initObject = new Array();
         this.refresh(this.initObject);
         this.scrRecipeList.visible = false;
      }
      
      private function delightItem(itemId:Number) : void
      {
         for(var i:int = 0; i < this.recipeItems.length; i++)
         {
            if(this.recipeItems[i].id == itemId)
            {
               this.recipeItems[i].bg.alpha = 0;
            }
         }
      }
      
      private function onItemClick(evt:MouseEvent) : void
      {
         var recItem:Object = evt.target;
         if(this.recipeId != recItem.id)
         {
            setSelectedItem(recItem);
         }
      }
      
      private function setSelectedItem(recItem:Object) : void
      {
         this.delightItem(recipeId);
         recItem.bg.alpha = 0.5;
         this.recipeId = recItem.id;
         this.recipeDesc.htmlText = this.getDesc(recItem._items);
         var text:String = this.recipeDesc.text;
         this.recipeDesc.text = "";
         this.recipeDesc.text = text;
         var targetId:int = 0;
         for(var i:int = 0; i < this.recipeItems.length; i++)
         {
            if(recItem.id == this.recipeItems[i].id)
            {
               targetId = i;
               break;
            }
         }
         this.recipeDescTitle.text = this.recipeItems[targetId].recipeName.text;
         this.colBorder.alpha = 0.9;
      }
      
      public function refresh(listRecipes:Array) : void
      {
         var i:int = 0;
         var recipeItem:RecipeItem = null;
         listRecipes.sortOn("recipeName");
         _cachedArray.length = 0;
         var tmpArray:Array = _cachedArray;
         this.initObject = listRecipes;
         if(this.recipeItems == null)
         {
            this.recipeItems = new Array();
         }
         while(this.recipeContainer.numChildren > 0)
         {
            this.recipeContainer.removeChildAt(0);
         }
         if(this.recipeItems.length > 0)
         {
            for(i = 0; i < this.recipeItems.length; i++)
            {
               delete this.recipeItems[i];
            }
         }
         this.recipeItems.length = 0;
         var nextY:int = 0;
         for(var r:int = 0; r < listRecipes.length; r++)
         {
            recipeItem = new RecipeItem(listRecipes[r]);
            this.recipeItems.push(recipeItem);
            recipeItem.y = nextY;
            this.recipeItems[r].addEventListener(MouseEvent.MOUSE_OVER,onItemOver,false,0,true);
            this.recipeItems[r].addEventListener(MouseEvent.MOUSE_OUT,onItemOut,false,0,true);
            this.recipeItems[r].addEventListener(MouseEvent.CLICK,onItemClick,false,0,true);
            this.recipeItems[r].addEventListener(KeyboardEvent.KEY_DOWN,onRefresh,false,0,true);
            this.recipeContainer.addChild(this.recipeItems[r]);
            if(this.recipeId != -1 && recipeItem.id == this.recipeId)
            {
               setSelectedItem(recipeItem);
            }
            nextY = nextY + 20;
         }
         if(this.recipeId == -1 && listRecipes.length)
         {
            setSelectedItem(this.recipeItems[0]);
         }
         this.scrRecipeList.init(this.recipeContainer,new Rectangle(this.recipeMask.x,this.recipeMask.y,this.recipeMask.width,this.recipeMask.height),true);
         noRecipesTxt.visible = listRecipes.length == 0;
      }
      
      private function onItemOut(evt:MouseEvent) : void
      {
         var recItem:Object = evt.target;
         if(this.recipeId != recItem.id)
         {
            recItem.bg.alpha = 0;
         }
      }
      
      private function onGsiCallBack(evt:GSIEvent) : void
      {
         switch(evt.gsiMethod)
         {
            case 7011:
               this.onGsi_7011(evt.gsiData);
         }
      }
      
      public function updateRecipeList() : void
      {
         this._gateway.gsiInvoke(7011,this._gateway.sessionId,this.actorName);
      }
      
      private function onPlayerCreated(e:GlobalEvent) : void
      {
         this.actorName = BaseActor(e.data.actor).actorName;
      }
      
      private function onGsi_7011(data:Object) : void
      {
         var recipe:Object = null;
         var item:* = null;
         var s:Array = null;
         var rItem:Object = null;
         if(data is Number)
         {
            return;
         }
         _cached7011Array.length = 0;
         var obj:Array = _cached7011Array;
         for(var ri:int = 0; ri < data.length; ri++)
         {
            recipe = new Object();
            recipe.items = new Array();
            for(item in data[ri])
            {
               s = String(data[ri][item]).split("|");
               if(item == "1")
               {
                  recipe.recipeName = String(s[5].split("+").join(" ")).replace("Recipe: ","");
                  recipe.recipeId = s[1];
               }
               else if(item != "a")
               {
                  rItem = {
                     "itemName":s[5].split("+").join(" "),
                     "itemId":s[1],
                     "needed":s[2],
                     "total":s[3]
                  };
                  recipe.items.push(rItem);
               }
            }
            obj.push(recipe);
         }
         this.refresh(obj);
         obj.length = 0;
      }
      
      private function onRefresh(evt:KeyboardEvent) : void
      {
         if(evt.charCode == Keyboard.ENTER)
         {
            this.updateRecipeList();
         }
      }
   }
}

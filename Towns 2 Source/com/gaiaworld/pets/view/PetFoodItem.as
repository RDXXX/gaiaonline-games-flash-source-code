package com.gaiaworld.pets.view
{
   import com.gaiaworld.global.util.StringFunctions;
   import com.gaiaworld.global.util.ThumbUtil;
   import com.gaiaworld.pets.events.PetFoodEvent;
   import com.gaiaworld.pets.vo.PetFoodVo;
   import flash.display.Loader;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.text.TextField;
   
   public class PetFoodItem extends Sprite
   {
       
      
      public var btnUse:SimpleButton;
      
      public var qText:TextField;
      
      private var _dataProvider:PetFoodVo;
      
      private var loader:Loader;
      
      public function PetFoodItem()
      {
         this.loader = new Loader();
         super();
         this.addChild(this.loader);
         this.setChildIndex(this.qText,this.numChildren - 1);
         this.setChildIndex(this.btnUse,this.numChildren - 1);
         this.btnUse.addEventListener(MouseEvent.MOUSE_DOWN,this.useItem);
      }
      
      private function useItem(param1:Event) : void
      {
         this.dispatchEvent(new PetFoodEvent(PetFoodEvent.FEED_PET,this.dataProvider,true));
      }
      
      public function get dataProvider() : PetFoodVo
      {
         return this._dataProvider;
      }
      
      public function set dataProvider(param1:PetFoodVo) : void
      {
         this._dataProvider = param1;
         var _loc2_:String = this._dataProvider.thumb;
         _loc2_ = ThumbUtil.getThumb(_loc2_);
         _loc2_ = StringFunctions.findReplace("wclarkson.dev",_loc2_,"www");
         this.loader.load(new URLRequest(_loc2_));
         this.qText.text = String(this._dataProvider.quanity);
      }
   }
}

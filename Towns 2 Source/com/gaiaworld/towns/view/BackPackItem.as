package com.gaiaworld.towns.view
{
   import com.gaiaworld.towns.collectables.bugs.vo.CollectedVo;
   import com.gaiaworld.towns.collectables.constants.MarkerConstants;
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.text.TextField;
   import flash.text.TextFormat;
   
   public class BackPackItem extends Sprite
   {
       
      
      private var _dataProvider:CollectedVo;
      
      private var loader:Loader;
      
      private var qText:TextField;
      
      private var tf:TextFormat;
      
      public function BackPackItem()
      {
         this.loader = new Loader();
         this.qText = new TextField();
         this.tf = new TextFormat();
         super();
         this.loader.contentLoaderInfo.addEventListener(Event.COMPLETE,this.loaded);
         this.addChild(this.loader);
         this.addChild(this.qText);
         this.qText.multiline = false;
         this.tf.size = 8;
         this.tf.align = "right";
         this.qText.height = 20;
         this.qText.width = 20;
         this.qText.defaultTextFormat = this.tf;
         this.qText.y = 10;
         this.qText.background = true;
         this.loader.x = 10;
         this.loader.y = 10;
      }
      
      private function loaded(param1:Event) : void
      {
         if(this._dataProvider.type == MarkerConstants.BUG)
         {
            MovieClip(this.loader.content).gotoAndStop(1);
            this.loader.y = 0;
         }
         while(this.loader.width > 30 || this.loader.height > 40)
         {
            this.loader.scaleX = this.loader.scaleX - 0.01;
            this.loader.scaleY = this.loader.scaleY - 0.01;
         }
      }
      
      public function get dataProvider() : CollectedVo
      {
         return this._dataProvider;
      }
      
      public function set dataProvider(param1:CollectedVo) : void
      {
         this._dataProvider = param1;
         this.qText.text = String(this._dataProvider.q);
         var _loc2_:String = "";
         switch(this._dataProvider.type)
         {
            case MarkerConstants.BUG:
               _loc2_ = "bugs/";
               break;
            case MarkerConstants.FLOWER:
               _loc2_ = "flowers/";
               break;
            case MarkerConstants.TRASH:
               _loc2_ = "trash/";
         }
         this.loader.load(new URLRequest(_loc2_ + this._dataProvider.img + ".swf"));
      }
   }
}

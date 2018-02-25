package com.gaiaworld.hangouts.dialogs
{
   import com.gaiaworld.global.model.GlobalModel;
   import com.gaiaworld.global.util.StringFunctions;
   import com.gaiaworld.hangouts.constants.QuestConstants;
   import com.gaiaworld.hangouts.model.QuestModel;
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.text.TextField;
   
   public class ItemGrantScreen extends Sprite
   {
       
      
      public var btnClose:SimpleButton;
      
      public var coin:MovieClip;
      
      public var dText:TextField;
      
      public var placeHolder:MovieClip;
      
      public var titleText:TextField;
      
      private var questModel:QuestModel;
      
      private var globalModel:GlobalModel;
      
      private var imageLoader:Loader;
      
      public function ItemGrantScreen()
      {
         this.questModel = QuestModel.getInstance();
         this.globalModel = GlobalModel.getInstance();
         this.imageLoader = new Loader();
         super();
         this.visible = false;
         this.addChild(this.imageLoader);
         this.imageLoader.x = this.placeHolder.x;
         this.imageLoader.y = this.placeHolder.y;
         this.placeHolder.visible = false;
         this.questModel.addEventListener(QuestConstants.ITEM_GRANTED,this.showGrant);
         this.btnClose.addEventListener(MouseEvent.MOUSE_DOWN,this.close);
      }
      
      private function showGrant(param1:Event) : *
      {
         var _loc4_:String = null;
         if(this.questModel.grantItemVo.thumb != "" && this.questModel.grantItemVo.thumb != null && this.questModel.grantItemVo.thumb != "gold")
         {
            this.coin.visible = false;
            _loc4_ = this.globalModel.thumbPath + this.questModel.grantItemVo.thumb;
            if(!StringFunctions.contains(_loc4_,"null"))
            {
               if(!StringFunctions.contains(_loc4_,"undefined"))
               {
                  this.imageLoader.load(new URLRequest(_loc4_));
               }
            }
         }
         else
         {
            this.coin.visible = true;
         }
         var _loc2_:String = this.questModel.grantItemVo.itemName;
         if(_loc2_ != null && _loc2_ != "")
         {
            this.titleText.text = "You received " + StringFunctions.findReplace("+",_loc2_," ");
         }
         var _loc3_:String = this.questModel.grantItemVo.description;
         if(_loc3_ != null && _loc3_ != "")
         {
            this.dText.text = StringFunctions.findReplace("+",_loc3_," ");
         }
         this.visible = true;
      }
      
      private function close(param1:MouseEvent) : *
      {
         this.visible = false;
      }
   }
}

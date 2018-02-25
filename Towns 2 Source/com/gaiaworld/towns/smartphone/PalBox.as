package com.gaiaworld.towns.smartphone
{
   import com.gaiaworld.user.model.UserModel;
   import com.gaiaworld.user.vo.PalVo;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.TextEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.text.StyleSheet;
   import flash.text.TextField;
   
   public class PalBox extends Sprite
   {
       
      
      public var btnCancel:MovieClip;
      
      public var text1:TextField;
      
      public var text2:TextField;
      
      private var userModel:UserModel;
      
      private var palArray:Array;
      
      private var cssLoader:URLLoader;
      
      private var css:StyleSheet;
      
      public function PalBox()
      {
         this.userModel = UserModel.getInstance();
         this.cssLoader = new URLLoader();
         this.css = new StyleSheet();
         super();
         TextField(this.text2).addEventListener(Event.CHANGE,this.findName);
         TextField(this.text1).addEventListener(TextEvent.LINK,this.getLink);
         this.cssLoader.addEventListener(Event.COMPLETE,this.cssLoaded);
         this.cssLoader.load(new URLRequest("navPages/phone.css"));
      }
      
      private function getLink(param1:TextEvent) : void
      {
      }
      
      private function cssLoaded(param1:Event) : void
      {
         this.css.parseCSS(param1.target.data);
         TextField(this.text1).styleSheet = this.css;
      }
      
      private function findName(param1:Event) : *
      {
         var _loc5_:String = null;
         this.palArray = this.userModel.palArray;
         var _loc2_:Number = this.palArray.length;
         var _loc3_:* = "<ul>";
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc5_ = PalVo(this.palArray[_loc4_]).userName;
            if(this.text2.text == _loc5_.substr(0,this.text2.text.length))
            {
               _loc3_ = _loc3_ + ("<li class=\'en\'><a href=\'event:pal-" + String(_loc4_) + "\'>" + _loc5_ + "</a></li>");
            }
            _loc4_++;
         }
         _loc3_ = _loc3_ + "</ul>";
         this.text1.htmlText = _loc3_;
      }
   }
}

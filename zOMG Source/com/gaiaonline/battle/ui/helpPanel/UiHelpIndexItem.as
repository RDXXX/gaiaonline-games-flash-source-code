package com.gaiaonline.battle.ui.helpPanel
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class UiHelpIndexItem extends Sprite
   {
       
      
      private var _fileLink:String;
      
      public var itemBg:MovieClip;
      
      public var topicName:TextField;
      
      public function UiHelpIndexItem()
      {
         super();
      }
      
      public function get fileLink() : String
      {
         return this._fileLink;
      }
      
      public function set fileLink(link:String) : void
      {
         this._fileLink = link;
      }
   }
}

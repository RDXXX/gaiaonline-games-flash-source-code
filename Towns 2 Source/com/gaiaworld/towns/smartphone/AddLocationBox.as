package com.gaiaworld.towns.smartphone
{
   import com.gaiaworld.global.controller.events.GEvent;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class AddLocationBox extends Sprite
   {
      
      public static var ADD_LOC:String;
       
      
      public var btnAdd:SimpleButton;
      
      public var text1:TextField;
      
      private var editMode:Boolean = false;
      
      public function AddLocationBox()
      {
         super();
         this.btnAdd.addEventListener(MouseEvent.MOUSE_DOWN,this.addLoc);
      }
      
      public function showMe() : *
      {
         this.text1.text = "";
         this.editMode = false;
         this.visible = true;
      }
      
      public function setForEdit(param1:String) : *
      {
         this.text1.text = param1;
         this.editMode = true;
         this.visible = true;
      }
      
      private function addLoc(param1:MouseEvent) : *
      {
         this.visible = false;
         if(this.editMode == false)
         {
            this.dispatchEvent(new GEvent(GEvent.GENERIC_ACTION,"addBookMark",this.text1.text,true));
         }
         else
         {
            this.dispatchEvent(new GEvent(GEvent.GENERIC_ACTION,"editBookmark",this.text1.text,true));
         }
      }
      
      private function closeBox(param1:MouseEvent) : *
      {
         this.visible = false;
      }
   }
}

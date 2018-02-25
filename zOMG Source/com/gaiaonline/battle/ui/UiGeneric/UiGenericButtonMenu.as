package com.gaiaonline.battle.ui.UiGeneric
{
   import com.gaiaonline.flexModulesAPIs.globalevent.GlobalEvent;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   
   public class UiGenericButtonMenu extends MovieClip
   {
       
      
      private var _txt:TextField;
      
      private var _menuId:String = "";
      
      private var _subTxt:TextField;
      
      public function UiGenericButtonMenu(menuId:String, width:Number, text:String, btnLabels:Array, subText:String = null)
      {
         var stf:TextFormat = null;
         var btn:UiGenericButton = null;
         _txt = new TextField();
         _subTxt = new TextField();
         super();
         this._menuId = menuId;
         this._txt.text = text;
         this._txt.autoSize = TextFieldAutoSize.CENTER;
         this._txt.multiline = true;
         this._txt.wordWrap = true;
         this._txt.width = width;
         var tf:TextFormat = new TextFormat();
         tf.size = 12;
         tf.bold = true;
         tf.color = 16777215;
         tf.font = "Arial";
         tf.align = "center";
         this._txt.setTextFormat(tf);
         this._txt.x = width / 2 - this._txt.width / 2;
         this.addChild(this._txt);
         var yy:Number = this._txt.height + 5;
         if(subText != null && subText.length > 0)
         {
            this._subTxt.text = subText;
            this._subTxt.autoSize = TextFieldAutoSize.CENTER;
            this._subTxt.multiline = true;
            this._subTxt.wordWrap = true;
            this._subTxt.width = width;
            stf = new TextFormat();
            stf.size = 12;
            stf.bold = false;
            stf.color = 16777215;
            stf.font = "Arial";
            stf.align = "center";
            this._subTxt.setTextFormat(stf);
            this._subTxt.x = width / 2 - this._subTxt.width / 2;
            this._subTxt.y = yy;
            this.addChild(this._subTxt);
            yy = yy + (this._subTxt.height + 5);
         }
         for(var i:int = 0; i < btnLabels.length; i++)
         {
            btn = new UiGenericButton();
            btn.setLabel(btnLabels[i],width - 6);
            btn.x = 3;
            btn.y = yy;
            this.addChild(btn);
            btn.addEventListener(MouseEvent.CLICK,onButtonClick,false,0,true);
            yy = yy + (btn.height + 2);
         }
      }
      
      public function onButtonClick(evt:MouseEvent) : void
      {
         this.dispatchEvent(new GlobalEvent("ButtonClick",{
            "menuId":this._menuId,
            "option":UiGenericButton(evt.target).getLabel()
         }));
      }
   }
}

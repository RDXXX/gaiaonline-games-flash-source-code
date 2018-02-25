package com.gaiaworld.towns.smartphone.landLord
{
   import com.gaiaworld.towns.constants.LLGsiConstants;
   import com.gaiaworld.towns.smartphone.BasePhoneList;
   import com.gaiaworld.user.vo.PalVo;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class RequestScreen extends BasePhoneList
   {
       
      
      public var btnBack:SimpleButton;
      
      public var btnNext2:SimpleButton;
      
      public var btnPrev2:SimpleButton;
      
      public var noText:TextField;
      
      public function RequestScreen()
      {
         super();
         btnNext = this.btnNext2;
         btnPrev = this.btnPrev2;
         setMaskSize(200,250);
         setUp();
         scrollClip.y = 40;
         scrollMask.x = -100;
         scrollMask.y = 10;
         scrollMask.y = 30;
         top = 30;
         this.btnBack.addEventListener(MouseEvent.MOUSE_DOWN,this.goBack);
      }
      
      private function goBack(param1:Event) : *
      {
         this.dispatchEvent(new Event(LLGsiConstants.LANDLORD_BACK,true));
      }
      
      override public function set dataProvider(param1:Array) : void
      {
         var _loc4_:PalVo = null;
         var _loc5_:AcceptDenyBox = null;
         _dataProvider = param1;
         removeAll();
         if(_dataProvider.length == 0)
         {
            this.noText.visible = true;
            return;
         }
         this.noText.visible = false;
         if(_dataProvider.length > 10)
         {
            btnNext.visible = true;
         }
         var _loc2_:Number = _dataProvider.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = _dataProvider[_loc3_];
            _loc5_ = new AcceptDenyBox();
            _loc5_.dataProvider = _loc4_;
            _loc5_.y = _loc5_.height * _loc3_;
            this.scrollClip.addChild(_loc5_);
            _loc3_++;
         }
      }
   }
}

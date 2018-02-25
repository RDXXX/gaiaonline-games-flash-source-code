package com.gaiaworld.towns.smartphone.landLord
{
   import com.gaiaworld.global.controller.MessageController;
   import com.gaiaworld.towns.constants.LLGsiConstants;
   import com.gaiaworld.towns.smartphone.BasePhoneList;
   import com.gaiaworld.user.vo.PalVo;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class EvictScreen extends BasePhoneList
   {
       
      
      public var btnBack:SimpleButton;
      
      public var btnNext2:SimpleButton;
      
      public var btnPrev2:SimpleButton;
      
      private var messageController:MessageController;
      
      public function EvictScreen()
      {
         this.messageController = new MessageController();
         super();
         btnNext = this.btnNext2;
         btnPrev = this.btnPrev2;
         setMaskSize(200,170);
         setUp();
         scrollClip.y = -82;
         scrollMask.y = scrollClip.y - 40;
         this.btnBack.addEventListener(MouseEvent.MOUSE_DOWN,this.goBack);
      }
      
      private function goBack(param1:Event) : *
      {
         this.dispatchEvent(new Event(LLGsiConstants.LANDLORD_BACK,true));
      }
      
      override public function set dataProvider(param1:Array) : void
      {
         var _loc4_:PalVo = null;
         var _loc5_:EvictField = null;
         if(param1 == null)
         {
            this.messageController.setPhoneMessage("No one lives in your neighborhood yet!");
            return;
         }
         _dataProvider = param1;
         if(_dataProvider.length == 0)
         {
            this.messageController.setPhoneMessage("No one lives in your neighborhood yet!");
            return;
         }
         if(_dataProvider.length > 10)
         {
            btnNext.visible = true;
         }
         removeAll();
         var _loc2_:Number = _dataProvider.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = _dataProvider[_loc3_];
            _loc5_ = new EvictField();
            _loc5_.dataProvider = _loc4_;
            _loc5_.y = _loc5_.height * _loc3_;
            this.scrollClip.addChild(_loc5_);
            _loc3_++;
         }
      }
   }
}

package com.gaiaworld.towns.smartphone.landLord
{
   import com.gaiaworld.towns.constants.LLGsiConstants;
   import com.gaiaworld.towns.smartphone.BasePhoneList;
   import com.gaiaworld.user.model.UserModel;
   import com.gaiaworld.user.vo.PalVo;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.FocusEvent;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class LandLordInviteScreen extends BasePhoneList
   {
       
      
      public var btnBack:SimpleButton;
      
      public var btnNext2:SimpleButton;
      
      public var btnPrev2:SimpleButton;
      
      public var searchText:TextField;
      
      private var userModel:UserModel;
      
      public function LandLordInviteScreen()
      {
         this.userModel = UserModel.getInstance();
         super();
         vh = 160;
         btnNext = this.btnNext2;
         btnPrev = this.btnPrev2;
         setMaskSize(200,170);
         setUp();
         TextField(this.searchText).addEventListener(FocusEvent.FOCUS_IN,this.searchTextSelected);
         TextField(this.searchText).addEventListener(Event.CHANGE,this.textChanged);
         this.btnBack.addEventListener(MouseEvent.MOUSE_DOWN,this.goBack);
      }
      
      private function goBack(param1:Event) : *
      {
         this.dispatchEvent(new Event(LLGsiConstants.LANDLORD_BACK,true));
      }
      
      private function searchTextSelected(param1:FocusEvent) : void
      {
         if(this.searchText.text == "Invite Friend")
         {
            this.searchText.text = "";
         }
      }
      
      private function textChanged(param1:Event) : void
      {
         this.search(this.searchText.text);
         scroll(0);
         btnPrev.visible = false;
         btnNext.visible = false;
         if(_dataProvider.length > 6)
         {
            btnNext.visible = true;
         }
      }
      
      private function search(param1:String) : *
      {
         var _loc5_:PalVo = null;
         var _loc6_:Number = NaN;
         param1 = param1.toLowerCase();
         var _loc2_:Array = new Array();
         this.userModel.palArray.sortOn("isOnline");
         var _loc3_:Number = this.userModel.palArray.length;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = this.userModel.palArray[_loc4_];
            _loc6_ = _loc5_.userName.toLowerCase().indexOf(param1);
            if(_loc5_.userName.substr(0,param1.length) == param1 || _loc6_ > -1)
            {
               _loc2_.push(_loc5_);
            }
            _loc4_++;
         }
         this.dataProvider = _loc2_;
      }
      
      override public function set dataProvider(param1:Array) : void
      {
         var _loc4_:PalVo = null;
         var _loc5_:PalInviteField = null;
         _dataProvider = param1;
         if(_dataProvider == null)
         {
            return;
         }
         if(_dataProvider.length > 10)
         {
            btnNext.visible = true;
         }
         _dataProvider.sortOn("isOnline",Array.DESCENDING);
         removeAll();
         var _loc2_:Number = _dataProvider.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = _dataProvider[_loc3_];
            _loc5_ = new PalInviteField();
            _loc5_.dataProvider = _loc4_;
            _loc5_.y = _loc5_.height * _loc3_;
            this.scrollClip.addChild(_loc5_);
            _loc3_++;
         }
      }
   }
}

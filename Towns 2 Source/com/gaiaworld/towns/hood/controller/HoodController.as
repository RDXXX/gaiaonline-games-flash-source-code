package com.gaiaworld.towns.hood.controller
{
   import com.gaiaworld.towns.hood.model.HoodModel;
   import com.gaiaworld.towns.hood.vo.HomeVo;
   
   public class HoodController
   {
       
      
      private var hoodModel:HoodModel;
      
      public function HoodController()
      {
         this.hoodModel = HoodModel.getInstance();
         super();
      }
      
      public function getMyHome() : *
      {
         this.hoodModel.getMyHomeLoc();
      }
      
      public function getMyFriendsHomes() : *
      {
         this.hoodModel.getMyFriendsHomes();
      }
      
      public function setMyHood(param1:Number) : void
      {
         this.hoodModel.myHood = param1;
      }
      
      public function setUpMyHood() : void
      {
         this.hoodModel.setMyHome();
      }
      
      public function getHood() : *
      {
         this.hoodModel.getHood();
      }
      
      public function setHoodData(param1:HomeVo) : void
      {
         this.hoodModel.homeVo = param1;
      }
      
      public function setCurrentHood(param1:int) : void
      {
         this.hoodModel.currentHoodId = param1;
      }
      
      public function setCurrentCommunity(param1:Number) : *
      {
         this.hoodModel.currentCommunity = param1;
      }
      
      public function setPlotData(param1:Vector.<HomeVo>) : void
      {
         this.hoodModel.plotArray = param1;
      }
      
      public function setMyCommunity(param1:int) : void
      {
         this.hoodModel.myCommunity = param1;
      }
      
      public function setMyFriendsHomes(param1:Array) : void
      {
         this.hoodModel.setFriendData(param1);
      }
      
      public function setHousingMap(param1:String) : *
      {
         this.hoodModel.housingMap = param1;
      }
      
      public function clearFriends() : *
      {
         this.hoodModel.clearFriends();
      }
      
      public function setMyHomeInfo(param1:HomeVo) : void
      {
         this.hoodModel.myHome = param1;
      }
      
      public function moveMyHouse(param1:Number) : void
      {
         this.hoodModel.moveMyHouse(param1);
      }
      
      public function setHomeOpt(param1:HomeVo) : void
      {
         this.hoodModel.houseOpt = param1;
      }
      
      public function setTown(param1:String) : void
      {
         this.hoodModel.town = param1;
      }
      
      public function addHome(param1:HomeVo) : void
      {
         this.hoodModel.addHomeVo(param1);
      }
      
      public function setJustArrived(param1:Boolean) : void
      {
         this.hoodModel.justArrived = param1;
      }
      
      public function optionsUpdated() : void
      {
         this.hoodModel.optionsUpdated();
      }
      
      public function setSentRequests(param1:Array) : *
      {
         this.hoodModel.sentRequestArray = param1;
      }
      
      public function requestPlot() : void
      {
         this.hoodModel.requestPlot();
      }
      
      public function confirmMovePlot() : *
      {
         this.hoodModel.confirmMovePlot();
      }
      
      public function setInvites(param1:Array) : void
      {
         this.hoodModel.inviteArray = param1;
      }
      
      public function moveIntoHood() : void
      {
         this.hoodModel.moveIntoHood();
      }
      
      public function showPlotSigns() : void
      {
         this.hoodModel.showSigns();
      }
      
      public function hidePlotSigns() : void
      {
         this.hoodModel.hideSigns();
      }
      
      public function leaveHood() : void
      {
         this.hoodModel.leaveHood();
      }
      
      public function setLiftFloor(param1:Number) : void
      {
         this.hoodModel.liftFloor = param1;
      }
      
      public function showLiftMenu() : void
      {
         this.hoodModel.showLiftMenu();
      }
      
      public function cancelLift() : void
      {
         this.hoodModel.cancelLift();
      }
      
      public function moveIntoHoodSuccess() : void
      {
         this.hoodModel.moveIntoHoodSuccess();
      }
      
      public function floorReached() : void
      {
         this.hoodModel.floorReached();
      }
      
      public function setExitHouseFlag(param1:Boolean) : void
      {
         this.hoodModel.exitHouseFlag = param1;
      }
      
      public function setExitPlot(param1:int) : void
      {
         this.hoodModel.exitPlot = param1;
      }
      
      public function setHasLandLord(param1:Boolean) : void
      {
         this.hoodModel.hasLandLord = param1;
      }
      
      public function setJustCreated(param1:Boolean) : void
      {
         this.hoodModel.justCreated = param1;
      }
      
      public function setTransportFlag(param1:Boolean) : void
      {
         this.hoodModel.transportFlag = param1;
      }
      
      public function callLift() : void
      {
         this.hoodModel.callLift();
      }
      
      public function setNext(param1:Number, param2:Number) : *
      {
         this.hoodModel.nextX = param1;
         this.hoodModel.nextY = param2;
      }
      
      public function setPrev(param1:Number, param2:Number) : *
      {
         this.hoodModel.prevX = param1;
         this.hoodModel.prevY = param2;
      }
      
      public function setNextHood(param1:Number) : void
      {
         this.hoodModel.nextHood = param1;
      }
      
      public function setPrevHood(param1:Number) : void
      {
         this.hoodModel.prevHood = param1;
      }
      
      public function setPendingHood(param1:Number) : void
      {
         this.hoodModel.pendingHood = param1;
      }
      
      public function setWander(param1:Boolean) : void
      {
         this.hoodModel.wanderFlag = param1;
      }
      
      public function setPendingPos(param1:Number, param2:Number) : void
      {
         this.hoodModel.pendingX = param1;
         this.hoodModel.pendingY = param2;
      }
      
      public function selectedHouse(param1:HomeVo) : void
      {
         this.hoodModel.selectedHouse = param1;
      }
   }
}

package com.gaiaonline.battle.newactors
{
   import com.gaiaonline.battle.ApplicationInterfaces.IAssetFactory;
   import com.gaiaonline.battle.ApplicationInterfaces.IUIFramework;
   import com.gaiaonline.battle.gateway.BattleGateway;
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class SpawnDisplay extends ActorDisplay
   {
       
      
      public function SpawnDisplay(assetFactory:IAssetFactory, baseUrl:String = null)
      {
         super(assetFactory,baseUrl);
      }
      
      override protected function onActorLoaded(evt:Event) : void
      {
         super.onActorLoaded(evt);
      }
      
      override public function loadActor(gateway:BattleGateway, uiFramework:IUIFramework, url:String) : void
      {
         super.loadActor(gateway,uiFramework,url);
         this._gateway = gateway;
         var mc:Sprite = new Sprite();
         mc.graphics.beginFill(16711680);
         mc.graphics.drawCircle(0,0,7);
         mc.graphics.endFill();
         this.addChild(mc);
         super.onActorLoaded(new Event(Event.COMPLETE));
      }
   }
}

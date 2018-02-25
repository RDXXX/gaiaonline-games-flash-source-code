package com.gaiaonline.containers
{
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import mx.containers.Canvas;
   import mx.containers.HBox;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.CSSStyleDeclaration;
   
   public class GameWindowSideView extends HBox
   {
       
      
      private var _1038842694nubContainer:Canvas;
      
      private var _809612678contentGroup:Canvas;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      private var _nub:Sprite;
      
      public function GameWindowSideView()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":HBox,
            "propertiesFactory":function():Object
            {
               return {"childDescriptors":[new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"nubContainer",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":15,
                        "percentHeight":100
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"contentGroup",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "clipContent":false,
                        "verticalScrollPolicy":"off",
                        "horizontalScrollPolicy":"off",
                        "percentHeight":100,
                        "percentWidth":100
                     };
                  }
               })]};
            }
         });
         super();
         mx_internal::_document = this;
         if(!this.styleDeclaration)
         {
            this.styleDeclaration = new CSSStyleDeclaration();
         }
         this.styleDeclaration.defaultFactory = function():void
         {
            this.horizontalGap = 0;
         };
         this.verticalScrollPolicy = "off";
         this.horizontalScrollPolicy = "off";
         this.clipContent = false;
         this.addEventListener("creationComplete",___GameWindowSideView_HBox1_creationComplete);
      }
      
      private function onMouseDown(evt:MouseEvent) : void
      {
         dispatchEvent(GameWindowManager.toSnapEvent(this,evt,GameWindowManagerEvent.DRAG_START));
      }
      
      [Bindable(event="propertyChange")]
      public function get contentGroup() : Canvas
      {
         return this._809612678contentGroup;
      }
      
      override protected function childrenCreated() : void
      {
         var child:DisplayObject = null;
         this.nubContainer.addEventListener(MouseEvent.MOUSE_DOWN,onMouseDown);
         this._nub = new GameWindowAssets.nub() as Sprite;
         this.nubContainer.rawChildren.addChild(this._nub);
         this._nub.width = this.nubContainer.width;
         this._nub.height = this.nubContainer.height;
         var childs:Array = new Array();
         for(var i:int = 0; i < this.numChildren; i++)
         {
            child = this.getChildAt(i);
            if(child != this.nubContainer && child != this.contentGroup)
            {
               childs.push(child);
            }
         }
         for(var ii:int = 0; ii < childs.length; ii++)
         {
            this.contentGroup.addChild(childs[ii] as DisplayObject);
         }
      }
      
      public function ___GameWindowSideView_HBox1_creationComplete(event:FlexEvent) : void
      {
         onComplete(event);
      }
      
      [Bindable(event="propertyChange")]
      public function get nubContainer() : Canvas
      {
         return this._1038842694nubContainer;
      }
      
      public function set contentGroup(param1:Canvas) : void
      {
         var _loc2_:Object = this._809612678contentGroup;
         if(_loc2_ !== param1)
         {
            this._809612678contentGroup = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"contentGroup",_loc2_,param1));
         }
      }
      
      private function onComplete(evt:Event) : void
      {
      }
      
      public function set nubContainer(param1:Canvas) : void
      {
         var _loc2_:Object = this._1038842694nubContainer;
         if(_loc2_ !== param1)
         {
            this._1038842694nubContainer = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nubContainer",_loc2_,param1));
         }
      }
      
      override public function addChild(child:DisplayObject) : DisplayObject
      {
         if(this.contentGroup && child != this.contentGroup && child != this.nubContainer)
         {
            return this.contentGroup.addChild(child);
         }
         return super.addChild(child);
      }
      
      override protected function updateDisplayList(unscaledWidth:Number, unscaledHeight:Number) : void
      {
         super.updateDisplayList(unscaledWidth,unscaledHeight);
         this._nub.width = this.nubContainer.width;
         this._nub.height = this.nubContainer.height;
      }
      
      override public function initialize() : void
      {
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         super.initialize();
      }
   }
}

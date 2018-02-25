package com.gaiaonline.containers
{
   import mx.controls.TabBar;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   
   public class GameWindowTabBar extends TabBar
   {
       
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      public function GameWindowTabBar()
      {
         _documentDescriptor_ = new UIComponentDescriptor({"type":TabBar});
         super();
         mx_internal::_document = this;
      }
      
      override public function initialize() : void
      {
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         super.initialize();
      }
   }
}

package com.gaiaonline.containers
{
   public class GameWindowSettings
   {
       
      
      public var y:Number;
      
      public var maxWidth:Number;
      
      public var width:Number;
      
      public var name:String;
      
      public var minWidth:Number;
      
      public var minHeight:Number;
      
      public var height:Number;
      
      public var resizable:Boolean = true;
      
      public var x:Number;
      
      public var maxHeight:Number;
      
      public function GameWindowSettings(name:String)
      {
         super();
         this.name = name;
      }
      
      public function setSize(w:Number, h:Number) : GameWindowSettings
      {
         this.width = w;
         this.height = h;
         return this;
      }
      
      public function setMaxSize(w:Number, h:Number) : GameWindowSettings
      {
         this.maxWidth = w;
         this.maxHeight = h;
         return this;
      }
      
      public function setPos(x:Number, y:Number) : GameWindowSettings
      {
         this.x = x;
         this.y = y;
         return this;
      }
      
      public function setResizable(resizable:Boolean) : GameWindowSettings
      {
         this.resizable = resizable;
         return this;
      }
      
      public function setMinSize(w:Number, h:Number) : GameWindowSettings
      {
         this.minWidth = w;
         this.minHeight = h;
         return this;
      }
   }
}

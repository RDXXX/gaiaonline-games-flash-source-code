package com.gaiaonline.battle
{
   public class ConColors
   {
      
      private static var _instance:ConColors = null;
       
      
      private var _conColorsArray:Object;
      
      private var _colors:Object = null;
      
      private var _colorLevelMap:Object = null;
      
      public function ConColors(singletonEnforcer:SingletonEnforcer#88)
      {
         _conColorsArray = {
            "purple":GlobalColors.CON_PURPLE,
            "blue":GlobalColors.CON_BLUE,
            "green":GlobalColors.CON_GREEN,
            "yellow":GlobalColors.CON_YELLOW,
            "red":GlobalColors.CON_RED
         };
         super();
         if(singletonEnforcer == null)
         {
            throw new Error("ConColors is a singleton.  Use getInstance()");
         }
      }
      
      public static function getInstance() : ConColors
      {
         if(!_instance)
         {
            _instance = new ConColors(new SingletonEnforcer#88());
         }
         return _instance;
      }
      
      public function getConColors() : Object
      {
         var cn:* = null;
         var c:Object = new Object();
         for(cn in this.colors)
         {
            c[cn] = {
               "name":this.colors[cn].name,
               "min":this.colors[cn].min,
               "max":this.colors[cn].max,
               "color":this.colors[cn].color
            };
         }
         return c;
      }
      
      public function get conColorsArray() : Object
      {
         return this._conColorsArray;
      }
      
      public function get colors() : Object
      {
         if(_colors == null)
         {
            this._colors = new Object();
            this._colors[colorLevelMap["0"]] = {
               "name":colorLevelMap["0"],
               "min":-10000000,
               "max":-1.5,
               "color":this._conColorsArray[colorLevelMap["0"]]
            };
            this._colors[colorLevelMap["1"]] = {
               "name":colorLevelMap["1"],
               "min":-1.5,
               "max":-0.5,
               "color":this._conColorsArray[colorLevelMap["1"]]
            };
            this._colors[colorLevelMap["2"]] = {
               "name":colorLevelMap["2"],
               "min":-0.5,
               "max":0.5,
               "color":this._conColorsArray[colorLevelMap["2"]]
            };
            this._colors[colorLevelMap["3"]] = {
               "name":colorLevelMap["3"],
               "min":0.5,
               "max":1.5,
               "color":this._conColorsArray[colorLevelMap["3"]]
            };
            this._colors[colorLevelMap["4"]] = {
               "name":colorLevelMap["4"],
               "min":1.5,
               "max":10000000,
               "color":this._conColorsArray[colorLevelMap["4"]]
            };
         }
         return this._colors;
      }
      
      public function getConColorForDiff(conDiff:Number) : int
      {
         var cn:* = null;
         var c:int = 16777215;
         for(cn in this.colors)
         {
            if(conDiff >= this.colors[cn].min && conDiff < this.colors[cn].max)
            {
               c = this.colors[cn].color;
               break;
            }
         }
         return c;
      }
      
      public function getConColorByName(name:String) : int
      {
         var c:int = 16777215;
         if(this.colors[name.toLowerCase()] != null)
         {
            c = this.colors[name.toLocaleLowerCase()].color;
         }
         return c;
      }
      
      public function get colorLevelMap() : Object
      {
         if(this._colorLevelMap == null)
         {
            this._colorLevelMap = {
               0:"purple",
               1:"blue",
               2:"green",
               3:"yellow",
               4:"red"
            };
         }
         return _colorLevelMap;
      }
   }
}

class SingletonEnforcer#88
{
    
   
   function SingletonEnforcer#88()
   {
      super();
   }
}

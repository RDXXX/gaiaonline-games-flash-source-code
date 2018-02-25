package com.gaiaonline.battle.utils
{
   import com.gaiaonline.battle.ui.components.ScrollBarVer;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.InteractiveObject;
   import flash.display.SimpleButton;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TextEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldType;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   
   public class BattleUtils
   {
      
      public static var ALLOW_DISABLE_MOUSE_ON_CHILDREN:Boolean = true;
       
      
      public function BattleUtils()
      {
         super();
         throw "Instantiability denied";
      }
      
      public static function copy(value:Object) : Object
      {
         var buffer:ByteArray = new ByteArray();
         buffer.writeObject(value);
         buffer.position = 0;
         var result:Object = buffer.readObject();
         return result;
      }
      
      public static function keepItemOnStage(stage:Stage, item:DisplayObject) : void
      {
         if(!stage)
         {
            return;
         }
         if(item.x + item.width > stage.stageWidth)
         {
            item.x = stage.stageWidth - item.width;
         }
         if(item.y + item.height > stage.stageHeight)
         {
            item.y = stage.stageHeight - item.height;
         }
      }
      
      public static function cleanObject(o:Object) : void
      {
         var key:* = undefined;
         if(o == null)
         {
            o = new Object();
            return;
         }
         var foundProps:uint = 0;
         do
         {
            foundProps = 0;
            for(key in o)
            {
               foundProps++;
               delete o[key];
            }
         }
         while(foundProps > 0);
         
      }
      
      public static function enableScrollMouseEvents(scrollBar:*) : void
      {
         scrollBar.mouseEnabled = true;
         scrollBar.scrUp.mouseEnabled = true;
         scrollBar.scrDown.mouseEnabled = true;
         scrollBar.dragBtn.mouseEnabled = true;
      }
      
      public static function getRoomNumFromRoomId(roomId:String) : uint
      {
         return roomId.split("_")[1];
      }
      
      public static function distanceBetweenPoints(point1:Point, point2:Point) : Number
      {
         var x:Number = point2.x - point1.x;
         x = x * x;
         var y:Number = point2.y - point1.y;
         y = y * y;
         return Math.sqrt(x + y);
      }
      
      public static function disableMouseOnChildren(obj:DisplayObject) : void
      {
         var exclusion:Boolean = false;
         var numChildren:int = 0;
         var i:int = 0;
         var child:DisplayObject = null;
         if(!ALLOW_DISABLE_MOUSE_ON_CHILDREN)
         {
            return;
         }
         if(obj is InteractiveObject)
         {
            exclusion = obj is TextField && TextField(obj).type == TextFieldType.INPUT || obj is SimpleButton || obj is ScrollBarVer;
            if(!exclusion && !obj.hasEventListener(TextEvent.LINK) && !obj.hasEventListener(MouseEvent.CLICK) && !obj.hasEventListener(MouseEvent.MOUSE_DOWN) && !obj.hasEventListener(MouseEvent.MOUSE_MOVE) && !obj.hasEventListener(MouseEvent.ROLL_OVER) && !obj.hasEventListener(MouseEvent.ROLL_OUT) && !obj.hasEventListener(MouseEvent.MOUSE_OVER) && !obj.hasEventListener(MouseEvent.MOUSE_OUT))
            {
               InteractiveObject(obj).mouseEnabled = false;
            }
         }
         var objAsParent:DisplayObjectContainer = obj as DisplayObjectContainer;
         if(objAsParent && !(obj is ScrollBarVer))
         {
            for(numChildren = objAsParent.numChildren; i < numChildren; )
            {
               child = objAsParent.getChildAt(i);
               disableMouseOnChildren(child);
               i++;
            }
         }
      }
      
      public static function killEvent(e:Event) : void
      {
         e.stopImmediatePropagation();
         e.stopPropagation();
         e.preventDefault();
      }
      
      public static function getZoneIdFromRoomId(roomId:String) : String
      {
         return roomId.split("_")[0];
      }
      
      public static function cleanDictionary(dict:Dictionary) : void
      {
         cleanObject(dict);
      }
   }
}

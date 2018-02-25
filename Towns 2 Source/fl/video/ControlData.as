package fl.video
{
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   
   public class ControlData
   {
       
      
      public var uiMgr:UIManager;
      
      public var index:int;
      
      public var ctrl:DisplayObject;
      
      public var owner:DisplayObject;
      
      public var enabled:Boolean;
      
      public var avatar:DisplayObject;
      
      public var state:uint;
      
      public var state_mc:Array;
      
      public var disabled_mc:DisplayObject;
      
      public var currentState_mc:DisplayObject;
      
      public var origX:Number;
      
      public var origY:Number;
      
      public var origScaleX:Number;
      
      public var origScaleY:Number;
      
      public var origWidth:Number;
      
      public var origHeight:Number;
      
      public var leftMargin:Number;
      
      public var rightMargin:Number;
      
      public var topMargin:Number;
      
      public var bottomMargin:Number;
      
      public var handle_mc:Sprite;
      
      public var percentage:Number;
      
      public var isDragging:Boolean;
      
      public var hit_mc:Sprite;
      
      public var progress_mc:DisplayObject;
      
      public var fullness_mc:DisplayObject;
      
      public var fill_mc:DisplayObject;
      
      public var mask_mc:DisplayObject;
      
      public var cachedFocusRect:Boolean;
      
      public var captureFocus:Boolean;
      
      public function ControlData(param1:UIManager, param2:DisplayObject, param3:DisplayObject, param4:int)
      {
         var uiMgr:UIManager = param1;
         var ctrl:DisplayObject = param2;
         var owner:DisplayObject = param3;
         var index:int = param4;
         super();
         this.uiMgr = uiMgr;
         this.index = index;
         this.ctrl = ctrl;
         this.owner = owner;
         try
         {
            ctrl["uiMgr"] = uiMgr;
            return;
         }
         catch(re:ReferenceError)
         {
            return;
         }
      }
   }
}

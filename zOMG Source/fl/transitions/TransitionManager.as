package fl.transitions
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Rectangle;
   
   public class TransitionManager extends EventDispatcher
   {
      
      private static var IDCount:int = 0;
       
      
      public var type:Object;
      
      public var _width:Number = NaN;
      
      public var _height:Number = NaN;
      
      public var _outerBounds:Rectangle;
      
      private var _visualPropList:Object;
      
      private var _triggerEvent:String;
      
      public var className:String = "TransitionManager";
      
      public var _innerBounds:Rectangle;
      
      private var _content:MovieClip;
      
      private var _contentAppearance:Object;
      
      private var _transitions:Object;
      
      public function TransitionManager(content:MovieClip)
      {
         type = TransitionManager;
         _visualPropList = {
            "x":null,
            "y":null,
            "scaleX":null,
            "scaleY":null,
            "alpha":null,
            "rotation":null
         };
         super();
         this.content = content;
         this._transitions = {};
      }
      
      public static function start(content:MovieClip, transParams:Object) : Transition
      {
         if(!content.__transitionManager)
         {
            content.__transitionManager = new TransitionManager(content);
         }
         if(transParams.direction == 1)
         {
            content.__transitionManager._triggerEvent = "hide";
         }
         else
         {
            content.__transitionManager._triggerEvent = "reveal";
         }
         return content.__transitionManager.startTransition(transParams);
      }
      
      public function removeTransition(trans:Transition) : Boolean
      {
         if(!trans || !this._transitions || !this._transitions[trans.ID])
         {
            return false;
         }
         trans.cleanUp();
         return delete this._transitions[trans.ID];
      }
      
      public function saveContentAppearance() : void
      {
         var a:Object = null;
         var i:* = null;
         var c:MovieClip = this._content;
         if(!this._contentAppearance)
         {
            a = this._contentAppearance = {};
            for(i in this._visualPropList)
            {
               a[i] = c[i];
            }
            a.colorTransform = c.transform.colorTransform;
         }
         this._innerBounds = c.getBounds(c);
         this._outerBounds = c.getBounds(c.parent);
         this._width = c.width;
         this._height = c.height;
      }
      
      public function removeAllTransitions() : void
      {
         var t:Transition = null;
         for each(t in this._transitions)
         {
            t.cleanUp();
            this.removeTransition(t);
         }
      }
      
      function transitionInDone(e:Object) : void
      {
         var wasVisible:Boolean = false;
         this.removeTransition(e.target);
         if(this.numInTransitions == 0)
         {
            wasVisible = this._content.visible;
            if(this._triggerEvent == "hide" || this._triggerEvent == "hideChild")
            {
               this._content.visible = false;
            }
            if(wasVisible)
            {
               this.dispatchEvent(new Event("allTransitionsInDone"));
            }
         }
      }
      
      public function addTransition(trans:Transition) : Transition
      {
         trans.ID = ++TransitionManager.IDCount;
         this._transitions[trans.ID] = trans;
         return trans;
      }
      
      public function startTransition(transParams:Object) : Transition
      {
         this.removeTransition(this.findTransition(transParams));
         var theClass:Class = transParams.type;
         var t:Transition = new theClass(this._content,transParams,this);
         this.addTransition(t);
         t.start();
         return t;
      }
      
      function transitionOutDone(e:Object) : void
      {
         var wasVisible:Boolean = false;
         this.removeTransition(e.target);
         if(this.numOutTransitions == 0)
         {
            this.restoreContentAppearance();
            wasVisible = this._content.visible;
            if(wasVisible && (_triggerEvent == "hide" || _triggerEvent == "hideChild"))
            {
               this._content.visible = false;
            }
            if(wasVisible)
            {
               this.dispatchEvent(new Event("allTransitionsOutDone"));
            }
         }
      }
      
      public function restoreContentAppearance() : void
      {
         var i:* = null;
         var c:MovieClip = this._content;
         var a:Object = this._contentAppearance;
         for(i in this._visualPropList)
         {
            c[i] = a[i];
         }
         c.transform.colorTransform = a.colorTransform;
      }
      
      public function get numTransitions() : Number
      {
         var t:Transition = null;
         var n:Number = 0;
         for each(t in this._transitions)
         {
            n++;
         }
         return n;
      }
      
      public function findTransition(transParams:Object) : Transition
      {
         var t:Transition = null;
         for each(t in this._transitions)
         {
            if(t.type == transParams.type)
            {
               return t;
            }
         }
         return null;
      }
      
      public function set content(c:MovieClip) : void
      {
         this._content = c;
         this.saveContentAppearance();
      }
      
      public function get numInTransitions() : Number
      {
         var t:Transition = null;
         var n:Number = 0;
         var ts:Object = this._transitions;
         for each(t in ts)
         {
            if(!t.direction)
            {
               n++;
            }
         }
         return n;
      }
      
      public function get numOutTransitions() : Number
      {
         var t:Transition = null;
         var n:Number = 0;
         var ts:Object = this._transitions;
         for each(t in ts)
         {
            if(t.direction)
            {
               n++;
            }
         }
         return n;
      }
      
      public function get content() : MovieClip
      {
         return this._content;
      }
      
      public function get transitionsList() : Object
      {
         return this._transitions;
      }
      
      public function get contentAppearance() : Object
      {
         return this._contentAppearance;
      }
   }
}

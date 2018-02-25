package com.gaiaonline.utils
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.InteractiveObject;
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.utils.Dictionary;
   import flash.utils.getQualifiedClassName;
   
   public class DisplayObjectUtils
   {
      
      private static const MAX_STOP_RETRIES:uint = 10;
      
      private static var s_debug:Boolean = false;
      
      private static var s_trackedMovieClips:Dictionary = new Dictionary(false);
      
      private static const MIN_STOP_RETRIES:uint = 2;
      
      private static var s_stage:DisplayObject;
      
      private static var toBeCleared:Array = new Array();
       
      
      public function DisplayObjectUtils()
      {
         super();
      }
      
      public static function ClearAllChildrens(obj:DisplayObjectContainer, level:int = 0, maxlevel:Number = Infinity) : void
      {
         var childAt:Number = NaN;
         var sObj:DisplayObject = null;
         var sDoc:DisplayObjectContainer = null;
         if(level >= maxlevel)
         {
            return;
         }
         var doc:DisplayObjectContainer = obj as DisplayObjectContainer;
         if(null != doc)
         {
            if(0 == doc.numChildren)
            {
               return;
            }
            if(0 == level)
            {
               doc.addEventListener(Event.ENTER_FRAME,onClearAllChildrensCleanup);
            }
            for(childAt = obj.numChildren - 1; childAt >= 0; )
            {
               sObj = obj.getChildAt(childAt);
               if(null != sObj)
               {
                  if(-1 == toBeCleared.indexOf(sObj))
                  {
                     toBeCleared.push(sObj);
                     if(!sObj.hasEventListener(Event.ENTER_FRAME))
                     {
                     }
                     sDoc = sObj as DisplayObjectContainer;
                     if(null != sDoc)
                     {
                        ClearAllChildrens(sDoc,level + 1,maxlevel);
                     }
                     sObj = null;
                  }
               }
               childAt--;
            }
         }
      }
      
      public static function stopAssetMovieClip(mc:MovieClip) : void
      {
         if(mc.currentLabels.indexOf("StopLabel") >= 0)
         {
            mc.gotoAndStop("StopLabel");
         }
         else
         {
            mc.stop();
         }
      }
      
      public static function createClearAllChildrensImmuneBitmap(bitmapData:BitmapData = null, pixelSnapping:String = "auto", smoothing:Boolean = false) : Bitmap
      {
         return new ClearAllChildrensImmuneBitmap(bitmapData,pixelSnapping,smoothing);
      }
      
      private static function recurseImpl(functor:Object, parent:DisplayObject, child:DisplayObject) : void
      {
         var container:DisplayObjectContainer = null;
         var rawChildren:Object = null;
         if(functor.excludes && functor.excludes[child])
         {
            return;
         }
         if((parent || child) && functor.onObject(functor,parent,child))
         {
            container = child as DisplayObjectContainer;
            if(container)
            {
               try
               {
                  rawChildren = container["rawChildren"];
               }
               catch(e:Error)
               {
               }
               recurseImplLooper(rawChildren || container,functor,child);
            }
         }
      }
      
      private static function stopMovieClipsFn(functor:Object, parent:DisplayObject, child:DisplayObject) : Boolean
      {
         var mc:MovieClip = null;
         if(functor.excludes && functor.excludes[child])
         {
            return false;
         }
         if((parent || child) && child is MovieClip)
         {
            mc = MovieClip(child);
            if(mc.totalFrames > 1)
            {
               if(functor.frame != null)
               {
                  mc.gotoAndStop(functor.frame);
               }
               else
               {
                  stopAssetMovieClip(mc);
               }
               if(functor.forceStop)
               {
                  trackMovieClip(mc);
               }
            }
         }
         else if(child == null)
         {
            if(parent)
            {
               parent.addEventListener(Event.ADDED,onNullChildFuckUpAdded);
            }
         }
         return true;
      }
      
      private static function removeChildAt(parent:DisplayObjectContainer, index:int) : void
      {
         var child:DisplayObject = parent.getChildAt(index);
         DisplayObjectUtils.removeChild(parent,child);
      }
      
      public static function addWeakListener(obj:EventDispatcher, type:String, listener:Function, useCapture:Boolean = false, priority:int = 0) : void
      {
         obj.addEventListener(type,listener,useCapture,priority,true);
      }
      
      public static function startAllMovieClips(mc:DisplayObject, excludes:Object = null) : void
      {
         var functor:Object = {
            "onObject":startMovieClipsFn,
            "excludes":excludes
         };
         recurse(functor,mc);
      }
      
      private static function trackMovieClip(mc:MovieClip) : void
      {
         if(!s_trackedMovieClips[mc])
         {
            s_trackedMovieClips[mc] = {
               "lastFrame":mc.currentFrame,
               "attempts":0
            };
         }
         if(!s_stage)
         {
            s_stage = mc.stage;
         }
         if(s_stage)
         {
            s_stage.addEventListener(Event.ENTER_FRAME,onTrackedMovieClipEnterFrrame,false,0,true);
         }
      }
      
      private static function onNullChildFuckUpAdded(evt:Event) : void
      {
         var obj:DisplayObject = evt.currentTarget as DisplayObject;
         if(obj)
         {
            stopAllMovieClips(obj);
            obj.removeEventListener(Event.ADDED,onNullChildFuckUpAdded);
         }
      }
      
      public static function createStopAllMovieClipFunctor() : Object
      {
         return {
            "onObject":stopMovieClipsFn,
            "frame":null,
            "excludes":null,
            "forceStop":null
         };
      }
      
      private static function onClearAllChildrensCleanup(evt:Event) : void
      {
         var dobj:DisplayObject = null;
         var parent:DisplayObjectContainer = null;
         (evt.target as DisplayObject).removeEventListener(evt.type,arguments.callee);
         if(0 == toBeCleared.length)
         {
            return;
         }
         for(var x:Number = 0; x < toBeCleared.length; x++)
         {
            dobj = toBeCleared[x];
            parent = dobj.parent;
            if(!(parent is Loader) && parent && parent.contains(dobj))
            {
               try
               {
                  DisplayObjectUtils.removeChild(parent,dobj);
                  if(dobj is Bitmap && !(dobj is DisplayObjectUtils))
                  {
                     Bitmap(dobj).bitmapData.dispose();
                  }
               }
               catch(e:ArgumentError)
               {
               }
            }
         }
         toBeCleared = new Array();
      }
      
      public static function set debug(d:Boolean) : void
      {
         s_debug = d;
      }
      
      public static function playAssetMovieClip(mc:MovieClip) : void
      {
         if(mc.currentLabels.indexOf("StopLabel") >= 0)
         {
            mc.gotoAndPlay(0);
         }
         else
         {
            mc.play();
         }
      }
      
      public static function createStartAllMovieClipFunctor() : Object
      {
         return {
            "onObject":stopMovieClipsFn,
            "excludes":null
         };
      }
      
      private static function trIndented(str:String, level:int) : void
      {
         var out:* = "";
         for(var i:int = 0; i < level; i++)
         {
            out = out + " ";
         }
         trace(out + str);
      }
      
      private static function recurseImplLooper(container:Object, functor:Object, child:DisplayObject) : void
      {
         var grandChild:DisplayObject = null;
         var childrenCount:Number = container.numChildren;
         for(var i:int = 0; i < childrenCount; i++)
         {
            grandChild = container.getChildAt(i);
            recurseImpl(functor,child,grandChild);
         }
      }
      
      public static function toPathString(dobj:DisplayObject) : String
      {
         var historyObj:DisplayObject = null;
         var name:String = null;
         var history:Array = [];
         history.push(dobj);
         var parent:DisplayObject = dobj.parent;
         while(parent != null)
         {
            history.push(parent);
            parent = parent.parent;
         }
         var path:* = "";
         for(var index:int = 0; index < history.length; index++)
         {
            historyObj = history[index];
            if(path.length > 0)
            {
               path = path + " -> ";
            }
            name = historyObj.name || "null";
            if(name.indexOf("instance") == 0)
            {
               name = "instance";
            }
            path = path + (name + " " + getQualifiedClassName(historyObj));
         }
         return path;
      }
      
      private static function onTrackedMovieClipEnterFrrame(e:Event) : void
      {
         var obj:* = null;
         var mc:MovieClip = null;
         var rec:Object = null;
         var numTracking:int = 0;
         for(obj in s_trackedMovieClips)
         {
            mc = MovieClip(obj);
            if(mc.stage)
            {
               delete s_trackedMovieClips[mc];
            }
            else
            {
               stopAllMovieClips(mc);
               rec = s_trackedMovieClips[mc];
               rec.attempts++;
               if(mc.currentFrame == rec.lastFrame && rec.attempts >= MIN_STOP_RETRIES)
               {
                  delete s_trackedMovieClips[mc];
               }
               else if(rec.attempts >= MAX_STOP_RETRIES)
               {
                  delete s_trackedMovieClips[mc];
                  if(s_debug)
                  {
                     throw "MovieClip unable to be stopped: " + toPathString(mc);
                  }
               }
               else
               {
                  rec.lastFrame = mc.currentFrame;
                  numTracking++;
               }
            }
         }
         if(!numTracking)
         {
            EventDispatcher(e.target).removeEventListener(e.type,arguments.callee);
         }
      }
      
      private static function removeChild(parent:DisplayObjectContainer, child:DisplayObject) : void
      {
         var name:String = child.name;
         if(parent.hasOwnProperty(name) && parent[name] == child)
         {
            parent[name] = null;
         }
         parent.removeChild(child);
      }
      
      public static function stopAllMovieClips(mc:DisplayObject, frame:Object = null, excludes:Object = null, forceStop:Boolean = true) : void
      {
         var functor:Object = {
            "onObject":stopMovieClipsFn,
            "frame":frame,
            "excludes":excludes,
            "forceStop":forceStop
         };
         recurse(functor,mc);
      }
      
      public static function traceDisplayList(obj:DisplayObject, level:int = 0, visibilityReport:Object = null) : void
      {
         var flexContainer:Object = null;
         var i:int = 0;
         var child:DisplayObject = null;
         if(!obj)
         {
            trIndented("<null/>",level);
         }
         var type:String = String(obj).replace("]","").replace("[object ","").replace(" ","");
         if(type.indexOf(".") >= 0)
         {
            type = type.split(".").pop();
         }
         var tag:String = "<" + type;
         if(obj.name && obj.name.length && obj.name.search("instance") != 0)
         {
            tag = tag + (" name=\'" + obj.name + "\'");
         }
         if(obj is InteractiveObject)
         {
            tag = tag + (" mouseEnabled=\'" + InteractiveObject(obj).mouseEnabled + "\'");
            if(obj.hasEventListener(MouseEvent.CLICK) || obj.hasEventListener(MouseEvent.MOUSE_DOWN) || obj.hasEventListener(MouseEvent.MOUSE_MOVE) || obj.hasEventListener(MouseEvent.ROLL_OVER) || obj.hasEventListener(MouseEvent.ROLL_OUT) || obj.hasEventListener(MouseEvent.MOUSE_OVER) || obj.hasEventListener(MouseEvent.MOUSE_OUT))
            {
               tag = tag + " hasMouseListener=\'true\'";
            }
         }
         if(obj is TextField)
         {
            tag = tag + (" text=\'" + TextField(obj).text + "\'");
         }
         if(visibilityReport)
         {
            visibilityReport.visTotal++;
         }
         if(!obj.visible)
         {
            tag = tag + " visible=\'false\'";
            if(visibilityReport)
            {
               visibilityReport.visDepth++;
            }
            if(!visibilityReport)
            {
               var visibilityReport:Object = {
                  "visDepth":1,
                  "visTotal":1
               };
            }
         }
         var objAsContainer:Object = obj as DisplayObjectContainer;
         if(objAsContainer)
         {
            try
            {
               flexContainer = obj["rawChildren"];
            }
            catch(e:Error)
            {
            }
            if(flexContainer)
            {
               objAsContainer = flexContainer;
            }
         }
         var numChildren:int = !!objAsContainer?int(objAsContainer.numChildren):0;
         if(numChildren)
         {
            tag = tag + ">";
            for(trIndented(tag,level); i < numChildren; )
            {
               child = objAsContainer.getChildAt(i);
               traceDisplayList(child,level + 1,visibilityReport);
               i++;
            }
            trIndented("</" + type + ">",level);
         }
         else
         {
            tag = tag + "/>";
            trIndented(tag,level);
         }
         if(!obj.visible)
         {
            if(!--visibilityReport.visDepth)
            {
               trIndented("<!-- vis report: " + visibilityReport.visTotal + " invisible objects -->",level);
            }
         }
      }
      
      public static function bringToFront(dobj:DisplayObject) : void
      {
         if(dobj.parent)
         {
            dobj.parent.setChildIndex(dobj,dobj.parent.numChildren - 1);
         }
      }
      
      private static function startMovieClipsFn(self:Object, parent:DisplayObject, child:DisplayObject) : Boolean
      {
         if(child is MovieClip)
         {
            playAssetMovieClip(MovieClip(child));
         }
         return true;
      }
      
      public static function recurse(functor:Object, obj:DisplayObject) : void
      {
         recurseImpl(functor,!!obj?obj.parent:null,obj);
      }
   }
}

import flash.display.Bitmap;
import flash.display.BitmapData;

class ClearAllChildrensImmuneBitmap extends Bitmap
{
    
   
   function ClearAllChildrensImmuneBitmap(bitmapData:BitmapData, pixelSnapping:String, smoothing:Boolean)
   {
      super(bitmapData,pixelSnapping,smoothing);
   }
}

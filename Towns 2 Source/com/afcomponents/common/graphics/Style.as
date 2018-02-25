package com.afcomponents.common.graphics
{
   import flash.utils.getDefinitionByName;
   import flash.utils.getQualifiedClassName;
   import flash.utils.getQualifiedSuperclassName;
   
   public class Style
   {
      
      public static const ENUM_CONST:String = "ENUM_PARAMS";
      
      public static const CLONE_METHOD:String = "clone";
       
      
      public function Style(param1:Object = null)
      {
         super();
         if(param1)
         {
            this.copy(param1);
         }
      }
      
      public static function copyStyle(param1:Object, param2:Object) : void
      {
         var _loc6_:String = null;
         var _loc8_:* = undefined;
         var _loc9_:uint = 0;
         var _loc3_:Class = getDefinitionByName(getQualifiedClassName(param2)) as Class;
         if(_loc3_ === Object)
         {
            for(_loc8_ in param2)
            {
               if(param1.hasOwnProperty(_loc8_))
               {
                  param1[_loc8_] = param2[_loc8_];
               }
            }
            return;
         }
         var _loc4_:uint = 0;
         var _loc5_:Array = null;
         var _loc7_:* = null;
         while(_loc3_ && _loc3_ !== Object)
         {
            if(_loc3_[ENUM_CONST] && _loc3_[ENUM_CONST] is Array)
            {
               _loc5_ = _loc3_[ENUM_CONST];
               _loc4_ = _loc5_.length;
               _loc9_ = 0;
               while(_loc9_ < _loc4_)
               {
                  _loc6_ = _loc5_[_loc9_];
                  _loc7_ = param2[_loc6_];
                  if(_loc7_ is Array)
                  {
                     _loc7_ = _loc7_.concat();
                  }
                  else if(_loc7_ && _loc7_.hasOwnProperty(CLONE_METHOD) && _loc7_[CLONE_METHOD] is Function)
                  {
                     param1[_loc6_] = _loc7_.clone();
                  }
                  else
                  {
                     param1[_loc6_] = _loc7_;
                  }
                  _loc9_++;
               }
            }
            _loc3_ = getDefinitionByName(getQualifiedSuperclassName(_loc3_)) as Class;
         }
      }
      
      public function copy(param1:Object) : void
      {
         Style.copyStyle(this,param1);
      }
      
      public function clone() : Style
      {
         var _loc1_:Class = getDefinitionByName(getQualifiedClassName(this)) as Class;
         return new _loc1_(this);
      }
      
      public function concat(param1:Object) : Style
      {
         var _loc2_:Style = this.clone();
         _loc2_.copy(param1);
         return _loc2_;
      }
   }
}

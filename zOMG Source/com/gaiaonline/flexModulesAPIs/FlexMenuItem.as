package com.gaiaonline.flexModulesAPIs
{
   public class FlexMenuItem
   {
      
      public static const RECREWT:String = "Recrewt";
      
      public static const WHISPER:String = "Whisper";
      
      public static const CHARACTER_INFO:String = "Character Info";
      
      public static const KICK:String = "Kick";
      
      public static const INVITE:String = "Invite";
      
      public static const VIEW_PROFILE:String = "View Profile";
      
      public static const ADD_IGNORE:String = "Ignore User";
      
      public static const REMOVE_IGNORE:String = "Remove Ignore";
      
      public static const LEAVE:String = "Leave";
      
      public static const PROMOTE:String = "Promote";
      
      public static const REPORT_ABUSE:String = "Report Abuse";
      
      public static const ADD_FRIEND:String = "Add Friend";
       
      
      private var _enabled:Boolean = true;
      
      private var _alignment:String = "left";
      
      private var _data:Object = null;
      
      private var _toggled:Boolean = true;
      
      private var _icon:Class = null;
      
      private var _type:String = "normal";
      
      private var _children:Array = null;
      
      private var _color:Number = 16777215;
      
      private var _groupName:String = null;
      
      private var _label:String = null;
      
      private var _skinType:String = "main";
      
      public function FlexMenuItem(label:String, type:String = "normal")
      {
         super();
         this._label = label;
         this._type = type;
      }
      
      public function get icon() : Class
      {
         return this._icon;
      }
      
      public function get enabled() : Boolean
      {
         return _enabled;
      }
      
      public function set icon(icon:Class) : void
      {
         this._icon = icon;
      }
      
      public function set color(color:Number) : void
      {
         this._color = color;
      }
      
      public function get toggled() : Boolean
      {
         return _toggled;
      }
      
      public function addChild(label:String, alignment:String = "right", skinType:String = "main") : FlexMenuItem
      {
         if(null == _children)
         {
            _children = [];
         }
         var flexMenuItem:FlexMenuItem = new FlexMenuItem(label);
         flexMenuItem.alignment = alignment;
         flexMenuItem.skinType = skinType;
         _children.push(flexMenuItem);
         return flexMenuItem;
      }
      
      public function set data(data:Object) : void
      {
         _data = data;
      }
      
      public function set alignment(alignment:String) : void
      {
         this._alignment = alignment;
      }
      
      public function get skinType() : String
      {
         return this._skinType;
      }
      
      public function set enabled(enable:Boolean) : void
      {
         this._enabled = enable;
      }
      
      public function set groupName(name:String) : void
      {
         this._groupName = name;
      }
      
      public function set toggled(toggle:Boolean) : void
      {
         this._toggled = toggle;
      }
      
      public function get color() : Number
      {
         return _color;
      }
      
      public function set label(label:String) : void
      {
         this._label = label;
      }
      
      public function set skinType(type:String) : void
      {
         this._skinType = type;
      }
      
      public function get data() : Object
      {
         return _data;
      }
      
      public function get label() : String
      {
         return _label;
      }
      
      public function get groupName() : String
      {
         return _groupName;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function get alignment() : String
      {
         return this._alignment;
      }
      
      public function get children() : Array
      {
         return _children;
      }
   }
}

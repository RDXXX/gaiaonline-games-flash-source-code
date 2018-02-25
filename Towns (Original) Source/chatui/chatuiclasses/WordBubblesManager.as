class chatui.chatuiclasses.WordBubblesManager
{
   var _slideSpeed = 20;
   var _maxBubble = 3;
   function WordBubblesManager(ChatLayer, SlideSpeed, Swf, BoundaryPoints, MaxBubble)
   {
      this._chatLayer = ChatLayer;
      this._wbGroups = new Object();
      this._slideSpeed = SlideSpeed;
      this._swf = Swf;
      this._boundaryPoints = BoundaryPoints;
      if(MaxBubble != null)
      {
         this._maxBubble = MaxBubble;
      }
      var master = this;
      this._chatLayer.onEnterFrame = function()
      {
         for(var _loc1_ in master._wbGroups)
         {
            if(master._wbGroups[_loc1_].Remove)
            {
               delete master._wbGroups.register1;
            }
            else
            {
               master._wbGroups[_loc1_].Render();
            }
         }
      };
   }
   function AddText(UserName, targetMc, Text, Type, xOffset, yOffset, TargetMCLvl2)
   {
      if(this._wbGroups[UserName] == undefined || this._wbGroups[UserName] == null)
      {
         this._wbGroups[UserName] = new Array();
         var _loc3_ = new chatui.chatuiclasses.WordBubblesGroup(UserName,targetMc,this._chatLayer,Text,this._slideSpeed,this._swf,Type,xOffset,yOffset,this._boundaryPoints,TargetMCLvl2,this._maxBubble);
         this._wbGroups[UserName] = _loc3_;
      }
      else
      {
         this._wbGroups[UserName].AddMessage(Text,Type);
      }
   }
   function Refresh(UserName)
   {
      if(this._wbGroups[UserName] != undefined && this._wbGroups[UserName] != null)
      {
         this._wbGroups[UserName].Refresh();
      }
   }
   function ClearAll()
   {
      for(var _loc2_ in this._wbGroups)
      {
         this._wbGroups[_loc2_].Clear();
      }
   }
   function Clear(UserName)
   {
      this._wbGroups[UserName].Clear();
   }
}

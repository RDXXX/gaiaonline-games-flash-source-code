package com.gaiaonline.battle.map
{
   import com.gaiaonline.battle.ConColors;
   import com.gaiaonline.battle.utils.BattleUtils;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.geom.Transform;
   import flash.utils.getTimer;
   
   public class AwareMonster extends AwareObject
   {
       
      
      private var _conColor:Number = NaN;
      
      private var _lastDrawn:Object;
      
      private var _speed:Number = NaN;
      
      private var _throttler:int = 0;
      
      private var _conLevelDiff:Number = NaN;
      
      private var _lastMoveTime:int = 0;
      
      private var _conColors:ConColors = null;
      
      public function AwareMonster()
      {
         _lastDrawn = {
            "scale":NaN,
            "alpha":NaN,
            "color":0
         };
         super();
      }
      
      public function setSpeed(spd:Number) : void
      {
         this._speed = spd;
      }
      
      public function setPosition(xPos:Number, yPos:Number) : void
      {
         var pt:Point = null;
         if(_serverLoc == null)
         {
            _serverLoc = new Point();
         }
         if(xPos != _serverLoc.x || yPos != _serverLoc.y)
         {
            _serverLoc.x = xPos;
            _serverLoc.y = yPos;
            if(!_playerRoom)
            {
               _playerRoom = this._mapRoomManager.getCurrentMapRoom();
            }
            if(_playerRoom)
            {
               pt = _playerRoom.getRoomOffset();
               this.x = pt.x + (_drawX || _serverLoc.x * _playerRoom.scale / 100);
               this.y = pt.y + (_drawY || _serverLoc.y * _playerRoom.scale / 100);
            }
         }
      }
      
      override public function reset() : void
      {
         _speed = NaN;
         _conLevelDiff = NaN;
         _conColor = NaN;
         _lastMoveTime = 0;
         _myParent = null;
         _throttler = 0;
         this.setVisible(false);
         super.reset();
         this.dispose();
      }
      
      private function drawAwareness() : void
      {
         var thisTransform:Transform = null;
         var ct:ColorTransform = null;
         if(!isNaN(_scale) && !isNaN(_alpha) && !isNaN(_conLevelDiff))
         {
            if(this._scale > 0 && this._alpha > 0)
            {
               if(this._scale != _lastDrawn.scale)
               {
                  this.scaleX = this.scaleY = this._scale / 2;
                  _lastDrawn.scale = this._scale;
               }
               if(this._conColor != _lastDrawn.color || this._alpha != _lastDrawn.alpha)
               {
                  thisTransform = this.transform;
                  ct = thisTransform.colorTransform;
                  ct.color = this._conColor;
                  ct.alphaMultiplier = this._alpha;
                  thisTransform.colorTransform = ct;
                  _lastDrawn.alpha = this._alpha;
                  _lastDrawn.color = this._conColor;
               }
               this.setVisible(true);
            }
            else
            {
               this.setVisible(false);
            }
         }
      }
      
      private function onEnterFrame(evt:Event) : void
      {
         if(++_throttler % 2 == 0)
         {
            if(!this._myParent)
            {
               this._myParent = this.parent;
            }
            doMove();
            _alpha = calculateAlpha();
            _scale = calculateScale();
            drawAwareness();
         }
      }
      
      public function initialize(args:Array) : void
      {
         var mapRoomManager:IMapRoomManager = args[0];
         var dir:String = args[1];
         var room:String = args[2];
         super.init(mapRoomManager,dir,room);
         this.addEventListener(Event.ENTER_FRAME,onEnterFrame,false,0,true);
         this._conColors = ConColors.getInstance();
      }
      
      public function setConLevelDiff(conDiff:Number) : void
      {
         if(isNaN(_conLevelDiff) || conDiff != _conLevelDiff)
         {
            _conLevelDiff = conDiff;
            _conColor = this._conColors.getConColorForDiff(_conLevelDiff);
         }
      }
      
      public function setDestination(tx:Number, ty:Number) : void
      {
         if(_targetLoc == null)
         {
            _targetLoc = new Point();
         }
         _targetLoc.x = tx;
         _targetLoc.y = ty;
         _lastMoveTime = getTimer();
      }
      
      private function doMove() : void
      {
         var time:int = 0;
         var elapsedMilliSeconds:int = 0;
         var seconds:Number = NaN;
         var movePixels:Number = NaN;
         var distance:Number = NaN;
         var percentMoved:Number = NaN;
         var currentLoc:Point = null;
         if(!isNaN(_speed) && null != _targetLoc && null != _serverLoc && !_targetLoc.equals(_serverLoc))
         {
            time = getTimer();
            elapsedMilliSeconds = time - _lastMoveTime;
            _lastMoveTime = time;
            seconds = elapsedMilliSeconds / 1000;
            movePixels = seconds * _speed;
            distance = BattleUtils.distanceBetweenPoints(_targetLoc,_serverLoc);
            percentMoved = Math.min(1,movePixels / distance);
            currentLoc = Point.interpolate(_targetLoc,_serverLoc,percentMoved);
            setPosition(currentLoc.x,currentLoc.y);
         }
      }
      
      public function dispose() : void
      {
         this.removeEventListener(Event.ENTER_FRAME,onEnterFrame);
      }
   }
}

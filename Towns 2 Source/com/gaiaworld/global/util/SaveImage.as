package com.gaiaworld.global.util
{
   import com.adobe.images.JPGEncoder;
   import com.adobe.images.PNGEncoder;
   import com.gaiaworld.avatar.model.AvatarModel;
   import com.gaiaworld.global.model.GlobalModel;
   import com.gaiaworld.room.model.RoomModel;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.net.FileReference;
   import flash.utils.ByteArray;
   
   public class SaveImage
   {
       
      
      private var globalModel:GlobalModel;
      
      private var roomModel:RoomModel;
      
      private var avatarModel:AvatarModel;
      
      private var fileReference:FileReference;
      
      public var imageObject:Sprite;
      
      public function SaveImage()
      {
         this.globalModel = GlobalModel.getInstance();
         this.roomModel = RoomModel.getInstance();
         this.avatarModel = AvatarModel.getInstance();
         this.fileReference = new FileReference();
         super();
      }
      
      public function saveImageToDisk(param1:Event) : *
      {
         var _loc2_:BitmapData = this.snap2(this.imageObject);
         var _loc3_:JPGEncoder = new JPGEncoder(80);
         var _loc4_:ByteArray = _loc3_.encode(_loc2_);
         this.fileReference.save(_loc4_,"image.jpg");
      }
      
      public function saveImageToDisk2(param1:Event) : *
      {
         var _loc2_:BitmapData = this.snapClip(this.imageObject);
         var _loc3_:JPGEncoder = new JPGEncoder(80);
         var _loc4_:ByteArray = _loc3_.encode(_loc2_);
         this.fileReference.save(_loc4_,"image.jpg");
      }
      
      public function savePNG(param1:Event) : *
      {
         var _loc2_:BitmapData = this.snapClipTrans(this.imageObject);
         this.fileReference.save(PNGEncoder.encode(_loc2_),"image.png");
      }
      
      private function snapClip(param1:DisplayObject) : BitmapData
      {
         var _loc2_:Rectangle = param1.getBounds(param1);
         var _loc3_:BitmapData = new BitmapData(int(_loc2_.width + 0.5),int(_loc2_.height + 0.5),false);
         _loc3_.draw(param1,new Matrix(1,0,0,1,-_loc2_.x,-_loc2_.y));
         return _loc3_;
      }
      
      private function snapClipTrans(param1:DisplayObject) : BitmapData
      {
         var _loc2_:Rectangle = param1.getBounds(param1);
         var _loc3_:BitmapData = new BitmapData(int(_loc2_.width + 0.5),int(_loc2_.height + 0.5),true,0);
         _loc3_.draw(param1,new Matrix(1,0,0,1,-_loc2_.x,-_loc2_.y));
         return _loc3_;
      }
      
      private function snapPart(param1:DisplayObject) : *
      {
         var _loc2_:Rectangle = param1.getBounds(param1);
         var _loc3_:BitmapData = new BitmapData(this.globalModel.viewWidth,this.globalModel.viewHeight,false);
         _loc3_.draw(param1,new Matrix(1,0,0,1,this.roomModel.scrollX,this.roomModel.scrollY));
         return _loc3_;
      }
      
      private function snap2(param1:DisplayObject) : BitmapData
      {
         var _loc2_:Rectangle = param1.getBounds(param1);
         var _loc3_:Number = int(_loc2_.width + 0.5);
         var _loc4_:Number = int(_loc2_.height + 0.5);
         if(_loc4_ > 2800)
         {
            _loc4_ = 2800;
         }
         if(_loc3_ > 2800)
         {
            _loc3_ = 2800;
         }
         var _loc5_:BitmapData = new BitmapData(_loc3_,_loc4_,false);
         _loc5_.draw(param1);
         var _loc6_:BitmapData = new BitmapData(this.globalModel.viewWidth,this.globalModel.viewHeight,false);
         var _loc7_:Number = this.avatarModel.currentX - this.globalModel.viewWidth / 2;
         var _loc8_:Number = this.avatarModel.currentY - this.globalModel.viewHeight / 2;
         if(_loc7_ < 0)
         {
            _loc7_ = 0;
         }
         if(_loc8_ < 0)
         {
            _loc8_ = 0;
         }
         var _loc9_:Number = this.globalModel.mapWidth - this.globalModel.viewWidth;
         var _loc10_:Number = this.globalModel.mapHeight - this.globalModel.viewHeight;
         if(_loc7_ > _loc9_)
         {
            _loc7_ = _loc9_;
         }
         if(_loc8_ > _loc10_)
         {
            _loc8_ = _loc10_;
         }
         _loc6_.copyPixels(_loc5_,new Rectangle(_loc7_,_loc8_,this.globalModel.viewWidth,this.globalModel.viewHeight),new Point(0,0));
         return _loc6_;
      }
   }
}

package mx.skins
{
   import flash.display.Graphics;
   import flash.geom.Matrix;
   import mx.core.FlexShape;
   import mx.core.IFlexDisplayObject;
   import mx.core.IInvalidating;
   import mx.core.IProgrammaticSkin;
   import mx.core.UIComponentGlobals;
   import mx.core.mx_internal;
   import mx.managers.ILayoutManagerClient;
   import mx.styles.ISimpleStyleClient;
   import mx.styles.IStyleClient;
   import mx.utils.GraphicsUtil;
   
   use namespace mx_internal;
   
   public class ProgrammaticSkin extends FlexShape implements IFlexDisplayObject, IInvalidating, ILayoutManagerClient, ISimpleStyleClient, IProgrammaticSkin
   {
      
      mx_internal static const VERSION:String = "3.6.0.21751";
      
      private static var tempMatrix:Matrix = new Matrix();
       
      
      private var _initialized:Boolean = false;
      
      private var _height:Number;
      
      private var invalidateDisplayListFlag:Boolean = false;
      
      private var _styleName:IStyleClient;
      
      private var _nestLevel:int = 0;
      
      private var _processedDescriptors:Boolean = false;
      
      private var _updateCompletePendingFlag:Boolean = true;
      
      private var _width:Number;
      
      public function ProgrammaticSkin()
      {
         super();
         _width = measuredWidth;
         _height = measuredHeight;
      }
      
      public function getStyle(styleProp:String) : *
      {
         return !!_styleName?_styleName.getStyle(styleProp):null;
      }
      
      protected function updateDisplayList(unscaledWidth:Number, unscaledHeight:Number) : void
      {
      }
      
      public function get nestLevel() : int
      {
         return _nestLevel;
      }
      
      public function set nestLevel(value:int) : void
      {
         _nestLevel = value;
         invalidateDisplayList();
      }
      
      override public function get height() : Number
      {
         return _height;
      }
      
      public function get updateCompletePendingFlag() : Boolean
      {
         return _updateCompletePendingFlag;
      }
      
      protected function verticalGradientMatrix(x:Number, y:Number, width:Number, height:Number) : Matrix
      {
         return rotatedGradientMatrix(x,y,width,height,90);
      }
      
      public function validateSize(recursive:Boolean = false) : void
      {
      }
      
      public function invalidateDisplayList() : void
      {
         if(!invalidateDisplayListFlag && nestLevel > 0)
         {
            invalidateDisplayListFlag = true;
            UIComponentGlobals.layoutManager.invalidateDisplayList(this);
         }
      }
      
      public function set updateCompletePendingFlag(value:Boolean) : void
      {
         _updateCompletePendingFlag = value;
      }
      
      protected function horizontalGradientMatrix(x:Number, y:Number, width:Number, height:Number) : Matrix
      {
         return rotatedGradientMatrix(x,y,width,height,0);
      }
      
      override public function set height(value:Number) : void
      {
         _height = value;
         invalidateDisplayList();
      }
      
      public function set processedDescriptors(value:Boolean) : void
      {
         _processedDescriptors = value;
      }
      
      public function validateDisplayList() : void
      {
         invalidateDisplayListFlag = false;
         updateDisplayList(width,height);
      }
      
      public function get measuredWidth() : Number
      {
         return 0;
      }
      
      override public function set width(value:Number) : void
      {
         _width = value;
         invalidateDisplayList();
      }
      
      public function get measuredHeight() : Number
      {
         return 0;
      }
      
      public function set initialized(value:Boolean) : void
      {
         _initialized = value;
      }
      
      protected function drawRoundRect(x:Number, y:Number, width:Number, height:Number, cornerRadius:Object = null, color:Object = null, alpha:Object = null, gradientMatrix:Matrix = null, gradientType:String = "linear", gradientRatios:Array = null, hole:Object = null) : void
      {
         var ellipseSize:Number = NaN;
         var alphas:Array = null;
         var holeR:Object = null;
         var g:Graphics = graphics;
         if(width == 0 || height == 0)
         {
            return;
         }
         if(color !== null)
         {
            if(color is uint)
            {
               g.beginFill(uint(color),Number(alpha));
            }
            else if(color is Array)
            {
               alphas = alpha is Array?alpha as Array:[alpha,alpha];
               if(!gradientRatios)
               {
                  gradientRatios = [0,255];
               }
               g.beginGradientFill(gradientType,color as Array,alphas,gradientRatios,gradientMatrix);
            }
         }
         if(!cornerRadius)
         {
            g.drawRect(x,y,width,height);
         }
         else if(cornerRadius is Number)
         {
            ellipseSize = Number(cornerRadius) * 2;
            g.drawRoundRect(x,y,width,height,ellipseSize,ellipseSize);
         }
         else
         {
            GraphicsUtil.drawRoundRectComplex(g,x,y,width,height,cornerRadius.tl,cornerRadius.tr,cornerRadius.bl,cornerRadius.br);
         }
         if(hole)
         {
            holeR = hole.r;
            if(holeR is Number)
            {
               ellipseSize = Number(holeR) * 2;
               g.drawRoundRect(hole.x,hole.y,hole.w,hole.h,ellipseSize,ellipseSize);
            }
            else
            {
               GraphicsUtil.drawRoundRectComplex(g,hole.x,hole.y,hole.w,hole.h,holeR.tl,holeR.tr,holeR.bl,holeR.br);
            }
         }
         if(color !== null)
         {
            g.endFill();
         }
      }
      
      public function get processedDescriptors() : Boolean
      {
         return _processedDescriptors;
      }
      
      public function set styleName(value:Object) : void
      {
         if(_styleName != value)
         {
            _styleName = value as IStyleClient;
            invalidateDisplayList();
         }
      }
      
      public function setActualSize(newWidth:Number, newHeight:Number) : void
      {
         var changed:Boolean = false;
         if(_width != newWidth)
         {
            _width = newWidth;
            changed = true;
         }
         if(_height != newHeight)
         {
            _height = newHeight;
            changed = true;
         }
         if(changed)
         {
            invalidateDisplayList();
         }
      }
      
      public function styleChanged(styleProp:String) : void
      {
         invalidateDisplayList();
      }
      
      override public function get width() : Number
      {
         return _width;
      }
      
      public function invalidateProperties() : void
      {
      }
      
      public function get initialized() : Boolean
      {
         return _initialized;
      }
      
      protected function rotatedGradientMatrix(x:Number, y:Number, width:Number, height:Number, rotation:Number) : Matrix
      {
         tempMatrix.createGradientBox(width,height,rotation * Math.PI / 180,x,y);
         return tempMatrix;
      }
      
      public function move(x:Number, y:Number) : void
      {
         this.x = x;
         this.y = y;
      }
      
      public function get styleName() : Object
      {
         return _styleName;
      }
      
      public function validateNow() : void
      {
         if(invalidateDisplayListFlag)
         {
            validateDisplayList();
         }
      }
      
      public function invalidateSize() : void
      {
      }
      
      public function validateProperties() : void
      {
      }
   }
}

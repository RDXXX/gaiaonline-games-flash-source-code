package com.gaiaonline.battle.utils
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.ByteArray;
   
   public class NumericRasterTextField extends Bitmap
   {
      
      private static const FIRST_CHAR_CODE:uint = " ".charCodeAt(0);
      
      private static var s_sourceReuse:Rectangle = new Rectangle();
      
      private static const DIGIT_ZERO_CHAR_CODE:uint = "0".charCodeAt(0);
      
      private static const MINUS_CHAR_CODE:uint = "-".charCodeAt(0);
      
      private static var s_glyphImage:Bitmap;
      
      private static var s_destReuse:Point = new Point();
      
      private static var Glyphs:Class = NumericRasterTextField_Glyphs;
      
      private static const CHAR_HEIGHT:uint = 16;
      
      private static const COMMA_CHAR_CODE:uint = ",".charCodeAt(0);
      
      private static const CHARS_PER_ROW:uint = 15;
      
      private static const CHAR_WIDTH:uint = 8;
      
      private static const PLUS_CHAR_CODE:uint = "+".charCodeAt(0);
       
      
      private var _lastRenderedCharCount:int = -1;
      
      private var _thousandsSeparator:Boolean = false;
      
      private var _suffix:String;
      
      private var _showSign:Boolean = false;
      
      private var _charsArray:ByteArray;
      
      private var _integer:int;
      
      public function NumericRasterTextField()
      {
         super();
      }
      
      private static function simpleAbs(num:int) : int
      {
         return num < 0?int(-num):int(num);
      }
      
      public function set suffix(sfx:String) : void
      {
         if(_suffix != sfx)
         {
            _suffix = sfx;
            render();
         }
      }
      
      private function printChar(charCode:int, pos:int) : void
      {
         var ithChar:uint = charCode - FIRST_CHAR_CODE;
         s_sourceReuse.left = ithChar % CHARS_PER_ROW * CHAR_WIDTH;
         s_sourceReuse.top = uint(ithChar / CHARS_PER_ROW) * CHAR_HEIGHT;
         s_sourceReuse.width = CHAR_WIDTH;
         s_sourceReuse.height = CHAR_HEIGHT;
         s_destReuse.x = pos * CHAR_WIDTH;
         s_destReuse.y = 0;
         this.bitmapData.copyPixels(s_glyphImage.bitmapData,s_sourceReuse,s_destReuse);
      }
      
      public function set showSign(b:Boolean) : void
      {
         _showSign = b;
      }
      
      public function set showThousandsSeparator(b:Boolean) : void
      {
         _thousandsSeparator = b;
      }
      
      public function set integer(newInteger:int) : void
      {
         if(!_charsArray)
         {
            _charsArray = new ByteArray();
         }
         else if(_integer == newInteger)
         {
            return;
         }
         _integer = newInteger;
         _charsArray.position = 0;
         while(newInteger)
         {
            if(_thousandsSeparator && _charsArray.position % 4 == 3)
            {
               _charsArray.writeByte(COMMA_CHAR_CODE);
            }
            _charsArray.writeByte(simpleAbs(newInteger) % 10 + DIGIT_ZERO_CHAR_CODE);
            newInteger = newInteger / 10;
         }
         if(_integer == 0)
         {
            _charsArray.writeByte(DIGIT_ZERO_CHAR_CODE);
         }
         else if(_integer < 0)
         {
            _charsArray.writeByte(MINUS_CHAR_CODE);
         }
         else if(_showSign)
         {
            _charsArray.writeByte(PLUS_CHAR_CODE);
         }
         render();
      }
      
      private function render() : void
      {
         var charCount:int = 0;
         var totalWidth:int = 0;
         var i:int = 0;
         var length:int = 0;
         var s:int = 0;
         var c:int = 0;
         if(_charsArray)
         {
            if(!s_glyphImage)
            {
               s_glyphImage = new Glyphs();
            }
            charCount = _charsArray.position + (!!_suffix?_suffix.length:0);
            totalWidth = charCount * CHAR_WIDTH;
            if(!this.bitmapData || totalWidth > this.bitmapData.width)
            {
               this.bitmapData = new BitmapData(CHAR_WIDTH * charCount,CHAR_HEIGHT);
            }
            for(i = _charsArray.position - 1; i >= 0; i--)
            {
               printChar(_charsArray[i],_charsArray.position - i - 1);
            }
            if(_suffix && _lastRenderedCharCount != charCount)
            {
               length = _suffix.length;
               for(s = 0; s < length; s++)
               {
                  printChar(_suffix.charCodeAt(s),s + _charsArray.position);
               }
            }
            if(charCount < _lastRenderedCharCount)
            {
               for(c = charCount; c < _lastRenderedCharCount; c++)
               {
                  printChar(FIRST_CHAR_CODE,c);
               }
            }
            _lastRenderedCharCount = charCount;
         }
      }
   }
}
